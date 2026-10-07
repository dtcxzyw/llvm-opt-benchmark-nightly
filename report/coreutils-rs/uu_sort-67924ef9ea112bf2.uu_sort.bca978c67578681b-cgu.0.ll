Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_:bb.a
default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 512
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8
  %i.i = load i64, ptr %i.e, align 16, !noundef !11
  %i.j = and i64 %i.i, %i.h
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.l) #38
  br label %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i

_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.n = atomicrmw xchg ptr %i.m, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  %i.o = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %.val1.i.i.i.i.i.i = load i64, ptr %i.o, align 16, !alias.scope !1845, !noundef !11 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %.val.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1845, !nonnull !11, !noundef !11
  %i.r = mul nuw nsw i64 %.val1.i.i.i.i.i.i, 240
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.r, i64 noundef 8) #34, !noalias !1845
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.s) #34
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.t) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %i.v = atomicrmw sub ptr %i.u, i64 1 acq_rel, align 8
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.y = atomicrmw or ptr %i.x, i64 1 seq_cst, align 8
  %i.z = and i64 %i.y, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.ab) #38
  br label %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i

_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.ad = atomicrmw xchg ptr %i.ac, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit, label %bb.i

bb.i:                                             ; preds = %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.8.val, i64 112
  %i.af = atomicrmw sub ptr %i.ae, i64 1 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10disconnectB12_(ptr noundef nonnull align 8 %.8.val) #34
  %i.ah = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.ai = atomicrmw xchg ptr %i.ah, i8 1 acq_rel, align 1
  %.not.i4.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i4.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.aj) #34
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ak) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1n_.exit: ; preds = %bb.b, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i, %bb.f, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i, %bb.i, %bb.j, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.o
    i64 2, label %bb.aa
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 16, !noundef !11 ; 2 uses
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

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.k ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.v     ; 3 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !11
  %i.y = sub i64 0, %i.x
  %i.z = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.y
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.ab = load i64, ptr %i.s, align 16, !noundef !11
  %i.ac = icmp ult i64 %i.w, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [232 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ai, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = add nuw i64 %i.w, 1
  %i.ak = load i64, ptr %i.t, align 128, !noundef !11
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.am = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.am, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.an = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
  %xtraiter40 = and i32 %i.an, 7                  ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 3
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter44 = and i32 %i.an, 56
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
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !1846

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.ap = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %i.ap, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.q, align 8, !noundef !11
  %i.ar = add i64 %i.aq, %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.l ], [ %i.af, %bb.h ]
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.ad) #34
  br label %bb.k

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.at = atomicrmw xchg ptr %i.as, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit, label %bb.n

bb.n:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 16, !alias.scope !1857, !noundef !11 ; 2 uses
  %i.au = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1857, !nonnull !11, !noundef !11
  %i.av = mul nuw nsw i64 %.val1.i.i.i.i.i.i, 232
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.av, i64 noundef 8) #34, !noalias !1857
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aw) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ax) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.az = atomicrmw sub ptr %i.ay, i64 1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.bc = atomicrmw or ptr %i.bb, i64 1 seq_cst, align 8
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.q, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bf = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bg = and i64 %i.bf, 62
  %i.bh = icmp eq i64 %i.bg, 62
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.bi = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bi, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i8.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.preheader

.lr.ph.i.i.i.i.i11.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i
  %i.bj = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bj, 7                    ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i11.i.i.preheader.new

.lr.ph.i.i.i.i.i11.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i11.i.i.preheader
  %unroll_iter = and i32 %i.bj, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i11.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i11.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader

.lr.ph.i.i.i.i.i11.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i11.i.i.epil

.lr.ph.i.i.i.i.i11.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i11.i.i.epil, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i11.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil, !llvm.loop !1851

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, %bb.r
  %i.bl = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.bm = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bn = and i64 %i.bm, 62
  %i.bo = icmp eq i64 %i.bn, 62
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, %bb.q
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bf, %bb.q ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %i.bp = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bs = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %i.bt = lshr i64 %i.bq, 1                       ; 2 uses
  %i.bu = icmp ne i64 %i.bt, %i.bp                ; 2 uses
  %i.bv = icmp eq ptr %i.bs, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bs, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bu, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.bw, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.bx = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter22 = and i32 %i.bx, 7                  ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.by, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.bx, 56
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
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !1852

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.s
  %i.bz = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.ca = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %bb.y, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bq, %.loopexit.i.i.i.i.i.i ], [ %i.da, %bb.y ]
  %i.cb = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cb, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE20discard_all_messagesB10_.exit.i.i.i.i.i, label %bb.t

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.y
  %i.cc = phi i64 [ %i.db, %bb.y ], [ %i.bt, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.da, %bb.y ], [ %i.bq, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.y ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 6 uses
  %i.cd = and i64 %i.cc, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cd, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.u, label %bb.w

bb.t:                                             ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 7200, i64 noundef 8) #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE20discard_all_messagesB10_.exit.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.ce = load atomic ptr, ptr %.sroa.011.154.i.i.i.i.i.i acquire, align 8
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.u, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.cg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.ch = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.ch, 7                  ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ch, 56
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
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1853

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.v
  %i.cj = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.ck = load atomic ptr, ptr %.sroa.011.154.i.i.i.i.i.i acquire, align 8
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.u
  %i.cm = load atomic ptr, ptr %.sroa.011.154.i.i.i.i.i.i acquire, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 7200, i64 noundef 8) #34
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 8
  %i.co = getelementptr inbounds nuw [232 x i8], ptr %i.cn, i64 %i.cd ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8
  %i.cr = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.w, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.cw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.w ] ; 6 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.ct, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cu = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cu, 7                  ; 3 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.cv, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cu, 56
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
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !1854

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.x
  %i.cw = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.cx = load atomic i64, ptr %i.cp acquire, align 8
  %i.cy = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.w
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef align 8 dereferenceable(224) %i.co) #34
  br label %bb.y

bb.y:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.154.i.i.i.i.i.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i ], [ %i.cm, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.da = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.db = lshr i64 %i.da, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, %i.bp
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE20discard_all_messagesB10_.exit.i.i.i.i.i: ; preds = %bb.t, %._crit_edge58.i.i.i.i.i.i
  %i.dc = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.dc, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE20discard_all_messagesB10_.exit.i.i.i.i.i, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.de = atomicrmw xchg ptr %i.dd, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit, label %bb.z

bb.z:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2r_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit

bb.aa:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dg = atomicrmw sub ptr %i.df, i64 1 acq_rel, align 8
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10disconnectB10_(ptr noundef nonnull align 8 %.8.val) #34
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dj = atomicrmw xchg ptr %i.di, i8 1 acq_rel, align 1
  %.not.i15.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i15.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.dk) #34
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.dl) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1n_.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2s_.exit.i.i.i, %bb.o, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i, %bb.z, %bb.aa, %bb.ab, %bb.ac
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.o
    i64 2, label %bb.aa
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 16, !noundef !11 ; 2 uses
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

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.k ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.v     ; 3 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !11
  %i.y = sub i64 0, %i.x
  %i.z = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.y
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.ab = load i64, ptr %i.s, align 16, !noundef !11
  %i.ac = icmp ult i64 %i.w, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.w, 1
  %i.aj = load i64, ptr %i.t, align 128, !noundef !11
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.al, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.am = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
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
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !1858

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %i.ao, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.q, align 8, !noundef !11
  %i.aq = add i64 %i.ap, %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %i.ae, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  tail call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ar) #34
  br label %bb.k

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.at = atomicrmw xchg ptr %i.as, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit, label %bb.n

bb.n:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 16, !alias.scope !1869, !noundef !11 ; 2 uses
  %i.au = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2s_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1869, !nonnull !11, !noundef !11
  %i.av = shl nuw nsw i64 %.val1.i.i.i.i.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.av, i64 noundef 8) #34, !noalias !1869
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2s_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2s_.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aw) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ax) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.az = atomicrmw sub ptr %i.ay, i64 1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.bc = atomicrmw or ptr %i.bb, i64 1 seq_cst, align 8
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.q, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bf = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bg = and i64 %i.bf, 62
  %i.bh = icmp eq i64 %i.bg, 62
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.bi = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bi, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i8.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.preheader

.lr.ph.i.i.i.i.i11.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i
  %i.bj = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bj, 7                    ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i11.i.i.preheader.new

.lr.ph.i.i.i.i.i11.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i11.i.i.preheader
  %unroll_iter = and i32 %i.bj, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i11.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i11.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader

.lr.ph.i.i.i.i.i11.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i11.i.i.epil

.lr.ph.i.i.i.i.i11.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i11.i.i.epil, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i11.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil, !llvm.loop !1863

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, %bb.r
  %i.bl = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.bm = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bn = and i64 %i.bm, 62
  %i.bo = icmp eq i64 %i.bn, 62
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, %bb.q
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bf, %bb.q ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %i.bp = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bs = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %i.bt = lshr i64 %i.bq, 1                       ; 2 uses
  %i.bu = icmp ne i64 %i.bt, %i.bp                ; 2 uses
  %i.bv = icmp eq ptr %i.bs, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bs, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bu, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.bw, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.bx = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter22 = and i32 %i.bx, 7                  ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.by, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.bx, 56
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
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !1864

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.s
  %i.bz = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.ca = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %bb.y, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bq, %.loopexit.i.i.i.i.i.i ], [ %i.da, %bb.y ]
  %i.cb = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cb, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE20discard_all_messagesB10_.exit.i.i.i.i.i, label %bb.t

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.y
  %i.cc = phi i64 [ %i.db, %bb.y ], [ %i.bt, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.da, %bb.y ], [ %i.bq, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.y ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 5 uses
  %i.cd = and i64 %i.cc, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cd, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.u, label %bb.w

bb.t:                                             ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 504, i64 noundef 8) #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE20discard_all_messagesB10_.exit.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 496 ; 3 uses
  %i.cf = load atomic ptr, ptr %i.ce acquire, align 8
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.u, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.ck, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 6 uses
  %i.ch = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.ch, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.ci = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.ci, 7                  ; 3 uses
  %i.cj = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ci, 56
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
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1865

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.v
  %i.ck = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.cl = load atomic ptr, ptr %i.ce acquire, align 8
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.u
  %i.cn = load atomic ptr, ptr %i.ce acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 504, i64 noundef 8) #34
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.154.i.i.i.i.i.i, i64 %i.cd ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8
  %i.cr = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.w, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.cw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.w ] ; 6 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.ct, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cu = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cu, 7                  ; 3 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.cv, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cu, 56
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
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !1866

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.x
  %i.cw = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.cx = load atomic i64, ptr %i.cp acquire, align 8
  %i.cy = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.w
  tail call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.co) #34
  br label %bb.y

bb.y:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit.i.i.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.154.i.i.i.i.i.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit.i.i.i.i.i.i ], [ %i.cn, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.da = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.db = lshr i64 %i.da, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, %i.bp
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE20discard_all_messagesB10_.exit.i.i.i.i.i: ; preds = %bb.t, %._crit_edge58.i.i.i.i.i.i
  %i.dc = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.dc, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE20discard_all_messagesB10_.exit.i.i.i.i.i, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.de = atomicrmw xchg ptr %i.dd, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit, label %bb.z

bb.z:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2r_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit

bb.aa:                                            ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dg = atomicrmw sub ptr %i.df, i64 1 acq_rel, align 8
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10disconnectB10_(ptr noundef nonnull align 8 %.8.val) #34
  %i.di = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dj = atomicrmw xchg ptr %i.di, i8 1 acq_rel, align 1
  %.not.i15.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i15.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.dk) #34
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.dl) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1n_.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BW_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2s_.exit.i.i.i, %bb.o, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i, %bb.z, %bb.aa, %bb.ab, %bb.ac
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %.0.val, label %default.unreachable.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.o
    i64 2, label %bb.aa
  ]

default.unreachable.i.i:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 520
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 4 uses
  %i.f = load i64, ptr %i.e, align 16, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.h = atomicrmw or ptr %i.g, i64 %i.f seq_cst, align 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 16, !noundef !11 ; 2 uses
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

bb.f:                                             ; preds = %bb.k, %bb.e
  %i.u = phi i64 [ %i.m, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.k ]
  %.sroa.0.07.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.sroa.0.18.i.i.i.i.i.i, %bb.k ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %.sroa.0.1.i.i.i.i.i.i, %bb.k ] ; 5 uses
  %i.v = add i64 %i.u, -1
  %i.w = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.v     ; 3 uses
  %i.x = load i64, ptr %i.q, align 8, !noundef !11
  %i.y = sub i64 0, %i.x
  %i.z = and i64 %.sroa.0.0.i.i.i.i.i.i, %i.y
  %i.aa = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.ab = load i64, ptr %i.s, align 16, !noundef !11
  %i.ac = icmp ult i64 %i.w, %i.ab
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [240 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = add i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.p, %.sroa.0.0.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BY_.exit.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add nuw i64 %i.w, 1
  %i.aj = load i64, ptr %i.t, align 128, !noundef !11
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = icmp ult i32 %.sroa.0.07.i.i.i.i.i.i, 7
  br i1 %i.al, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.07.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.am = mul nuw nsw i32 %.sroa.0.07.i.i.i.i.i.i, %.sroa.0.07.i.i.i.i.i.i ; 2 uses
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
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !1870

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.j
  %i.ao = add i32 %.sroa.0.07.i.i.i.i.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i
  %.sroa.0.18.i.i.i.i.i.i = phi i32 [ %.sroa.0.07.i.i.i.i.i.i, %bb.m ], [ %i.ao, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i.i.i, %bb.m ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i = load i64, ptr %i.e, align 16
  br label %bb.f

bb.l:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.q, align 8, !noundef !11
  %i.aq = add i64 %i.ap, %i.z
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.sroa.05.0.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.l ], [ %i.ae, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(224) %i.ar) #34
  br label %bb.k

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BY_.exit.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 528
  %i.at = atomicrmw xchg ptr %i.as, i8 1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit, label %bb.n

bb.n:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BY_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 16, !alias.scope !1881, !noundef !11 ; 2 uses
  %i.au = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1881, !nonnull !11, !noundef !11
  %i.av = mul nuw nsw i64 %.val1.i.i.i.i.i.i, 240
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.av, i64 noundef 8) #34, !noalias !1881
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.aw) #34
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ax) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 640, i64 noundef 128) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.8.val, i64 392
  %i.az = atomicrmw sub ptr %i.ay, i64 1 acq_rel, align 8
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 3 uses
  %i.bc = atomicrmw or ptr %i.bb, i64 1 seq_cst, align 8
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.q, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BY_.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bf = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bg = and i64 %i.bf, 62
  %i.bh = icmp eq i64 %i.bg, 62
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i
  %.sroa.0.04951.i.i.i.i.i.i = phi i32 [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.bi = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 7
  br i1 %i.bi, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i8.i.i = icmp eq i32 %.sroa.0.04951.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i8.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.preheader

.lr.ph.i.i.i.i.i11.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i
  %i.bj = mul nuw nsw i32 %.sroa.0.04951.i.i.i.i.i.i, %.sroa.0.04951.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.bj, 7                    ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.04951.i.i.i.i.i.i, 3
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i11.i.i.preheader.new

.lr.ph.i.i.i.i.i11.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i11.i.i.preheader
  %unroll_iter = and i32 %i.bj, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i11.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i11.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil.preheader

.lr.ph.i.i.i.i.i11.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.i.i.i11.i.i.epil

.lr.ph.i.i.i.i.i11.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i11.i.i.epil, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i11.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i11.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, label %.lr.ph.i.i.i.i.i11.i.i.epil, !llvm.loop !1875

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i11.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i7.i.i, %bb.r
  %i.bl = add i32 %.sroa.0.04951.i.i.i.i.i.i, 1   ; 2 uses
  %i.bm = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bn = and i64 %i.bm, 62
  %i.bo = icmp eq i64 %i.bn, 62
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i, %bb.q
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bf, %bb.q ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %.sroa.0.049.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i5.i.i ]
  %i.bp = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %i.bq = load atomic i64, ptr %.8.val acquire, align 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.bs = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %i.bt = lshr i64 %i.bq, 1                       ; 2 uses
  %i.bu = icmp ne i64 %i.bt, %i.bp                ; 2 uses
  %i.bv = icmp eq ptr %i.bs, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i = phi ptr [ %i.bs, %._crit_edge.i.i.i.i.i.i ], [ %i.ca, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ] ; 2 uses
  br i1 %i.bu, label %.lr.ph57.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i4.i.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i ], [ %.sroa.0.049.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 7
  br i1 %i.bw, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.preheader.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i4.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %i.bx = mul nuw nsw i32 %.sroa.0.1.i.i.i.i4.i.i, %.sroa.0.1.i.i.i.i4.i.i ; 2 uses
  %xtraiter22 = and i32 %i.bx, 7                  ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.1.i.i.i.i4.i.i, 3
  br i1 %i.by, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter26 = and i32 %i.bx, 56
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
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !1876

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %bb.s
  %i.bz = add i32 %.sroa.0.1.i.i.i.i4.i.i, 1
  %i.ca = atomicrmw xchg ptr %i.br, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.old2.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

._crit_edge58.i.i.i.i.i.i:                        ; preds = %bb.y, %.loopexit.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bq, %.loopexit.i.i.i.i.i.i ], [ %i.db, %bb.y ]
  %i.cb = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i, null
  br i1 %i.cb, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE20discard_all_messagesB12_.exit.i.i.i.i.i, label %bb.t

.lr.ph57.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i.i, %bb.y
  %i.cc = phi i64 [ %i.dc, %bb.y ], [ %i.bt, %.loopexit.i.i.i.i.i.i ]
  %.sroa.05.055.i.i.i.i.i.i = phi i64 [ %i.db, %bb.y ], [ %i.bq, %.loopexit.i.i.i.i.i.i ]
  %.sroa.011.154.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i, %bb.y ], [ %.sroa.011.0.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ] ; 5 uses
  %i.cd = and i64 %i.cc, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.cd, 31
  br i1 %.not19.i.i.i.i.i.i, label %bb.u, label %bb.w

bb.t:                                             ; preds = %._crit_edge58.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i, i64 noundef 7448, i64 noundef 8) #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE20discard_all_messagesB12_.exit.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i.i.i.i.i.i, i64 7440 ; 3 uses
  %i.cf = load atomic ptr, ptr %i.ce acquire, align 8
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i:                           ; preds = %bb.u, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.ck, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.u ] ; 6 uses
  %i.ch = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.ch, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i31.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.ci = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter34 = and i32 %i.ci, 7                  ; 3 uses
  %i.cj = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ci, 56
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
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !1877

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.v
  %i.ck = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.cl = load atomic ptr, ptr %i.ce acquire, align 8
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.lr.ph.i31.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.u
  %i.cn = load atomic ptr, ptr %i.ce acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i.i.i.i.i.i, i64 noundef 7448, i64 noundef 8) #34
  br label %bb.y

bb.w:                                             ; preds = %.lr.ph57.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw [240 x i8], ptr %.sroa.011.154.i.i.i.i.i.i, i64 %i.cd ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 232 ; 2 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8
  %i.cr = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i:                           ; preds = %bb.w, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i = phi i32 [ %i.cw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i ], [ 0, %bb.w ] ; 6 uses
  %i.ct = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 7
  br i1 %i.ct, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i32.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i
  %i.cu = mul nuw nsw i32 %.sroa.0.02.i33.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i ; 2 uses
  %xtraiter28 = and i32 %i.cu, 7                  ; 3 uses
  %i.cv = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i, 3
  br i1 %i.cv, label %.lr.ph.i.i40.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.preheader
  %unroll_iter32 = and i32 %i.cu, 56
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
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.epil, !llvm.loop !1878

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i, %bb.x
  %i.cw = add i32 %.sroa.0.02.i33.i.i.i.i.i.i, 1
  %i.cx = load atomic i64, ptr %i.cp acquire, align 8
  %i.cy = and i64 %i.cx, 1
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i32.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i, %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(224) %i.da) #34
  br label %bb.y

bb.y:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i = phi ptr [ %.sroa.011.154.i.i.i.i.i.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i.i.i.i ], [ %i.cn, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.db = add i64 %.sroa.05.055.i.i.i.i.i.i, 2    ; 3 uses
  %i.dc = lshr i64 %i.db, 1                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dc, %i.bp
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge58.i.i.i.i.i.i, label %.lr.ph57.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE20discard_all_messagesB12_.exit.i.i.i.i.i: ; preds = %bb.t, %._crit_edge58.i.i.i.i.i.i
  %i.dd = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i, -2
  store atomic i64 %i.dd, ptr %.8.val release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BY_.exit.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BY_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE20discard_all_messagesB12_.exit.i.i.i.i.i, %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 400
  %i.df = atomicrmw xchg ptr %i.de, i8 1 acq_rel, align 1
  %.not.i3.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i3.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit, label %bb.z

bb.z:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BY_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2t_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit

bb.aa:                                            ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 120
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 acq_rel, align 8
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10disconnectB12_(ptr noundef nonnull align 8 %.8.val) #34
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  %i.dk = atomicrmw xchg ptr %i.dj, i8 1 acq_rel, align 1
  %.not.i15.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i15.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.dl) #34
  %i.dm = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.dm) #34
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 136, i64 noundef 8) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpmc8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1p_.exit: ; preds = %bb.b, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop0BY_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2u_.exit.i.i.i, %bb.o, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BY_.exit.i.i.i, %bb.z, %bb.aa, %bb.ab, %bb.ac
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1o_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #34
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc9SendErrorTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(224) %i.a) #34
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir19HandlerRegistrationEEEB1T_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !18, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.g, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir19HandlerRegistrationEEB1A_.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir19HandlerRegistrationEEB1A_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir19HandlerRegistrationEEB1A_.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !18, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.g, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit, !prof !21

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !18, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

end_hunk_0
begin_hunk_1_@_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded8ext_sortINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB30_5slice4iter4IterNtNtNtB6_3ffi6os_str8OsStringEINvB24_4openRB46_EEE0uEs_000uEB24_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5374
  call void asm sideeffect "", "~{memory}"() #34, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvNtCsgcf5BHVXlUt_7uu_sort5check5check0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_000uEB21_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCs2vKOLqTMYjT_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #34, !noalias !5377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5377
  call void asm sideeffect "", "~{memory}"() #34, !srcloc !42
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define { ptr, ptr } @_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsgcf5BHVXlUt_7uu_sort5check5check0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEB1d_(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(208) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [224 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.724.i.i.i.i.i = alloca [216 x i8], align 8 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427.i.i.i.i.i = alloca [216 x i8], align 8 ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6.i.i.i.i.i = alloca [216 x i8], align 8 ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [224 x i8], align 8               ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [224 x i8], align 8              ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5531)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !5531, !nonnull !11, !noundef !11 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !5531, !nonnull !11, !align !13, !noundef !11 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val2.i = load i64, ptr %i.ag, align 8, !alias.scope !5531 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i = load ptr, ptr %i.ai, align 8, !alias.scope !5531 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5534)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !5535
  store i64 0, ptr %i.ab, align 8, !noalias !5535
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.aj, align 8, !noalias !5535
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %i.ak, align 8, !noalias !5535
  %.val.i.i.i = load i64, ptr %0, align 8, !range !32, !alias.scope !5536, !noalias !5537, !noundef !11 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !5536, !noalias !5537 ; 34 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24 ; 2 uses
  %i.aq = tail call nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %.sroa.820.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.445.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.628.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.733.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.838.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %.sroa.628.0..sroa_idx29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.733.0..sroa_idx34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.410.0..sroa_idx11.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.628.0..sroa_idx31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.733.0..sroa_idx36.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 128 ; 2 uses
  %.sroa.4.0..sroa_idx.i1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 400 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 392 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 408
  %i.bi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 416
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 384
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.59.0..sroa_idx10.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 256
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bm = load i8, ptr %i.bl, align 4, !range !19, !alias.scope !5538, !noalias !5539
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.bo = insertelement <2 x ptr> poison, ptr %.val1.i.i.i, i64 0
  %i.bp = shufflevector <2 x ptr> %i.bo, <2 x ptr> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.df, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5540
  switch i64 %.val.i.i.i, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.z
    i64 2, label %bb.bg
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5541)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5540
  store i32 -1, ptr %i.bd, align 8, !noalias !5542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5542
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false), !noalias !5542
  br label %bb.d

bb.d:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5543)
  %i.bq = load atomic i64, ptr %.val1.i.i.i monotonic, align 8, !noalias !5544
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, %bb.d
  %.sroa.0.038.i.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.1.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i ] ; 12 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.bq, %bb.d ], [ %i.cw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i ] ; 7 uses
  %umin227 = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i.i.i.i, i32 6) ; 2 uses
  %i.br = mul nuw nsw i32 %umin227, %umin227      ; 2 uses
  %i.bs = load i64, ptr %i.bf, align 16, !noalias !5544, !noundef !11
  %i.bt = add i64 %i.bs, -1
  %i.bu = and i64 %i.bt, %.sroa.02.0.i.i.i.i.i.i  ; 3 uses
  %i.bv = load i64, ptr %i.bg, align 8, !noalias !5544, !noundef !11
  %i.bw = sub i64 0, %i.bv
  %i.bx = and i64 %.sroa.02.0.i.i.i.i.i.i, %i.bw
  %i.by = load ptr, ptr %i.bh, align 8, !noalias !5544, !nonnull !11, !noundef !11
  %i.bz = load i64, ptr %i.bi, align 16, !noalias !5544, !noundef !11
  %i.ca = icmp ult i64 %i.bu, %i.bz
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [232 x i8], ptr %i.by, i64 %i.bu ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8, !noalias !5544 ; 3 uses
  %i.ce = add i64 %.sroa.02.0.i.i.i.i.i.i, 1
  %i.cf = icmp eq i64 %i.ce, %i.cd
  br i1 %i.cf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = icmp eq i64 %i.cd, %.sroa.02.0.i.i.i.i.i.i
  br i1 %i.cg, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ch = add nuw i64 %i.bu, 1
  %i.ci = load i64, ptr %i.bj, align 128, !noalias !5544, !noundef !11
  %i.cj = icmp ult i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ck = icmp ult i32 %.sroa.0.038.i.i.i.i.i.i, 7
  br i1 %i.ck, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !5544
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i
  %i.cl = mul nuw nsw i32 %.sroa.0.038.i.i.i.i.i.i, %.sroa.0.038.i.i.i.i.i.i ; 2 uses
  %xtraiter221 = and i32 %i.cl, 7                 ; 3 uses
  %i.cm = icmp ult i32 %.sroa.0.038.i.i.i.i.i.i, 3
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter225 = and i32 %i.cl, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %niter226 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter226.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  %niter226.next.7 = add i32 %niter226, 8         ; 2 uses
  %niter226.ncmp.7 = icmp eq i32 %niter226.next.7, %unroll_iter225
  br i1 %niter226.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit161.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  fence seq_cst
  %i.cn = load atomic i64, ptr %i.bc monotonic, align 16, !noalias !5544 ; 2 uses
  %i.co = load i64, ptr %i.bf, align 16, !noalias !5544, !noundef !11 ; 2 uses
  %i.cp = xor i64 %i.co, -1
  %i.cq = and i64 %i.cn, %i.cp
  %i.cr = icmp eq i64 %i.cq, %.sroa.02.0.i.i.i.i.i.i
  br i1 %i.cr, label %bb.k, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i.i: ; preds = %bb.j
  %..i.i.i.i.i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i.i.i.i, i32 6) ; 2 uses
  %i.cs = mul nuw nsw i32 %..i.i.i.i.i.i.i.i, %..i.i.i.i.i.i.i.i ; 2 uses
  %.not.i13.i.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i.i.i, 0
  br i1 %.not.i13.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.i.preheader

.lr.ph.i16.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i.i
  %xtraiter228 = and i32 %i.cs, 5                 ; 3 uses
  %i.ct = icmp ult i32 %.sroa.0.038.i.i.i.i.i.i, 3
  br i1 %i.ct, label %.lr.ph.i16.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i16.i.i.i.i.i.i.preheader.new

.lr.ph.i16.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i16.i.i.i.i.i.i.preheader
  %unroll_iter232 = and i32 %i.cs, 56
  br label %.lr.ph.i16.i.i.i.i.i.i

.lr.ph.i16.i.i.i.i.i.i:                           ; preds = %.lr.ph.i16.i.i.i.i.i.i, %.lr.ph.i16.i.i.i.i.i.i.preheader.new
  %niter233 = phi i32 [ 0, %.lr.ph.i16.i.i.i.i.i.i.preheader.new ], [ %niter233.next.7, %.lr.ph.i16.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  %niter233.next.7 = add i32 %niter233, 8         ; 2 uses
  %niter233.ncmp.7 = icmp eq i32 %niter233.next.7, %unroll_iter232
  br i1 %niter233.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit160.unr-lcssa, label %.lr.ph.i16.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cu = and i64 %i.co, %i.cn
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i
  %lcmp.mod236.not = icmp eq i32 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.preheader
  %lcmp.mod237 = icmp ne i32 %xtraiter234, 0
  call void @llvm.assume(i1 %lcmp.mod237)
  br label %.lr.ph.i26.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i26.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader
  %epil.iter235 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.epil.preheader ], [ %epil.iter235.next, %.lr.ph.i26.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5544
  %epil.iter235.next = add i32 %epil.iter235, 1   ; 2 uses
  %epil.iter235.cmp.not = icmp eq i32 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.epil, !llvm.loop !5392

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit160.unr-lcssa: ; preds = %.lr.ph.i16.i.i.i.i.i.i
  %lcmp.mod230.not = icmp eq i32 %xtraiter228, 0
  br i1 %lcmp.mod230.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.i.epil.preheader

.lr.ph.i16.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit160.unr-lcssa, %.lr.ph.i16.i.i.i.i.i.i.preheader
  %lcmp.mod231 = icmp ne i32 %xtraiter228, 0
  call void @llvm.assume(i1 %lcmp.mod231)
  br label %.lr.ph.i16.i.i.i.i.i.i.epil

.lr.ph.i16.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i16.i.i.i.i.i.i.epil, %.lr.ph.i16.i.i.i.i.i.i.epil.preheader
  %epil.iter229 = phi i32 [ 0, %.lr.ph.i16.i.i.i.i.i.i.epil.preheader ], [ %epil.iter229.next, %.lr.ph.i16.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5544
  %epil.iter229.next = add i32 %epil.iter229, 1   ; 2 uses
  %epil.iter229.cmp.not = icmp eq i32 %epil.iter229.next, %xtraiter228
  br i1 %epil.iter229.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i.i.i.epil, !llvm.loop !5393

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit161.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod223.not = icmp eq i32 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit161.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %lcmp.mod224 = icmp ne i32 %xtraiter221, 0
  call void @llvm.assume(i1 %lcmp.mod224)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %epil.iter222 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter222.next, %.lr.ph.i.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5544
  %epil.iter222.next = add i32 %epil.iter222, 1   ; 2 uses
  %epil.iter222.cmp.not = icmp eq i32 %epil.iter222.next, %xtraiter221
  br i1 %epil.iter222.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !5394

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit161.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit160.unr-lcssa, %.lr.ph.i16.i.i.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i, %bb.i
  %i.cw = load atomic i64, ptr %.val1.i.i.i monotonic, align 16, !noalias !5544
  %.sroa.0.1.i.i.i.i.i.i = add i32 %.sroa.0.038.i.i.i.i.i.i, 1
  br label %bb.e

bb.l:                                             ; preds = %bb.g
  %i.cx = load i64, ptr %i.bg, align 8, !noalias !5544, !noundef !11
  %i.cy = add i64 %i.cx, %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.cy, %bb.l ], [ %i.cd, %bb.g ]
  %i.cz = cmpxchg weak ptr %.val1.i.i.i, i64 %.sroa.02.0.i.i.i.i.i.i, i64 %.sroa.01.0.i.i.i.i.i.i seq_cst monotonic, align 8, !noalias !5544
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.cz, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i: ; preds = %bb.m
  %.not.i23.i.i.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i
  %xtraiter234 = and i32 %i.br, 7                 ; 3 uses
  %i.da = icmp ult i32 %.sroa.0.038.i.i.i.i.i.i, 3
  br i1 %i.da, label %.lr.ph.i26.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i26.i.i.i.i.i.i.preheader
  %unroll_iter238 = and i32 %i.br, 56
  br label %.lr.ph.i26.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i:                           ; preds = %.lr.ph.i26.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.preheader.new
  %niter239 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.preheader.new ], [ %niter239.next.7, %.lr.ph.i26.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  call void @llvm.x86.sse2.pause(), !noalias !5544
  %niter239.next.7 = add i32 %niter239, 8         ; 2 uses
  %niter239.ncmp.7 = icmp eq i32 %niter239.next.7, %unroll_iter238
  br i1 %niter239.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i: ; preds = %bb.k
  %i.db = load i32, ptr %i.bd, align 8, !range !44, !noalias !5542, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.db, -1
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %bb.w

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i: ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cb, i64 224
  store ptr %i.cb, ptr %i.w, align 8, !alias.scope !5543, !noalias !5542
  %i.dd = load i64, ptr %i.bg, align 8, !noalias !5544, !noundef !11
  %i.de = add i64 %i.dd, %.sroa.02.0.i.i.i.i.i.i  ; 2 uses
  store i64 %i.de, ptr %i.be, align 8, !alias.scope !5543, !noalias !5542
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %.sroa.0.0.copyload4.i.i.i.i.i = load i64, ptr %i.cb, align 8, !noalias !5545 ; 2 uses
  %.sroa.6.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..val.sroa_idx.i.i.i.i.i, i64 216, i1 false), !noalias !5545
  store atomic i64 %i.de, ptr %i.dc release, align 8, !noalias !5546
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bk) #38, !noalias !5546
  %i.df = icmp eq i64 %.sroa.0.0.copyload4.i.i.i.i.i, -1
  br i1 %i.df, label %bb.w, label %bb.x

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i
  %i.dg = load i64, ptr %i.x, align 8, !noalias !5542, !noundef !11 ; 2 uses
  %i.dh = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34, !noalias !5545 ; 2 uses
  %i.di = extractvalue { i64, i32 } %i.dh, 0      ; 2 uses
  %i.dj = icmp eq i64 %i.di, %i.dg
  br i1 %i.dj, label %.split.i.i.i.i.i, label %bb.u

bb.o:                                             ; preds = %bb.u, %.split.i.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5547
  store ptr %i.w, ptr %i.v, align 8, !noalias !5542
  store ptr %.val1.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5542
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5542
  %i.dk = load i8, ptr %i.ax, align 8, !range !28, !noalias !5548, !noundef !11
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.dm = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !5549 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i, %bb.o
  %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i = phi ptr [ %i.dm, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i ], [ %i.aw, %bb.o ] ; 4 uses
  %i.do = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i, align 8, !noalias !5549, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i, align 8, !noalias !5549
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.r, !prof !21

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5547
  %i.dp = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !5549 ; 3 uses
  store ptr %i.dp, ptr %i.u, align 8, !noalias !5547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5547
  store ptr %i.w, ptr %i.t, align 8, !noalias !5547
  store ptr %.val1.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i.i, align 8, !noalias !5542
  store ptr %i.x, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !5542
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t, ptr nonnull %i.dp) #38, !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5547
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !5550
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.u) #39, !noalias !5549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5547
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i

bb.r:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store atomic i64 0, ptr %i.ds release, align 8, !noalias !5549
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  store atomic ptr null, ptr %i.dt release, align 8, !noalias !5549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5547
  store ptr %i.w, ptr %i.s, align 8, !noalias !5547
  store ptr %.val1.i.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i.i.i, align 8, !noalias !5542
  store ptr %i.x, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !5542
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr nonnull %i.do) #38, !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !5547
  %i.du = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i, align 8, !noalias !5549, !noundef !11 ; 3 uses
  store ptr %i.du, ptr %i.r, align 8, !noalias !5547
  store ptr %i.do, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i.i.i, align 8, !noalias !5549
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = atomicrmw sub ptr %i.du, i64 1 release, align 8, !noalias !5551
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.r) #39, !noalias !5549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !5547
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEs0_0B1E_(ptr nonnull %i.v) #38, !noalias !5549
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5547
  br label %bb.d

.split.i.i.i.i.i:                                 ; preds = %bb.n
  %i.dy = extractvalue { i64, i32 } %i.dh, 1      ; 2 uses
  %i.dz = icmp ult i32 %i.dy, 1000000000
  call void @llvm.assume(i1 %i.dz)
  %.not17.i.i.i.i.i = icmp samesign ult i32 %i.dy, %i.db
  br i1 %.not17.i.i.i.i.i, label %bb.o, label %bb.v

bb.u:                                             ; preds = %bb.n
  %.not16.i.i.i.i.i = icmp slt i64 %i.di, %i.dg
  br i1 %.not16.i.i.i.i.i, label %bb.o, label %bb.v

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.i.i
  store i8 0, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5541, !noalias !5540
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvB10_.exit.i.i.i.i

bb.w:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5541, !noalias !5540
  br label %bb.y

bb.x:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.445.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i.i.i.i.i, i64 216, i1 false), !noalias !5540
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %storemerge.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload4.i.i.i.i.i, %bb.x ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvB10_.exit.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvB10_.exit.i.i.i.i: ; preds = %bb.y, %bb.v
  %i.ea = phi i64 [ -1, %bb.v ], [ %storemerge.i.i.i.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5540
  br label %bb.cw

bb.z:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5552)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5540
  store i32 -1, ptr %i.ay, align 8, !noalias !5553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !5553
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  %i.eb = load atomic i64, ptr %.val1.i.i.i acquire, align 8, !noalias !5555
  %i.ec = load atomic ptr, ptr %i.bb acquire, align 8, !noalias !5555
  br label %bb.ab

bb.ab:                                            ; preds = %.backedge.i.i.i.i.i.i, %bb.aa
  %.sroa.0.043.i.i.i.i.i.i = phi i32 [ 0, %bb.aa ], [ %.sroa.0.043.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i.i.i.i = phi ptr [ %i.ec, %bb.aa ], [ %i.en, %.backedge.i.i.i.i.i.i ] ; 9 uses
  %.sroa.07.0.i.i.i.i.i.i = phi i64 [ %i.eb, %bb.aa ], [ %i.em, %.backedge.i.i.i.i.i.i ] ; 5 uses
  %i.ed = lshr i64 %.sroa.07.0.i.i.i.i.i.i, 1     ; 2 uses
  %i.ee = and i64 %i.ed, 31                       ; 6 uses
  %i.ef = icmp eq i64 %i.ee, 31
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp ult i32 %.sroa.0.043.i.i.i.i.i.i, 7
  br i1 %i.eg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i.i, label %.backedge.sink.split.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i.i: ; preds = %bb.ac
  %.not.i.i.i20.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i20.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i23.i.i.i.i.preheader

.lr.ph.i.i.i23.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i.i
  %i.eh = mul nuw nsw i32 %.sroa.0.043.i.i.i.i.i.i, %.sroa.0.043.i.i.i.i.i.i ; 2 uses
  %xtraiter203 = and i32 %i.eh, 7                 ; 3 uses
  %i.ei = icmp ult i32 %.sroa.0.043.i.i.i.i.i.i, 3
  br i1 %i.ei, label %.lr.ph.i.i.i23.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i23.i.i.i.i.preheader.new

.lr.ph.i.i.i23.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i23.i.i.i.i.preheader
  %unroll_iter207 = and i32 %i.eh, 56
  br label %.lr.ph.i.i.i23.i.i.i.i

.lr.ph.i.i.i23.i.i.i.i:                           ; preds = %.lr.ph.i.i.i23.i.i.i.i, %.lr.ph.i.i.i23.i.i.i.i.preheader.new
  %niter208 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.i.i.preheader.new ], [ %niter208.next.7, %.lr.ph.i.i.i23.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %niter208.next.7 = add i32 %niter208, 8         ; 2 uses
  %niter208.ncmp.7 = icmp eq i32 %niter208.next.7, %unroll_iter207
  br i1 %niter208.ncmp.7, label %.backedge.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ej = add i64 %.sroa.07.0.i.i.i.i.i.i, 2      ; 2 uses
  %i.ek = and i64 %.sroa.07.0.i.i.i.i.i.i, 1
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %bb.ah

.backedge.sink.split.i.i.i.i.i.i:                 ; preds = %bb.aj, %bb.ac
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !5555
  br label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i23.i.i.i.i
  %lcmp.mod205.not = icmp eq i32 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i23.i.i.i.i.epil.preheader

.lr.ph.i.i.i23.i.i.i.i.epil.preheader:            ; preds = %.backedge.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.i.i.preheader
  %lcmp.mod206 = icmp ne i32 %xtraiter203, 0
  call void @llvm.assume(i1 %lcmp.mod206)
  br label %.lr.ph.i.i.i23.i.i.i.i.epil

.lr.ph.i.i.i23.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i23.i.i.i.i.epil, %.lr.ph.i.i.i23.i.i.i.i.epil.preheader
  %epil.iter204 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.i.i.epil.preheader ], [ %epil.iter204.next, %.lr.ph.i.i.i23.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %epil.iter204.next = add i32 %epil.iter204, 1   ; 2 uses
  %epil.iter204.cmp.not = icmp eq i32 %epil.iter204.next, %xtraiter203
  br i1 %epil.iter204.cmp.not, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i23.i.i.i.i.epil, !llvm.loop !5423

.backedge.i.i.i.i.i.i.loopexit162.unr-lcssa:      ; preds = %.lr.ph.i23.i.i.i.i.i.i
  %lcmp.mod199.not = icmp eq i32 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i23.i.i.i.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.i.i.i.epil.preheader:            ; preds = %.backedge.i.i.i.i.i.i.loopexit162.unr-lcssa, %.lr.ph.i23.i.i.i.i.i.i.preheader
  %lcmp.mod200 = icmp ne i32 %xtraiter197, 0
  call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph.i23.i.i.i.i.i.i.epil

.lr.ph.i23.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i23.i.i.i.i.i.i.epil, %.lr.ph.i23.i.i.i.i.i.i.epil.preheader
  %epil.iter198 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.i.i.epil.preheader ], [ %epil.iter198.next, %.lr.ph.i23.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %epil.iter198.next = add i32 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i32 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i23.i.i.i.i.i.i.epil, !llvm.loop !5424

.backedge.i.i.i.i.i.i.loopexit163.unr-lcssa:      ; preds = %.lr.ph.i33.i.i.i.i.i.i
  %lcmp.mod193.not = icmp eq i32 %xtraiter191, 0
  br i1 %lcmp.mod193.not, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.i.i.i.epil.preheader:            ; preds = %.backedge.i.i.i.i.i.i.loopexit163.unr-lcssa, %.lr.ph.i33.i.i.i.i.i.i.preheader
  %lcmp.mod194 = icmp ne i32 %xtraiter191, 0
  call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.i33.i.i.i.i.i.i.epil

.lr.ph.i33.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i33.i.i.i.i.i.i.epil, %.lr.ph.i33.i.i.i.i.i.i.epil.preheader
  %epil.iter192 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.i.i.epil.preheader ], [ %epil.iter192.next, %.lr.ph.i33.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %epil.iter192.next = add i32 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i32 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.i.epil, !llvm.loop !5425

.backedge.i.i.i.i.i.i:                            ; preds = %.backedge.i.i.i.i.i.i.loopexit163.unr-lcssa, %.lr.ph.i33.i.i.i.i.i.i.epil, %.backedge.i.i.i.i.i.i.loopexit162.unr-lcssa, %.lr.ph.i23.i.i.i.i.i.i.epil, %.backedge.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i.i, %.backedge.sink.split.i.i.i.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i.i.i.i
  %i.em = load atomic i64, ptr %.val1.i.i.i acquire, align 8, !noalias !5555
  %i.en = load atomic ptr, ptr %i.bb acquire, align 8, !noalias !5555
  %.sroa.0.043.be.i.i.i.i.i.i = add i32 %.sroa.0.043.i.i.i.i.i.i, 1
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ad
  fence seq_cst
  %i.eo = load atomic i64, ptr %i.bc monotonic, align 8, !noalias !5555 ; 3 uses
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = icmp eq i64 %i.ed, %i.ep
  br i1 %i.eq, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.unshifted.i.i.i.i.i.i = xor i64 %i.eo, %.sroa.07.0.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i.i.i.i, 63
  %i.er = zext i1 %.not.i.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i.i = or disjoint i64 %i.ej, %i.er
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.es = and i64 %i.eo, 1
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %.sroa.01.0.i.i7.i.i.i.i = phi i64 [ %i.ej, %bb.ad ], [ %spec.select.i.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.eu = icmp eq ptr %.sroa.012.0.i.i.i.i.i.i, null
  br i1 %i.eu, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = cmpxchg weak ptr %.val1.i.i.i, i64 %.sroa.07.0.i.i.i.i.i.i, i64 %.sroa.01.0.i.i7.i.i.i.i seq_cst acquire, align 8, !noalias !5555
  %.sroa.18.0.in.i.i.i8.i.i.i.i = extractvalue { i64, i1 } %i.ev, 1
  br i1 %.sroa.18.0.in.i.i.i8.i.i.i.i, label %bb.ak, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ew = icmp ult i32 %.sroa.0.043.i.i.i.i.i.i, 7
  br i1 %i.ew, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i.i, label %.backedge.sink.split.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i.i: ; preds = %bb.aj
  %.not.i20.i.i.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i.i.i, 0
  br i1 %.not.i20.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i23.i.i.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i.i.i.i
  %i.ex = mul nuw nsw i32 %.sroa.0.043.i.i.i.i.i.i, %.sroa.0.043.i.i.i.i.i.i ; 2 uses
  %xtraiter197 = and i32 %i.ex, 7                 ; 3 uses
  %i.ey = icmp ult i32 %.sroa.0.043.i.i.i.i.i.i, 3
  br i1 %i.ey, label %.lr.ph.i23.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.i.i.i.preheader.new

.lr.ph.i23.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i23.i.i.i.i.i.i.preheader
  %unroll_iter201 = and i32 %i.ex, 56
  br label %.lr.ph.i23.i.i.i.i.i.i

.lr.ph.i23.i.i.i.i.i.i:                           ; preds = %.lr.ph.i23.i.i.i.i.i.i, %.lr.ph.i23.i.i.i.i.i.i.preheader.new
  %niter202 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.i.i.preheader.new ], [ %niter202.next.7, %.lr.ph.i23.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %niter202.next.7 = add i32 %niter202, 8         ; 2 uses
  %niter202.ncmp.7 = icmp eq i32 %niter202.next.7, %unroll_iter201
  br i1 %niter202.ncmp.7, label %.backedge.i.i.i.i.i.i.loopexit162.unr-lcssa, label %.lr.ph.i23.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i.i: ; preds = %bb.ai
  %..i.i.i.i9.i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i.i.i.i, i32 6) ; 2 uses
  %i.ez = mul nuw nsw i32 %..i.i.i.i9.i.i.i.i, %..i.i.i.i9.i.i.i.i ; 2 uses
  %.not.i30.i.i.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i.i.i, 0
  br i1 %.not.i30.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i33.i.i.i.i.i.i.preheader

.lr.ph.i33.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i.i.i.i
  %xtraiter191 = and i32 %i.ez, 5                 ; 3 uses
  %i.fa = icmp ult i32 %.sroa.0.043.i.i.i.i.i.i, 3
  br i1 %i.fa, label %.lr.ph.i33.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.i.i.i.preheader.new

.lr.ph.i33.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i33.i.i.i.i.i.i.preheader
  %unroll_iter195 = and i32 %i.ez, 56
  br label %.lr.ph.i33.i.i.i.i.i.i

.lr.ph.i33.i.i.i.i.i.i:                           ; preds = %.lr.ph.i33.i.i.i.i.i.i, %.lr.ph.i33.i.i.i.i.i.i.preheader.new
  %niter196 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.i.i.preheader.new ], [ %niter196.next.7, %.lr.ph.i33.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %niter196.next.7 = add i32 %niter196, 8         ; 2 uses
  %niter196.ncmp.7 = icmp eq i32 %niter196.next.7, %unroll_iter195
  br i1 %niter196.ncmp.7, label %.backedge.i.i.i.i.i.i.loopexit163.unr-lcssa, label %.lr.ph.i33.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fb = icmp eq i64 %i.ee, 30
  br i1 %i.fb, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fc = load atomic ptr, ptr %.sroa.012.0.i.i.i.i.i.i acquire, align 8, !noalias !5555 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.lr.ph.i37.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i

.lr.ph.i37.i.i.i.i.i.i:                           ; preds = %bb.al, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i = phi i32 [ %i.fh, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ 0, %bb.al ] ; 6 uses
  %i.fe = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 7
  br i1 %i.fe, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i37.i.i.i.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !5555
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i.i.i.i
  %.not.i.i.i.i10.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.ff = mul nuw nsw i32 %.sroa.0.02.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i ; 2 uses
  %xtraiter209 = and i32 %i.ff, 7                 ; 3 uses
  %i.fg = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i, 3
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter213 = and i32 %i.ff, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter214 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter214.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %niter214.next.7 = add i32 %niter214, 8         ; 2 uses
  %niter214.ncmp.7 = icmp eq i32 %niter214.next.7, %unroll_iter213
  br i1 %niter214.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod211.not = icmp eq i32 %xtraiter209, 0
  br i1 %lcmp.mod211.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod212 = icmp ne i32 %xtraiter209, 0
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter210 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter210.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5555
  %epil.iter210.next = add i32 %epil.iter210, 1   ; 2 uses
  %epil.iter210.cmp.not = icmp eq i32 %epil.iter210.next, %xtraiter209
  br i1 %epil.iter210.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !5426

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.am
  %i.fh = add i32 %.sroa.0.02.i.i.i.i.i.i.i, 1
  %i.fi = load atomic ptr, ptr %.sroa.012.0.i.i.i.i.i.i acquire, align 8, !noalias !5555 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %.lr.ph.i37.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, %bb.al
  %.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fc, %bb.al ], [ %i.fi, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.fk = and i64 %.sroa.01.0.i.i7.i.i.i.i, -2
  %i.fl = add i64 %i.fk, 2
  %i.fm = load atomic ptr, ptr %.lcssa.i.i.i.i.i.i.i monotonic, align 8, !noalias !5555
  %i.fn = icmp ne ptr %i.fm, null
  %i.fo = zext i1 %i.fn to i64
  %spec.select17.i.i.i.i.i.i = or disjoint i64 %i.fl, %i.fo
  store atomic ptr %.lcssa.i.i.i.i.i.i.i, ptr %i.bb release, align 8, !noalias !5555
  store atomic i64 %spec.select17.i.i.i.i.i.i, ptr %.val1.i.i.i release, align 8, !noalias !5555
  br label %bb.an

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.fp = load i32, ptr %i.ay, align 8, !range !44, !noalias !5553, !noundef !11 ; 2 uses
  %.not.i11.i.i.i.i = icmp eq i32 %i.fp, -1
  br i1 %.not.i11.i.i.i.i, label %bb.ax, label %bb.aw

bb.an:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE9wait_nextBX_.exit.i.i.i.i.i.i, %bb.ak
  store ptr %.sroa.012.0.i.i.i.i.i.i, ptr %i.az, align 8, !alias.scope !5554, !noalias !5553
  store i64 %i.ee, ptr %i.ba, align 8, !alias.scope !5554, !noalias !5553
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i, i64 8
  %i.fr = getelementptr inbounds nuw [232 x i8], ptr %i.fq, i64 %i.ee ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 224 ; 3 uses
  %i.ft = load atomic i64, ptr %i.fs acquire, align 8, !noalias !5556
  %i.fu = and i64 %i.ft, 1
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %.lr.ph.i.i6.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i

.lr.ph.i.i6.i.i.i.i.i:                            ; preds = %bb.an, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i
  %.sroa.0.02.i.i7.i.i.i.i.i = phi i32 [ %i.fz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i ], [ 0, %bb.an ] ; 6 uses
  %i.fw = icmp ult i32 %.sroa.0.02.i.i7.i.i.i.i.i, 7
  br i1 %i.fw, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i6.i.i.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !5556
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i.i: ; preds = %.lr.ph.i.i6.i.i.i.i.i
  %.not.i.i.i11.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i.i.i.i, 0
  br i1 %.not.i.i.i11.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i.i.preheader

.lr.ph.i.i.i14.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i.i
  %i.fx = mul nuw nsw i32 %.sroa.0.02.i.i7.i.i.i.i.i, %.sroa.0.02.i.i7.i.i.i.i.i ; 2 uses
  %xtraiter215 = and i32 %i.fx, 7                 ; 3 uses
  %i.fy = icmp ult i32 %.sroa.0.02.i.i7.i.i.i.i.i, 3
  br i1 %i.fy, label %.lr.ph.i.i.i14.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.i.i.i.preheader.new

.lr.ph.i.i.i14.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i14.i.i.i.i.i.preheader
  %unroll_iter219 = and i32 %i.fx, 56
  br label %.lr.ph.i.i.i14.i.i.i.i.i

.lr.ph.i.i.i14.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i14.i.i.i.i.i, %.lr.ph.i.i.i14.i.i.i.i.i.preheader.new
  %niter220 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.i.i.preheader.new ], [ %niter220.next.7, %.lr.ph.i.i.i14.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  call void @llvm.x86.sse2.pause(), !noalias !5556
  %niter220.next.7 = add i32 %niter220, 8         ; 2 uses
  %niter220.ncmp.7 = icmp eq i32 %niter220.next.7, %unroll_iter219
  br i1 %niter220.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i.i.i.i
  %lcmp.mod217.not = icmp eq i32 %xtraiter215, 0
  br i1 %lcmp.mod217.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.i.i.preheader
  %lcmp.mod218 = icmp ne i32 %xtraiter215, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %.lr.ph.i.i.i14.i.i.i.i.i.epil

.lr.ph.i.i.i14.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i14.i.i.i.i.i.epil, %.lr.ph.i.i.i14.i.i.i.i.i.epil.preheader
  %epil.iter216 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.i.i.epil.preheader ], [ %epil.iter216.next, %.lr.ph.i.i.i14.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5556
  %epil.iter216.next = add i32 %epil.iter216, 1   ; 2 uses
  %epil.iter216.cmp.not = icmp eq i32 %epil.iter216.next, %xtraiter215
  br i1 %epil.iter216.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i, label %.lr.ph.i.i.i14.i.i.i.i.i.epil, !llvm.loop !5429

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i.i.i, %bb.ao
  %i.fz = add i32 %.sroa.0.02.i.i7.i.i.i.i.i, 1
  %i.ga = load atomic i64, ptr %i.fs acquire, align 8, !noalias !5556
  %i.gb = and i64 %i.ga, 1
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i.i6.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.i.i, %bb.an
  %.sroa.026.0.copyload.i.i.i.i.i = load i64, ptr %i.fr, align 8, !noalias !5556 ; 2 uses
  %.sroa.427.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.427.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.427.0..sroa_idx.i.i.i.i.i, i64 216, i1 false), !noalias !5557
  %i.gd = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 31
  br i1 %i.ge, label %.lr.ph.i1.i.i.i.i.i.i, label %bb.as

.lr.ph.i1.i.i.i.i.i.i:                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i, %bb.ar
  %.sroa.0.03.i.i4.i.i.i.i.i = phi i64 [ %i.gn, %bb.ar ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [232 x i8], ptr %.sroa.012.0.i.i.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 232 ; 2 uses
  %i.gh = load atomic i64, ptr %i.gg acquire, align 8, !noalias !5556
  %i.gi = and i64 %i.gh, 2
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.ap, label %.lr.ph.i1.i.i.i.i.i.i.1

bb.ap:                                            ; preds = %.lr.ph.i1.i.i.i.i.i.i
  %i.gk = atomicrmw or ptr %i.gg, i64 4 acq_rel, align 8, !noalias !5556
  %i.gl = and i64 %i.gk, 2
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, label %.lr.ph.i1.i.i.i.i.i.i.1

.lr.ph.i1.i.i.i.i.i.i.1:                          ; preds = %bb.ap, %.lr.ph.i1.i.i.i.i.i.i
  %i.gn = add nuw nsw i64 %.sroa.0.03.i.i4.i.i.i.i.i, 2 ; 2 uses
  %i.go = getelementptr inbounds nuw [232 x i8], ptr %.sroa.012.0.i.i.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 464 ; 2 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8, !noalias !5556
  %i.gr = and i64 %i.gq, 2
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i1.i.i.i.i.i.i.1
  %i.gt = atomicrmw or ptr %i.gp, i64 4 acq_rel, align 8, !noalias !5556
  %i.gu = and i64 %i.gt, 2
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i1.i.i.i.i.i.i.1
  %exitcond.not.i.i5.i.i.i.i.i.1 = icmp eq i64 %i.gn, 30
  br i1 %exitcond.not.i.i5.i.i.i.i.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE7destroyBX_.exit.sink.split.i.i.i.i.i.i, label %.lr.ph.i1.i.i.i.i.i.i

bb.as:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_writeBU_.exit.i.i.i.i.i.i
  %i.gw = atomicrmw or ptr %i.fs, i64 2 acq_rel, align 8, !noalias !5556
  %i.gx = and i64 %i.gw, 4
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, label %bb.at

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE7destroyBX_.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.av, %bb.ar, %bb.at
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i.i.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !5556
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gz = icmp samesign ult i64 %i.ee, 29
  br i1 %i.gz, label %.lr.ph.i3.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE7destroyBX_.exit.sink.split.i.i.i.i.i.i

.lr.ph.i3.i.i.i.i.i.i:                            ; preds = %bb.at, %bb.av
  %.sroa.0.03.i4.i.i.i.i.i.i = phi i64 [ %i.ha, %bb.av ], [ %i.gd, %bb.at ] ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.0.03.i4.i.i.i.i.i.i, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [232 x i8], ptr %.sroa.012.0.i.i.i.i.i.i, i64 %.sroa.0.03.i4.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 232 ; 2 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8, !noalias !5556
  %i.he = and i64 %i.hd, 2
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i3.i.i.i.i.i.i
  %i.hg = atomicrmw or ptr %i.hc, i64 4 acq_rel, align 8, !noalias !5556
  %i.hh = and i64 %i.hg, 2
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i3.i.i.i.i.i.i
  %exitcond.not.i5.i.i.i.i.i.i = icmp eq i64 %i.ha, 30
  br i1 %exitcond.not.i5.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE7destroyBX_.exit.sink.split.i.i.i.i.i.i, label %.lr.ph.i3.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i: ; preds = %bb.au, %bb.ap, %bb.aq, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE7destroyBX_.exit.sink.split.i.i.i.i.i.i, %bb.as
  %i.hj = icmp eq i64 %.sroa.026.0.copyload.i.i.i.i.i, -1
  br i1 %i.hj, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i, label %bb.bf

bb.aw:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i
  %i.hk = load i64, ptr %i.q, align 8, !noalias !5553, !noundef !11 ; 2 uses
  %i.hl = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34, !noalias !5557 ; 2 uses
  %i.hm = extractvalue { i64, i32 } %i.hl, 0      ; 2 uses
  %i.hn = icmp eq i64 %i.hm, %i.hk
  br i1 %i.hn, label %.split.i17.i.i.i.i, label %bb.bd

bb.ax:                                            ; preds = %bb.bd, %.split.i17.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_recvB10_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5558
  store ptr %i.p, ptr %i.o, align 8, !noalias !5553
  store ptr %.val1.i.i.i, ptr %.sroa.4.0..sroa_idx.i1.i.i.i.i, align 8, !noalias !5553
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i2.i.i.i.i, align 8, !noalias !5553
  %i.ho = load i8, ptr %i.ax, align 8, !range !28, !noalias !5559, !noundef !11
  %i.hp = icmp eq i8 %i.ho, 1
  br i1 %i.hp, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i.i.i.i: ; preds = %bb.ax
  %i.hq = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !5560 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEs_0uEB3w_.exit.i.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i.i.i.i, %bb.ax
  %.sroa.0.0.i.i.i2.i.i.i14.i.i.i.i = phi ptr [ %i.hq, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i.i.i.i ], [ %i.aw, %bb.ax ] ; 4 uses
  %i.hs = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i.i, align 8, !noalias !5560, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i.i, align 8, !noalias !5560
  %.not.i.i.i18.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i18.i.i.i.i.i, label %bb.ay, label %bb.ba, !prof !21

bb.ay:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5558
  %i.ht = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !5560 ; 3 uses
  store ptr %i.ht, ptr %i.n, align 8, !noalias !5558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5558
  store ptr %i.p, ptr %i.m, align 8, !noalias !5558
  store ptr %.val1.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i5.i.i.i.i, align 8, !noalias !5553
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i6.i.i.i.i, align 8, !noalias !5553
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ht) #38, !noalias !5560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5558
  %i.hu = atomicrmw sub ptr %i.ht, i64 1 release, align 8, !noalias !5561
  %i.hv = icmp eq i64 %i.hu, 1
  br i1 %i.hv, label %bb.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i16.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #39, !noalias !5560
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i16.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i16.i.i.i.i: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5558
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0uEB1C_.exit.i.i.i.i.i

bb.ba:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store atomic i64 0, ptr %i.hw release, align 8, !noalias !5560
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store atomic ptr null, ptr %i.hx release, align 8, !noalias !5560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5558
  store ptr %i.p, ptr %i.l, align 8, !noalias !5558
  store ptr %.val1.i.i.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i3.i.i.i.i, align 8, !noalias !5553
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i4.i.i.i.i, align 8, !noalias !5553
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.hs) #38, !noalias !5560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5558
  %i.hy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i.i, align 8, !noalias !5560, !noundef !11 ; 3 uses
  store ptr %i.hy, ptr %i.k, align 8, !noalias !5558
  store ptr %i.hs, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i.i.i, align 8, !noalias !5560
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i15.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !5562
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i15.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
end_hunk_1
begin_hunk_2_@_RINvNtNtCs2vKOLqTMYjT_3std3sys9backtrace28___rust_begin_short_backtraceNCNvNtCsgcf5BHVXlUt_7uu_sort5check5check0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEB1d_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.445.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.427.i.i.i.i.i, i64 216, i1 false), !noalias !5540
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvB10_.exit.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvB10_.exit.i.i.i.i: ; preds = %bb.bf, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i, %bb.be
  %.sink.i.i.i.i = phi i64 [ -1, %bb.be ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.thread.i.i.i.i.i ], [ %.sroa.026.0.copyload.i.i.i.i.i, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5553
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5540
  br label %bb.cw

bb.bg:                                            ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !5563)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5540
  store i32 -1, ptr %i.am, align 8, !noalias !5564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5564
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !5564
  %i.ie = cmpxchg ptr %.val1.i.i.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !5565
  %i.if = extractvalue { i32, i1 } %i.ie, 1
  br i1 %i.if, label %bb.bi, label %bb.bh, !prof !17

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val1.i.i.i) #34, !noalias !5565
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ig = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !5566
  %i.ih = and i64 %i.ig, 9223372036854775807
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, label %bb.bj, !prof !17

bb.bj:                                            ; preds = %bb.bi
  %i.ij = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !5565
  %i.ik = xor i1 %i.ij, true
  %i.il = zext i1 %i.ik to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.sroa.01.0.i.i.i.i.i.i.i = phi i8 [ %i.il, %bb.bj ], [ 0, %bb.bi ] ; 5 uses
  %i.im = load atomic i8, ptr %i.ao monotonic, align 1, !noalias !5565
  %.not.i.i.not.i.i.i.i.i = icmp eq i8 %i.im, 0
  br i1 %.not.i.i.not.i.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, label %bb.bk, !prof !17

bb.bk:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5567
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !noalias !5567
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i.i, ptr %i.in, align 8, !noalias !5567
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #40, !noalias !5568
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  %i.io = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i.i to i1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  %i.ip = load i64, ptr %i.ap, align 8, !alias.scope !5569, !noalias !5570, !noundef !11 ; 6 uses
  %i.iq = icmp ult i64 %i.ip, 384307168202282326
  call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp eq i64 %i.ip, 0
  br i1 %i.ir, label %.loopexit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  %i.is = load ptr, ptr %i.as, align 8, !alias.scope !5569, !noalias !5570, !nonnull !11, !noundef !11 ; 3 uses
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.ip, 24
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i27.i.i.i.i

.lr.ph.i.i.i27.i.i.i.i:                           ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i, %bb.bl
  %.sroa.02.010.i.i.i.i.i.i.i = phi i64 [ %i.jn, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i ], [ 0, %bb.bl ] ; 5 uses
  %i.iu = phi ptr [ %i.iv, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i ], [ %i.is, %bb.bl ] ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5571)
  %i.iw = load ptr, ptr %i.iu, align 8, !alias.scope !5571, !noalias !5572, !nonnull !11, !noundef !11 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !5573, !noundef !11
  %.not.i.i.i.i28.i.i.i.i = icmp eq i64 %i.iy, %i.ar
  br i1 %.not.i.i.i.i28.i.i.i.i, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i27.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !alias.scope !5571, !noalias !5572, !noundef !11
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.jc = cmpxchg ptr %i.jb, i64 0, i64 %i.ja acq_rel acquire, align 8, !noalias !5573
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.jc, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i.i, label %bb.bn, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !alias.scope !5571, !noalias !5572, !noundef !11 ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  store atomic ptr %i.je, ptr %i.jg release, align 8, !noalias !5573
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !5573, !nonnull !11, !noundef !11
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 40 ; 2 uses
  %i.jk = atomicrmw xchg ptr %i.jj, i32 1 release, align 4, !noalias !5573
  %i.jl = icmp eq i32 %i.jk, -1
  br i1 %i.jl, label %bb.bq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.jm = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.jj) #34, !noalias !5573 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i: ; preds = %bb.bm, %.lr.ph.i.i.i27.i.i.i.i
  %i.jn = add nuw nsw i64 %.sroa.02.010.i.i.i.i.i.i.i, 1
  %i.jo = icmp eq ptr %i.iv, %i.it
  br i1 %i.jo, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i27.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %i.jp = icmp samesign ult i64 %.sroa.02.010.i.i.i.i.i.i.i, %i.ip
  call void @llvm.assume(i1 %i.jp)
  call void @llvm.experimental.noalias.scope.decl(metadata !5574)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5575)
  %i.jq = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %.sroa.02.010.i.i.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i = load ptr, ptr %i.jq, align 8, !noalias !5576 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !5576
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = xor i64 %.sroa.02.010.i.i.i.i.i.i.i, -1
  %i.jt = add nsw i64 %i.ip, %i.js
  %i.ju = mul nuw nsw i64 %i.jt, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jq, ptr nonnull align 8 %i.jr, i64 %i.ju, i1 false), !noalias !5577
  %i.jv = add nsw i64 %i.ip, -1                   ; 2 uses
  store i64 %i.jv, ptr %i.ap, align 8, !alias.scope !5578, !noalias !5579
  %.not.i.i5.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i5.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i, label %bb.br, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i.i.i.i.i.i, i64 noundef %i.jv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #40, !noalias !5580
  unreachable

bb.br:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.820.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !5564
  %i.jw = load ptr, ptr %i.at, align 8, !noalias !5564, !noundef !11
  store ptr %i.jw, ptr %i.an, align 8, !noalias !5564
  br i1 %i.io, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jx = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !5564
  %i.jy = and i64 %i.jx, 9223372036854775807
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.bt, !prof !17

bb.bt:                                            ; preds = %bb.bs
  %i.ka = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !5581
  br i1 %i.ka, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store atomic i8 1, ptr %i.ao monotonic, align 4, !noalias !5581
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.kb = atomicrmw xchg ptr %.val1.i.i.i, i32 0 release, align 4, !noalias !5581
  %i.kc = icmp eq i32 %i.kb, 2
  br i1 %i.kc, label %bb.bv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, !prof !21

bb.bv:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val1.i.i.i) #34, !noalias !5581
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.bv, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  %.val4.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !5564, !noundef !11 ; 11 uses
  %i.kd = icmp eq ptr %.val4.i.i.i.i.i, null
  br i1 %i.kd, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 225
  %i.kf = load i8, ptr %i.ke, align 1, !range !18, !noalias !5582, !noundef !11
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kh = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 224 ; 2 uses
  %i.ki = load atomic i8, ptr %i.kh acquire, align 1, !noalias !5582
  %.not2.i.i.i.i.i.i.i = icmp eq i8 %i.ki, 0
  br i1 %.not2.i.i.i.i.i.i.i, label %.lr.ph.i.i6.i35.i.i.i.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit.i.i.i.i.i.i

.lr.ph.i.i6.i35.i.i.i.i:                          ; preds = %bb.bx, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i
  %.sroa.0.03.i.i.i36.i.i.i.i = phi i32 [ %i.km, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i ], [ 0, %bb.bx ] ; 6 uses
  %i.kj = icmp ult i32 %.sroa.0.03.i.i.i36.i.i.i.i, 7
  br i1 %i.kj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i6.i35.i.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !5582
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i.i: ; preds = %.lr.ph.i.i6.i35.i.i.i.i
  %.not.i.i.i8.i.i.i.i.i = icmp eq i32 %.sroa.0.03.i.i.i36.i.i.i.i, 0
  br i1 %.not.i.i.i8.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i, label %.lr.ph.i.i.i.i42.i.i.i.i.preheader

.lr.ph.i.i.i.i42.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i.i
  %i.kk = mul nuw nsw i32 %.sroa.0.03.i.i.i36.i.i.i.i, %.sroa.0.03.i.i.i36.i.i.i.i ; 2 uses
  %xtraiter = and i32 %i.kk, 7                    ; 3 uses
  %i.kl = icmp ult i32 %.sroa.0.03.i.i.i36.i.i.i.i, 3
  br i1 %i.kl, label %.lr.ph.i.i.i.i42.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i42.i.i.i.i.preheader.new

.lr.ph.i.i.i.i42.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i42.i.i.i.i.preheader
  %unroll_iter = and i32 %i.kk, 56
  br label %.lr.ph.i.i.i.i42.i.i.i.i

.lr.ph.i.i.i.i42.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i42.i.i.i.i, %.lr.ph.i.i.i.i42.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i42.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  call void @llvm.x86.sse2.pause(), !noalias !5582
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i42.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i42.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i, label %.lr.ph.i.i.i.i42.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i42.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.i.i.i.preheader
  %lcmp.mod190 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.i.i.i42.i.i.i.i.epil

.lr.ph.i.i.i.i42.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i42.i.i.i.i.epil, %.lr.ph.i.i.i.i42.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i42.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !5582
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i, label %.lr.ph.i.i.i.i42.i.i.i.i.epil, !llvm.loop !5476

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i.i.i.i, %bb.by
  %i.km = add i32 %.sroa.0.03.i.i.i36.i.i.i.i, 1
  %i.kn = load atomic i8, ptr %i.kh acquire, align 1, !noalias !5582
  %.not.i.i7.i.i.i.i.i = icmp eq i8 %i.kn, 0
  br i1 %.not.i.i7.i.i.i.i.i, label %.lr.ph.i.i6.i35.i.i.i.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit.i.i.i.i.i.i

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.i.i.i, %bb.bx
  %.sroa.08.0.copyload.i.i.i.i.i.i = load i64, ptr %.val4.i.i.i.i.i, align 8, !noalias !5582 ; 2 uses
  store i64 -1, ptr %.val4.i.i.i.i.i, align 8, !noalias !5582
  %.not.i.i34.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload.i.i.i.i.i.i, -1
  br i1 %.not.i.i34.i.i.i.i, label %bb.ca, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB21_.exit.i.i.i.i.i.i, !prof !21

bb.bz:                                            ; preds = %bb.bw
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.val4.i.i.i.i.i, align 8, !noalias !5582 ; 2 uses
  store i64 -1, ptr %.val4.i.i.i.i.i, align 8, !noalias !5582
  %.not18.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -1
  br i1 %.not18.i.i.i.i.i.i, label %bb.cc, label %bb.cb, !prof !21

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB21_.exit.i.i.i.i.i.i: ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit.i.i.i.i.i.i
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.724.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.510.0..sroa_idx.i.i.i.i.i.i, i64 216, i1 false), !noalias !5581
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i, i64 noundef 232, i64 noundef 8) #34, !noalias !5582
  br label %bb.cd

bb.ca:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #40, !noalias !5582
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.724.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 216, i1 false), !noalias !5581
  %i.ko = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 224
  store atomic i8 1, ptr %i.ko release, align 8, !noalias !5582
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bz
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #40, !noalias !5582
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  %i.kp = load i8, ptr %i.au, align 8, !range !18, !noalias !5581, !noundef !11
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.cr, label %bb.cg

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  store i8 1, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5563, !noalias !5540
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB21_.exit.i.i.i.i.i.i
  %.sroa.023.0.ph.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.cb ], [ %.sroa.08.0.copyload.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB21_.exit.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.445.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.724.i.i.i.i.i, i64 216, i1 false), !noalias !5540
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i
  %.pre46.i.i.i.i = phi i64 [ %.sroa.023.0.ph.i.i.i.i.i, %bb.cd ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4readB10_.exit.i.i.i.i.i ]
  %i.kr = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !5583
  %i.ks = icmp eq i64 %i.kr, 1
  br i1 %i.ks, label %bb.cf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.h) #39, !noalias !5581
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5564
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvB10_.exit.i.i.i.i

bb.cg:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5585
  store ptr %i.i, ptr %i.f, align 8, !noalias !5586
  store ptr %i.j, ptr %.sroa.628.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5586
  store <2 x ptr> %i.bp, ptr %.sroa.733.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5586
  store i8 %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5586
  %i.kt = load i8, ptr %i.ax, align 8, !range !28, !noalias !5587, !noundef !11
  %i.ku = icmp eq i8 %i.kt, 1
  br i1 %i.ku, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i.i.i.i: ; preds = %bb.cg
  %i.kv = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.aw, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !5588 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.thread.i.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i.i.i.i, %bb.cg
  %.sroa.0.0.i.i.i2.i.i.i31.i.i.i.i = phi ptr [ %i.kv, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i.i.i.i ], [ %i.aw, %bb.cg ] ; 4 uses
  %i.kx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i.i, align 8, !noalias !5589, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i.i, align 8, !noalias !5589
  %.not.i.i.i9.i.i.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i.i.i9.i.i.i.i.i, label %bb.ch, label %bb.cj, !prof !21

bb.ch:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5590
  %i.ky = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !5589 ; 3 uses
  store ptr %i.ky, ptr %i.e, align 8, !noalias !5590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5590
  store i8 2, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5590
  store ptr %i.i, ptr %i.c, align 8, !noalias !5586
  store ptr %i.j, ptr %.sroa.628.0..sroa_idx31.i.i.i.i.i, align 8, !noalias !5586
  store <2 x ptr> %i.bp, ptr %.sroa.733.0..sroa_idx36.i.i.i.i.i, align 8, !noalias !5586
  store i8 %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i.i.i.i, align 8, !noalias !5590
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.ky) #38, !noalias !5591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5590
  %i.kz = atomicrmw sub ptr %i.ky, i64 1 release, align 8, !noalias !5592
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.ci, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #39, !noalias !5589
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i.i.i.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5590
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.i.i.i.i.i.i

bb.cj:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  store atomic i64 0, ptr %i.lb release, align 8, !noalias !5589
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  store atomic ptr null, ptr %i.lc release, align 8, !noalias !5589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5590
  store i8 2, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !5590
  store ptr %i.i, ptr %i.b, align 8, !noalias !5586
  store ptr %i.j, ptr %.sroa.628.0..sroa_idx29.i.i.i.i.i, align 8, !noalias !5586
  store <2 x ptr> %i.bp, ptr %.sroa.733.0..sroa_idx34.i.i.i.i.i, align 8, !noalias !5586
  store i8 %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx11.i.i.i.i.i.i.i.i, align 8, !noalias !5590
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(224) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b, ptr nonnull %i.kx) #38, !noalias !5591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5590
  %i.ld = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i.i, align 8, !noalias !5589, !noundef !11 ; 3 uses
  store ptr %i.ld, ptr %i.a, align 8, !noalias !5590
  store ptr %i.kx, ptr %.sroa.0.0.i.i.i2.i.i.i31.i.i.i.i, align 8, !noalias !5589
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i32.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lf = atomicrmw sub ptr %i.ld, i64 1 release, align 8, !noalias !5593
  %i.lg = icmp eq i64 %i.lf, 1
  br i1 %i.lg, label %bb.cl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i32.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #39, !noalias !5589
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i32.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i32.i.i.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5590
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i32.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i.i.i.i
  %.sroa.04.0.copyload5.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !5585 ; 2 uses
  %i.lh = icmp eq i64 %.sroa.04.0.copyload5.i.i.i.i.i.i, -2
  br i1 %i.lh, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.thread.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.i.i.i.i.i.i
  store i64 %.sroa.04.0.copyload5.i.i.i.i.i.i, ptr %i.y, align 8, !alias.scope !5594, !noalias !5595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.445.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(216) %i.av, i64 216, i1 false), !noalias !5595
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtCs6JMX4GRUq9U_4core6result6ResultB1y_NtNtB7_4mpsc16RecvTimeoutErrorEEB1C_.exit.i.i.i.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.thread.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4n_EB3w_.exit.i.i.i.i.i.i, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i.i.i.i
end_hunk_2
begin_hunk_3_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread27
  %i.bz = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8455
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.cc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8455
  %i.cd = xor i1 %i.cc, true
  %i.ce = zext i1 %i.cd to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ce, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cg = load atomic i8, ptr %i.cf monotonic, align 4, !noalias !8455
  %.not.i.i.not = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit13, label %bb.w, !prof !17

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8456
  store ptr %i.bw, ptr %i.b, align 8, !noalias !8456
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ch, align 8, !noalias !8456
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #40, !noalias !8457
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit13: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.ci = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8458)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !8458, !noalias !8459, !nonnull !11, !noundef !11 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 72 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !8458, !noalias !8459, !noundef !11 ; 7 uses
  %.idx72 = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx72
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %._crit_edge71, label %.lr.ph70

bb.x:                                             ; preds = %.lr.ph70
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cq = add nuw nsw i64 %i.ct, 1
  %i.cr = icmp eq ptr %i.cp, %i.cn
  br i1 %i.cr, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit13, %bb.x
  %i.cs = phi ptr [ %i.cp, %bb.x ], [ %i.ck, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit13 ] ; 2 uses
  %i.ct = phi i64 [ %i.cq, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit13 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !8460, !noalias !8461, !noundef !11
  %.not.i.i22 = icmp eq i64 %i.cv, %i.h
  br i1 %.not.i.i22, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph70
  call void @llvm.experimental.noalias.scope.decl(metadata !8462)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8463)
  %i.cw = icmp ult i64 %i.cm, 384307168202282326
  call void @llvm.assume(i1 %i.cw)
  %.not.i.i.i = icmp samesign ult i64 %i.ct, %i.cm
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ct ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cx, align 8, !noalias !8464 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !8464
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = xor i64 %i.ct, -1
  %i.da = add nsw i64 %i.cm, %i.cz
  %i.db = mul nuw nsw i64 %i.da, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull align 8 %i.cy, i64 %i.db, i1 false), !noalias !8465
  %i.dc = add nsw i64 %i.cm, -1                   ; 2 uses
  store i64 %i.dc, ptr %i.cl, align 8, !alias.scope !8466, !noalias !8467
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i, label %bb.ah, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.y
  %i.dd = phi i64 [ %i.cm, %bb.y ], [ %i.dc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.de = icmp samesign ult i64 %i.dd, 384307168202282326
  call void @llvm.assume(i1 %i.de)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ct, i64 noundef %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8468
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  %i.dh = cmpxchg ptr %i.dg, i32 0, i32 1 acquire monotonic, align 4, !noalias !8469
  %i.di = extractvalue { i32, i1 } %i.dh, 1
  br i1 %i.di, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dg) #34, !noalias !8469
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8469
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit26, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.dm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8469
  %i.dn = xor i1 %i.dm, true
  %i.do = zext i1 %i.dn to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit26

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit26: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i23 = phi i8 [ %i.do, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dq = load atomic i8, ptr %i.dp monotonic, align 4, !noalias !8469
  %.not.i.i24.not = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i24.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8470
  store ptr %i.dg, ptr %i.c, align 8, !noalias !8470
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i23, ptr %i.dr, align 8, !noalias !8470
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #40, !noalias !8471
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit26
  %i.ds = trunc nuw i8 %.sroa.01.0.i.i23 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8472)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !8472, !noalias !8473, !nonnull !11, !noundef !11 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 72 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !8472, !noalias !8473, !noundef !11 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dw, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ea = add nuw nsw i64 %i.ed, 1
  %i.eb = icmp eq ptr %i.dz, %i.dx
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, %bb.ae
  %i.ec = phi ptr [ %i.dz, %bb.ae ], [ %i.du, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.ed = phi i64 [ %i.ea, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !8474, !noalias !8475, !noundef !11
  %.not.i.i28 = icmp eq i64 %i.ef, %i.h
  br i1 %.not.i.i28, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !8476)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i27)
  call void @llvm.experimental.noalias.scope.decl(metadata !8477)
  %i.eg = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.eg)
  %.not.i.i.i29 = icmp samesign ult i64 %i.ed, %i.dw
  br i1 %.not.i.i.i29, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i31, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i30

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i31: ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ed ; 4 uses
  %.sroa.0.0.copyload1.i.i32 = load ptr, ptr %i.eh, align 8, !noalias !8478 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i33 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i33, i64 16, i1 false), !noalias !8478
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = xor i64 %i.ed, -1
  %i.ek = add nsw i64 %i.dw, %i.ej
  %i.el = mul nuw nsw i64 %i.ek, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ei, i64 %i.el, i1 false), !noalias !8479
  %i.em = add nsw i64 %i.dw, -1                   ; 2 uses
  store i64 %i.em, ptr %i.dv, align 8, !alias.scope !8480, !noalias !8481
  %.not.i4.i34 = icmp eq ptr %.sroa.0.0.copyload1.i.i32, null
  br i1 %.not.i4.i34, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i30, label %bb.ap, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i30: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i31, %bb.af
  %i.en = phi i64 [ %i.dw, %bb.af ], [ %i.em, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i31 ] ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, 384307168202282326
  call void @llvm.assume(i1 %i.eo)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ed, i64 noundef %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8482
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.ep = load atomic i8, ptr %i.j acquire, align 8
  %.not2.i = icmp eq i8 %i.ep, 0
  br i1 %.not2.i, label %.lr.ph.i39, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit

.lr.ph.i39:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.et, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.eq = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.eq, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i39
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i39
  %.not.i.i41 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i41, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.er = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.er, 7                    ; 3 uses
  %i.es = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.es, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.er, 56
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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !8426

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.et = add i32 %.sroa.0.03.i, 1
  %i.eu = load atomic i8, ptr %i.j acquire, align 8
  %.not.i40 = icmp eq i8 %i.eu, 0
  br i1 %.not.i40, label %.lr.ph.i39, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -1, ptr %i.f, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.aw, label %bb.av, !prof !21

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ev = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !8483
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.ci, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.ex = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ey = and i64 %i.ex, 9223372036854775807
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.fa = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cf monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.fb = atomicrmw xchg ptr %i.bw, i32 0 release, align 4
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit43, !prof !21

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bw) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit43

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit43: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i42, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.fd, align 8
  br label %bb.an

._crit_edge71:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit13
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #40
  unreachable

bb.an:                                            ; preds = %bb.av, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit46, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit43
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.av ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit46 ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit43 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  %i.fe = load i64, ptr %i.f, align 8, !range !10, !alias.scope !8484, !noundef !11
  %i.ff = icmp eq i64 %i.fe, -1
  br i1 %i.ff, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(232) %i.f) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ap:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i31
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i27, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i27)
  store ptr %.sroa.0.0.copyload1.i.i32, ptr %i.d, align 8
  %i.fg = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i32, i64 1 release, align 8, !noalias !8485
  %i.fh = icmp eq i64 %i.fg, 1
  br i1 %i.fh, label %bb.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit44

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit44: ; preds = %bb.ap, %bb.aq
  br i1 %i.ds, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit44
  %i.fi = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fj = and i64 %i.fi, 9223372036854775807
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.as, !prof !17

bb.as:                                            ; preds = %bb.ar
  %i.fl = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.at

bb.at:                                            ; preds = %bb.as
  store atomic i8 1, ptr %i.dp monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.at, %bb.as, %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit44
  %i.fm = atomicrmw xchg ptr %i.dg, i32 0 release, align 4
  %i.fn = icmp eq i32 %i.fm, 2
  br i1 %i.fn, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit46, !prof !21

bb.au:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dg) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit46

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit46: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fo, align 8
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
  unreachable

bb.av:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.410.0..sroa_idx, i64 216, i1 false)
  br label %bb.an

bb.aw:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10wait_readyBZ_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #40
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0B12_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(232) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(264) %1, ptr %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i40 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [232 x i8], align 8               ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !13, !noundef !11
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 225
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 224 ; 3 uses
  store i8 0, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 8 dereferenceable(224) %1, i64 224, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
end_hunk_3
begin_hunk_4_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0B12_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.ca = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8577
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.cd = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8577
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.cf, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg monotonic, align 4, !noalias !8577
  %.not.i.i.not = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit26, label %bb.w, !prof !17

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8578
  store ptr %i.bx, ptr %i.b, align 8, !noalias !8578
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ci, align 8, !noalias !8578
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #40, !noalias !8579
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit26: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.cj = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8580)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !8580, !noalias !8581, !nonnull !11, !noundef !11 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !8580, !noalias !8581, !noundef !11 ; 7 uses
  %.idx73 = mul nuw nsw i64 %i.cn, 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx73
  %i.cp = icmp eq i64 %i.cn, 0
  br i1 %i.cp, label %._crit_edge72, label %.lr.ph71

bb.x:                                             ; preds = %.lr.ph71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.cr = add nuw nsw i64 %i.cu, 1
  %i.cs = icmp eq ptr %i.cq, %i.co
  br i1 %i.cs, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit26, %bb.x
  %i.ct = phi ptr [ %i.cq, %bb.x ], [ %i.cl, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit26 ] ; 2 uses
  %i.cu = phi i64 [ %i.cr, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit26 ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !8582, !noalias !8583, !noundef !11
  %.not.i.i35 = icmp eq i64 %i.cw, %i.i
  br i1 %.not.i.i35, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph71
  call void @llvm.experimental.noalias.scope.decl(metadata !8584)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8585)
  %i.cx = icmp ult i64 %i.cn, 384307168202282326
  call void @llvm.assume(i1 %i.cx)
  %.not.i.i.i = icmp samesign ult i64 %i.cu, %i.cn
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cu ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cy, align 8, !noalias !8586 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !8586
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = xor i64 %i.cu, -1
  %i.db = add nsw i64 %i.cn, %i.da
  %i.dc = mul nuw nsw i64 %i.db, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cz, i64 %i.dc, i1 false), !noalias !8587
  %i.dd = add nsw i64 %i.cn, -1                   ; 2 uses
  store i64 %i.dd, ptr %i.cm, align 8, !alias.scope !8588, !noalias !8589
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i, label %bb.ah, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.y
  %i.de = phi i64 [ %i.cn, %bb.y ], [ %i.dd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.df = icmp samesign ult i64 %i.de, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cu, i64 noundef %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8590
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  %i.di = cmpxchg ptr %i.dh, i32 0, i32 1 acquire monotonic, align 4, !noalias !8591
  %i.dj = extractvalue { i32, i1 } %i.di, 1
  br i1 %i.dj, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dh) #34, !noalias !8591
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dk = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8591
  %i.dl = and i64 %i.dk, 9223372036854775807
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit39, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.dn = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8591
  %i.do = xor i1 %i.dn, true
  %i.dp = zext i1 %i.do to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit39

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit39: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i36 = phi i8 [ %i.dp, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dr = load atomic i8, ptr %i.dq monotonic, align 4, !noalias !8591
  %.not.i.i37.not = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i37.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8592
  store ptr %i.dh, ptr %i.c, align 8, !noalias !8592
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i36, ptr %i.ds, align 8, !noalias !8592
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #40, !noalias !8593
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit39
  %i.dt = trunc nuw i8 %.sroa.01.0.i.i36 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8594)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !8594, !noalias !8595, !nonnull !11, !noundef !11 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !8594, !noalias !8595, !noundef !11 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dx, 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.eb = add nuw nsw i64 %i.ee, 1
  %i.ec = icmp eq ptr %i.ea, %i.dy
  br i1 %i.ec, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, %bb.ae
  %i.ed = phi ptr [ %i.ea, %bb.ae ], [ %i.dv, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.ee = phi i64 [ %i.eb, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !8596, !noalias !8597, !noundef !11
  %.not.i.i41 = icmp eq i64 %i.eg, %i.i
  br i1 %.not.i.i41, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i40)
  call void @llvm.experimental.noalias.scope.decl(metadata !8599)
  %i.eh = icmp ult i64 %i.dx, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %.not.i.i.i42 = icmp samesign ult i64 %i.ee, %i.dx
  br i1 %.not.i.i.i42, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i44, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i43

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i44: ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ee ; 4 uses
  %.sroa.0.0.copyload1.i.i45 = load ptr, ptr %i.ei, align 8, !noalias !8600 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i46 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i46, i64 16, i1 false), !noalias !8600
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = xor i64 %i.ee, -1
  %i.el = add nsw i64 %i.dx, %i.ek
  %i.em = mul nuw nsw i64 %i.el, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.ej, i64 %i.em, i1 false), !noalias !8601
  %i.en = add nsw i64 %i.dx, -1                   ; 2 uses
  store i64 %i.en, ptr %i.dw, align 8, !alias.scope !8602, !noalias !8603
  %.not.i4.i47 = icmp eq ptr %.sroa.0.0.copyload1.i.i45, null
  br i1 %.not.i4.i47, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i43, label %bb.aq, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i43: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i44, %bb.af
  %i.eo = phi i64 [ %i.dx, %bb.af ], [ %i.en, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i44 ] ; 2 uses
  %i.ep = icmp samesign ult i64 %i.eo, 384307168202282326
  call void @llvm.assume(i1 %i.ep)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ee, i64 noundef %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8604
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.eq = load atomic i8, ptr %i.k acquire, align 8
  %.not2.i = icmp eq i8 %i.eq, 0
  br i1 %.not2.i, label %.lr.ph.i52, label %.loopexit

.lr.ph.i52:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.eu, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.er = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.er, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i52
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i52
  %.not.i.i54 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i54, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.es = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.es, 7                    ; 3 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.et, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.es, 56
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
  %lcmp.mod84 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !8548

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.eu = add i32 %.sroa.0.03.i, 1
  %i.ev = load atomic i8, ptr %i.k acquire, align 8
  %.not.i53 = icmp eq i8 %i.ev, 0
  br i1 %.not.i53, label %.lr.ph.i52, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ew = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !8605
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.fb = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cg monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.fc = atomicrmw xchg ptr %i.bx, i32 0 release, align 4
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit56, !prof !21

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bx) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit56: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -1, ptr %i.f, align 8
  %.not25 = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not25, label %bb.ao, label %bb.an, !prof !21

._crit_edge72:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit26
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #40
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx, i64 216, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.47.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit

bb.ao:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit56
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #40
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i64 2, ptr %0, align 8
  %.pre = load i64, ptr %i.f, align 8, !range !10, !alias.scope !8606
  %i.fe = icmp eq i64 %.pre, -1
  br i1 %i.fe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(232) %i.f) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit: ; preds = %bb.an, %bb.aw, %.loopexit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.aq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i44
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i40)
  store ptr %.sroa.0.0.copyload1.i.i45, ptr %i.d, align 8
  %i.ff = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i45, i64 1 release, align 8, !noalias !8607
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit57

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit57

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit57: ; preds = %bb.aq, %bb.ar
  br i1 %i.dt, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit57
  %i.fh = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fi = and i64 %i.fh, 9223372036854775807
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.at, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.fk = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fk, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.au

bb.au:                                            ; preds = %bb.at
  store atomic i8 1, ptr %i.dq monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.au, %bb.at, %bb.as, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit57
  %i.fl = atomicrmw xchg ptr %i.dh, i32 0 release, align 4
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit59, !prof !21

bb.av:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dh) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit59

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit59: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  store i64 -1, ptr %i.f, align 8
  %.not23 = icmp eq i64 %.sroa.09.0.copyload, -1
  br i1 %.not23, label %bb.ax, label %bb.aw, !prof !21

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #40
  unreachable

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit59
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.511.0..sroa_idx, i64 216, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.0.copyload, ptr %.sroa.418.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEB1s_.exit

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit59
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4recvs_0B12_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i20 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 10 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !11, !align !13, !noundef !11
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
end_hunk_4
begin_hunk_5_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4recvs_0B12_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread25
  %i.bz = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8699
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.cc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8699
  %i.cd = xor i1 %i.cc, true
  %i.ce = zext i1 %i.cd to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ce, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cg = load atomic i8, ptr %i.cf monotonic, align 4, !noalias !8699
  %.not.i.i.not = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit6, label %bb.w, !prof !17

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8700
  store ptr %i.bw, ptr %i.b, align 8, !noalias !8700
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ch, align 8, !noalias !8700
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #40, !noalias !8701
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit6: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.ci = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8702)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !8702, !noalias !8703, !nonnull !11, !noundef !11 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 72 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !8702, !noalias !8703, !noundef !11 ; 7 uses
  %.idx71 = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx71
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %._crit_edge70, label %.lr.ph69

bb.x:                                             ; preds = %.lr.ph69
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cq = add nuw nsw i64 %i.ct, 1
  %i.cr = icmp eq ptr %i.cp, %i.cn
  br i1 %i.cr, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit6, %bb.x
  %i.cs = phi ptr [ %i.cp, %bb.x ], [ %i.ck, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit6 ] ; 2 uses
  %i.ct = phi i64 [ %i.cq, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit6 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !8704, !noalias !8705, !noundef !11
  %.not.i.i15 = icmp eq i64 %i.cv, %i.h
  br i1 %.not.i.i15, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph69
  call void @llvm.experimental.noalias.scope.decl(metadata !8706)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8707)
  %i.cw = icmp ult i64 %i.cm, 384307168202282326
  call void @llvm.assume(i1 %i.cw)
  %.not.i.i.i = icmp samesign ult i64 %i.ct, %i.cm
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ct ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cx, align 8, !noalias !8708 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !8708
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = xor i64 %i.ct, -1
  %i.da = add nsw i64 %i.cm, %i.cz
  %i.db = mul nuw nsw i64 %i.da, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull align 8 %i.cy, i64 %i.db, i1 false), !noalias !8709
  %i.dc = add nsw i64 %i.cm, -1                   ; 2 uses
  store i64 %i.dc, ptr %i.cl, align 8, !alias.scope !8710, !noalias !8711
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i, label %bb.ah, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.y
  %i.dd = phi i64 [ %i.cm, %bb.y ], [ %i.dc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.de = icmp samesign ult i64 %i.dd, 384307168202282326
  call void @llvm.assume(i1 %i.de)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ct, i64 noundef %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8712
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  %i.dh = cmpxchg ptr %i.dg, i32 0, i32 1 acquire monotonic, align 4, !noalias !8713
  %i.di = extractvalue { i32, i1 } %i.dh, 1
  br i1 %i.di, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dg) #34, !noalias !8713
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8713
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit19, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.dm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8713
  %i.dn = xor i1 %i.dm, true
  %i.do = zext i1 %i.dn to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit19

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit19: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i16 = phi i8 [ %i.do, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dq = load atomic i8, ptr %i.dp monotonic, align 4, !noalias !8713
  %.not.i.i17.not = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i17.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8714
  store ptr %i.dg, ptr %i.c, align 8, !noalias !8714
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i16, ptr %i.dr, align 8, !noalias !8714
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #40, !noalias !8715
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit19
  %i.ds = trunc nuw i8 %.sroa.01.0.i.i16 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8716)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !8716, !noalias !8717, !nonnull !11, !noundef !11 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 72 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !8716, !noalias !8717, !noundef !11 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dw, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ea = add nuw nsw i64 %i.ed, 1
  %i.eb = icmp eq ptr %i.dz, %i.dx
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, %bb.ae
  %i.ec = phi ptr [ %i.dz, %bb.ae ], [ %i.du, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.ed = phi i64 [ %i.ea, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !8718, !noalias !8719, !noundef !11
  %.not.i.i21 = icmp eq i64 %i.ef, %i.h
  br i1 %.not.i.i21, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !8720)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i20)
  call void @llvm.experimental.noalias.scope.decl(metadata !8721)
  %i.eg = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.eg)
  %.not.i.i.i22 = icmp samesign ult i64 %i.ed, %i.dw
  br i1 %.not.i.i.i22, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i24, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i23

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i24: ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ed ; 4 uses
  %.sroa.0.0.copyload1.i.i25 = load ptr, ptr %i.eh, align 8, !noalias !8722 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i26 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i26, i64 16, i1 false), !noalias !8722
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = xor i64 %i.ed, -1
  %i.ek = add nsw i64 %i.dw, %i.ej
  %i.el = mul nuw nsw i64 %i.ek, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ei, i64 %i.el, i1 false), !noalias !8723
  %i.em = add nsw i64 %i.dw, -1                   ; 2 uses
  store i64 %i.em, ptr %i.dv, align 8, !alias.scope !8724, !noalias !8725
  %.not.i4.i27 = icmp eq ptr %.sroa.0.0.copyload1.i.i25, null
  br i1 %.not.i4.i27, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i23, label %bb.ap, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i23: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i24, %bb.af
  %i.en = phi i64 [ %i.dw, %bb.af ], [ %i.em, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i24 ] ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, 384307168202282326
  call void @llvm.assume(i1 %i.eo)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ed, i64 noundef %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8726
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.ep = load atomic i8, ptr %i.j acquire, align 8
  %.not2.i = icmp eq i8 %i.ep, 0
  br i1 %.not2.i, label %.lr.ph.i32, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit

.lr.ph.i32:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.et, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.eq = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.eq, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i32
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i32
  %.not.i.i34 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i34, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.er = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.er, 7                    ; 3 uses
  %i.es = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.es, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.er, 56
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
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !8670

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.et = add i32 %.sroa.0.03.i, 1
  %i.eu = load atomic i8, ptr %i.j acquire, align 8
  %.not.i33 = icmp eq i8 %i.eu, 0
  br i1 %.not.i33, label %.lr.ph.i32, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %i.ev = load ptr, ptr %i.f, align 8, !noundef !11 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not = icmp eq ptr %i.ev, null
  br i1 %.not, label %bb.aw, label %bb.av, !prof !21

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ew = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !8727
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.ci, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.fb = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cf monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.fc = atomicrmw xchg ptr %i.bw, i32 0 release, align 4
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit36, !prof !21

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bw) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit36

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit36: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i35, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fe, align 1
  br label %bb.an

._crit_edge70:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit6
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #40
  unreachable

bb.an:                                            ; preds = %bb.av, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit39, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit36
  %.sink = phi i8 [ 0, %bb.av ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit39 ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit36 ]
  store i8 %.sink, ptr %0, align 8
  %i.ff = load ptr, ptr %i.f, align 8, !alias.scope !8728, !noundef !11
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ap:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i24
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i20, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i20)
  store ptr %.sroa.0.0.copyload1.i.i25, ptr %i.d, align 8
  %i.fh = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i25, i64 1 release, align 8, !noalias !8729
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit37

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit37

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit37: ; preds = %bb.ap, %bb.aq
  br i1 %i.ds, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit37
  %i.fj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fk = and i64 %i.fj, 9223372036854775807
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, label %bb.as, !prof !17

bb.as:                                            ; preds = %bb.ar
  %i.fm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fm, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, label %bb.at

bb.at:                                            ; preds = %bb.as
  store atomic i8 1, ptr %i.dp monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38: ; preds = %bb.at, %bb.as, %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit37
  %i.fn = atomicrmw xchg ptr %i.dg, i32 0 release, align 4
  %i.fo = icmp eq i32 %i.fn, 2
  br i1 %i.fo, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit39, !prof !21

bb.au:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dg) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit39

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit39: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i38, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fp, align 1
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
  unreachable

bb.av:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %i.fq, align 8
  br label %bb.an

bb.aw:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #40
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0B12_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i25 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 12 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  store i8 1, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i8 0, ptr %i.l, align 8
  store ptr %i.j, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.o = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
end_hunk_5
begin_hunk_6_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0B12_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread25
  %i.cb = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8821
  %i.cc = and i64 %i.cb, 9223372036854775807
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.ce = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8821
  %i.cf = xor i1 %i.ce, true
  %i.cg = zext i1 %i.cf to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.cg, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ci = load atomic i8, ptr %i.ch monotonic, align 4, !noalias !8821
  %.not.i.i.not = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit11, label %bb.w, !prof !17

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8822
  store ptr %i.by, ptr %i.b, align 8, !noalias !8822
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.cj, align 8, !noalias !8822
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #40, !noalias !8823
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit11: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.ck = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8824)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !8824, !noalias !8825, !nonnull !11, !noundef !11 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !8824, !noalias !8825, !noundef !11 ; 7 uses
  %.idx76 = mul nuw nsw i64 %i.co, 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx76
  %i.cq = icmp eq i64 %i.co, 0
  br i1 %i.cq, label %._crit_edge75, label %.lr.ph74

bb.x:                                             ; preds = %.lr.ph74
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.cs = add nuw nsw i64 %i.cv, 1
  %i.ct = icmp eq ptr %i.cr, %i.cp
  br i1 %i.ct, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit11, %bb.x
  %i.cu = phi ptr [ %i.cr, %bb.x ], [ %i.cm, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit11 ] ; 2 uses
  %i.cv = phi i64 [ %i.cs, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit11 ] ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !8826, !noalias !8827, !noundef !11
  %.not.i.i20 = icmp eq i64 %i.cx, %i.h
  br i1 %.not.i.i20, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph74
  call void @llvm.experimental.noalias.scope.decl(metadata !8828)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8829)
  %i.cy = icmp ult i64 %i.co, 384307168202282326
  call void @llvm.assume(i1 %i.cy)
  %.not.i.i.i = icmp samesign ult i64 %i.cv, %i.co
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.y
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cv ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cz, align 8, !noalias !8830 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !8830
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = xor i64 %i.cv, -1
  %i.dc = add nsw i64 %i.co, %i.db
  %i.dd = mul nuw nsw i64 %i.dc, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr nonnull align 8 %i.da, i64 %i.dd, i1 false), !noalias !8831
  %i.de = add nsw i64 %i.co, -1                   ; 2 uses
  store i64 %i.de, ptr %i.cn, align 8, !alias.scope !8832, !noalias !8833
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i, label %bb.ah, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.y
  %i.df = phi i64 [ %i.co, %bb.y ], [ %i.de, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.dg = icmp samesign ult i64 %i.df, 384307168202282326
  call void @llvm.assume(i1 %i.dg)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cv, i64 noundef %i.df, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8834
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  %i.dj = cmpxchg ptr %i.di, i32 0, i32 1 acquire monotonic, align 4, !noalias !8835
  %i.dk = extractvalue { i32, i1 } %i.dj, 1
  br i1 %i.dk, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.di) #34, !noalias !8835
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dl = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8835
  %i.dm = and i64 %i.dl, 9223372036854775807
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit24, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.do = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8835
  %i.dp = xor i1 %i.do, true
  %i.dq = zext i1 %i.dp to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit24

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit24: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i21 = phi i8 [ %i.dq, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.ds = load atomic i8, ptr %i.dr monotonic, align 4, !noalias !8835
  %.not.i.i22.not = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i22.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8836
  store ptr %i.di, ptr %i.c, align 8, !noalias !8836
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i21, ptr %i.dt, align 8, !noalias !8836
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #40, !noalias !8837
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit24
  %i.du = trunc nuw i8 %.sroa.01.0.i.i21 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8838)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !8838, !noalias !8839, !nonnull !11, !noundef !11 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !8838, !noalias !8839, !noundef !11 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dy, 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ee, i64 24 ; 2 uses
  %i.ec = add nuw nsw i64 %i.ef, 1
  %i.ed = icmp eq ptr %i.eb, %i.dz
  br i1 %i.ed, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, %bb.ae
  %i.ee = phi ptr [ %i.eb, %bb.ae ], [ %i.dw, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.ef = phi i64 [ %i.ec, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !8840, !noalias !8841, !noundef !11
  %.not.i.i26 = icmp eq i64 %i.eh, %i.h
  br i1 %.not.i.i26, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !8842)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i25)
  call void @llvm.experimental.noalias.scope.decl(metadata !8843)
  %i.ei = icmp ult i64 %i.dy, 384307168202282326
  call void @llvm.assume(i1 %i.ei)
  %.not.i.i.i27 = icmp samesign ult i64 %i.ef, %i.dy
  br i1 %.not.i.i.i27, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i29, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i28

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i29: ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.ef ; 4 uses
  %.sroa.0.0.copyload1.i.i30 = load ptr, ptr %i.ej, align 8, !noalias !8844 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i31 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i31, i64 16, i1 false), !noalias !8844
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = xor i64 %i.ef, -1
  %i.em = add nsw i64 %i.dy, %i.el
  %i.en = mul nuw nsw i64 %i.em, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.ek, i64 %i.en, i1 false), !noalias !8845
  %i.eo = add nsw i64 %i.dy, -1                   ; 2 uses
  store i64 %i.eo, ptr %i.dx, align 8, !alias.scope !8846, !noalias !8847
  %.not.i4.i32 = icmp eq ptr %.sroa.0.0.copyload1.i.i30, null
  br i1 %.not.i4.i32, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i28, label %bb.ap, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i28: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i29, %bb.af
  %i.ep = phi i64 [ %i.dy, %bb.af ], [ %i.eo, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i29 ] ; 2 uses
  %i.eq = icmp samesign ult i64 %i.ep, 384307168202282326
  call void @llvm.assume(i1 %i.eq)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ef, i64 noundef %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8848
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.er = load atomic i8, ptr %i.l acquire, align 8
  %.not2.i = icmp eq i8 %i.er, 0
  br i1 %.not2.i, label %.lr.ph.i37, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit

.lr.ph.i37:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ev, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.es = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.es, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i37
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i37
  %.not.i.i39 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i39, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.et = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.et, 7                    ; 3 uses
  %i.eu = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.eu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.et, 56
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
  %lcmp.mod87 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !8792

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ev = add i32 %.sroa.0.03.i, 1
  %i.ew = load atomic i8, ptr %i.l acquire, align 8
  %.not.i38 = icmp eq i8 %i.ew, 0
  br i1 %.not.i38, label %.lr.ph.i37, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ex = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !8849
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.ck, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.fc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fc, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ch monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.fd = atomicrmw xchg ptr %i.by, i32 0 release, align 4
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41, !prof !21

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.by) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i40, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ff = load ptr, ptr %i.f, align 8, !noundef !11 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not10 = icmp eq ptr %i.ff, null
  br i1 %.not10, label %bb.an, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit, !prof !21

._crit_edge75:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit11
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #40
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #40
  unreachable

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.pr = load ptr, ptr %i.f, align 8, !alias.scope !8850
  %i.fg = icmp eq ptr %.pr, null
  br i1 %i.fg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit
  call void @_RNvXs2_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB5_5ChunkNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44, %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit, %bb.ao
  %.sroa.0.035 = phi i64 [ 2, %bb.ao ], [ 2, %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41 ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44 ]
  %.sroa.4.034 = phi ptr [ undef, %bb.ao ], [ undef, %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit ], [ %i.ff, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit41 ], [ %i.fr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fh = insertvalue { i64, ptr } poison, i64 %.sroa.0.035, 0
  %i.fi = insertvalue { i64, ptr } %i.fh, ptr %.sroa.4.034, 1
  ret { i64, ptr } %i.fi

bb.ap:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i29
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i25, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i25)
  store ptr %.sroa.0.0.copyload1.i.i30, ptr %i.d, align 8
  %i.fj = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i30, i64 1 release, align 8, !noalias !8851
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit42

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit42

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit42: ; preds = %bb.ap, %bb.aq
  br i1 %i.du, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit42
  %i.fl = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fm = and i64 %i.fl, 9223372036854775807
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, label %bb.as, !prof !17

bb.as:                                            ; preds = %bb.ar
  %i.fo = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fo, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, label %bb.at

bb.at:                                            ; preds = %bb.as
  store atomic i8 1, ptr %i.dr monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43: ; preds = %bb.at, %bb.as, %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit42
  %i.fp = atomicrmw xchg ptr %i.di, i32 0 release, align 4
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44, !prof !21

bb.au:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.di) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i43, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fr = load ptr, ptr %i.f, align 8, !noundef !11 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %.not8 = icmp eq ptr %i.fr, null
  br i1 %.not8, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEB1s_.exit, !prof !21

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #40
  unreachable

bb.av:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit44
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(232) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i34 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [240 x i8], align 8               ; 8 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !11, !align !13, !noundef !11
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 233
  store i8 1, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232 ; 3 uses
  store i8 0, ptr %i.j, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store i64 -1, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.m = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.q, label %bb.b

end_hunk_6
begin_hunk_7_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread26
  %i.bz = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8943
  %i.ca = and i64 %i.bz, 9223372036854775807
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.cc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8943
  %i.cd = xor i1 %i.cc, true
  %i.ce = zext i1 %i.cd to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ce, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cg = load atomic i8, ptr %i.cf monotonic, align 4, !noalias !8943
  %.not.i.i.not = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit20, label %bb.w, !prof !17

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8944
  store ptr %i.bw, ptr %i.b, align 8, !noalias !8944
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ch, align 8, !noalias !8944
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #40, !noalias !8945
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit20: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.ci = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8946)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !8946, !noalias !8947, !nonnull !11, !noundef !11 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 72 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !8946, !noalias !8947, !noundef !11 ; 7 uses
  %.idx71 = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx71
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %._crit_edge70, label %.lr.ph69

bb.x:                                             ; preds = %.lr.ph69
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cq = add nuw nsw i64 %i.ct, 1
  %i.cr = icmp eq ptr %i.cp, %i.cn
  br i1 %i.cr, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit20, %bb.x
  %i.cs = phi ptr [ %i.cp, %bb.x ], [ %i.ck, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit20 ] ; 2 uses
  %i.ct = phi i64 [ %i.cq, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit20 ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !8948, !noalias !8949, !noundef !11
  %.not.i.i29 = icmp eq i64 %i.cv, %i.h
  br i1 %.not.i.i29, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph69
  call void @llvm.experimental.noalias.scope.decl(metadata !8950)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8951)
  %i.cw = icmp ult i64 %i.cm, 384307168202282326
  call void @llvm.assume(i1 %i.cw)
  %.not.i.i.i = icmp samesign ult i64 %i.ct, %i.cm
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.ct ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cx, align 8, !noalias !8952 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !8952
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = xor i64 %i.ct, -1
  %i.da = add nsw i64 %i.cm, %i.cz
  %i.db = mul nuw nsw i64 %i.da, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull align 8 %i.cy, i64 %i.db, i1 false), !noalias !8953
  %i.dc = add nsw i64 %i.cm, -1                   ; 2 uses
  store i64 %i.dc, ptr %i.cl, align 8, !alias.scope !8954, !noalias !8955
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i, label %bb.ah, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.y
  %i.dd = phi i64 [ %i.cm, %bb.y ], [ %i.dc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.de = icmp samesign ult i64 %i.dd, 384307168202282326
  call void @llvm.assume(i1 %i.de)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ct, i64 noundef %i.dd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8956
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  %i.dh = cmpxchg ptr %i.dg, i32 0, i32 1 acquire monotonic, align 4, !noalias !8957
  %i.di = extractvalue { i32, i1 } %i.dh, 1
  br i1 %i.di, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dg) #34, !noalias !8957
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !8957
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit33, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.dm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !8957
  %i.dn = xor i1 %i.dm, true
  %i.do = zext i1 %i.dn to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit33

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit33: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i30 = phi i8 [ %i.do, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dq = load atomic i8, ptr %i.dp monotonic, align 4, !noalias !8957
  %.not.i.i31.not = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i31.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8958
  store ptr %i.dg, ptr %i.c, align 8, !noalias !8958
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i30, ptr %i.dr, align 8, !noalias !8958
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #40, !noalias !8959
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit33
  %i.ds = trunc nuw i8 %.sroa.01.0.i.i30 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !8960)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !8960, !noalias !8961, !nonnull !11, !noundef !11 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 72 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !8960, !noalias !8961, !noundef !11 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dw, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ea = add nuw nsw i64 %i.ed, 1
  %i.eb = icmp eq ptr %i.dz, %i.dx
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, %bb.ae
  %i.ec = phi ptr [ %i.dz, %bb.ae ], [ %i.du, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.ed = phi i64 [ %i.ea, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !8962, !noalias !8963, !noundef !11
  %.not.i.i35 = icmp eq i64 %i.ef, %i.h
  br i1 %.not.i.i35, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !8964)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i34)
  call void @llvm.experimental.noalias.scope.decl(metadata !8965)
  %i.eg = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.eg)
  %.not.i.i.i36 = icmp samesign ult i64 %i.ed, %i.dw
  br i1 %.not.i.i.i36, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i38, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i37

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i38: ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.ed ; 4 uses
  %.sroa.0.0.copyload1.i.i39 = load ptr, ptr %i.eh, align 8, !noalias !8966 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i40 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i40, i64 16, i1 false), !noalias !8966
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = xor i64 %i.ed, -1
  %i.ek = add nsw i64 %i.dw, %i.ej
  %i.el = mul nuw nsw i64 %i.ek, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ei, i64 %i.el, i1 false), !noalias !8967
  %i.em = add nsw i64 %i.dw, -1                   ; 2 uses
  store i64 %i.em, ptr %i.dv, align 8, !alias.scope !8968, !noalias !8969
  %.not.i4.i41 = icmp eq ptr %.sroa.0.0.copyload1.i.i39, null
  br i1 %.not.i4.i41, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i37, label %bb.ap, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i37: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i38, %bb.af
  %i.en = phi i64 [ %i.dw, %bb.af ], [ %i.em, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i38 ] ; 2 uses
  %i.eo = icmp samesign ult i64 %i.en, 384307168202282326
  call void @llvm.assume(i1 %i.eo)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ed, i64 noundef %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !8970
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.ep = load atomic i8, ptr %i.j acquire, align 8
  %.not2.i = icmp eq i8 %i.ep, 0
  br i1 %.not2.i, label %.lr.ph.i46, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit

.lr.ph.i46:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.et, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.eq = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.eq, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i46
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i46
  %.not.i.i48 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i48, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.er = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.er, 7                    ; 3 uses
  %i.es = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.es, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.er, 56
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
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !8914

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.et = add i32 %.sroa.0.03.i, 1
  %i.eu = load atomic i8, ptr %i.j acquire, align 8
  %.not.i47 = icmp eq i8 %i.eu, 0
  br i1 %.not.i47, label %.lr.ph.i46, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8 ; 2 uses
  store i64 -1, ptr %.sroa.416.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.4.0.copyload, -1
  br i1 %.not, label %bb.aw, label %bb.av, !prof !21

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ev = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !8971
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.ci, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.ex = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ey = and i64 %i.ex, 9223372036854775807
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.fa = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cf monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.fb = atomicrmw xchg ptr %i.bw, i32 0 release, align 4
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit50, !prof !21

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bw) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit50

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit50: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i49, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %0, align 8
  br label %bb.an

._crit_edge70:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit20
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #40
  unreachable

bb.an:                                            ; preds = %bb.av, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit53, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit50
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %bb.av ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit53 ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit50 ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.sink, ptr %.sroa.46.0..sroa_idx, align 8
  %i.fd = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !range !10, !alias.scope !8972, !noundef !11
  %i.fe = icmp eq i64 %i.fd, -1
  br i1 %i.fe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(224) %.sroa.416.0..sroa_idx) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.ap:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i38
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i34, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i34)
  store ptr %.sroa.0.0.copyload1.i.i39, ptr %i.d, align 8
  %i.ff = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i39, i64 1 release, align 8, !noalias !8973
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %bb.aq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit51

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit51

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit51: ; preds = %bb.ap, %bb.aq
  br i1 %i.ds, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit51
  %i.fh = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fi = and i64 %i.fh, 9223372036854775807
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, label %bb.as, !prof !17

bb.as:                                            ; preds = %bb.ar
  %i.fk = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fk, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, label %bb.at

bb.at:                                            ; preds = %bb.as
  store atomic i8 1, ptr %i.dp monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52: ; preds = %bb.at, %bb.as, %bb.ar, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit51
  %i.fl = atomicrmw xchg ptr %i.dg, i32 0 release, align 4
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit53, !prof !21

bb.au:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dg) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit53

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit53: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i52, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 1, ptr %0, align 8
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #40
  unreachable

bb.av:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.517.0..sroa_idx, i64 216, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.an

bb.aw:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #40
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0B14_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(272) %1, ptr %.0.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i50 = alloca [16 x i8], align 8      ; 4 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [240 x i8], align 16              ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !13, !noundef !11
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 233
  store i8 1, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 232 ; 3 uses
  store i8 0, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) %i.f, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
end_hunk_7
begin_hunk_8_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0B14_:bb.a

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.ca = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9065
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.cd = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !9065
  %i.ce = xor i1 %i.cd, true
  %i.cf = zext i1 %i.ce to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.cf, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg monotonic, align 4, !noalias !9065
  %.not.i.i.not = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit36, label %bb.w, !prof !17

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9066
  store ptr %i.bx, ptr %i.b, align 8, !noalias !9066
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ci, align 8, !noalias !9066
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #40, !noalias !9067
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit36: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.cj = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !9068)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !9068, !noalias !9069, !nonnull !11, !noundef !11 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !9068, !noalias !9069, !noundef !11 ; 7 uses
  %.idx73 = mul nuw nsw i64 %i.cn, 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx73
  %i.cp = icmp eq i64 %i.cn, 0
  br i1 %i.cp, label %._crit_edge72, label %.lr.ph71

bb.x:                                             ; preds = %.lr.ph71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.cr = add nuw nsw i64 %i.cu, 1
  %i.cs = icmp eq ptr %i.cq, %i.co
  br i1 %i.cs, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit36, %bb.x
  %i.ct = phi ptr [ %i.cq, %bb.x ], [ %i.cl, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit36 ] ; 2 uses
  %i.cu = phi i64 [ %i.cr, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit36 ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !9070, !noalias !9071, !noundef !11
  %.not.i.i45 = icmp eq i64 %i.cw, %i.i
  br i1 %.not.i.i45, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph71
  call void @llvm.experimental.noalias.scope.decl(metadata !9072)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !9073)
  %i.cx = icmp ult i64 %i.cn, 384307168202282326
  call void @llvm.assume(i1 %i.cx)
  %.not.i.i.i = icmp samesign ult i64 %i.cu, %i.cn
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.y
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.cu ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.cy, align 8, !noalias !9074 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !9074
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = xor i64 %i.cu, -1
  %i.db = add nsw i64 %i.cn, %i.da
  %i.dc = mul nuw nsw i64 %i.db, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cz, i64 %i.dc, i1 false), !noalias !9075
  %i.dd = add nsw i64 %i.cn, -1                   ; 2 uses
  store i64 %i.dd, ptr %i.cm, align 8, !alias.scope !9076, !noalias !9077
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i, label %bb.ah, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i, %bb.y
  %i.de = phi i64 [ %i.cn, %bb.y ], [ %i.dd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.df = icmp samesign ult i64 %i.de, 384307168202282326
  call void @llvm.assume(i1 %i.df)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cu, i64 noundef %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !9078
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !11, !align !13, !noundef !11 ; 8 uses
  %i.di = cmpxchg ptr %i.dh, i32 0, i32 1 acquire monotonic, align 4, !noalias !9079
  %i.dj = extractvalue { i32, i1 } %i.di, 1
  br i1 %i.dj, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dh) #34, !noalias !9079
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dk = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !9079
  %i.dl = and i64 %i.dk, 9223372036854775807
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit49, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.dn = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !9079
  %i.do = xor i1 %i.dn, true
  %i.dp = zext i1 %i.do to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit49

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit49: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i46 = phi i8 [ %i.dp, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dr = load atomic i8, ptr %i.dq monotonic, align 4, !noalias !9079
  %.not.i.i47.not = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i47.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9080
  store ptr %i.dh, ptr %i.c, align 8, !noalias !9080
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i46, ptr %i.ds, align 8, !noalias !9080
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #40, !noalias !9081
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit49
  %i.dt = trunc nuw i8 %.sroa.01.0.i.i46 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !9082)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !9082, !noalias !9083, !nonnull !11, !noundef !11 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !9082, !noalias !9083, !noundef !11 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dx, 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx
  %i.dz = icmp eq i64 %i.dx, 0
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.eb = add nuw nsw i64 %i.ee, 1
  %i.ec = icmp eq ptr %i.ea, %i.dy
  br i1 %i.ec, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, %bb.ae
  %i.ed = phi ptr [ %i.ea, %bb.ae ], [ %i.dv, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.ee = phi i64 [ %i.eb, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !9084, !noalias !9085, !noundef !11
  %.not.i.i51 = icmp eq i64 %i.eg, %i.i
  br i1 %.not.i.i51, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !9086)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i50)
  call void @llvm.experimental.noalias.scope.decl(metadata !9087)
  %i.eh = icmp ult i64 %i.dx, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %.not.i.i.i52 = icmp samesign ult i64 %i.ee, %i.dx
  br i1 %.not.i.i.i52, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i54, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i53

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i54: ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ee ; 4 uses
  %.sroa.0.0.copyload1.i.i55 = load ptr, ptr %i.ei, align 8, !noalias !9088 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i56 = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i50, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i56, i64 16, i1 false), !noalias !9088
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = xor i64 %i.ee, -1
  %i.el = add nsw i64 %i.dx, %i.ek
  %i.em = mul nuw nsw i64 %i.el, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.ej, i64 %i.em, i1 false), !noalias !9089
  %i.en = add nsw i64 %i.dx, -1                   ; 2 uses
  store i64 %i.en, ptr %i.dw, align 8, !alias.scope !9090, !noalias !9091
  %.not.i4.i57 = icmp eq ptr %.sroa.0.0.copyload1.i.i55, null
  br i1 %.not.i4.i57, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i53, label %bb.aq, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i53: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i54, %bb.af
  %i.eo = phi i64 [ %i.dx, %bb.af ], [ %i.en, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i54 ] ; 2 uses
  %i.ep = icmp samesign ult i64 %i.eo, 384307168202282326
  call void @llvm.assume(i1 %i.ep)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.ee, i64 noundef %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @386) #40, !noalias !9092
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.eq = load atomic i8, ptr %i.k acquire, align 8
  %.not2.i = icmp eq i8 %i.eq, 0
  br i1 %.not2.i, label %.lr.ph.i62, label %.loopexit

.lr.ph.i62:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.eu, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.er = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.er, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i62
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i62
  %.not.i.i64 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i64, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.es = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
  %xtraiter = and i32 %i.es, 7                    ; 3 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.et, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.es, 56
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
  %lcmp.mod84 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !9036

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.eu = add i32 %.sroa.0.03.i, 1
  %i.ev = load atomic i8, ptr %i.k acquire, align 8
  %.not.i63 = icmp eq i8 %i.ev, 0
  br i1 %.not.i63, label %.lr.ph.i62, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ew = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !9093
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.fb = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.cg monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit
  %i.fc = atomicrmw xchg ptr %i.bx, i32 0 release, align 4
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit66, !prof !21

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bx) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit66

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit66: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i65, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fe = load <2 x i64>, ptr %i.f, align 16
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.not35 = icmp eq i64 %.sroa.4.0.copyload, -1
  br i1 %.not35, label %bb.ao, label %bb.an, !prof !21

._crit_edge72:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit36
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #40
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit66
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(216) %.sroa.5.0..sroa_idx, i64 216, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.fe, ptr %.sroa.411.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit

bb.ao:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit66
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #40
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i64 2, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !10, !alias.scope !9094
  %i.ff = icmp eq i64 %.pre, -1
  br i1 %i.ff, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(224) %i.fg) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit: ; preds = %bb.an, %bb.aw, %.loopexit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.aq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i54
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i50, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i50)
  store ptr %.sroa.0.0.copyload1.i.i55, ptr %i.d, align 8
  %i.fh = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i55, i64 1 release, align 8, !noalias !9095
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %bb.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit67

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit67: ; preds = %bb.aq, %bb.ar
  br i1 %i.dt, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit67
  %i.fj = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fk = and i64 %i.fj, 9223372036854775807
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.at, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.fm = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.fm, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, label %bb.au

bb.au:                                            ; preds = %bb.at
  store atomic i8 1, ptr %i.dq monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68: ; preds = %bb.au, %bb.at, %bb.as, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit67
  %i.fn = atomicrmw xchg ptr %i.dh, i32 0 release, align 4
  %i.fo = icmp eq i32 %i.fn, 2
  br i1 %i.fo, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit69, !prof !21

bb.av:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dh) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit69

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit69: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i68, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8
  %i.fp = load <2 x i64>, ptr %i.f, align 16
  store i64 -1, ptr %.sroa.415.0..sroa_idx, align 8
  %.not33 = icmp eq i64 %.sroa.415.0.copyload, -1
  br i1 %.not33, label %bb.ax, label %bb.aw, !prof !21

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #40
  unreachable

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit69
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.629.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(216) %.sroa.518.0..sroa_idx, i64 216, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.fp, ptr %.sroa.427.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEB1u_.exit

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit69
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #40
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4recvs_0B12_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #9 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !11, !align !13, !noundef !11
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13435
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !13435
  %.not.i.i.not = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.e, !prof !17

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13436
  store ptr %0, ptr %i.a, align 8, !noalias !13436
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.l, align 8, !noalias !13436
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @393) #40, !noalias !13437
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.m = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13438)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !13438, !noalias !13439, !noundef !11 ; 4 uses
  %i.s = load i64, ptr %i.p, align 8, !range !22, !alias.scope !13438, !noalias !13439, !noundef !11
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8push_mutCsgcf5BHVXlUt_7uu_sort.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8grow_oneCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #39, !noalias !13439
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8push_mutCsgcf5BHVXlUt_7uu_sort.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8push_mutCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !13438, !noalias !13439, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.r ; 3 uses
  store ptr %.0.val, ptr %i.w, align 8, !noalias !13438
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %1, ptr %.sroa.46.0..sroa_idx, align 8, !noalias !13438
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr null, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !13438
  %i.x = add nsw i64 %i.r, 1                      ; 2 uses
  store i64 %i.x, ptr %i.q, align 8, !alias.scope !13438, !noalias !13439
  %i.y = icmp slt i64 %i.r, 384307168202282325
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8push_mutCsgcf5BHVXlUt_7uu_sort.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !11 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 384307168202282326
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = zext i1 %i.ad to i8
  br label %bb.j

bb.j:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8push_mutCsgcf5BHVXlUt_7uu_sort.exit, %bb.i
  %.sroa.0.0 = phi i8 [ %i.ae, %bb.i ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE8push_mutCsgcf5BHVXlUt_7uu_sort.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.af seq_cst, align 8
  br i1 %i.m, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.aj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.j monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.n, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgcf5BHVXlUt_7uu_sort.exit, !prof !21

bb.n:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCs2vKOLqTMYjT_3std6thread9lifecycleINtB5_9JoinInnerINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4joinCsgcf5BHVXlUt_7uu_sort(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !11
  tail call void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef %i.b) #34
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.e = cmpxchg ptr %i.d, i64 1, i64 -1 acquire monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.e, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit, label %_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit.thread, !prof !13452

_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.a
  %i.f = load atomic i64, ptr %.val acquire, align 8
  %i.g = icmp eq i64 %i.f, 1
  store atomic i64 1, ptr %i.d release, align 8
  br i1 %i.g, label %bb.b, label %_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit.thread, !prof !43

_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit.thread: ; preds = %bb.a, %_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @396, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398) #40
  unreachable

bb.b:                                             ; preds = %_RNvMsD_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9is_uniqueCsgcf5BHVXlUt_7uu_sort.exit
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8 ; 2 uses
  store i64 2, ptr %i.i, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.f, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13456)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !13457, !nonnull !11, !noundef !11
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !13457
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread6thread6ThreadECsgcf5BHVXlUt_7uu_sort.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs2vKOLqTMYjT_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread6thread6ThreadECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread6thread6ThreadECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.c, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13459)
  %i.m = load ptr, ptr %i.c, align 8, !alias.scope !13460, !nonnull !11, !noundef !11
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !13460
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsgcf5BHVXlUt_7uu_sort.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread6thread6ThreadECsgcf5BHVXlUt_7uu_sort.exit
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #39
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread6thread6ThreadECsgcf5BHVXlUt_7uu_sort.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #40
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_recvB10_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.i = mul nuw nsw i32 %.sroa.0.043, %.sroa.0.043 ; 2 uses
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
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
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
  br i1 %epil.iter78.cmp.not, label %.backedge, label %.lr.ph.i.epil, !llvm.loop !13461

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
  br i1 %epil.iter72.cmp.not, label %.backedge, label %.lr.ph.i23.epil, !llvm.loop !13462

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
  br i1 %epil.iter.cmp.not, label %.backedge, label %.lr.ph.i33.epil, !llvm.loop !13463

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
  %i.z = mul nuw nsw i32 %.sroa.0.043, %.sroa.0.043 ; 2 uses
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
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.043, i32 6) ; 2 uses
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
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 496 ; 2 uses
  %i.af = load atomic ptr, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.lr.ph.i37, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit

.lr.ph.i37:                                       ; preds = %bb.n, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.n ] ; 6 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ah, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i37
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i37
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.ai = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
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
  br i1 %epil.iter84.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !13464

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.o
  %i.ak = add i32 %.sroa.0.02.i, 1
  %i.al = load atomic ptr, ptr %i.ae acquire, align 8 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i37, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.n
  %.lcssa.i = phi ptr [ %i.af, %bb.n ], [ %i.al, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 2 uses
  %i.an = and i64 %.sroa.01.0, -2
  %i.ao = add i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 496
  %i.aq = load atomic ptr, ptr %i.ap monotonic, align 8
  %i.ar = icmp ne ptr %i.aq, null
  %i.as = zext i1 %i.ar to i64
  %spec.select17 = or disjoint i64 %i.ao, %i.as
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select17, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE9wait_nextBX_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.012.0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.au, align 8
  br label %bb.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4readB10_(ptr captures(address) %.16.val, i64 %.24.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.16.val, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %.24.val, 31
  tail call void @llvm.assume(i1 %i.b)
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.16.val, i64 %.24.val ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = and i64 %i.e, 1
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.h, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw nsw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56
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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !13465

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.02.i, 1
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = and i64 %i.l, 1
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = add nuw nsw i64 %.24.val, 1              ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  br i1 %i.q, label %.lr.ph.i2, label %bb.g

.lr.ph.i2:                                        ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit, %bb.f
  %.sroa.0.03.i = phi i64 [ %i.z, %bb.f ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.16.val, i64 %.sroa.0.03.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = and i64 %i.t, 2
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %.lr.ph.i2.1

bb.d:                                             ; preds = %.lr.ph.i2
  %i.w = atomicrmw or ptr %i.s, i64 4 acq_rel, align 8
  %i.x = and i64 %i.w, 2
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit, label %.lr.ph.i2.1

.lr.ph.i2.1:                                      ; preds = %bb.d, %.lr.ph.i2
  %i.z = add nuw nsw i64 %.sroa.0.03.i, 2         ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.16.val, i64 %.sroa.0.03.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8
  %i.ad = and i64 %i.ac, 2
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i2.1
  %i.af = atomicrmw or ptr %i.ab, i64 4 acq_rel, align 8
  %i.ag = and i64 %i.af, 2
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i2.1
  %exitcond.not.i.1 = icmp eq i64 %i.z, 30
  br i1 %exitcond.not.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit.sink.split, label %.lr.ph.i2

bb.g:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_writeBU_.exit
  %i.ai = atomicrmw or ptr %i.d, i64 2 acq_rel, align 8
  %i.aj = and i64 %i.ai, 4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit, label %bb.h

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit.sink.split: ; preds = %bb.j, %bb.f, %bb.h
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef 504, i64 noundef 8) #34
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit: ; preds = %bb.i, %bb.d, %bb.e, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit.sink.split, %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = icmp samesign ult i64 %.24.val, 29
  br i1 %i.al, label %.lr.ph.i4, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit.sink.split

.lr.ph.i4:                                        ; preds = %bb.h, %bb.j
  %.sroa.0.03.i5 = phi i64 [ %i.am, %bb.j ], [ %i.p, %bb.h ] ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.0.03.i5, 1       ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.16.val, i64 %.sroa.0.03.i5
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 2
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i4
  %i.as = atomicrmw or ptr %i.ao, i64 4 acq_rel, align 8
  %i.at = and i64 %i.as, 2
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i4
  %exitcond.not.i6 = icmp eq i64 %i.am, 30
  br i1 %exitcond.not.i6, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit.sink.split, label %.lr.ph.i4

bb.k:                                             ; preds = %bb.a, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit
  %.sroa.0.0 = phi ptr [ %i.o, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE7destroyBX_.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10disconnectB10_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !13501
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %0) #34, !noalias !13501
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13501
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13501
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load atomic i8, ptr %i.l monotonic, align 4, !noalias !13501
  %.not.i.i.not = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.e, !prof !17

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13502
  store ptr %0, ptr %i.c, align 8, !noalias !13502
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.n, align 8, !noalias !13502
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #40, !noalias !13503
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.o = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !18, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  store i8 1, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13504)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !13504, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !13504, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.v, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.m
  %.sroa.0.02.i = phi ptr [ %i.y, %bb.m ], [ %i.t, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !13504, !nonnull !11, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.aa = cmpxchg ptr %i.z, i64 0, i64 2 acq_rel acquire, align 8, !noalias !13504
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.l, label %bb.m

._crit_edge.i:                                    ; preds = %bb.m, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13505)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
end_hunk_9
begin_hunk_10_@_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10disconnectB10_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !13558, !nonnull !11, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.aq = atomicrmw xchg ptr %i.ap, i32 1 release, align 4, !noalias !13558
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.as = atomicrmw sub ptr %.val.i.i, i64 1 release, align 8, !noalias !13559
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #39, !noalias !13558
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13558
  %i.au = icmp eq ptr %i.aj, %i.ag
  br i1 %i.au, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, label %bb.g

bb.k:                                             ; preds = %bb.h
  %i.av = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ap) #34, !noalias !13558 ; 0 uses
  br label %bb.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.aw = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !13554, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !13554, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.ba = atomicrmw xchg ptr %i.az, i32 1 release, align 4, !noalias !13554
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l, %.lr.ph.i
  %i.bc = icmp eq ptr %i.y, %i.w
  br i1 %i.bc, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  %i.bd = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.az) #34, !noalias !13554 ; 0 uses
  br label %bb.m

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i, %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13560)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !13560, !nonnull !11, !noundef !11 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !13560, !noundef !11 ; 2 uses
  %.idx.i2 = mul nuw nsw i64 %i.bh, 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx.i2
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %._crit_edge.i7, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, %bb.u
  %.sroa.0.02.i4 = phi ptr [ %i.bk, %bb.u ], [ %i.bf, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i4, i64 24 ; 2 uses
  %.sroa.0.0.val.i5 = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !13560, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i5, i64 24
  %i.bm = cmpxchg ptr %i.bl, i64 0, i64 2 acq_rel acquire, align 8, !noalias !13560
  %.sroa.18.0.in.i.i.i6 = extractvalue { i64, i1 } %i.bm, 1
  br i1 %.sroa.18.0.in.i.i.i6, label %bb.t, label %bb.u

._crit_edge.i7:                                   ; preds = %bb.u, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13561)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !13562, !noalias !13563, !noundef !11 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 384307168202282326
  tail call void @llvm.assume(i1 %i.bp)
  store i64 0, ptr %i.bn, align 8, !alias.scope !13562, !noalias !13563
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !13562, !noalias !13563, !nonnull !11, !noundef !11 ; 2 uses
  %.idx.i.i8 = mul nuw nsw i64 %i.bo, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx.i.i8
  %i.bt = icmp eq i64 %i.bo, 0
  br i1 %i.bt, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %._crit_edge.i7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i13, %.lr.ph.i.i9
  %.sroa.01.06.i.i10 = phi ptr [ %i.br, %.lr.ph.i.i9 ], [ %i.bv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i13 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.06.i.i10, i64 24, i1 false), !noalias !13564
  %i.bw = load i64, ptr %i.bu, align 8, !noalias !13564, !noundef !11
  %.val.i.i11 = load ptr, ptr %i.a, align 8, !noalias !13564, !nonnull !11, !noundef !11 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i11, i64 24
  %i.by = cmpxchg ptr %i.bx, i64 0, i64 %i.bw acq_rel acquire, align 8, !noalias !13564
  %.sroa.18.0.in.i.i.i.i12 = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i.i.i12, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i11, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !13564, !nonnull !11, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 2 uses
  %i.cc = atomicrmw xchg ptr %i.cb, i32 1 release, align 4, !noalias !13564
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  %i.ce = atomicrmw sub ptr %.val.i.i11, i64 1 release, align 8, !noalias !13565
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i13

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #39, !noalias !13564
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i13: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13564
  %i.cg = icmp eq ptr %i.bv, %i.bs
  br i1 %i.cg, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.ch = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cb) #34, !noalias !13564 ; 0 uses
  br label %bb.q

bb.t:                                             ; preds = %.lr.ph.i3
  %i.ci = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !13560, !nonnull !11, !noundef !11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !13560, !nonnull !11, !noundef !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  %i.cm = atomicrmw xchg ptr %i.cl, i32 1 release, align 4, !noalias !13560
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %.lr.ph.i3
  %i.co = icmp eq ptr %i.bk, %i.bi
  br i1 %i.co, label %._crit_edge.i7, label %.lr.ph.i3

bb.v:                                             ; preds = %bb.t
  %i.cp = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cl) #34, !noalias !13560 ; 0 uses
  br label %bb.u

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i13, %._crit_edge.i7, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  br i1 %i.o, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cq = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cr = and i64 %i.cq, 9223372036854775807
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x, !prof !17

bb.x:                                             ; preds = %bb.w
  %i.ct = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.ct, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cu = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.cv = icmp eq i32 %i.cu, 2
  br i1 %i.cv, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit, !prof !21

bb.z:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #34
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.z
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4readB10_(ptr captures(address) %.32.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.32.val, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 9
  %i.c = load i8, ptr %i.b, align 1, !range !18, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 8 ; 2 uses
  %i.f = load atomic i8, ptr %i.e acquire, align 1
  %.not2.i = icmp eq i8 %i.f, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit

.lr.ph.i:                                         ; preds = %bb.c, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.j, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.c ] ; 6 uses
  %i.g = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.g, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.h = mul nuw nsw i32 %.sroa.0.03.i, %.sroa.0.03.i ; 2 uses
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
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !13566

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.j = add i32 %.sroa.0.03.i, 1
  %i.k = load atomic i8, ptr %i.e acquire, align 1
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.c
  %i.l = load ptr, ptr %.32.val, align 8, !noundef !11 ; 2 uses
  store ptr null, ptr %.32.val, align 8
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB21_.exit, !prof !21

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.32.val, align 8, !noundef !11 ; 2 uses
  store ptr null, ptr %.32.val, align 8
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.h, label %bb.g, !prof !21

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB21_.exit: ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.32.val, i64 noundef 16, i64 noundef 8) #34
  br label %bb.i

bb.f:                                             ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10wait_readyBZ_.exit
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #40
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.32.val, i64 8
  store atomic i8 1, ptr %i.n release, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #40
  unreachable

bb.i:                                             ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB21_.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.l, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEB21_.exit ], [ %i.m, %bb.g ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10disconnectB12_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !13602
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %0) #34, !noalias !13602
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13602
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13602
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load atomic i8, ptr %i.l monotonic, align 4, !noalias !13602
  %.not.i.i.not = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit, label %bb.e, !prof !17

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13603
  store ptr %0, ptr %i.c, align 8, !noalias !13603
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.n, align 8, !noalias !13603
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #40, !noalias !13604
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit
  %i.o = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !18, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit
  store i8 1, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13605)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !13605, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !13605, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.v, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.m
  %.sroa.0.02.i = phi ptr [ %i.y, %bb.m ], [ %i.t, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i = load ptr, ptr %.sroa.0.02.i, align 8, !noalias !13605, !nonnull !11, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i, i64 24
  %i.aa = cmpxchg ptr %i.z, i64 0, i64 2 acq_rel acquire, align 8, !noalias !13605
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.l, label %bb.m

._crit_edge.i:                                    ; preds = %bb.m, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13606)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !13607, !noalias !13608, !noundef !11 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 384307168202282326
  tail call void @llvm.assume(i1 %i.ad)
  store i64 0, ptr %i.ab, align 8, !alias.scope !13607, !noalias !13608
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !13607, !noalias !13608, !nonnull !11, !noundef !11 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ac, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i, %.lr.ph.i.i
  %.sroa.01.06.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.06.i.i, i64 24, i1 false), !noalias !13609
  %i.ak = load i64, ptr %i.ai, align 8, !noalias !13609, !noundef !11
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !13609, !nonnull !11, !noundef !11 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.am = cmpxchg ptr %i.al, i64 0, i64 %i.ak acq_rel acquire, align 8, !noalias !13609
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.am, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !13609, !nonnull !11, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.aq = atomicrmw xchg ptr %i.ap, i32 1 release, align 4, !noalias !13609
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.as = atomicrmw sub ptr %.val.i.i, i64 1 release, align 8, !noalias !13610
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.b) #39, !noalias !13609
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13609
  %i.au = icmp eq ptr %i.aj, %i.ag
  br i1 %i.au, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, label %bb.g

end_hunk_10
begin_hunk_11_@_RNvMs2_Csgcf5BHVXlUt_7uu_sortNtB5_14GlobalSettings16parse_byte_count:bb.a
.lr.ph150.i.i:                                    ; preds = %.lr.ph150.i.i.preheader, %bb.ao
  %.sroa.0.4149.i.i = phi ptr [ %i.go, %bb.ao ], [ %.sroa.0.4149.i.i.ph, %.lr.ph150.i.i.preheader ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.gn, %bb.ao ], [ %.sroa.26.4148.i.i.ph, %.lr.ph150.i.i.preheader ]
  %.sroa.084.4147.i.i = phi i64 [ %i.gq, %bb.ao ], [ 0, %.lr.ph150.i.i.preheader ]
  %i.gi = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !13695, !noalias !13696, !noundef !11
  %i.gj = zext i8 %i.gi to i32
  %i.gk = add nsw i32 %i.gj, -48                  ; 2 uses
  %i.gl = icmp ult i32 %i.gk, 10
  br i1 %i.gl, label %bb.ao, label %.loopexit.i

bb.ao:                                            ; preds = %.lr.ph150.i.i
  %i.gm = mul i64 %.sroa.084.4147.i.i, 10
  %i.gn = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.gp = zext nneg i32 %i.gk to i64
  %i.gq = add i64 %i.gm, %i.gp                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.loopexit.i:                                      ; preds = %bb.ah, %bb.ag, %.lr.ph.i.i, %.lr.ph141.i.i, %bb.am, %bb.al, %.preheader111.i.i, %.lr.ph150.i.i, %bb.ad, %bb.ad, %.thread.i
  %.ph.i = phi ptr [ %i.eq, %bb.am ], [ %i.eq, %.lr.ph150.i.i ], [ %i.eq, %.lr.ph141.i.i ], [ %i.eq, %bb.ad ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ %i.eq, %bb.ad ], [ %i.eq, %.preheader111.i.i ], [ %i.eq, %bb.al ], [ %i.eq, %.lr.ph.i.i ], [ %i.eq, %bb.ag ], [ %i.eq, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13693
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph.i, i64 noundef %i.eo) #39, !noalias !13693
  %i.gr = load i8, ptr %i.d, align 8, !range !18, !noalias !13693, !noundef !11
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %bb.ar, label %bb.as

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.ai, %bb.aj, %bb.an, %bb.ao
  %.sroa.154.0.i = phi i64 [ %i.ft, %bb.aj ], [ %i.gq, %bb.ao ], [ %i.gh, %bb.an ], [ %i.fk, %bb.ai ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 4, i64 noundef %.sroa.154.0.i) #34, !noalias !13693
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i
  %i.gt = phi ptr [ %.ph.i, %bb.as ], [ %i.eq, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13693
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13693
  br i1 %i.ep, label %_RNCNvMs2_Csgcf5BHVXlUt_7uu_sortNtB7_14GlobalSettings16parse_byte_count0B7_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gt, i64 noundef %i.eo, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !13697
  br label %_RNCNvMs2_Csgcf5BHVXlUt_7uu_sortNtB7_14GlobalSettings16parse_byte_count0B7_.exit

bb.ar:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13693
  store i64 %i.eo, ptr %i.c, align 8, !noalias !13693
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph.i, ptr %.sroa.5.0..sroa_idx1.i, align 8, !noalias !13693
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.eo, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !13693
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #34, !noalias !13693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !13693
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13693
  br label %_RNCNvMs2_Csgcf5BHVXlUt_7uu_sortNtB7_14GlobalSettings16parse_byte_count0B7_.exit

bb.as:                                            ; preds = %.loopexit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gv = load double, ptr %i.gu, align 8, !noalias !13693, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 4, double noundef %i.gv) #34, !noalias !13693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13693
  br label %bb.ap

_RNCNvMs2_Csgcf5BHVXlUt_7uu_sortNtB7_14GlobalSettings16parse_byte_count0B7_.exit: ; preds = %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13693
  store i64 2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.x, %_RNCNvMs2_Csgcf5BHVXlUt_7uu_sortNtB7_14GlobalSettings16parse_byte_count0B7_.exit, %bb.v
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendBS_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(224) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [264 x i8], align 8               ; 10 uses
  %i.c = alloca [264 x i8], align 8               ; 10 uses
  %i.d = alloca [232 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [264 x i8], align 8               ; 15 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [216 x i8], align 8         ; 10 uses
  %.sroa.6.i = alloca [216 x i8], align 8         ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [232 x i8], align 8               ; 12 uses
  %.sroa.63 = alloca [216 x i8], align 8          ; 4 uses
  %.sroa.6 = alloca [216 x i8], align 8           ; 6 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !13811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13811
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !13811
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !13812 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !13812, !noundef !11 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cs, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cr, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13813)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !13814, !noundef !11
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !13814, !nonnull !11, !noundef !11
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !13814, !noundef !11
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [232 x i8], ptr %i.ap, i64 %i.al ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !13814 ; 2 uses
  %i.av = icmp eq i64 %.sroa.02.043.i.i, %i.au
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !13814, !noundef !11
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.sroa.02.043.i.i, 1
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = add nuw i64 %i.al, 1
  %i.bb = load i64, ptr %i.ad, align 128, !noalias !13814, !noundef !11
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13814
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.be = mul nuw nsw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter129 = and i32 %i.be, 7                 ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter133 = and i32 %i.be, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter134 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter134.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  %niter134.next.7 = add i32 %niter134, 8         ; 2 uses
  %niter134.ncmp.7 = icmp eq i32 %niter134.next.7, %unroll_iter133
  br i1 %niter134.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bg = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !13814
  %i.bh = load i64, ptr %i.aa, align 8, !noalias !13814, !noundef !11
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = icmp eq i64 %i.bi, %.sroa.02.043.i.i
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.bk = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter135 = and i32 %i.bk, 5                 ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bl, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter139 = and i32 %i.bk, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter140 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter140.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  %niter140.next.7 = add i32 %niter140, 8         ; 2 uses
  %niter140.ncmp.7 = icmp eq i32 %niter140.next.7, %unroll_iter139
  br i1 %niter140.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit104.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod143.not = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod143.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod144 = icmp ne i32 %xtraiter141, 0
  call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter142 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter142.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !13814
  %epil.iter142.next = add i32 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i32 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !13704

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit104.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod137.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit104.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod138 = icmp ne i32 %xtraiter135, 0
  call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter136 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter136.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !13814
  %epil.iter136.next = add i32 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i32 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !13705

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod131.not = icmp eq i32 %xtraiter129, 0
  br i1 %lcmp.mod131.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod132 = icmp ne i32 %xtraiter129, 0
  call void @llvm.assume(i1 %lcmp.mod132)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter130 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter130.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !13814
  %epil.iter130.next = add i32 %epil.iter130, 1   ; 2 uses
  %epil.iter130.cmp.not = icmp eq i32 %epil.iter130.next, %xtraiter129
  br i1 %epil.iter130.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !13706

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit105.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit104.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bm = load atomic i64, ptr %i.u monotonic, align 16, !noalias !13814 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bn = load i64, ptr %i.v, align 16, !noalias !13814, !noundef !11 ; 2 uses
  %i.bo = and i64 %i.bn, %i.bm
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bq = load i64, ptr %i.aa, align 8, !noalias !13814, !noundef !11
  %i.br = add i64 %i.bq, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bs = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bs, %bb.j ], [ %i.br, %bb.i ]
  %i.bt = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !13814
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter141 = and i32 %i.aj, 7                 ; 3 uses
  %i.bu = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bu, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter145 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter146 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  call void @llvm.x86.sse2.pause(), !noalias !13814
  %niter146.next.7 = add i32 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i32 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i: ; preds = %bb.h
  %i.bv = load i32, ptr %i.s, align 8, !range !44, !noalias !13811, !noundef !11 ; 2 uses
  %.not.i = icmp eq i32 %i.bv, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !13813, !noalias !13811
  %i.bx = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bx, ptr %i.t, align 8, !alias.scope !13813, !noalias !13811
  store i64 %.sroa.0.0.copyload, ptr %i.as, align 8, !noalias !13815
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false), !noalias !13816
  store atomic i64 %i.bx, ptr %i.bw release, align 8, !noalias !13817
  %i.by = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.by) #38, !noalias !13817
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i
  %i.bz = load i64, ptr %i.q, align 8, !noalias !13811, !noundef !11 ; 2 uses
  %i.ca = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34, !noalias !13811 ; 2 uses
  %i.cb = extractvalue { i64, i32 } %i.ca, 0      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.bz
  br i1 %i.cc, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13818
  store ptr %i.p, ptr %i.o, align 8, !noalias !13811
  store ptr %.8.val, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !13811
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !13811
  %i.cd = load i8, ptr %i.af, align 8, !range !28, !noalias !13819, !noundef !11
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.m
  %i.cf = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !13818 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cf, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13818, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13818
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !21

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13818
  %i.ci = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !13818 ; 3 uses
  store ptr %i.ci, ptr %i.n, align 8, !noalias !13818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13818
  store ptr %i.p, ptr %i.m, align 8, !noalias !13818
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !13811
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !13811
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ci) #38, !noalias !13818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13818
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !13820
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #39, !noalias !13818
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13818
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store atomic i64 0, ptr %i.cl release, align 8, !noalias !13818
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store atomic ptr null, ptr %i.cm release, align 8, !noalias !13818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13818
  store ptr %i.p, ptr %i.l, align 8, !noalias !13818
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !13811
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !13811
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.ch) #38, !noalias !13818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13818
  %i.cn = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13818, !noundef !11 ; 3 uses
  store ptr %i.cn, ptr %i.k, align 8, !noalias !13818
  store ptr %i.ch, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13818
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !13821
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #39, !noalias !13818
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13818
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs0_0B1E_(ptr nonnull %i.o) #38, !noalias !13818
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13818
  %i.cr = load atomic i64, ptr %i.u monotonic, align 16, !noalias !13822 ; 2 uses
  %i.cs = load i64, ptr %i.v, align 16, !noalias !13822, !noundef !11 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cv = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not30.i = icmp samesign ult i32 %i.cv, %i.bv
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.cb, %i.bz
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 8
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, %bb.u, %bb.t
  %i.cx = phi i64 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %.sroa.02.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !noalias !13823 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.db = load atomic ptr, ptr %i.da acquire, align 8, !noalias !13823
  %i.dc = and i64 %i.cz, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cz, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.db, %.lr.ph.i.i3 ], [ %i.do, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.df = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dg = and i64 %i.df, 31                       ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 31
  br i1 %i.dh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.di, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13823
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dj = mul nuw nsw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter123 = and i32 %i.dj, 7                 ; 3 uses
  %i.dk = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dk, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter127 = and i32 %i.dj, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter128 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter128.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  %niter128.next.7 = add i32 %niter128, 8         ; 2 uses
  %niter128.ncmp.7 = icmp eq i32 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod125.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod126 = icmp ne i32 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter124 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter124.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  %epil.iter124.next = add i32 %epil.iter124, 1   ; 2 uses
  %epil.iter124.cmp.not = icmp eq i32 %epil.iter124.next, %xtraiter123
  br i1 %epil.iter124.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !13738

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dl = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dm = icmp eq i64 %i.dg, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dm, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.du, %bb.ag ], [ %i.du, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ed, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dn = load atomic i64, ptr %i.cy acquire, align 8, !noalias !13823 ; 2 uses
  %i.do = load atomic ptr, ptr %i.da acquire, align 8, !noalias !13823
  %i.dp = and i64 %i.dn, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.ds, %bb.aa ] ; 7 uses
  %i.dr = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dr, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13823
  %i.ds = tail call noalias noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7200, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13823 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i, !prof !21

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #37, !noalias !13823
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13823
  %i.du = tail call noalias noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7200, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13823 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i, !prof !21

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #37, !noalias !13823
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ac
  %i.dw = cmpxchg ptr %i.da, ptr null, ptr %i.du release monotonic, align 8, !noalias !13823
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.du, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i ] ; 3 uses
  %i.dy = add i64 %.sroa.03.049.i.i, 2
  %i.dz = cmpxchg weak ptr %i.cy, i64 %.sroa.03.049.i.i, i64 %i.dy seq_cst acquire, align 8, !noalias !13823
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dz, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.du, ptr %i.de release, align 8, !noalias !13823
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i
  %i.ea = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ea, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !13823
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.eb = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.eb, 5                    ; 3 uses
  %i.ec = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ec, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.eb, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13823
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !13739

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ed = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dm, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i, !prof !21

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.da release, align 8, !noalias !13823
  %i.ee = atomicrmw add ptr %i.cy, i64 2 release, align 8, !noalias !13823 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.2.i.i release, align 8, !noalias !13823
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63, i64 216, i1 false), !noalias !13824
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !13823
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.dg, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ef = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ef, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !13823
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13826)
  %i.eg = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.43.126.i, i64 8
  %i.ei = getelementptr inbounds nuw [232 x i8], ptr %i.eh, i64 %.sroa.9.125.i ; 3 uses
end_hunk_11
begin_hunk_12_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendBS_:bb.a

bb.br:                                            ; preds = %bb.bq
  %i.hw = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13863
  %i.hx = and i64 %i.hw, 9223372036854775807
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bs, !prof !17

bb.bs:                                            ; preds = %bb.br
  %i.hz = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13863
  br i1 %i.hz, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store atomic i8 1, ptr %i.hu monotonic, align 4, !noalias !13863
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.ia = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4, !noalias !13863
  %i.ib = icmp eq i32 %i.ia, 2
  br i1 %i.ib, label %bb.bu, label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i, !prof !21

bb.bu:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i.i.i) #34, !noalias !13863
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i: ; preds = %bb.bu, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0INtNtBZ_6result6ResultuINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4l_EB3w_.exit.thread.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13832
  %.pre.pre = load i64, ptr %i.r, align 8, !range !32
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

bb.bv:                                            ; preds = %.loopexit.i
  %.sroa.4.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.0..sroa_idx.i25, ptr noundef nonnull readonly align 8 dereferenceable(224) %1, i64 224, i1 false)
  br i1 %i.fa, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ic = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13832
  %i.id = and i64 %i.ic, 9223372036854775807
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, label %bb.bx, !prof !17

bb.bx:                                            ; preds = %bb.bw
  %i.if = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13832
  br i1 %i.if, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store atomic i8 1, ptr %i.ex monotonic, align 4, !noalias !13832
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i: ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %i.ig = atomicrmw xchg ptr %.8.val, i32 0 release, align 4, !noalias !13832
  %i.ih = icmp eq i32 %i.ig, 2
  br i1 %i.ih, label %bb.bz, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit, !prof !21

bb.bz:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val) #34, !noalias !13832
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i, %bb.bz
  %.pre = phi i64 [ 2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i ], [ %.pre.pre, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i ], [ 1, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i12.i ], [ 1, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit
  %i.ii = phi i64 [ %.pre, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit ], [ %i.em, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit ], [ %i.cx, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit ]
  switch i64 %i.ii, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0BU_.exit [
    i64 2, label %bb.cc
    i64 0, label %bb.cb
  ], !prof !55

bb.cb:                                            ; preds = %bb.ca
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #40, !noalias !13864
  unreachable

_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0BU_.exit: ; preds = %bb.ca
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.46.0..sroa_idx, i64 224, i1 false)
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  store i64 -1, ptr %0, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0BU_.exit, %bb.cc
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendBS_(i64 %.0.val, ptr %.8.val, ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.u
    i64 2, label %bb.al
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  %i.v = load atomic i64, ptr %i.t monotonic, align 8, !noalias !13952 ; 2 uses
  %i.w = load i64, ptr %i.u, align 16, !noalias !13952, !noundef !11 ; 2 uses
  %i.x = and i64 %i.w, %i.v
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ad = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i, %.lr.ph.i.lr.ph.i
  %i.af = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cq, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i ]
  %i.ag = phi i64 [ %i.v, %.lr.ph.i.lr.ph.i ], [ %i.cp, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13953)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ah = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.ai = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.aj = add i64 %i.ah, -1
  %i.ak = and i64 %i.aj, %.sroa.02.043.i.i        ; 3 uses
  %i.al = load i64, ptr %i.z, align 8, !noalias !13953, !noundef !11
  %i.am = sub i64 0, %i.al
  %i.an = and i64 %.sroa.02.043.i.i, %i.am
  %i.ao = load ptr, ptr %i.aa, align 8, !noalias !13953, !nonnull !11, !noundef !11
  %i.ap = load i64, ptr %i.ab, align 16, !noalias !13953, !noundef !11
  %i.aq = icmp ult i64 %i.ak, %i.ap
  call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ak ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8, !noalias !13953 ; 2 uses
  %i.at = icmp eq i64 %.sroa.02.043.i.i, %i.as
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = load i64, ptr %i.z, align 8, !noalias !13953, !noundef !11
  %i.av = add i64 %i.au, %i.as
  %i.aw = add i64 %.sroa.02.043.i.i, 1
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ay = add nuw i64 %i.ak, 1
  %i.az = load i64, ptr %i.ac, align 128, !noalias !13953, !noundef !11
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bb, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13953
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.bc = mul nuw nsw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter125 = and i32 %i.bc, 7                 ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bd, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter129 = and i32 %i.bc, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter130 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter130.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  %niter130.next.7 = add i32 %niter130, 8         ; 2 uses
  %niter130.ncmp.7 = icmp eq i32 %niter130.next.7, %unroll_iter129
  br i1 %niter130.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit101.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.be = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !13953
  %i.bf = load i64, ptr %i.z, align 8, !noalias !13953, !noundef !11
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = icmp eq i64 %i.bg, %.sroa.02.043.i.i
  br i1 %i.bh, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.bi = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter131 = and i32 %i.bi, 5                 ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bj, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter135 = and i32 %i.bi, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter136 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter136.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  %niter136.next.7 = add i32 %niter136, 8         ; 2 uses
  %niter136.ncmp.7 = icmp eq i32 %niter136.next.7, %unroll_iter135
  br i1 %niter136.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit100.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod140 = icmp ne i32 %xtraiter137, 0
  call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter138 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter138.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !13953
  %epil.iter138.next = add i32 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i32 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !13868

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit100.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod133.not = icmp eq i32 %xtraiter131, 0
  br i1 %lcmp.mod133.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit100.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod134 = icmp ne i32 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter132 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter132.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !13953
  %epil.iter132.next = add i32 %epil.iter132, 1   ; 2 uses
  %epil.iter132.cmp.not = icmp eq i32 %epil.iter132.next, %xtraiter131
  br i1 %epil.iter132.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !13869

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit101.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod127.not = icmp eq i32 %xtraiter125, 0
  br i1 %lcmp.mod127.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit101.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod128 = icmp ne i32 %xtraiter125, 0
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter126 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter126.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !13953
  %epil.iter126.next = add i32 %epil.iter126, 1   ; 2 uses
  %epil.iter126.cmp.not = icmp eq i32 %epil.iter126.next, %xtraiter125
  br i1 %epil.iter126.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !13870

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit101.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit100.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bk = load atomic i64, ptr %i.t monotonic, align 16, !noalias !13953 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bl = load i64, ptr %i.u, align 16, !noalias !13953, !noundef !11 ; 2 uses
  %i.bm = and i64 %i.bl, %i.bk
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %i.z, align 8, !noalias !13953, !noundef !11
  %i.bp = add i64 %i.bo, %i.an
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bq = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.j ], [ %i.bp, %bb.i ]
  %i.br = cmpxchg weak ptr %i.t, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !13953
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.br, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.l, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter137 = and i32 %i.ai, 7                 ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bs, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter141 = and i32 %i.ai, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter142 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter142.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  call void @llvm.x86.sse2.pause(), !noalias !13953
  %niter142.next.7 = add i32 %niter142, 8         ; 2 uses
  %niter142.ncmp.7 = icmp eq i32 %niter142.next.7, %unroll_iter141
  br i1 %niter142.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i: ; preds = %bb.h
  %i.bt = load i32, ptr %i.r, align 8, !range !44, !noundef !11 ; 2 uses
  %.not.i = icmp eq i32 %i.bt, -1
  br i1 %.not.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.ar, ptr %i.p, align 8, !alias.scope !13953
  %i.bu = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bu, ptr %i.s, align 8, !alias.scope !13953
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %0, ptr %i.bv, align 8
  store atomic i64 %i.bu, ptr %i.ar release, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bw) #38
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.l, %bb.b
  %.sroa.0.0.i11.i = phi ptr [ null, %bb.l ], [ %0, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ %0, %bb.b ], [ %0, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i ] ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.0.0.i11.i, null
  %..i = select i1 %.not9.i, i64 2, i64 1
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

bb.m:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i
  %i.bx = load i64, ptr %i.q, align 8, !noundef !11 ; 2 uses
  %i.by = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34 ; 2 uses
  %i.bz = extractvalue { i64, i32 } %i.by, 0      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bx
  br i1 %i.ca, label %.split.i, label %bb.t

bb.n:                                             ; preds = %bb.t, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13954
  store ptr %i.p, ptr %i.o, align 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.cb = load i8, ptr %i.ae, align 8, !range !28, !noalias !13955, !noundef !11
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.n
  %i.cd = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !13954 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.n
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cd, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.ad, %bb.n ] ; 4 uses
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13954, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13954
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.q, !prof !21

bb.o:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13954
  %i.cg = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !13954 ; 3 uses
  store ptr %i.cg, ptr %i.n, align 8, !noalias !13954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !13954
  store ptr %i.p, ptr %i.m, align 8, !noalias !13954
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.cg) #38, !noalias !13954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13954
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !13956
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #39, !noalias !13954
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13954
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

bb.q:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store atomic i64 0, ptr %i.cj release, align 8, !noalias !13954
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store atomic ptr null, ptr %i.ck release, align 8, !noalias !13954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !13954
  store ptr %i.p, ptr %i.l, align 8, !noalias !13954
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cf) #38, !noalias !13954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13954
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13954, !noundef !11 ; 3 uses
  store ptr %i.cl, ptr %i.k, align 8, !noalias !13954
  store ptr %i.cf, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13954
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !13957
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #39, !noalias !13954
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13954
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs0_0B1E_(ptr nonnull %i.o) #38, !noalias !13954
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13954
  %i.cp = load atomic i64, ptr %i.t monotonic, align 16, !noalias !13958 ; 2 uses
  %i.cq = load i64, ptr %i.u, align 16, !noalias !13958, !noundef !11 ; 2 uses
  %i.cr = and i64 %i.cq, %i.cp
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.m
  %i.ct = extractvalue { i64, i32 } %i.by, 1      ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  call void @llvm.assume(i1 %i.cu)
  %.not20.i = icmp samesign ult i32 %i.ct, %i.bt
  br i1 %.not20.i, label %bb.n, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

bb.t:                                             ; preds = %bb.m
  %.not19.i = icmp slt i64 %i.bz, %i.bx
  br i1 %.not19.i, label %bb.n, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit: ; preds = %.split.i, %bb.t, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i
  %.sroa.4.0.i = phi ptr [ %.sroa.0.0.i11.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i ], [ %0, %bb.t ], [ %0, %.split.i ]
  %.sroa.02.0.i = phi i64 [ %..i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i ], [ 0, %bb.t ], [ 0, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bv

bb.u:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8, !noalias !13959 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.cy = load atomic ptr, ptr %i.cx acquire, align 8, !noalias !13959
  %i.cz = and i64 %i.cw, 1
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i10, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit

.lr.ph.i.i10:                                     ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i10
  %.sroa.03.049.i.i = phi i64 [ %i.cw, %.lr.ph.i.i10 ], [ %i.dk, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.cy, %.lr.ph.i.i10 ], [ %i.dl, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i10 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i10 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dc = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dd = and i64 %i.dc, 31                       ; 3 uses
  %i.de = icmp eq i64 %i.dd, 31
  br i1 %i.de, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.df = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.df, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13959
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15: ; preds = %bb.w
  %.not.i.i.i16 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i16, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15
  %i.dg = mul nuw nsw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter119 = and i32 %i.dg, 7                 ; 3 uses
  %i.dh = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dh, label %.lr.ph.i.i.i19.epil.preheader, label %.lr.ph.i.i.i19.preheader.new

.lr.ph.i.i.i19.preheader.new:                     ; preds = %.lr.ph.i.i.i19.preheader
  %unroll_iter123 = and i32 %i.dg, 56
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19, %.lr.ph.i.i.i19.preheader.new
  %niter124 = phi i32 [ 0, %.lr.ph.i.i.i19.preheader.new ], [ %niter124.next.7, %.lr.ph.i.i.i19 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  %niter124.next.7 = add i32 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i32 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i19

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i19
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.epil.preheader

.lr.ph.i.i.i19.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i19.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i19.epil

.lr.ph.i.i.i19.epil:                              ; preds = %.lr.ph.i.i.i19.epil, %.lr.ph.i.i.i19.epil.preheader
  %epil.iter120 = phi i32 [ 0, %.lr.ph.i.i.i19.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i.i.i19.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.epil, !llvm.loop !13896

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i19.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15, %bb.x
  %i.di = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.y:                                             ; preds = %bb.v
  %i.dj = icmp eq i64 %i.dd, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dj, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ag, %bb.af, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ag ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ea, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.di, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.af ], [ %.sroa.0.047.i.i, %bb.ag ]
  %i.dk = load atomic i64, ptr %i.cv acquire, align 8, !noalias !13959 ; 2 uses
  %i.dl = load atomic ptr, ptr %i.cx acquire, align 8, !noalias !13959
  %i.dm = and i64 %i.dk, 1
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.v, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i: ; preds = %bb.z, %bb.y
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.y ], [ %i.dp, %bb.z ] ; 7 uses
  %i.do = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.do, label %bb.ab, label %bb.ad

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13959
  %i.dp = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13959 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i, !prof !21

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #37, !noalias !13959
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13959
  %i.dr = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13959 ; 6 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i, !prof !21

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #37, !noalias !13959
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ab
  %i.dt = cmpxchg ptr %i.cx, ptr null, ptr %i.dr release monotonic, align 8, !noalias !13959
  %i.du = extractvalue { ptr, i1 } %i.dt, 1
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dr, %bb.ae ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i ] ; 3 uses
  %i.dv = add i64 %.sroa.03.049.i.i, 2
  %i.dw = cmpxchg weak ptr %i.cv, i64 %.sroa.03.049.i.i, i64 %i.dv seq_cst acquire, align 8, !noalias !13959
  %.sroa.18.0.in.i.i.i11 = extractvalue { i64, i1 } %i.dw, 1
  br i1 %.sroa.18.0.in.i.i.i11, label %bb.ah, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.ae:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.dr, ptr %i.db release, align 8, !noalias !13959
  br label %bb.ad

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i
  %i.dx = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.dx, label %.backedge.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 504, i64 noundef 8) #34, !noalias !13959
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ad
  %..i.i.i.i12 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.dy = mul nuw nsw i32 %..i.i.i.i12, %..i.i.i.i12 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.dy, 5                    ; 3 uses
  %i.dz = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dz, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.dy, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13959
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !13897

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ea = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.dj, label %bb.ai, label %._crit_edge.i.i

bb.ai:                                            ; preds = %bb.ah
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.aj, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i, !prof !21

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i: ; preds = %bb.ai
  store atomic ptr %.sroa.035.2.i.i, ptr %i.cx release, align 8, !noalias !13959
  %i.eb = atomicrmw add ptr %i.cv, i64 2 release, align 8, !noalias !13959 ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 496
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ec release, align 8, !noalias !13959
  br label %.thread58

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !13959
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ah
  %.sroa.9.0.i = phi i64 [ %i.dd, %bb.ah ], [ 0, %.backedge.i.i ]
  %.sroa.4.0.i13 = phi ptr [ %.sroa.07.2.i.i, %bb.ah ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ah ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ed = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ed, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 504, i64 noundef 8) #34, !noalias !13959
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i: ; preds = %bb.ak, %._crit_edge.i.i
  %i.ee = icmp eq ptr %.sroa.4.0.i13, null
  br i1 %i.ee, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit, label %.thread58

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  %i.eh = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !13960
  %i.ei = extractvalue { i32, i1 } %i.eh, 1
  br i1 %i.ei, label %bb.an, label %bb.am, !prof !17

bb.am:                                            ; preds = %bb.al
end_hunk_12
begin_hunk_13_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendBS_:bb.a
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.bp, label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i, !prof !21

bb.bp:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i.i.i) #34, !noalias !13984
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i: ; preds = %bb.bp, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %bb.bk, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtBZ_6result6ResultuINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4c_EB3w_.exit.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.ho, %bb.bp ], [ %i.ho, %bb.bk ], [ %i.ho, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ %i.hl, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtBZ_6result6ResultuINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4c_EB3w_.exit.i.i ]
  %.pn13.i.i = phi { i64, ptr } [ %i.hn, %bb.bp ], [ %i.hn, %bb.bk ], [ %i.hn, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ], [ %.pn.i.i.i.i, %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtBZ_6result6ResultuINtNtB1S_5error16SendTimeoutErrorB3s_EEEs_0B4c_EB3w_.exit.i.i ]
  %.sroa.3.0.i.i = extractvalue { i64, ptr } %.pn13.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13977
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

bb.bq:                                            ; preds = %.loopexit.i
  br i1 %i.es, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hy = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hz = and i64 %i.hy, 9223372036854775807
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.bs, !prof !17

bb.bs:                                            ; preds = %bb.br
  %i.ib = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.ib, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store atomic i8 1, ptr %i.ep monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.ic = atomicrmw xchg ptr %.8.val, i32 0 release, align 4
  %i.id = icmp eq i32 %i.ic, 2
  br i1 %i.id, label %bb.bu, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit, !prof !21

bb.bu:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.8.val) #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, %bb.bu
  %.sroa.03.0.pn.i = phi i64 [ %.sroa.0.014.i.i, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i ], [ 2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i ], [ 1, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i ], [ 1, %bb.bu ]
  %.pn57.i = phi ptr [ %.sroa.3.0.i.i, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4zeroINtB19_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0INtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB5_5error16SendTimeoutErrorB1y_EEEB1C_.exit.i ], [ %0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i ], [ %0, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i ], [ %0, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bv

.thread58:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i
  %.sroa.4.115.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i ], [ %.sroa.4.0.i13, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i ]
  %.sroa.9.114.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i ]
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.115.i, i64 %.sroa.9.114.i ; 2 uses
  store ptr %0, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = atomicrmw or ptr %i.if, i64 1 release, align 8 ; 0 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ih) #38
  br label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit

bb.bv:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit
  %.sroa.02.0.i.pn = phi i64 [ %.sroa.02.0.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit ], [ %.sroa.03.0.pn.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit ]
  %.sroa.4.0.i.pn = phi ptr [ %.sroa.4.0.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit ], [ %.pn57.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit ]
  switch i64 %.sroa.02.0.i.pn, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit.fold.split [
    i64 2, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit
    i64 0, label %bb.bw
  ], !prof !13985

bb.bw:                                            ; preds = %bb.bv
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #40
  unreachable

_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit.fold.split: ; preds = %bb.bv
  br label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit

_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit: ; preds = %bb.u, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i, %.thread58, %bb.bv, %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit.fold.split
  %.sroa.03.0 = phi ptr [ null, %bb.bv ], [ null, %.thread58 ], [ %.sroa.4.0.i.pn, %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit.fold.split ], [ %0, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i ], [ %0, %bb.u ]
  ret ptr %.sroa.03.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendBU_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(232) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [272 x i8], align 16              ; 10 uses
  %i.c = alloca [272 x i8], align 16              ; 10 uses
  %i.d = alloca [240 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [272 x i8], align 16              ; 14 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.614.i = alloca [216 x i8], align 8       ; 10 uses
  %.sroa.6.i = alloca [216 x i8], align 8         ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [240 x i8], align 8               ; 15 uses
  %.sroa.8 = alloca [216 x i8], align 8           ; 6 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !14099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14099
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !14099
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !14100 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !14100, !noundef !11 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cr, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cq, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14101)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bm, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !14102, !noundef !11
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !14102, !nonnull !11, !noundef !11
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !14102, !noundef !11
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [240 x i8], ptr %i.ap, i64 %i.al ; 6 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !14102 ; 2 uses
  %i.au = icmp eq i64 %.sroa.02.043.i.i, %i.at
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.aa, align 8, !noalias !14102, !noundef !11
  %i.aw = add i64 %i.av, %i.at
  %i.ax = add i64 %.sroa.02.043.i.i, 1
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = add nuw i64 %i.al, 1
  %i.ba = load i64, ptr %i.ad, align 128, !noalias !14102, !noundef !11
  %i.bb = icmp ult i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bc = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bc, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !14102
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.bd = mul nuw nsw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter122 = and i32 %i.bd, 7                 ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.be, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter126 = and i32 %i.bd, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter127 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter127.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  %niter127.next.7 = add i32 %niter127, 8         ; 2 uses
  %niter127.ncmp.7 = icmp eq i32 %niter127.next.7, %unroll_iter126
  br i1 %niter127.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit98.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bf = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !14102
  %i.bg = load i64, ptr %i.aa, align 8, !noalias !14102, !noundef !11
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = icmp eq i64 %i.bh, %.sroa.02.043.i.i
  br i1 %i.bi, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.bj = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i  ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter128 = and i32 %i.bj, 5                 ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bk, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter132 = and i32 %i.bj, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter133 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter133.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  %niter133.next.7 = add i32 %niter133, 8         ; 2 uses
  %niter133.ncmp.7 = icmp eq i32 %niter133.next.7, %unroll_iter132
  br i1 %niter133.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit97.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod136.not = icmp eq i32 %xtraiter134, 0
  br i1 %lcmp.mod136.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod137 = icmp ne i32 %xtraiter134, 0
  call void @llvm.assume(i1 %lcmp.mod137)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter135 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter135.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14102
  %epil.iter135.next = add i32 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i32 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !13992

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit97.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod130.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit97.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod131 = icmp ne i32 %xtraiter128, 0
  call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter129 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter129.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14102
  %epil.iter129.next = add i32 %epil.iter129, 1   ; 2 uses
  %epil.iter129.cmp.not = icmp eq i32 %epil.iter129.next, %xtraiter128
  br i1 %epil.iter129.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !13993

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit98.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod124.not = icmp eq i32 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit98.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod125 = icmp ne i32 %xtraiter122, 0
  call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter123 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter123.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !14102
  %epil.iter123.next = add i32 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i32 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !13994

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit98.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit97.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bl = load atomic i64, ptr %i.u monotonic, align 16, !noalias !14102 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bm = load i64, ptr %i.v, align 16, !noalias !14102, !noundef !11 ; 2 uses
  %i.bn = and i64 %i.bm, %i.bl
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bp = load i64, ptr %i.aa, align 8, !noalias !14102, !noundef !11
  %i.bq = add i64 %i.bp, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.br = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.br, %bb.j ], [ %i.bq, %bb.i ]
  %i.bs = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !14102
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bs, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter134 = and i32 %i.aj, 7                 ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bt, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter138 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter139 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter139.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  call void @llvm.x86.sse2.pause(), !noalias !14102
  %niter139.next.7 = add i32 %niter139, 8         ; 2 uses
  %niter139.ncmp.7 = icmp eq i32 %niter139.next.7, %unroll_iter138
  br i1 %niter139.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i: ; preds = %bb.h
  %i.bu = load i32, ptr %i.s, align 8, !range !44, !noalias !14099, !noundef !11 ; 2 uses
  %.not.i = icmp eq i32 %i.bu, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i: ; preds = %bb.k
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !14101, !noalias !14099
  %i.bv = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bv, ptr %i.t, align 8, !alias.scope !14101, !noalias !14099
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.0.0.copyload, ptr %i.bw, align 8, !noalias !14103
  %.sroa.5.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx16.i, align 8, !noalias !14103
  %.sroa.618.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.618.0..sroa_idx19.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false), !noalias !14104
  store atomic i64 %i.bv, ptr %i.as release, align 8, !noalias !14105
  %i.bx = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bx) #38, !noalias !14105
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i64 %.sroa.6.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i
  %i.by = load i64, ptr %i.q, align 8, !noalias !14099, !noundef !11 ; 2 uses
  %i.bz = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34, !noalias !14099 ; 2 uses
  %i.ca = extractvalue { i64, i32 } %i.bz, 0      ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.by
  br i1 %i.cb, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14106
  store ptr %i.p, ptr %i.o, align 8, !noalias !14099
  store ptr %.8.val, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !14099
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !14099
  %i.cc = load i8, ptr %i.af, align 8, !range !28, !noalias !14107, !noundef !11
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.m
  %i.ce = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !14106 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEs_0uEB3y_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.ce, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !14106, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !14106
  %.not.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !21

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14106
  %i.ch = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !14106 ; 3 uses
  store ptr %i.ch, ptr %i.n, align 8, !noalias !14106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14106
  store ptr %i.p, ptr %i.m, align 8, !noalias !14106
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !14099
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !14099
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ch) #38, !noalias !14106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14106
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !14108
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #39, !noalias !14106
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !14106
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store atomic i64 0, ptr %i.ck release, align 8, !noalias !14106
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store atomic ptr null, ptr %i.cl release, align 8, !noalias !14106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14106
  store ptr %i.p, ptr %i.l, align 8, !noalias !14106
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !14099
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !14099
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cg) #38, !noalias !14106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14106
  %i.cm = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !14106, !noundef !11 ; 3 uses
  store ptr %i.cm, ptr %i.k, align 8, !noalias !14106
  store ptr %i.cg, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !14106
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !14109
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #39, !noalias !14106
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14106
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEs_0uEB3y_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEs0_0B1G_(ptr nonnull %i.o) #38, !noalias !14106
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEs_0uEB3y_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14106
  %i.cq = load atomic i64, ptr %i.u monotonic, align 16, !noalias !14110 ; 2 uses
  %i.cr = load i64, ptr %i.v, align 16, !noalias !14110, !noundef !11 ; 2 uses
  %i.cs = and i64 %i.cr, %i.cq
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cu = extractvalue { i64, i32 } %i.bz, 1      ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 1000000000
  call void @llvm.assume(i1 %i.cv)
  %.not32.i = icmp samesign ult i32 %i.cu, %i.bu
  br i1 %.not32.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not31.i = icmp slt i64 %i.ca, %i.by
  br i1 %.not31.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i
  %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 8
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, align 8
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, %bb.u, %bb.t
  %i.cw = phi i64 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !14099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.64.0.copyload = load i64, ptr %.sroa.64.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8, !noalias !14111 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.da = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !14111
  %i.db = and i64 %i.cy, 1
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cy, %.lr.ph.i.i3 ], [ %i.dm, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.da, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.de = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.df = and i64 %i.de, 31                       ; 3 uses
  %i.dg = icmp eq i64 %i.df, 31
  br i1 %i.dg, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dh = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dh, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !14111
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9: ; preds = %bb.x
  %.not.i.i.i10 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i10, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.preheader

.lr.ph.i.i.i13.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9
  %i.di = mul nuw nsw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter116 = and i32 %i.di, 7                 ; 3 uses
  %i.dj = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dj, label %.lr.ph.i.i.i13.epil.preheader, label %.lr.ph.i.i.i13.preheader.new

.lr.ph.i.i.i13.preheader.new:                     ; preds = %.lr.ph.i.i.i13.preheader
  %unroll_iter120 = and i32 %i.di, 56
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13, %.lr.ph.i.i.i13.preheader.new
  %niter121 = phi i32 [ 0, %.lr.ph.i.i.i13.preheader.new ], [ %niter121.next.7, %.lr.ph.i.i.i13 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  %niter121.next.7 = add i32 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i32 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i13

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i13
  %lcmp.mod118.not = icmp eq i32 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.epil.preheader

.lr.ph.i.i.i13.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i13.preheader
  %lcmp.mod119 = icmp ne i32 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.i.i.i13.epil

.lr.ph.i.i.i13.epil:                              ; preds = %.lr.ph.i.i.i13.epil, %.lr.ph.i.i.i13.epil.preheader
  %epil.iter117 = phi i32 [ 0, %.lr.ph.i.i.i13.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.i.i13.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.epil, !llvm.loop !14026

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i13.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9, %bb.y
  %i.dk = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dl = icmp eq i64 %i.df, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dl, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dt, %bb.ag ], [ %i.dt, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ec, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dm = load atomic i64, ptr %i.cx acquire, align 8, !noalias !14111 ; 2 uses
  %i.dn = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !14111
  %i.do = and i64 %i.dm, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.dr, %bb.aa ] ; 7 uses
  %i.dq = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dq, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14111
  %i.dr = tail call noalias noundef align 8 dereferenceable_or_null(7448) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7448, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14111 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i, !prof !21

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7448) #37, !noalias !14111
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14111
  %i.dt = tail call noalias noundef align 8 dereferenceable_or_null(7448) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7448, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14111 ; 6 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i, !prof !21

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7448) #37, !noalias !14111
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i: ; preds = %bb.ac
  %i.dv = cmpxchg ptr %i.cz, ptr null, ptr %i.dt release monotonic, align 8, !noalias !14111
  %i.dw = extractvalue { ptr, i1 } %i.dv, 1
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dt, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i ] ; 3 uses
  %i.dx = add i64 %.sroa.03.049.i.i, 2
  %i.dy = cmpxchg weak ptr %i.cx, i64 %.sroa.03.049.i.i, i64 %i.dx seq_cst acquire, align 8, !noalias !14111
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dy, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i
  store atomic ptr %i.dt, ptr %i.dd release, align 8, !noalias !14111
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i
  %i.dz = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.dz, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !14111
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.ea = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.ea, 5                    ; 3 uses
  %i.eb = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.eb, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.ea, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod115 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14111
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !14027

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ec = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dl, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i, !prof !21

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.cz release, align 8, !noalias !14111
  %i.ed = atomicrmw add ptr %i.cx, i64 2 release, align 8, !noalias !14111 ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 7440
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ee release, align 8, !noalias !14111
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !14111
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.df, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ef = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ef, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !14111
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14113)
  %i.eg = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i
  %.sroa.43.138.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i ]
  %.sroa.9.137.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i ]
  %i.eh = getelementptr inbounds nuw [240 x i8], ptr %.sroa.43.138.i, i64 %.sroa.9.137.i ; 4 uses
end_hunk_13
begin_hunk_14_@_RNvMs_NtCsgcf5BHVXlUt_7uu_sort6chunksNtB4_5Chunk7recycle:bb.a
bb.a:
  %.sroa.0 = alloca [192 x i8], align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14409)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !14409, !noalias !14408
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !14409, !noalias !14408
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store i64 0, ptr %i.d, align 8, !alias.scope !14409, !noalias !14408
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14409, !noalias !14408, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !14409, !noalias !14408, !noundef !11 ; 2 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !14409, !noalias !14408
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort4LineEEB1a_.exit.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
  %.sroa.01.01.i = phi i64 [ %i.k, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.sroa.01.01.i ; 2 uses
  %i.k = add nuw i64 %.sroa.01.01.i, 1            ; 2 uses
  %.val.i = load i64, ptr %i.j, align 8, !range !38, !noalias !14410, !noundef !11 ; 3 uses
  %i.l = icmp ne i64 %.val.i, -9223372036854775805
  tail call void @llvm.assume(i1 %i.l)
  switch i64 %.val.i, label %bb.b [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val28.i = load ptr, ptr %i.m, align 8, !noalias !14410, !nonnull !11, !noundef !11
  %i.n = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14410
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i: ; preds = %bb.b, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.o = icmp eq i64 %i.k, %i.h
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort4LineEEB1a_.exit.i.i.i, label %.lr.ph.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort4LineEEB1a_.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort28GeneralBigDecimalParseResultEBD_.exit.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !14409, !noalias !14408
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store i64 0, ptr %i.v, align 8, !alias.scope !14409, !noalias !14408
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i64 0, ptr %i.x, align 8, !alias.scope !14409, !noalias !14408
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i64 0, ptr %i.z, align 8, !alias.scope !14409, !noalias !14408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.a, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.b, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.q, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.c, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.r, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.d, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.72..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.p, align 8, !alias.scope !14409, !noalias !14408
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.g, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.s, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.t, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.120..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.120..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.u, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.v, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.144..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.144..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.w, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.x, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.0.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.168..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !alias.scope !14410
  store i64 0, ptr %i.y, align 8, !alias.scope !14409, !noalias !14408
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !14409, !noalias !14408
  store i64 0, ptr %i.z, align 8, !alias.scope !14409, !noalias !14408
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !14409, !noalias !14408, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14411)
  tail call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort6chunks8LineDataEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(144) %i.q) #34, !noalias !14412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14413)
  %.val.i1.i.i.i = load i64, ptr %i.y, align 8, !range !22, !alias.scope !14414, !noalias !14412, !noundef !11 ; 2 uses
  %i.ac = icmp eq i64 %.val.i1.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgcf5BHVXlUt_7uu_sort.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort4LineEEB1a_.exit.i.i.i
  %.val1.i2.i.i.i = load ptr, ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !14414, !noalias !14412, !nonnull !11, !noundef !11
  %i.ad = shl nuw i64 %.val.i1.i.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14415
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgcf5BHVXlUt_7uu_sort.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort4LineEEB1a_.exit.i.i.i
  %.sroa.02.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 224, i64 noundef 8) #34, !noalias !14412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0, i64 192, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.02.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.4.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.5.0.copyload, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.ab, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_recvB10_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.i = load i64, ptr %i.b, align 16, !noundef !11
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, %.sroa.02.0                ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !noundef !11
  %i.m = sub i64 0, %i.l
  %i.n = and i64 %.sroa.02.0, %i.m
  %i.o = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11
  %i.p = load i64, ptr %i.e, align 32, !noundef !11
  %i.q = icmp ult i64 %i.k, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k ; 2 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 3 uses
  %i.t = add i64 %.sroa.02.0, 1
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %i.s, %.sroa.02.0
  br i1 %i.v, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.w = add nuw i64 %i.k, 1
  %i.x = load i64, ptr %i.g, align 128, !noundef !11
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.z = icmp ult i32 %.sroa.0.038, 7
  br i1 %i.z, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i: ; preds = %bb.e
  %.not.i = icmp eq i32 %.sroa.0.038, 0
  br i1 %.not.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i
  %i.aa = mul nuw nsw i32 %.sroa.0.038, %.sroa.0.038 ; 2 uses
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
  %i.ad = load i64, ptr %i.b, align 16, !noundef !11 ; 2 uses
  %i.ae = xor i64 %i.ad, -1
  %i.af = and i64 %i.ac, %i.ae
  %i.ag = icmp eq i64 %i.af, %.sroa.02.0
  br i1 %i.ag, label %bb.h, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12: ; preds = %bb.g
  %..i.i = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.038, i32 6) ; 2 uses
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
  br i1 %epil.iter73.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i26.epil, !llvm.loop !14416

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
  br i1 %epil.iter67.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i16.epil, !llvm.loop !14417

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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32, label %.lr.ph.i.epil, !llvm.loop !14418

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
  %i.am = load i64, ptr %i.c, align 8, !noundef !11
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
  %i.aq = load i64, ptr %i.c, align 8, !noundef !11
  %i.ar = add i64 %i.aq, %.sroa.02.0
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  br label %bb.j
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE14write_all_coldCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE9flush_bufCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #34 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !22
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_14
begin_hunk_15_@_RNvXsc_Csgcf5BHVXlUt_7uu_sortNtB5_9SortErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt:bb.a
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.h, align 8
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @699, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 5, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @491) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ac, ptr %i.g, align 8
  %i.ad = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 4, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @692, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @491) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.f, align 8
  %i.af = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @702, i64 noundef 32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @676) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.e, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @704, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @697, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @703) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.d, align 8
  %i.aj = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @705, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @703) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.c, align 8
  %i.al = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @707, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @706) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.am = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @708, i64 noundef 19) #34
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  %i.an = tail call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @709, i64 noundef 12) #34
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.b, align 8
  %i.ap = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @710, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @703) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ar, ptr %i.a, align 8
  %i.as = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @711, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 4, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @695, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @712, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.s, %bb.c ], [ %i.v, %bb.d ], [ %i.y, %bb.e ], [ %i.aa, %bb.f ], [ %i.ad, %bb.g ], [ %i.af, %bb.h ], [ %i.ah, %bb.i ], [ %i.aj, %bb.j ], [ %i.al, %bb.k ], [ %i.am, %bb.l ], [ %i.an, %bb.m ], [ %i.ap, %bb.n ], [ %i.as, %bb.o ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsc_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_4IterTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBS_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(232) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [232 x i8], align 8               ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.9.i.i = alloca [216 x i8], align 8       ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.531.i.i = alloca [216 x i8], align 8     ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [216 x i8], align 8       ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [232 x i8], align 8               ; 22 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load i64, ptr %.0.val, align 8, !range !32, !noundef !11
  %i.z = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.z, align 8            ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16062
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.y
    i64 2, label %bb.bf
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16063)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16062
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store i32 -1, ptr %i.aa, align 8, !noalias !16064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16064
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 400 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 392 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 408
  %i.af = getelementptr inbounds nuw i8, ptr %.val1, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 384
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false), !noalias !16064
  br label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !16065)
  %i.ak = load atomic i64, ptr %.val1 monotonic, align 8, !noalias !16066
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, %bb.c
  %.sroa.0.038.i.i.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.1.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i ] ; 12 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.ak, %bb.c ], [ %i.bp, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i ] ; 7 uses
  %umin170 = call i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i, i32 6) ; 2 uses
  %i.al = mul nuw nsw i32 %umin170, %umin170      ; 2 uses
  %i.am = load i64, ptr %i.ac, align 16, !noalias !16066, !noundef !11
  %i.an = add i64 %i.am, -1
  %i.ao = and i64 %i.an, %.sroa.02.0.i.i.i        ; 3 uses
  %i.ap = load i64, ptr %i.ad, align 8, !noalias !16066, !noundef !11
  %i.aq = sub i64 0, %i.ap
  %i.ar = and i64 %.sroa.02.0.i.i.i, %i.aq
  %i.as = load ptr, ptr %i.ae, align 8, !noalias !16066, !nonnull !11, !noundef !11
  %i.at = load i64, ptr %i.af, align 16, !noalias !16066, !noundef !11
  %i.au = icmp ult i64 %i.ao, %i.at
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [240 x i8], ptr %i.as, i64 %i.ao ; 6 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8, !noalias !16066 ; 3 uses
  %i.ax = add i64 %.sroa.02.0.i.i.i, 1
  %i.ay = icmp eq i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = icmp eq i64 %i.aw, %.sroa.02.0.i.i.i
  br i1 %i.az, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ba = add nuw i64 %i.ao, 1
  %i.bb = load i64, ptr %i.ah, align 128, !noalias !16066, !noundef !11
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.bd = icmp ult i32 %.sroa.0.038.i.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !16066
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i: ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i
  %i.be = mul nuw nsw i32 %.sroa.0.038.i.i.i, %.sroa.0.038.i.i.i ; 2 uses
  %xtraiter164 = and i32 %i.be, 7                 ; 3 uses
  %i.bf = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.bf, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter168 = and i32 %i.be, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter169 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter169.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  %niter169.next.7 = add i32 %niter169, 8         ; 2 uses
  %niter169.ncmp.7 = icmp eq i32 %niter169.next.7, %unroll_iter168
  br i1 %niter169.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit114.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.e
  fence seq_cst
  %i.bg = load atomic i64, ptr %i.ag monotonic, align 16, !noalias !16066 ; 2 uses
  %i.bh = load i64, ptr %i.ac, align 16, !noalias !16066, !noundef !11 ; 2 uses
  %i.bi = xor i64 %i.bh, -1
  %i.bj = and i64 %i.bg, %i.bi
  %i.bk = icmp eq i64 %i.bj, %.sroa.02.0.i.i.i
  br i1 %i.bk, label %bb.j, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i: ; preds = %bb.i
  %..i.i.i.i.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.038.i.i.i, i32 6) ; 2 uses
  %i.bl = mul nuw nsw i32 %..i.i.i.i.i, %..i.i.i.i.i ; 2 uses
  %.not.i13.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i13.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.preheader

.lr.ph.i16.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i
  %xtraiter171 = and i32 %i.bl, 5                 ; 3 uses
  %i.bm = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.bm, label %.lr.ph.i16.i.i.i.epil.preheader, label %.lr.ph.i16.i.i.i.preheader.new

.lr.ph.i16.i.i.i.preheader.new:                   ; preds = %.lr.ph.i16.i.i.i.preheader
  %unroll_iter175 = and i32 %i.bl, 56
  br label %.lr.ph.i16.i.i.i

.lr.ph.i16.i.i.i:                                 ; preds = %.lr.ph.i16.i.i.i, %.lr.ph.i16.i.i.i.preheader.new
  %niter176 = phi i32 [ 0, %.lr.ph.i16.i.i.i.preheader.new ], [ %niter176.next.7, %.lr.ph.i16.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  %niter176.next.7 = add i32 %niter176, 8         ; 2 uses
  %niter176.ncmp.7 = icmp eq i32 %niter176.next.7, %unroll_iter175
  br i1 %niter176.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit113.unr-lcssa, label %.lr.ph.i16.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bn = and i64 %i.bh, %i.bg
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.thread.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.preheader
  %lcmp.mod180 = icmp ne i32 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i26.i.i.i.epil

.lr.ph.i26.i.i.i.epil:                            ; preds = %.lr.ph.i26.i.i.i.epil, %.lr.ph.i26.i.i.i.epil.preheader
  %epil.iter178 = phi i32 [ 0, %.lr.ph.i26.i.i.i.epil.preheader ], [ %epil.iter178.next, %.lr.ph.i26.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16066
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.epil, !llvm.loop !15942

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit113.unr-lcssa: ; preds = %.lr.ph.i16.i.i.i
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.epil.preheader

.lr.ph.i16.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit113.unr-lcssa, %.lr.ph.i16.i.i.i.preheader
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph.i16.i.i.i.epil

.lr.ph.i16.i.i.i.epil:                            ; preds = %.lr.ph.i16.i.i.i.epil, %.lr.ph.i16.i.i.i.epil.preheader
  %epil.iter172 = phi i32 [ 0, %.lr.ph.i16.i.i.i.epil.preheader ], [ %epil.iter172.next, %.lr.ph.i16.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16066
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i16.i.i.i.epil, !llvm.loop !15943

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit114.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod166.not = icmp eq i32 %xtraiter164, 0
  br i1 %lcmp.mod166.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit114.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod167 = icmp ne i32 %xtraiter164, 0
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter165 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter165.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16066
  %epil.iter165.next = add i32 %epil.iter165, 1   ; 2 uses
  %epil.iter165.cmp.not = icmp eq i32 %epil.iter165.next, %xtraiter164
  br i1 %epil.iter165.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !15944

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit114.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit113.unr-lcssa, %.lr.ph.i16.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i, %bb.h
  %i.bp = load atomic i64, ptr %.val1 monotonic, align 16, !noalias !16066
  %.sroa.0.1.i.i.i = add i32 %.sroa.0.038.i.i.i, 1
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.bq = load i64, ptr %i.ad, align 8, !noalias !16066, !noundef !11
  %i.br = add i64 %i.bq, %i.ar
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ %i.br, %bb.k ], [ %i.aw, %bb.f ]
  %i.bs = cmpxchg weak ptr %.val1, i64 %.sroa.02.0.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !16066
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.bs, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i: ; preds = %bb.l
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.038.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i, label %.lr.ph.i26.i.i.i.preheader

.lr.ph.i26.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i
  %xtraiter177 = and i32 %i.al, 7                 ; 3 uses
  %i.bt = icmp ult i32 %.sroa.0.038.i.i.i, 3
  br i1 %i.bt, label %.lr.ph.i26.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.preheader.new

.lr.ph.i26.i.i.i.preheader.new:                   ; preds = %.lr.ph.i26.i.i.i.preheader
  %unroll_iter181 = and i32 %i.al, 56
  br label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %.lr.ph.i26.i.i.i, %.lr.ph.i26.i.i.i.preheader.new
  %niter182 = phi i32 [ 0, %.lr.ph.i26.i.i.i.preheader.new ], [ %niter182.next.7, %.lr.ph.i26.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  call void @llvm.x86.sse2.pause(), !noalias !16066
  %niter182.next.7 = add i32 %niter182, 8         ; 2 uses
  %niter182.ncmp.7 = icmp eq i32 %niter182.next.7, %unroll_iter181
  br i1 %niter182.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i: ; preds = %bb.j
  %i.bu = load i32, ptr %i.aa, align 8, !range !44, !noalias !16064, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bu, -1
  br i1 %.not.i.i, label %bb.n, label %bb.m

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.thread.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.v

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i: ; preds = %bb.l
  store ptr %i.av, ptr %i.w, align 8, !alias.scope !16065, !noalias !16064
  %i.bv = load i64, ptr %i.ad, align 8, !noalias !16066, !noundef !11
  %i.bw = add i64 %i.bv, %.sroa.02.0.i.i.i        ; 2 uses
  store i64 %i.bw, ptr %i.ab, align 8, !alias.scope !16065, !noalias !16064
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.0.0.copyload4.i.i = load i64, ptr %i.bx, align 8, !noalias !16064
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.4.0.copyload6.i.i = load i64, ptr %.sroa.4.0..sroa_idx5.i.i, align 8, !noalias !16064 ; 2 uses
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa_idx7.i.i, i64 216, i1 false), !noalias !16064
  store atomic i64 %i.bw, ptr %i.av release, align 8, !noalias !16067
  %i.by = getelementptr inbounds nuw i8, ptr %.val1, i64 256
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.by) #38, !noalias !16067
  %i.bz = icmp eq i64 %.sroa.4.0.copyload6.i.i, -1
  br i1 %i.bz, label %bb.v, label %bb.w

bb.m:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i
  %i.ca = load i64, ptr %i.x, align 8, !noalias !16064, !noundef !11 ; 2 uses
  %i.cb = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34, !noalias !16064 ; 2 uses
  %i.cc = extractvalue { i64, i32 } %i.cb, 0      ; 2 uses
  %i.cd = icmp eq i64 %i.cc, %i.ca
  br i1 %i.cd, label %.split.i.i, label %bb.t

bb.n:                                             ; preds = %bb.t, %.split.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !16068
  store ptr %i.w, ptr %i.v, align 8, !noalias !16064
  store ptr %.val1, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !16064
  store ptr %i.x, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !16064
  %i.ce = load i8, ptr %i.aj, align 8, !range !28, !noalias !16069, !noundef !11
  %i.cf = icmp eq i8 %i.ce, 1
  br i1 %i.cf, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.n
  %i.cg = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.ai, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !16068 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEs_0uEB3y_.exit.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %bb.n
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.cg, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i ], [ %i.ai, %bb.n ] ; 4 uses
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !16068, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !16068
  %.not.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.q, !prof !21

bb.o:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16068
  %i.cj = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !16068 ; 3 uses
  store ptr %i.cj, ptr %i.u, align 8, !noalias !16068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16068
  store ptr %i.w, ptr %i.t, align 8, !noalias !16068
  store ptr %.val1, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !16064
  store ptr %i.x, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i, align 8, !noalias !16064
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t, ptr nonnull %i.cj) #38, !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16068
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !16070
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.u) #39, !noalias !16068
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16068
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i

bb.q:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store atomic i64 0, ptr %i.cm release, align 8, !noalias !16068
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store atomic ptr null, ptr %i.cn release, align 8, !noalias !16068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16068
  store ptr %i.w, ptr %i.s, align 8, !noalias !16068
  store ptr %.val1, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !16064
  store ptr %i.x, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !16064
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr nonnull %i.ci) #38, !noalias !16068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16068
  %i.co = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !16068, !noundef !11 ; 3 uses
  store ptr %i.co, ptr %i.r, align 8, !noalias !16068
  store ptr %i.ci, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !16068
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !16071
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.r) #39, !noalias !16068
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16068
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEs_0uEB3y_.exit.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEs0_0B1G_(ptr nonnull %i.v) #38, !noalias !16068
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEs_0uEB3y_.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !16068
  br label %bb.c

.split.i.i:                                       ; preds = %bb.m
  %i.cs = extractvalue { i64, i32 } %i.cb, 1      ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 1000000000
  call void @llvm.assume(i1 %i.ct)
  %.not22.i.i = icmp samesign ult i32 %i.cs, %i.bu
  br i1 %.not22.i.i, label %bb.n, label %bb.u

bb.t:                                             ; preds = %bb.m
  %.not21.i.i = icmp slt i64 %i.cc, %i.ca
  br i1 %.not21.i.i, label %bb.n, label %bb.u

bb.u:                                             ; preds = %bb.t, %.split.i.i
  store i8 0, ptr %i.y, align 8, !alias.scope !16063, !noalias !16062
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvB12_.exit.i

bb.v:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.thread.i.i
  store i8 1, ptr %i.y, align 8, !alias.scope !16063, !noalias !16062
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i.i, i64 216, i1 false), !noalias !16062
  store i64 %.sroa.0.0.copyload4.i.i, ptr %i.y, align 8, !alias.scope !16063, !noalias !16062
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.4.0.copyload6.i.sink.i = phi i64 [ %.sroa.4.0.copyload6.i.i, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvB12_.exit.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvB12_.exit.i: ; preds = %bb.x, %bb.u
  %i.cu = phi i64 [ -1, %bb.u ], [ %.sroa.4.0.copyload6.i.sink.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16062
  br label %bb.cv

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16072)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16062
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.cv, align 8, !noalias !16073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16073
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.da = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i4.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !16073
  br label %bb.z

bb.z:                                             ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !16074)
  %i.dc = load atomic i64, ptr %.val1 acquire, align 8, !noalias !16075
  %i.dd = load atomic ptr, ptr %i.cy acquire, align 8, !noalias !16075
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge.i.i.i, %bb.z
  %.sroa.0.043.i.i.i = phi i32 [ 0, %bb.z ], [ %.sroa.0.043.be.i.i.i, %.backedge.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.dd, %bb.z ], [ %i.do, %.backedge.i.i.i ] ; 8 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.dc, %bb.z ], [ %i.dn, %.backedge.i.i.i ] ; 5 uses
  %i.de = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.df = and i64 %i.de, 31                       ; 6 uses
  %i.dg = icmp eq i64 %i.df, 31
  br i1 %i.dg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.dh, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i: ; preds = %bb.ab
  %.not.i.i.i20.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i.i.i20.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.preheader

.lr.ph.i.i.i23.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i
  %i.di = mul nuw nsw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter146 = and i32 %i.di, 7                 ; 3 uses
  %i.dj = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.dj, label %.lr.ph.i.i.i23.i.epil.preheader, label %.lr.ph.i.i.i23.i.preheader.new

.lr.ph.i.i.i23.i.preheader.new:                   ; preds = %.lr.ph.i.i.i23.i.preheader
  %unroll_iter150 = and i32 %i.di, 56
  br label %.lr.ph.i.i.i23.i

.lr.ph.i.i.i23.i:                                 ; preds = %.lr.ph.i.i.i23.i, %.lr.ph.i.i.i23.i.preheader.new
  %niter151 = phi i32 [ 0, %.lr.ph.i.i.i23.i.preheader.new ], [ %niter151.next.7, %.lr.ph.i.i.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %niter151.next.7 = add i32 %niter151, 8         ; 2 uses
  %niter151.ncmp.7 = icmp eq i32 %niter151.next.7, %unroll_iter150
  br i1 %niter151.ncmp.7, label %.backedge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i

bb.ac:                                            ; preds = %bb.aa
  %i.dk = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.dl = and i64 %.sroa.07.0.i.i.i, 1
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.ad, label %bb.ag

.backedge.sink.split.i.i.i:                       ; preds = %bb.ai, %bb.ab
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !16075
  br label %.backedge.i.i.i

.backedge.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i23.i
  %lcmp.mod148.not = icmp eq i32 %xtraiter146, 0
  br i1 %lcmp.mod148.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.epil.preheader

.lr.ph.i.i.i23.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.preheader
  %lcmp.mod149 = icmp ne i32 %xtraiter146, 0
  call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.i.i.i23.i.epil

.lr.ph.i.i.i23.i.epil:                            ; preds = %.lr.ph.i.i.i23.i.epil, %.lr.ph.i.i.i23.i.epil.preheader
  %epil.iter147 = phi i32 [ 0, %.lr.ph.i.i.i23.i.epil.preheader ], [ %epil.iter147.next, %.lr.ph.i.i.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %epil.iter147.next = add i32 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i32 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i23.i.epil, !llvm.loop !15973

.backedge.i.i.i.loopexit122.unr-lcssa:            ; preds = %.lr.ph.i23.i.i.i
  %lcmp.mod142.not = icmp eq i32 %xtraiter140, 0
  br i1 %lcmp.mod142.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit122.unr-lcssa, %.lr.ph.i23.i.i.i.preheader
  %lcmp.mod143 = icmp ne i32 %xtraiter140, 0
  call void @llvm.assume(i1 %lcmp.mod143)
  br label %.lr.ph.i23.i.i.i.epil

.lr.ph.i23.i.i.i.epil:                            ; preds = %.lr.ph.i23.i.i.i.epil, %.lr.ph.i23.i.i.i.epil.preheader
  %epil.iter141 = phi i32 [ 0, %.lr.ph.i23.i.i.i.epil.preheader ], [ %epil.iter141.next, %.lr.ph.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %epil.iter141.next = add i32 %epil.iter141, 1   ; 2 uses
  %epil.iter141.cmp.not = icmp eq i32 %epil.iter141.next, %xtraiter140
  br i1 %epil.iter141.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil, !llvm.loop !15974

.backedge.i.i.i.loopexit123.unr-lcssa:            ; preds = %.lr.ph.i33.i.i.i
  %lcmp.mod136.not = icmp eq i32 %xtraiter134, 0
  br i1 %lcmp.mod136.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit123.unr-lcssa, %.lr.ph.i33.i.i.i.preheader
  %lcmp.mod137 = icmp ne i32 %xtraiter134, 0
  call void @llvm.assume(i1 %lcmp.mod137)
  br label %.lr.ph.i33.i.i.i.epil

.lr.ph.i33.i.i.i.epil:                            ; preds = %.lr.ph.i33.i.i.i.epil, %.lr.ph.i33.i.i.i.epil.preheader
  %epil.iter135 = phi i32 [ 0, %.lr.ph.i33.i.i.i.epil.preheader ], [ %epil.iter135.next, %.lr.ph.i33.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %epil.iter135.next = add i32 %epil.iter135, 1   ; 2 uses
  %epil.iter135.cmp.not = icmp eq i32 %epil.iter135.next, %xtraiter134
  br i1 %epil.iter135.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil, !llvm.loop !15975

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.loopexit123.unr-lcssa, %.lr.ph.i33.i.i.i.epil, %.backedge.i.i.i.loopexit122.unr-lcssa, %.lr.ph.i23.i.i.i.epil, %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i, %.backedge.sink.split.i.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i19.i
  %i.dn = load atomic i64, ptr %.val1 acquire, align 8, !noalias !16075
  %i.do = load atomic ptr, ptr %i.cy acquire, align 8, !noalias !16075
  %.sroa.0.043.be.i.i.i = add i32 %.sroa.0.043.i.i.i, 1
  br label %bb.aa

bb.ad:                                            ; preds = %bb.ac
  fence seq_cst
  %i.dp = load atomic i64, ptr %i.cz monotonic, align 8, !noalias !16075 ; 3 uses
  %i.dq = lshr i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.de, %i.dq
  br i1 %i.dr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.unshifted.i.i.i = xor i64 %i.dp, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %i.ds = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.dk, %i.ds
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dt = and i64 %i.dp, 1
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.thread.i.i

bb.ag:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.01.0.i.i6.i = phi i64 [ %i.dk, %bb.ac ], [ %spec.select.i.i.i, %bb.ae ] ; 2 uses
  %i.dv = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.dv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = cmpxchg weak ptr %.val1, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i6.i seq_cst acquire, align 8, !noalias !16075
  %.sroa.18.0.in.i.i.i7.i = extractvalue { i64, i1 } %i.dw, 1
  br i1 %.sroa.18.0.in.i.i.i7.i, label %bb.aj, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dx = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.dx, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i: ; preds = %bb.ai
  %.not.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i20.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i19.i.i.i
  %i.dy = mul nuw nsw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter140 = and i32 %i.dy, 7                 ; 3 uses
  %i.dz = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.dz, label %.lr.ph.i23.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.preheader.new

.lr.ph.i23.i.i.i.preheader.new:                   ; preds = %.lr.ph.i23.i.i.i.preheader
  %unroll_iter144 = and i32 %i.dy, 56
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i, %.lr.ph.i23.i.i.i.preheader.new
  %niter145 = phi i32 [ 0, %.lr.ph.i23.i.i.i.preheader.new ], [ %niter145.next.7, %.lr.ph.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %niter145.next.7 = add i32 %niter145, 8         ; 2 uses
  %niter145.ncmp.7 = icmp eq i32 %niter145.next.7, %unroll_iter144
  br i1 %niter145.ncmp.7, label %.backedge.i.i.i.loopexit122.unr-lcssa, label %.lr.ph.i23.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i: ; preds = %bb.ah
  %..i.i.i.i8.i = call noundef i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i, i32 6) ; 2 uses
  %i.ea = mul nuw nsw i32 %..i.i.i.i8.i, %..i.i.i.i8.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i30.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.preheader

.lr.ph.i33.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i29.i.i.i
  %xtraiter134 = and i32 %i.ea, 5                 ; 3 uses
  %i.eb = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.eb, label %.lr.ph.i33.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.preheader.new

.lr.ph.i33.i.i.i.preheader.new:                   ; preds = %.lr.ph.i33.i.i.i.preheader
  %unroll_iter138 = and i32 %i.ea, 56
  br label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %.lr.ph.i33.i.i.i, %.lr.ph.i33.i.i.i.preheader.new
  %niter139 = phi i32 [ 0, %.lr.ph.i33.i.i.i.preheader.new ], [ %niter139.next.7, %.lr.ph.i33.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %niter139.next.7 = add i32 %niter139, 8         ; 2 uses
  %niter139.ncmp.7 = icmp eq i32 %niter139.next.7, %unroll_iter138
  br i1 %niter139.ncmp.7, label %.backedge.i.i.i.loopexit123.unr-lcssa, label %.lr.ph.i33.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ec = icmp eq i64 %i.df, 30
  br i1 %i.ec, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 7440 ; 2 uses
  %i.ee = load atomic ptr, ptr %i.ed acquire, align 8, !noalias !16075 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %bb.ak, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %i.ej, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.ak ] ; 6 uses
  %i.eg = icmp ult i32 %.sroa.0.02.i.i.i.i, 7
  br i1 %i.eg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i37.i.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !16075
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i
  %.not.i.i.i.i10.i = icmp eq i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.eh = mul nuw nsw i32 %.sroa.0.02.i.i.i.i, %.sroa.0.02.i.i.i.i ; 2 uses
  %xtraiter152 = and i32 %i.eh, 7                 ; 3 uses
  %i.ei = icmp ult i32 %.sroa.0.02.i.i.i.i, 3
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter156 = and i32 %i.eh, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter157 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter157.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %niter157.next.7 = add i32 %niter157, 8         ; 2 uses
  %niter157.ncmp.7 = icmp eq i32 %niter157.next.7, %unroll_iter156
  br i1 %niter157.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod154.not = icmp eq i32 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod155 = icmp ne i32 %xtraiter152, 0
  call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter153 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter153.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16075
  %epil.iter153.next = add i32 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i32 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !15976

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i, %bb.al
  %i.ej = add i32 %.sroa.0.02.i.i.i.i, 1
  %i.ek = load atomic ptr, ptr %i.ed acquire, align 8, !noalias !16075 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.ak
  %.lcssa.i.i.i.i = phi ptr [ %i.ee, %bb.ak ], [ %i.ek, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.em = and i64 %.sroa.01.0.i.i6.i, -2
  %i.en = add i64 %i.em, 2
  %i.eo = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 7440
  %i.ep = load atomic ptr, ptr %i.eo monotonic, align 8, !noalias !16075
  %i.eq = icmp ne ptr %i.ep, null
  %i.er = zext i1 %i.eq to i64
  %spec.select17.i.i.i = or disjoint i64 %i.en, %i.er
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.cy release, align 8, !noalias !16075
  store atomic i64 %spec.select17.i.i.i, ptr %.val1 release, align 8, !noalias !16075
  br label %bb.am

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i: ; preds = %bb.af
  %i.es = load i32, ptr %i.cv, align 8, !range !44, !noalias !16073, !noundef !11 ; 2 uses
  %.not.i11.i = icmp eq i32 %i.es, -1
  br i1 %.not.i11.i, label %bb.aw, label %bb.av

bb.am:                                            ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE9wait_nextBZ_.exit.i.i.i, %bb.aj
  store ptr %.sroa.012.0.i.i.i, ptr %i.cw, align 8, !alias.scope !16074, !noalias !16073
  store i64 %i.df, ptr %i.cx, align 8, !alias.scope !16074, !noalias !16073
  %i.et = getelementptr inbounds nuw [240 x i8], ptr %.sroa.012.0.i.i.i, i64 %i.df ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 232 ; 3 uses
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8, !noalias !16076
  %i.ew = and i64 %i.ev, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.am, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i
  %.sroa.0.02.i.i7.i.i = phi i32 [ %i.fb, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i ], [ 0, %bb.am ] ; 6 uses
  %i.ey = icmp ult i32 %.sroa.0.02.i.i7.i.i, 7
  br i1 %i.ey, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i6.i.i
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !16076
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i: ; preds = %.lr.ph.i.i6.i.i
  %.not.i.i.i11.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i, 0
  br i1 %.not.i.i.i11.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.preheader

.lr.ph.i.i.i14.i.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.ez = mul nuw nsw i32 %.sroa.0.02.i.i7.i.i, %.sroa.0.02.i.i7.i.i ; 2 uses
  %xtraiter158 = and i32 %i.ez, 7                 ; 3 uses
  %i.fa = icmp ult i32 %.sroa.0.02.i.i7.i.i, 3
  br i1 %i.fa, label %.lr.ph.i.i.i14.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.preheader.new

.lr.ph.i.i.i14.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i14.i.i.preheader
  %unroll_iter162 = and i32 %i.ez, 56
  br label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %.lr.ph.i.i.i14.i.i, %.lr.ph.i.i.i14.i.i.preheader.new
  %niter163 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.preheader.new ], [ %niter163.next.7, %.lr.ph.i.i.i14.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  call void @llvm.x86.sse2.pause(), !noalias !16076
  %niter163.next.7 = add i32 %niter163, 8         ; 2 uses
  %niter163.ncmp.7 = icmp eq i32 %niter163.next.7, %unroll_iter162
  br i1 %niter163.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i
  %lcmp.mod160.not = icmp eq i32 %xtraiter158, 0
  br i1 %lcmp.mod160.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.preheader
  %lcmp.mod161 = icmp ne i32 %xtraiter158, 0
  call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.i.i.i14.i.i.epil

.lr.ph.i.i.i14.i.i.epil:                          ; preds = %.lr.ph.i.i.i14.i.i.epil, %.lr.ph.i.i.i14.i.i.epil.preheader
  %epil.iter159 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.epil.preheader ], [ %epil.iter159.next, %.lr.ph.i.i.i14.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !16076
  %epil.iter159.next = add i32 %epil.iter159, 1   ; 2 uses
  %epil.iter159.cmp.not = icmp eq i32 %epil.iter159.next, %xtraiter158
  br i1 %epil.iter159.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil, !llvm.loop !15979

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i10.i.i, %bb.an
  %i.fb = add i32 %.sroa.0.02.i.i7.i.i, 1
  %i.fc = load atomic i64, ptr %i.eu acquire, align 8, !noalias !16076
  %i.fd = and i64 %i.fc, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, %bb.am
  %.sroa.029.0.copyload.i.i = load i64, ptr %i.et, align 8, !noalias !16076
  %.sroa.430.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.430.0.copyload.i.i = load i64, ptr %.sroa.430.0..sroa_idx.i.i, align 8, !noalias !16076 ; 2 uses
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.531.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.531.0..sroa_idx.i.i, i64 216, i1 false), !noalias !16073
  %i.ff = add nuw nsw i64 %i.df, 1                ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 31
  br i1 %i.fg, label %.lr.ph.i1.i.i.i, label %bb.ar

.lr.ph.i1.i.i.i:                                  ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i, %bb.aq
  %.sroa.0.03.i.i4.i.i = phi i64 [ %i.fp, %bb.aq ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [240 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i.i4.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 232 ; 2 uses
  %i.fj = load atomic i64, ptr %i.fi acquire, align 8, !noalias !16076
  %i.fk = and i64 %i.fj, 2
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.ao, label %.lr.ph.i1.i.i.i.1

bb.ao:                                            ; preds = %.lr.ph.i1.i.i.i
  %i.fm = atomicrmw or ptr %i.fi, i64 4 acq_rel, align 8, !noalias !16076
  %i.fn = and i64 %i.fm, 2
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, label %.lr.ph.i1.i.i.i.1

.lr.ph.i1.i.i.i.1:                                ; preds = %bb.ao, %.lr.ph.i1.i.i.i
  %i.fp = add nuw nsw i64 %.sroa.0.03.i.i4.i.i, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw [240 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i.i4.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 472 ; 2 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8, !noalias !16076
  %i.ft = and i64 %i.fs, 2
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i1.i.i.i.1
  %i.fv = atomicrmw or ptr %i.fr, i64 4 acq_rel, align 8, !noalias !16076
  %i.fw = and i64 %i.fv, 2
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i1.i.i.i.1
  %exitcond.not.i.i5.i.i.1 = icmp eq i64 %i.fp, 30
  br i1 %exitcond.not.i.i5.i.i.1, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE7destroyBZ_.exit.sink.split.i.i.i, label %.lr.ph.i1.i.i.i

bb.ar:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_writeBW_.exit.i.i.i
  %i.fy = atomicrmw or ptr %i.eu, i64 2 acq_rel, align 8, !noalias !16076
  %i.fz = and i64 %i.fy, 4
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, label %bb.as

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE7destroyBZ_.exit.sink.split.i.i.i: ; preds = %bb.au, %bb.aq, %bb.as
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !16076
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.gb = icmp samesign ult i64 %i.df, 29
  br i1 %i.gb, label %.lr.ph.i3.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE7destroyBZ_.exit.sink.split.i.i.i

.lr.ph.i3.i.i.i:                                  ; preds = %bb.as, %bb.au
  %.sroa.0.03.i4.i.i.i = phi i64 [ %i.gc, %bb.au ], [ %i.ff, %bb.as ] ; 2 uses
  %i.gc = add nuw nsw i64 %.sroa.0.03.i4.i.i.i, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [240 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.03.i4.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 232 ; 2 uses
  %i.gf = load atomic i64, ptr %i.ge acquire, align 8, !noalias !16076
  %i.gg = and i64 %i.gf, 2
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i3.i.i.i
  %i.gi = atomicrmw or ptr %i.ge, i64 4 acq_rel, align 8, !noalias !16076
  %i.gj = and i64 %i.gi, 2
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i3.i.i.i
  %exitcond.not.i5.i.i.i = icmp eq i64 %i.gc, 30
  br i1 %exitcond.not.i5.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE7destroyBZ_.exit.sink.split.i.i.i, label %.lr.ph.i3.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i: ; preds = %bb.at, %bb.ao, %bb.ap, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE7destroyBZ_.exit.sink.split.i.i.i, %bb.ar
  %i.gl = icmp eq i64 %.sroa.430.0.copyload.i.i, -1
  br i1 %i.gl, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.thread.i.i, label %bb.be

bb.av:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i
  %i.gm = load i64, ptr %i.q, align 8, !noalias !16073, !noundef !11 ; 2 uses
  %i.gn = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #34, !noalias !16073 ; 2 uses
  %i.go = extractvalue { i64, i32 } %i.gn, 0      ; 2 uses
  %i.gp = icmp eq i64 %i.go, %i.gm
  br i1 %i.gp, label %.split.i17.i, label %bb.bc

bb.aw:                                            ; preds = %bb.bc, %.split.i17.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_recvB12_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16077
  store ptr %i.p, ptr %i.o, align 8, !noalias !16073
  store ptr %.val1, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !16073
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i1.i, align 8, !noalias !16073
  %i.gq = load i8, ptr %i.db, align 8, !range !28, !noalias !16078, !noundef !11
  %i.gr = icmp eq i8 %i.gq, 1
  br i1 %i.gr, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i: ; preds = %bb.aw
  %i.gs = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.da, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !16077 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEs_0uEB3y_.exit.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i, %bb.aw
  %.sroa.0.0.i.i.i2.i.i.i14.i = phi ptr [ %i.gs, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i12.i ], [ %i.da, %bb.aw ] ; 4 uses
  %i.gu = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !16077, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !16077
  %.not.i.i.i18.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i18.i.i, label %bb.ax, label %bb.az, !prof !21

bb.ax:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16077
  %i.gv = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !16077 ; 3 uses
  store ptr %i.gv, ptr %i.n, align 8, !noalias !16077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16077
  store ptr %i.p, ptr %i.m, align 8, !noalias !16077
  store ptr %.val1, ptr %.sroa.5.0..sroa_idx5.i.i.i.i4.i, align 8, !noalias !16073
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i, align 8, !noalias !16073
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.gv) #38, !noalias !16077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16077
  %i.gw = atomicrmw sub ptr %i.gv, i64 1 release, align 8, !noalias !16079
  %i.gx = icmp eq i64 %i.gw, 1
  br i1 %i.gx, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i16.i

bb.ay:                                            ; preds = %bb.ax
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #39, !noalias !16077
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i16.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i16.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16077
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0uEB1E_.exit.i.i

bb.az:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i13.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store atomic i64 0, ptr %i.gy release, align 8, !noalias !16077
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store atomic ptr null, ptr %i.gz release, align 8, !noalias !16077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16077
  store ptr %i.p, ptr %i.l, align 8, !noalias !16077
  store ptr %.val1, ptr %.sroa.59.0..sroa_idx10.i.i.i.i2.i, align 8, !noalias !16073
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i3.i, align 8, !noalias !16073
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.gu) #38, !noalias !16077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16077
  %i.ha = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !16077, !noundef !11 ; 3 uses
  store ptr %i.ha, ptr %i.k, align 8, !noalias !16077
  store ptr %i.gu, ptr %.sroa.0.0.i.i.i2.i.i.i14.i, align 8, !noalias !16077
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i15.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hc = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !16080
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %bb.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i15.i
end_hunk_15
begin_hunk_16_@_RNvXsc_NtNtCs2vKOLqTMYjT_3std4sync4mpscINtB5_4IterTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBS_:bb.a

bb.bf:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16081)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !16062
  %i.hg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.hg, align 8, !noalias !16082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16082
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !16082
  %i.hi = cmpxchg ptr %.val1, i32 0, i32 1 acquire monotonic, align 4, !noalias !16083
  %i.hj = extractvalue { i32, i1 } %i.hi, 1
  br i1 %i.hj, label %bb.bh, label %bb.bg, !prof !17

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val1) #34, !noalias !16083
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hk = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !16083
  %i.hl = and i64 %i.hk, 9223372036854775807
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %bb.bi, !prof !17

bb.bi:                                            ; preds = %bb.bh
  %i.hn = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !16083
  %i.ho = xor i1 %i.hn, true
  %i.hp = zext i1 %i.ho to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.bi, %bb.bh
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.hp, %bb.bi ], [ 0, %bb.bh ] ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1, i64 4 ; 3 uses
  %i.hr = load atomic i8, ptr %i.hq monotonic, align 1, !noalias !16083
  %.not.i.i.not.i.i = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i, label %bb.bj, !prof !17

bb.bj:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16084
  store ptr %.val1, ptr %i.g, align 8, !noalias !16084
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i.i, ptr %i.hs, align 8, !noalias !16084
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #40, !noalias !16085
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %i.ht = trunc nuw i8 %.sroa.01.0.i.i.i.i to i1  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16086)
  %i.hu = getelementptr inbounds nuw i8, ptr %.val1, i64 24 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !16086, !noalias !16087, !noundef !11 ; 6 uses
  %i.hw = icmp ult i64 %i.hv, 384307168202282326
  tail call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp eq i64 %i.hv, 0
  br i1 %i.hx, label %.loopexit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %i.hy = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !16086, !noalias !16087, !nonnull !11, !noundef !11 ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.hv, 24
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i27.i

.lr.ph.i.i.i27.i:                                 ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %bb.bk
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.iw, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i ], [ 0, %bb.bk ] ; 5 uses
  %i.id = phi ptr [ %i.ie, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i ], [ %i.ib, %bb.bk ] ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16088)
  %i.if = load ptr, ptr %i.id, align 8, !alias.scope !16088, !noalias !16089, !nonnull !11, !noundef !11 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !16090, !noundef !11
  %.not.i.i.i.i28.i = icmp eq i64 %i.ih, %i.hz
  br i1 %.not.i.i.i.i28.i, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i27.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !16088, !noalias !16089, !noundef !11
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.il = cmpxchg ptr %i.ik, i64 0, i64 %i.ij acq_rel acquire, align 8, !noalias !16090
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.il, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.bm, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !alias.scope !16088, !noalias !16089, !noundef !11 ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  store atomic ptr %i.in, ptr %i.ip release, align 8, !noalias !16090
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !16090, !nonnull !11, !noundef !11
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 40 ; 2 uses
  %i.it = atomicrmw xchg ptr %i.is, i32 1 release, align 4, !noalias !16090
  %i.iu = icmp eq i32 %i.it, -1
  br i1 %i.iu, label %bb.bp, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.iv = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.is) #34, !noalias !16090 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.bl, %.lr.ph.i.i.i27.i
  %i.iw = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.ix = icmp eq ptr %i.ie, %i.ic
  br i1 %i.ix, label %.loopexit.i.i, label %.lr.ph.i.i.i27.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %i.iy = icmp samesign ult i64 %.sroa.02.010.i.i.i.i, %i.hv
  tail call void @llvm.assume(i1 %i.iy)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16091)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16092)
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.ib, i64 %.sroa.02.010.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i = load ptr, ptr %i.iz, align 8, !noalias !16093 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !16093
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = xor i64 %.sroa.02.010.i.i.i.i, -1
  %i.jc = add nsw i64 %i.hv, %i.jb
  %i.jd = mul nuw nsw i64 %i.jc, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iz, ptr nonnull align 8 %i.ja, i64 %i.jd, i1 false), !noalias !16094
  %i.je = add nsw i64 %i.hv, -1                   ; 2 uses
  store i64 %i.je, ptr %i.hu, align 8, !alias.scope !16095, !noalias !16096
  %.not.i.i5.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i, null
  br i1 %.not.i.i5.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i, label %bb.bq, !prof !45

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  tail call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.010.i.i.i.i, i64 noundef %i.je, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @385) #40, !noalias !16097
  unreachable

bb.bq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  %.sroa.822.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.822.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !16082
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i, ptr %i.h, align 8, !noalias !16082
  %i.jf = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !16082, !noundef !11
  store ptr %i.jg, ptr %i.hh, align 8, !noalias !16082
  br i1 %i.ht, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jh = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !16082
  %i.ji = and i64 %i.jh, 9223372036854775807
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !17

bb.bs:                                            ; preds = %bb.br
  %i.jk = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !16082
  br i1 %i.jk, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store atomic i8 1, ptr %i.hq monotonic, align 4, !noalias !16082
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.jl = atomicrmw xchg ptr %.val1, i32 0 release, align 4, !noalias !16082
  %i.jm = icmp eq i32 %i.jl, 2
  br i1 %i.jm, label %bb.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i, !prof !21

bb.bu:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %.val1) #34, !noalias !16082
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.bu, %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.val4.i.i = load ptr, ptr %i.hh, align 8, !noalias !16082, !noundef !11 ; 11 uses
  %i.jn = icmp eq ptr %.val4.i.i, null
  br i1 %i.jn, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 233
  %i.jp = load i8, ptr %i.jo, align 1, !range !18, !noalias !16098, !noundef !11
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jr = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 232 ; 2 uses
  %i.js = load atomic i8, ptr %i.jr acquire, align 1, !noalias !16098
  %.not2.i.i.i.i = icmp eq i8 %i.js, 0
  br i1 %.not2.i.i.i.i, label %.lr.ph.i.i6.i35.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit.i.i.i

.lr.ph.i.i6.i35.i:                                ; preds = %bb.bw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i
  %.sroa.0.03.i.i.i36.i = phi i32 [ %i.jw, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i ], [ 0, %bb.bw ] ; 6 uses
  %i.jt = icmp ult i32 %.sroa.0.03.i.i.i36.i, 7
  br i1 %i.jt, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i6.i35.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !16098
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i: ; preds = %.lr.ph.i.i6.i35.i
  %.not.i.i.i8.i.i = icmp eq i32 %.sroa.0.03.i.i.i36.i, 0
  br i1 %.not.i.i.i8.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.preheader

.lr.ph.i.i.i.i42.i.preheader:                     ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i
  %i.ju = mul nuw nsw i32 %.sroa.0.03.i.i.i36.i, %.sroa.0.03.i.i.i36.i ; 2 uses
  %xtraiter = and i32 %i.ju, 7                    ; 3 uses
  %i.jv = icmp ult i32 %.sroa.0.03.i.i.i36.i, 3
  br i1 %i.jv, label %.lr.ph.i.i.i.i42.i.epil.preheader, label %.lr.ph.i.i.i.i42.i.preheader.new

.lr.ph.i.i.i.i42.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i42.i.preheader
  %unroll_iter = and i32 %i.ju, 56
  br label %.lr.ph.i.i.i.i42.i

.lr.ph.i.i.i.i42.i:                               ; preds = %.lr.ph.i.i.i.i42.i, %.lr.ph.i.i.i.i42.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i42.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i42.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i42.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.epil.preheader

.lr.ph.i.i.i.i42.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.preheader
  %lcmp.mod133 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph.i.i.i.i42.i.epil

.lr.ph.i.i.i.i42.i.epil:                          ; preds = %.lr.ph.i.i.i.i42.i.epil, %.lr.ph.i.i.i.i42.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i42.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i42.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !16098
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, label %.lr.ph.i.i.i.i42.i.epil, !llvm.loop !16026

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i42.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i39.i, %bb.bx
  %i.jw = add i32 %.sroa.0.03.i.i.i36.i, 1
  %i.jx = load atomic i8, ptr %i.jr acquire, align 1, !noalias !16098
  %.not.i.i7.i.i = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i7.i.i, label %.lr.ph.i.i6.i35.i, label %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit.i.i.i

_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i37.i, %bb.bw
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %.val4.i.i, align 8, !noalias !16098
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8 ; 2 uses
  %.sroa.415.0.copyload.i.i.i = load i64, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !16098 ; 2 uses
  store i64 -1, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !16098
  %.not.i.i34.i = icmp eq i64 %.sroa.415.0.copyload.i.i.i, -1
  br i1 %.not.i.i34.i, label %bb.bz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB23_.exit.i.i.i, !prof !21

bb.by:                                            ; preds = %bb.bv
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.val4.i.i, align 8, !noalias !16098
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 8, !noalias !16098 ; 2 uses
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 8, !noalias !16098
  %.not29.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i, -1
  br i1 %.not29.i.i.i, label %bb.cb, label %bb.ca, !prof !21

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB23_.exit.i.i.i: ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.518.0..sroa_idx.i.i.i, i64 216, i1 false), !noalias !16082
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef 240, i64 noundef 8) #34, !noalias !16098
  br label %bb.cc

bb.bz:                                            ; preds = %_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10wait_readyB11_.exit.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #40, !noalias !16098
  unreachable

bb.ca:                                            ; preds = %bb.by
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx.i.i.i, i64 216, i1 false), !noalias !16082
  %i.jy = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 232
  store atomic i8 1, ptr %i.jy release, align 8, !noalias !16098
  br label %bb.cc

bb.cb:                                            ; preds = %bb.by
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #40, !noalias !16098
  unreachable

.loopexit.i.i:                                    ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1, i64 104
  %i.ka = load i8, ptr %i.jz, align 8, !range !18, !noalias !16082, !noundef !11
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cq, label %bb.cf

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgcf5BHVXlUt_7uu_sort.exit.i.i
  store i8 1, ptr %i.y, align 8, !alias.scope !16081, !noalias !16062
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB23_.exit.i.i.i
  %.sroa.5.0.ph.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i, %bb.ca ], [ %.sroa.415.0.copyload.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB23_.exit.i.i.i ]
  %.sroa.025.0.ph.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.ca ], [ %.sroa.013.0.copyload.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB23_.exit.i.i.i ]
  store i64 %.sroa.025.0.ph.i.i, ptr %i.y, align 8, !alias.scope !16081, !noalias !16062
  %.sroa.548.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.548.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.i.i, i64 216, i1 false), !noalias !16062
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i
  %.pre42.i = phi i64 [ %.sroa.5.0.ph.i.i, %bb.cc ], [ -1, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4readB12_.exit.i.i ]
  %i.kc = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i, i64 1 release, align 8, !noalias !16099
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.ce, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.h) #39, !noalias !16082
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsgcf5BHVXlUt_7uu_sort.exit.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16082
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvB12_.exit.i

bb.cf:                                            ; preds = %.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16082
  %i.ke = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16101
  store ptr %i.i, ptr %i.f, align 8, !noalias !16102
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !noalias !16102
  %.sroa.734.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.val1, ptr %.sroa.734.0..sroa_idx.i.i, align 8, !noalias !16102
  %.sroa.839.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %.val1, ptr %.sroa.839.0..sroa_idx.i.i, align 8, !noalias !16102
  %.sroa.944.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.944.0..sroa_idx.i.i, align 8, !noalias !16102
  %i.kf = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i8, ptr %i.kg, align 8, !range !28, !noalias !16103, !noundef !11
  %i.ki = icmp eq i8 %i.kh, 1
  br i1 %i.ki, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i, !prof !17

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i: ; preds = %bb.cf
  %i.kj = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgcf5BHVXlUt_7uu_sort(ptr noundef nonnull align 8 %i.kf, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #34, !noalias !16104 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4q_EB3y_.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i, %bb.cf
  %.sroa.0.0.i.i.i2.i.i.i31.i = phi ptr [ %i.kj, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i29.i ], [ %i.kf, %bb.cf ] ; 4 uses
  %i.kl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !16105, !noundef !11 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !16105
  %.not.i.i.i10.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i10.i.i, label %bb.cg, label %bb.ci, !prof !21

bb.cg:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16105
  %i.km = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #34, !noalias !16105 ; 3 uses
  store ptr %i.km, ptr %i.e, align 8, !noalias !16105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16105
  store i8 2, ptr %.sroa.944.0..sroa_idx.i.i, align 8, !noalias !16105
  store ptr %i.i, ptr %i.c, align 8, !noalias !16102
  %.sroa.629.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.629.0..sroa_idx32.i.i, align 8, !noalias !16102
  %.sroa.734.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.val1, ptr %.sroa.734.0..sroa_idx37.i.i, align 8, !noalias !16102
  %.sroa.839.0..sroa_idx42.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.val1, ptr %.sroa.839.0..sroa_idx42.i.i, align 8, !noalias !16102
  %.sroa.4.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !16105
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(232) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.km) #38, !noalias !16101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16105
  %i.kn = atomicrmw sub ptr %i.km, i64 1 release, align 8, !noalias !16106
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.ch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #39, !noalias !16105
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i33.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16105
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0INtNtBZ_6result6ResultB3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4q_EB3y_.exit.i.i.i

bb.ci:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.thread.i.i.i30.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store atomic i64 0, ptr %i.kp release, align 8, !noalias !16105
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  store atomic ptr null, ptr %i.kq release, align 8, !noalias !16105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16105
  store i8 2, ptr %.sroa.944.0..sroa_idx.i.i, align 8, !noalias !16105
  store ptr %i.i, ptr %i.b, align 8, !noalias !16102
  %.sroa.629.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.629.0..sroa_idx30.i.i, align 8, !noalias !16102
  %.sroa.734.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val1, ptr %.sroa.734.0..sroa_idx35.i.i, align 8, !noalias !16102
  %.sroa.839.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.val1, ptr %.sroa.839.0..sroa_idx40.i.i, align 8, !noalias !16102
  %.sroa.410.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %.sroa.01.0.i.i.i.i, ptr %.sroa.410.0..sroa_idx11.i.i.i.i.i, align 8, !noalias !16105
  call fastcc void @_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4recvs_0B14_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(232) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.b, ptr nonnull %i.kl) #38, !noalias !16101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16105
  %i.kr = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !16105, !noundef !11 ; 3 uses
  store ptr %i.kr, ptr %i.a, align 8, !noalias !16105
  store ptr %i.kl, ptr %.sroa.0.0.i.i.i2.i.i.i31.i, align 8, !noalias !16105
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i32.i, label %bb.cj
end_hunk_16
