Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/notify-d0b9d03786b7a6e1.notify.c3abe497da8c881c-cgu.01?download=true
inline.NumInlined: 438
inline.NumDeleted: 132
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ah = add nsw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !422, !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp slt i64 %i.x, 384307168202282325
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %i.al, 384307168202282326
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.al, 0
  %i.ao = zext i1 %i.an to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %i.ao, %bb.m ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ap seq_cst, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br i1 %i.q, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.au, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.aq monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.av = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgNynMj4ykPw_6notify.exit, !prof !12

bb.r:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgNynMj4ykPw_6notify.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgNynMj4ykPw_6notify.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !436 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !436, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !439, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !439, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !439, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !439 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !439, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.034.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !439, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !439
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !441

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !noalias !439
  %i.aw = load i64, ptr %i.q, align 8, !noalias !439, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter92 = and i32 %5, 5                     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter96 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !439
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !443

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  %niter97.next.7 = add i32 %niter97, 8           ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !noalias !439 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !noalias !439, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !noalias !439, !noundef !4
  %i.bg = add i64 %i.bf, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !439
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter98 = and i32 %6, 5                     ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter102 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !439
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !444

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  call void @llvm.x86.sse2.pause(), !noalias !439
  %niter103.next.7 = add i32 %niter103, 8         ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102
  br i1 %niter103.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB4c_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !439
  %i.bn = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !alias.scope !439
  %.sroa.017.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.017.0.copyload35, ptr %i.bo, align 8, !noalias !445
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx36, i64 48, i1 false)
  store atomic i64 %i.bn, ptr %i.ah release, align 8, !noalias !448
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp)
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit
  %i.bq = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !450
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.v, align 8, !range !453, !noalias !454, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB4c_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !450, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !450
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !450
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !450
  store ptr %i.g, ptr %i.c, align 8, !noalias !450
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBc_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B1Y_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !noalias !450

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !470, !noalias !450, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !471
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !450

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !450
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !481, !noalias !450, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !482
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !450
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !450
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !450
  store ptr %i.bw, ptr %i.d, align 8, !noalias !450
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !450
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !450
  store ptr %i.g, ptr %i.b, align 8, !noalias !450
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBc_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B1Y_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !noalias !450

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !450
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !450, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !450
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !450
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !483
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !450
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !492
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ab, label %.body.thread
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1W_:bb.a
  %.not44 = icmp samesign ult i32 %i.cr, %i.bm
  br i1 %.not44, label %bb.o, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not43 = icmp slt i64 %i.cp, %i.bq
  br i1 %.not43, label %bb.o, label %bb.ae

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB4c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !450
  %i.ct = load atomic i64, ptr %i.k monotonic, align 128, !noalias !499 ; 2 uses
  %i.cu = load i64, ptr %i.l, align 16, !noalias !499, !noundef !4 ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit: ; preds = %bb.ag, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.017.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.not7 = icmp eq i64 %.sroa.017.0.copyload, -2
  br i1 %.not7, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.af

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBa_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit
  store i64 2, ptr %0, align 8
  br label %bb.af

bb.aj:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body29

.body.thread:                                     ; preds = %.body.thread30.loopexit, %.body.thread30.loopexit.split-lp, %bb.ab, %bb.aa, %bb.s, %bb.r
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.cm, %bb.ab ], [ %i.by, %bb.r ], [ %i.cm, %bb.aa ], [ %i.by, %bb.s ], [ %lpad.loopexit, %.body.thread30.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread30.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB1A_(ptr noalias noundef align 8 dereferenceable(56) %2) #20
          to label %bb.aj unwind label %bb.ak

bb.ak:                                            ; preds = %.body.thread
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !501 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !501, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !504, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !504, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !504, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !504 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !504, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.034.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !504, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !504
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !506

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !noalias !504
  %i.aw = load i64, ptr %i.q, align 8, !noalias !504, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter92 = and i32 %5, 5                     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter96 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !504
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !507

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  %niter97.next.7 = add i32 %niter97, 8           ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !noalias !504 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !noalias !504, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !noalias !504, !noundef !4
  %i.bg = add i64 %i.bf, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !504
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter98 = and i32 %6, 5                     ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter102 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !504
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !508

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  call void @llvm.x86.sse2.pause(), !noalias !504
  %niter103.next.7 = add i32 %niter103, 8         ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102
  br i1 %niter103.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB4A_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !504
  %i.bn = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !alias.scope !504
  %.sroa.017.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.017.0.copyload35, ptr %i.bo, align 8, !noalias !509
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx36, i64 48, i1 false)
  store atomic i64 %i.bn, ptr %i.ah release, align 8, !noalias !512
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp)
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit
  %i.bq = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !514
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.v, align 8, !range !453, !noalias !517, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB4A_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !514, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !514
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !514
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !514
  store ptr %i.g, ptr %i.c, align 8, !noalias !514
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B2m_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !noalias !514

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !533, !noalias !514, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !534
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !514

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !514
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !544, !noalias !514, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !545
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !514
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !514
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !514
  store ptr %i.bw, ptr %i.d, align 8, !noalias !514
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !514
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !514
  store ptr %i.g, ptr %i.b, align 8, !noalias !514
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B2m_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !noalias !514

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !514
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !514, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !514
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !514
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !546
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !514
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !555
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ab, label %.body.thread
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversB1D_:bb.a

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !565

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i: ; preds = %bb.l, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.07.i, %bb.l ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.k ], [ %.sroa.05.0.i, %bb.l ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !noundef !4
  %i.am = add i64 %i.al, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.am, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !alias.scope !566, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !569 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !569, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !569, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !569, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !569, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !569 ; 3 uses
  %i.ag = add i64 %i.u, 1
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ai = icmp eq i64 %i.af, %i.u
  br i1 %i.ai, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = add nuw i64 %i.x, 1
  %i.ak = load i64, ptr %i.r, align 128, !noalias !569, !noundef !4
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.am = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !569
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.an = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod61 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !569
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !572

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ap = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aq = load atomic i64, ptr %i.q monotonic, align 128, !noalias !569 ; 2 uses
  %i.ar = load i64, ptr %i.m, align 16, !noalias !569, !noundef !4 ; 2 uses
  %i.as = xor i64 %i.ar, -1
  %i.at = and i64 %i.aq, %i.as
  %i.au = icmp eq i64 %i.at, %i.u
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter62 = and i32 %4, 5                     ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.av, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter66 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod64.not = icmp eq i32 %xtraiter62, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter62, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter63 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter63.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !569
  %epil.iter63.next = add i32 %epil.iter63, 1     ; 2 uses
  %epil.iter63.cmp.not = icmp eq i32 %epil.iter63.next, %xtraiter62
  br i1 %epil.iter63.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !573

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aw = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter67 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  %niter67.next.7 = add i32 %niter67, 8           ; 2 uses
  %niter67.ncmp.7 = icmp eq i32 %niter67.next.7, %unroll_iter66
  br i1 %niter67.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ax = and i64 %i.ar, %i.aq
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.n, align 8, !noalias !569, !noundef !4
  %i.ba = add i64 %i.az, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ba, %bb.k ], [ %i.af, %bb.d ]
  %i.bb = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !569
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter68 = and i32 %5, 5                     ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.bd, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter72 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !569
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !574

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.be = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.ap, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.be, %._crit_edge.loopexit.i20.i ], [ %i.aw, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  call void @llvm.x86.sse2.pause(), !noalias !569
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit: ; preds = %bb.j
  %i.bf = load i32, ptr %i.k, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bf, -1
  br i1 %.not, label %bb.s, label %bb.r

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.ai

bb.n:                                             ; preds = %bb.l
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !569
  %i.bg = load i64, ptr %i.n, align 8, !noalias !569, !noundef !4
  %i.bh = add i64 %i.bg, %i.u                     ; 2 uses
  store i64 %i.bh, ptr %i.l, align 8, !alias.scope !569
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false), !noalias !575
  store atomic i64 %i.bh, ptr %i.ae release, align 8, !noalias !575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit unwind label %bb.o, !noalias !575

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load i64, ptr %i.h, align 8, !range !5, !alias.scope !578, !noalias !575, !noundef !4
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %common.resume unwind label %bb.q, !noalias !575

bb.q:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !575
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.v, %bb.ad, %bb.ae, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bk, %bb.p ], [ %i.bz, %bb.u ], [ %i.cn, %bb.ad ], [ %i.bz, %bb.v ], [ %i.cn, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !575
  %i.bo = icmp eq i64 %.sroa.0.0.copyload2, -2
  br i1 %i.bo, label %bb.ai, label %bb.aj

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  %i.bp = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bq = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.br = extractvalue { i64, i32 } %i.bq, 0      ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.bp
  br i1 %i.bs, label %.split, label %bb.af

bb.s:                                             ; preds = %.split, %bb.af, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !581
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.t, align 8, !range !453, !noalias !584, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.s
  %i.bv = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !581 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.s
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.s, %bb.s ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !581, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !581
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.z, !prof !12

bb.t:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !581
  %i.by = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !581 ; 2 uses
  store ptr %i.by, ptr %i.e, align 8, !noalias !581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !581
  store ptr %i.i, ptr %i.c, align 8, !noalias !581
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.w unwind label %bb.u, !noalias !581

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !591)
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !600, !noalias !581, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !601
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.y, !noalias !581

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !581
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !611, !noalias !581, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !612
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !581
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !581
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.y:                                             ; preds = %bb.ae, %bb.v
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !581
  unreachable

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !581
  store ptr %i.bx, ptr %i.d, align 8, !noalias !581
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !581
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !581
  store ptr %i.i, ptr %i.b, align 8, !noalias !581
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.aa unwind label %bb.ad, !noalias !581

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !581
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !581
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !581, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !581
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_:bb.a
bb.ad:                                            ; preds = %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !622
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %common.resume unwind label %bb.y, !noalias !581

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f), !noalias !581
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !581
  br label %bb.b

.split:                                           ; preds = %bb.r
  %i.cq = extractvalue { i64, i32 } %i.bq, 1      ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 1000000000
  call void @llvm.assume(i1 %i.cr)
  %.not17 = icmp samesign ult i32 %i.cq, %i.bf
  br i1 %.not17, label %bb.s, label %bb.ag

bb.af:                                            ; preds = %bb.r
  %.not16 = icmp slt i64 %i.br, %i.bp
  br i1 %.not16, label %bb.s, label %bb.ag

bb.ag:                                            ; preds = %.split, %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cs, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ct, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %storemerge = phi i64 [ %.sroa.0.0.copyload2, %bb.aj ], [ -2, %bb.ai ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !629 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !629, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !632, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !632, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !632, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !632 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !632, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.034.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !632, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread31.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !632
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !634

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !noalias !632
  %i.aw = load i64, ptr %i.q, align 8, !noalias !632, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter93 = and i32 %5, 5                     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter97 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod95.not = icmp eq i32 %xtraiter93, 0
  br i1 %lcmp.mod95.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod96 = icmp ne i32 %xtraiter93, 0
  call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter94 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter94.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !632
  %epil.iter94.next = add i32 %epil.iter94, 1     ; 2 uses
  %epil.iter94.cmp.not = icmp eq i32 %epil.iter94.next, %xtraiter93
  br i1 %epil.iter94.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !635

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter98.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  %niter98.next.7 = add i32 %niter98, 8           ; 2 uses
  %niter98.ncmp.7 = icmp eq i32 %niter98.next.7, %unroll_iter97
  br i1 %niter98.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !noalias !632 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !noalias !632, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !noalias !632, !noundef !4
  %i.bg = add i64 %i.bf, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !632
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter99 = and i32 %6, 5                     ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter103 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !632
  %epil.iter100.next = add i32 %epil.iter100, 1   ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99
  br i1 %epil.iter100.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !636

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  call void @llvm.x86.sse2.pause(), !noalias !632
  %niter104.next.7 = add i32 %niter104, 8         ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103
  br i1 %niter104.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread31.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread31.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB3T_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !632
  %i.bn = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !alias.scope !632
  %.sroa.018.0.copyload36 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.018.0.copyload36, ptr %i.bo, align 8, !noalias !637
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx37, i64 48, i1 false)
  store atomic i64 %i.bn, ptr %i.ah release, align 8, !noalias !640
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp)
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  %i.bq = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread31.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !642
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.v, align 8, !range !453, !noalias !645, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread31.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB3T_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !642, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !642
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !642
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread31.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !642
  store ptr %i.g, ptr %i.c, align 8, !noalias !642
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !noalias !642

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !661, !noalias !642, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !662
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !642

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !642
  call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !672, !noalias !642, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !673
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i unwind label %.body.thread31.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !642
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !642
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !642
  store ptr %i.bw, ptr %i.d, align 8, !noalias !642
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !642
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !642
  store ptr %i.g, ptr %i.b, align 8, !noalias !642
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !noalias !642

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !642
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !642, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !642
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !642
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !674
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %.body.thread31.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !642
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !683
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ab, label %.body.thread
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversB1D_:bb.a

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !695

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i: ; preds = %bb.l, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.k ], [ %.sroa.0.07.i, %bb.l ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.k ], [ %.sroa.05.0.i, %bb.l ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !noundef !4
  %i.am = add i64 %i.al, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.am, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !5, !alias.scope !696, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !699 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !699, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !699, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !699, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !699, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !699 ; 3 uses
  %i.ag = add i64 %i.u, 1
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ai = icmp eq i64 %i.af, %i.u
  br i1 %i.ai, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = add nuw i64 %i.x, 1
  %i.ak = load i64, ptr %i.r, align 128, !noalias !699, !noundef !4
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.am = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !699
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.an = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod61 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !699
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !702

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ap = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aq = load atomic i64, ptr %i.q monotonic, align 128, !noalias !699 ; 2 uses
  %i.ar = load i64, ptr %i.m, align 16, !noalias !699, !noundef !4 ; 2 uses
  %i.as = xor i64 %i.ar, -1
  %i.at = and i64 %i.aq, %i.as
  %i.au = icmp eq i64 %i.at, %i.u
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter62 = and i32 %4, 5                     ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.av, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter66 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod64.not = icmp eq i32 %xtraiter62, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter62, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter63 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter63.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !699
  %epil.iter63.next = add i32 %epil.iter63, 1     ; 2 uses
  %epil.iter63.cmp.not = icmp eq i32 %epil.iter63.next, %xtraiter62
  br i1 %epil.iter63.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !703

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aw = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter67 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter67.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  %niter67.next.7 = add i32 %niter67, 8           ; 2 uses
  %niter67.ncmp.7 = icmp eq i32 %niter67.next.7, %unroll_iter66
  br i1 %niter67.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ax = and i64 %i.ar, %i.aq
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.n, align 8, !noalias !699, !noundef !4
  %i.ba = add i64 %i.az, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ba, %bb.k ], [ %i.af, %bb.d ]
  %i.bb = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !699
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter68 = and i32 %5, 5                     ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.bd, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter72 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !699
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !704

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.be = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.ap, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.be, %._crit_edge.loopexit.i20.i ], [ %i.aw, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  call void @llvm.x86.sse2.pause(), !noalias !699
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit: ; preds = %bb.j
  %i.bf = load i32, ptr %i.k, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bf, -1
  br i1 %.not, label %bb.s, label %bb.r

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.ai

bb.n:                                             ; preds = %bb.l
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !699
  %i.bg = load i64, ptr %i.n, align 8, !noalias !699, !noundef !4
  %i.bh = add i64 %i.bg, %i.u                     ; 2 uses
  store i64 %i.bh, ptr %i.l, align 8, !alias.scope !699
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false), !noalias !705
  store atomic i64 %i.bh, ptr %i.ae release, align 8, !noalias !705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bj)
          to label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit unwind label %bb.o, !noalias !705

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load i64, ptr %i.h, align 8, !range !5, !alias.scope !708, !noalias !705, !noundef !4
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %common.resume unwind label %bb.q, !noalias !705

bb.q:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !705
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.v, %bb.ad, %bb.ae, %bb.o, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %i.bk, %bb.p ], [ %i.bz, %bb.u ], [ %i.cn, %bb.ad ], [ %i.bz, %bb.v ], [ %i.cn, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx3, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !705
  %i.bo = icmp eq i64 %.sroa.0.0.copyload2, -2
  br i1 %i.bo, label %bb.ai, label %bb.aj

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  %i.bp = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bq = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.br = extractvalue { i64, i32 } %i.bq, 0      ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.bp
  br i1 %i.bs, label %.split, label %bb.af

bb.s:                                             ; preds = %.split, %bb.af, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !711
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.t, align 8, !range !453, !noalias !714, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.s
  %i.bv = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !711 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.s
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.s, %bb.s ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !711, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !711
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.z, !prof !12

bb.t:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !711
  %i.by = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !711 ; 2 uses
  store ptr %i.by, ptr %i.e, align 8, !noalias !711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !711
  store ptr %i.i, ptr %i.c, align 8, !noalias !711
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.w unwind label %bb.u, !noalias !711

bb.u:                                             ; preds = %bb.t
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !730, !noalias !711, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !731
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.y, !noalias !711

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !711
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !741, !noalias !711, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !742
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !711
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !711
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.y:                                             ; preds = %bb.ae, %bb.v
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !711
  unreachable

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !711
  store ptr %i.bx, ptr %i.d, align 8, !noalias !711
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !711
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !711
  store ptr %i.i, ptr %i.b, align 8, !noalias !711
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.aa unwind label %bb.ad, !noalias !711

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !711
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !711, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !711
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_:bb.a
bb.ad:                                            ; preds = %bb.z
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !752
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %common.resume unwind label %bb.y, !noalias !711

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f), !noalias !711
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !711
  br label %bb.b

.split:                                           ; preds = %bb.r
  %i.cq = extractvalue { i64, i32 } %i.bq, 1      ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 1000000000
  call void @llvm.assume(i1 %i.cr)
  %.not17 = icmp samesign ult i32 %i.cq, %i.bf
  br i1 %.not17, label %bb.s, label %bb.ag

bb.af:                                            ; preds = %bb.r
  %.not16 = icmp slt i64 %i.br, %i.bp
  br i1 %.not16, label %bb.s, label %bb.ag

bb.ag:                                            ; preds = %.split, %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.cs, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ct, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %storemerge = phi i64 [ %.sroa.0.0.copyload2, %bb.aj ], [ -2, %bb.ai ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !759 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !759, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !762, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !762, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !762, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !762 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.034.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !762, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.034.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !762, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread31.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !762
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !764

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !noalias !762
  %i.aw = load i64, ptr %i.q, align 8, !noalias !762, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.034.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter93 = and i32 %5, 5                     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter97 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod95.not = icmp eq i32 %xtraiter93, 0
  br i1 %lcmp.mod95.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod96 = icmp ne i32 %xtraiter93, 0
  call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter94 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter94.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !762
  %epil.iter94.next = add i32 %epil.iter94, 1     ; 2 uses
  %epil.iter94.cmp.not = icmp eq i32 %epil.iter94.next, %xtraiter93
  br i1 %epil.iter94.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !765

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter98.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  %niter98.next.7 = add i32 %niter98, 8           ; 2 uses
  %niter98.ncmp.7 = icmp eq i32 %niter98.next.7, %unroll_iter97
  br i1 %niter98.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !noalias !762 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !noalias !762, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !noalias !762, !noundef !4
  %i.bg = add i64 %i.bf, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !762
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter99 = and i32 %6, 5                     ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter103 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !762
  %epil.iter100.next = add i32 %epil.iter100, 1   ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99
  br i1 %epil.iter100.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !766

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  call void @llvm.x86.sse2.pause(), !noalias !762
  %niter104.next.7 = add i32 %niter104, 8         ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103
  br i1 %niter104.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread31.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread31.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB3T_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !762
  %i.bn = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bn, ptr %i.j, align 8, !alias.scope !762
  %.sroa.018.0.copyload36 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.018.0.copyload36, ptr %i.bo, align 8, !noalias !767
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx37, i64 48, i1 false)
  store atomic i64 %i.bn, ptr %i.ah release, align 8, !noalias !770
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp)
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  %i.bq = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.br = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread31.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !772
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.v, align 8, !range !453, !noalias !775, !noundef !4
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bu = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread31.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0uEs_0uEB3T_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !772, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !772
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !772
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread31.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bx, ptr %i.e, align 8, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !772
  store ptr %i.g, ptr %i.c, align 8, !noalias !772
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.t unwind label %bb.r, !noalias !772

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !791, !noalias !772, !nonnull !4, !noundef !4
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !792
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !772

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !772
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !802, !noalias !772, !nonnull !4, !noundef !4
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !803
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i unwind label %.body.thread31.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !772
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !772
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !772
  store ptr %i.bw, ptr %i.d, align 8, !noalias !772
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !772
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !772
  store ptr %i.g, ptr %i.b, align 8, !noalias !772
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4send0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.x unwind label %bb.aa, !noalias !772

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !772
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !772, !noundef !4 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !772
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !772
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !804
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %.body.thread31.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !772
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !813
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ab, label %.body.thread
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20disconnect_receiversB10_:bb.a
  %unroll_iter = and i32 %i.aj, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !825

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.z)
  br label %bb.j

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4sendB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !826 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !826, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cu, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !829, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !829, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !829, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !829 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !829, !noundef !4
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !829, !noundef !4
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread29.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !829
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !831

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !829
  %i.ax = load i64, ptr %i.q, align 8, !noalias !829, !noundef !4
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter96 = and i32 %5, 5                     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter100 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod98.not = icmp eq i32 %xtraiter96, 0
  br i1 %lcmp.mod98.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod99 = icmp ne i32 %xtraiter96, 0
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter97 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter97.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !829
  %epil.iter97.next = add i32 %epil.iter97, 1     ; 2 uses
  %epil.iter97.cmp.not = icmp eq i32 %epil.iter97.next, %xtraiter96
  br i1 %epil.iter97.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !832

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter101 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter101.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  %niter101.next.7 = add i32 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i32 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !829 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !829, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !829, !noundef !4
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !829
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter102 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter106 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !829
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !833

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  call void @llvm.x86.sse2.pause(), !noalias !829
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread29.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread29.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0uEs_0uEB3w_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit: ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bn, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread: ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !829
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !829
  %.sroa.017.0.copyload34 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.017.0.copyload34, ptr %i.ah, align 8, !noalias !834
  %.sroa.5.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx35, i64 40, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 8, !noalias !837
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bq)
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit
  %i.br = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bs = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !839
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.420.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bt = load i8, ptr %i.v, align 8, !range !453, !noalias !842, !noundef !4
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread29.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0uEs_0uEB3w_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bv, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !839, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !839
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !839
  %i.by = invoke noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread29.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.e, align 8, !noalias !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !839
  store ptr %i.g, ptr %i.c, align 8, !noalias !839
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.by)
          to label %bb.t unwind label %bb.r, !noalias !839

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !858, !noalias !839, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !859
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !839

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !839
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !869, !noalias !839, !nonnull !4, !noundef !4
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !870
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !839
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !839
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !839
  store ptr %i.bx, ptr %i.d, align 8, !noalias !839
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !839
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !839
  store ptr %i.g, ptr %i.b, align 8, !noalias !839
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0B12_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.x unwind label %bb.aa, !noalias !839

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !839
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !839, !noundef !4 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !839
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !839
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !871
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %.body.thread29.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !839
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !880
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %.body.thread

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body.thread unwind label %bb.v, !noalias !839

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0uEs_0uEB3w_.exit.i: ; preds = %.noexc10
  invoke fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0uEs0_0B1E_(ptr nonnull %i.f)
          to label %bb.ag unwind label %.body.thread29.loopexit.split-lp

bb.ac:                                            ; preds = %bb.n
  %i.cq = extractvalue { i64, i32 } %i.bs, 0      ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %i.br
  br i1 %i.cr, label %.split, label %bb.ad

.split:                                           ; preds = %bb.ac
  %i.cs = extractvalue { i64, i32 } %i.bs, 1      ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 1000000000
  call void @llvm.assume(i1 %i.ct)
  %.not43 = icmp samesign ult i32 %i.cs, %i.bn
  br i1 %.not43, label %bb.o, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not42 = icmp slt i64 %i.cq, %i.br
  br i1 %.not42, label %bb.o, label %bb.ae

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4send0uEs_0uEB3w_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !839
  %i.cu = load atomic i64, ptr %i.k monotonic, align 128, !noalias !887 ; 2 uses
  %i.cv = load i64, ptr %i.l, align 16, !noalias !887, !noundef !4 ; 2 uses
  %i.cw = and i64 %i.cv, %i.cu
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit: ; preds = %bb.ag, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.017.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.not7 = icmp eq i64 %.sroa.017.0.copyload, -1
  br i1 %.not7, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.af

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit
  store i64 2, ptr %0, align 8
  br label %bb.af

bb.aj:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body28

.body.thread:                                     ; preds = %.body.thread29.loopexit, %.body.thread29.loopexit.split-lp, %bb.ab, %bb.aa, %bb.s, %bb.r
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.cn, %bb.ab ], [ %i.bz, %bb.r ], [ %i.cn, %bb.aa ], [ %i.bz, %bb.s ], [ %lpad.loopexit, %.body.thread29.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread29.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEBF_(ptr noalias noundef align 8 dereferenceable(48) %2) #20
          to label %bb.aj unwind label %bb.ak

bb.ak:                                            ; preds = %.body.thread
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE8try_recvB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 128 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.64 = alloca [40 x i8], align 8           ; 5 uses
  %i.c = load atomic i64, ptr %1 monotonic, align 128, !noalias !889
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.0.029.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %.sroa.02.0.i = phi i64 [ %i.c, %bb.a ], [ %i.ao, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 7 uses
  %i.j = load i64, ptr %i.d, align 16, !noalias !889, !noundef !4
  %i.k = add i64 %i.j, -1
  %i.l = and i64 %i.k, %.sroa.02.0.i              ; 3 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !889, !noundef !4
  %i.n = sub i64 0, %i.m
  %i.o = and i64 %.sroa.02.0.i, %i.n
  %i.p = load ptr, ptr %i.f, align 8, !noalias !889, !nonnull !4, !noundef !4
  %i.q = load i64, ptr %i.g, align 32, !noalias !889, !noundef !4
  %i.r = icmp ult i64 %i.l, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !noalias !889 ; 3 uses
  %i.v = add i64 %.sroa.02.0.i, 1
  %i.w = icmp eq i64 %i.v, %i.u
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.u, %.sroa.02.0.i
  br i1 %i.x, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = add nuw i64 %i.l, 1
  %i.z = load i64, ptr %i.i, align 128, !noalias !889, !noundef !4
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !889
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ac = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ac, 7                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ac, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !892

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ae = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.af = load atomic i64, ptr %i.h monotonic, align 128, !noalias !889 ; 2 uses
  %i.ag = load i64, ptr %i.d, align 16, !noalias !889, !noundef !4 ; 2 uses
  %i.ah = xor i64 %i.ag, -1
  %i.ai = and i64 %i.af, %i.ah
  %i.aj = icmp eq i64 %i.ai, %.sroa.02.0.i
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter39 = and i32 %2, 5                     ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ak, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter43 = and i32 %2, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod41.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod41.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod42 = icmp ne i32 %xtraiter39, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter40 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter40.next, %.lr.ph.i12.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  %epil.iter40.next = add i32 %epil.iter40, 1     ; 2 uses
  %epil.iter40.cmp.not = icmp eq i32 %epil.iter40.next, %xtraiter39
  br i1 %epil.iter40.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !893

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.al = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter44 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter44.next.7, %.lr.ph.i12.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  %niter44.next.7 = add i32 %niter44, 8           ; 2 uses
  %niter44.ncmp.7 = icmp eq i32 %niter44.next.7, %unroll_iter43
  br i1 %niter44.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.am = and i64 %i.ag, %i.af
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.ae, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.au, %._crit_edge.loopexit.i20.i ], [ %i.al, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.ao = load atomic i64, ptr %1 monotonic, align 128, !noalias !889
  br label %bb.b

bb.k:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.e, align 8, !noalias !889, !noundef !4
  %i.aq = add i64 %i.ap, %i.o
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.aq, %bb.k ], [ %i.u, %bb.d ]
  %i.ar = cmpxchg weak ptr %1, i64 %.sroa.02.0.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !889
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter45 = and i32 %3, 5                     ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.at, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter49 = and i32 %3, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i17.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !894

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.au = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i17.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  tail call void @llvm.x86.sse2.pause(), !noalias !889
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit: ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.r

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ax = load i64, ptr %i.e, align 8, !noalias !889, !noundef !4
  %i.ay = add i64 %i.ax, %.sroa.02.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false), !noalias !895
  store atomic i64 %i.ay, ptr %i.aw release, align 8, !noalias !895
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.az)
          to label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit unwind label %bb.o, !noalias !895

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.b) #20
          to label %bb.q unwind label %bb.p, !noalias !895

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !895
  unreachable

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.ba

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit: ; preds = %bb.n
  %.sroa.02.0.copyload3 = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.64.0..sroa_idx5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !895
  %i.bc = icmp eq i64 %.sroa.02.0.copyload3, -1
  br i1 %i.bc, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.u, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit
  ret void

bb.s:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bd, align 8
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.64, i64 40, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge = phi i64 [ %.sroa.02.0.copyload3, %bb.t ], [ -1, %bb.s ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE20disconnect_receiversCsgNynMj4ykPw_6notify(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !noundef !4 ; 2 uses
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h)
  %.pre = load i64, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128
  %i.k = xor i64 %i.i, -1
  %i.l = and i64 %i.d, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %bb.j ]
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.j ] ; 8 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %bb.j ] ; 5 uses
  %i.r = add i64 %i.q, -1
  %i.s = and i64 %.sroa.0.0.i, %i.r               ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !noundef !4
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %.sroa.0.0.i, %i.u
  %i.w = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.x = load i64, ptr %i.o, align 32, !noundef !4
  %i.y = icmp ult i64 %i.s, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = add i64 %.sroa.0.0.i, 1
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %i.l, %.sroa.0.0.i
  br i1 %i.ad, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE20discard_all_messagesCsgNynMj4ykPw_6notify.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = add nuw i64 %i.s, 1
  %i.af = load i64, ptr %i.p, align 128, !noundef !4
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.ai = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.ai, 7                    ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.aj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ai, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !898

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.ak = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.f
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.07.i, %bb.k ], [ %i.ak, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %i.aa, %bb.f ], [ %i.am, %bb.k ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !noundef !4
  %i.am = add i64 %i.al, %i.v
  br label %bb.j

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE20discard_all_messagesCsgNynMj4ykPw_6notify.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE4recvCsgNynMj4ykPw_6notify(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.s = load atomic i64, ptr %0 monotonic, align 128, !noalias !899 ; 7 uses
  %i.t = load i64, ptr %i.k, align 16, !noalias !899, !noundef !4
  %i.u = add i64 %i.t, -1
  %i.v = and i64 %i.u, %i.s                       ; 4 uses
  %i.w = load i64, ptr %i.l, align 8, !noalias !899, !noundef !4
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %i.s, %i.x
  %i.z = load ptr, ptr %i.m, align 8, !noalias !899, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = load i64, ptr %i.n, align 32, !noalias !899, !noundef !4
  %i.ab = icmp ult i64 %i.v, %i.aa
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8, !noalias !899 ; 3 uses
  %i.ae = add i64 %i.s, 1
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ag = icmp eq i64 %i.ad, %i.s
  br i1 %i.ag, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ah = add nuw i64 %i.v, 1
  %i.ai = load i64, ptr %i.p, align 128, !noalias !899, !noundef !4
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ak = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !899
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.al = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.al, 7                    ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.am, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.al, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod66 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !899
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !902

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.an = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ao = load atomic i64, ptr %i.o monotonic, align 128, !noalias !899 ; 2 uses
  %i.ap = load i64, ptr %i.k, align 16, !noalias !899, !noundef !4 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.ao, %i.aq
  %i.as = icmp eq i64 %i.ar, %i.s
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter67 = and i32 %3, 5                     ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.at, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter71 = and i32 %3, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod69.not = icmp eq i32 %xtraiter67, 0
  br i1 %lcmp.mod69.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod70 = icmp ne i32 %xtraiter67, 0
  call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter68 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter68.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !899
  %epil.iter68.next = add i32 %epil.iter68, 1     ; 2 uses
  %epil.iter68.cmp.not = icmp eq i32 %epil.iter68.next, %xtraiter67
  br i1 %epil.iter68.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !903

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.au = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter72 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter72.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  %niter72.next.7 = add i32 %niter72, 8           ; 2 uses
  %niter72.ncmp.7 = icmp eq i32 %niter72.next.7, %unroll_iter71
  br i1 %niter72.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.av = and i64 %i.ap, %i.ao
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit, label %.loopexit

bb.k:                                             ; preds = %bb.d
  %i.ax = load i64, ptr %i.l, align 8, !noalias !899, !noundef !4
  %i.ay = add i64 %i.ax, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ay, %bb.k ], [ %i.ad, %bb.d ]
  %i.az = cmpxchg weak ptr %0, i64 %i.s, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !899
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCsgNynMj4ykPw_6notify.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter73 = and i32 %4, 5                     ; 3 uses
  %i.bb = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.bb, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter77 = and i32 %4, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod75.not = icmp eq i32 %xtraiter73, 0
  br i1 %lcmp.mod75.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod76 = icmp ne i32 %xtraiter73, 0
  call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter74 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter74.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !899
  %epil.iter74.next = add i32 %epil.iter74, 1     ; 2 uses
  %epil.iter74.cmp.not = icmp eq i32 %epil.iter74.next, %xtraiter73
  br i1 %epil.iter74.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !904

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bc = add i32 %.sroa.0.029.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.an, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bc, %._crit_edge.loopexit.i20.i ], [ %i.au, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter78 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter78.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  call void @llvm.x86.sse2.pause(), !noalias !899
  %niter78.next.7 = add i32 %niter78, 8           ; 2 uses
  %niter78.ncmp.7 = icmp eq i32 %niter78.next.7, %unroll_iter77
  br i1 %niter78.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit: ; preds = %bb.j
  %i.bd = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bd, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCsgNynMj4ykPw_6notify.exit: ; preds = %bb.l
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v ; 2 uses
  store ptr %i.be, ptr %i.g, align 8, !alias.scope !899
  %i.bf = load i64, ptr %i.l, align 8, !noalias !899, !noundef !4
  %i.bg = add i64 %i.bf, %i.s                     ; 2 uses
  store i64 %i.bg, ptr %i.j, align 8, !alias.scope !899
  store atomic i64 %i.bg, ptr %i.be release, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 256
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bh)
  br label %.loopexit

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit
  %i.bi = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bj = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bk = extractvalue { i64, i32 } %i.bj, 0      ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.bi
  br i1 %i.bl, label %.split, label %bb.ab

bb.o:                                             ; preds = %.split, %bb.ab, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !905
  store ptr %i.g, ptr %i.f, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bm = load i8, ptr %i.r, align 8, !range !453, !noalias !908, !noundef !4
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bo = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.q, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !905 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bo, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.q, %bb.o ] ; 4 uses
  %i.bq = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !905, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !905
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.v, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !905
  %i.br = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !905 ; 2 uses
  store ptr %i.br, ptr %i.e, align 8, !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !905
  store ptr %i.g, ptr %i.c, align 8, !noalias !905
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChanneluE4recvs_0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.br)
          to label %bb.s unwind label %bb.q, !noalias !905

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.bt = load ptr, ptr %i.e, align 8, !alias.scope !924, !noalias !905, !nonnull !4, !noundef !4
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !925
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.u, !noalias !905

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !905
  call void @llvm.experimental.noalias.scope.decl(metadata !926)
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.bw = load ptr, ptr %i.e, align 8, !alias.scope !935, !noalias !905, !nonnull !4, !noundef !4
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !936
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !905
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !905
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

bb.u:                                             ; preds = %bb.aa, %bb.r
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !905
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.r, %bb.q
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.q ], [ %i.cg, %bb.z ], [ %i.bs, %bb.r ], [ %i.cg, %bb.aa ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.v:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !905
  store ptr %i.bq, ptr %i.d, align 8, !noalias !905
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store atomic i64 0, ptr %i.ca release, align 8, !noalias !905
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store atomic ptr null, ptr %i.cb release, align 8, !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !905
  store ptr %i.g, ptr %i.b, align 8, !noalias !905
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChanneluE4recvs_0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bq)
          to label %bb.w unwind label %bb.z, !noalias !905

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !905
  %i.cc = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !905, !noundef !4 ; 3 uses
  store ptr %i.cc, ptr %i.a, align 8, !noalias !905
  store ptr %i.bq, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !905
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !937
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !905
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !905
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

bb.z:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !946
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.u, !noalias !905

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4recvs_0uEs0_0CsgNynMj4ykPw_6notify(ptr nonnull %i.f), !noalias !905
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !905
  br label %bb.b

.split:                                           ; preds = %bb.n
  %i.cj = extractvalue { i64, i32 } %i.bj, 1      ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 1000000000
  call void @llvm.assume(i1 %i.ck)
  %.not12 = icmp samesign ult i32 %i.cj, %i.bd
  br i1 %.not12, label %bb.o, label %.loopexit

bb.ab:                                            ; preds = %bb.n
  %.not11 = icmp slt i64 %i.bk, %i.bi
  br i1 %.not11, label %bb.o, label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.ab, %bb.j, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCsgNynMj4ykPw_6notify.exit
  %.sroa.0.0 = phi i8 [ 2, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE4readCsgNynMj4ykPw_6notify.exit ], [ 1, %bb.j ], [ 0, %bb.ab ], [ 0, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE4sendCsgNynMj4ykPw_6notify(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %2, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !953 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !953, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %.loopexit16

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cs, %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cr, %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.035.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02934.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.035.i           ; 4 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !956, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.035.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !956, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = load i64, ptr %i.s, align 32, !noalias !956, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !956 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.035.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !956, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.035.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !956, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02934.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !956
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02934.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02934.i, %.sroa.0.02934.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02934.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !956
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !958

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.au = add i32 %.sroa.0.02934.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %0 monotonic, align 128, !noalias !956
  %i.aw = load i64, ptr %i.q, align 8, !noalias !956, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.035.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02934.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02934.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter66 = and i32 %3, 5                     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02934.i, 3
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter70 = and i32 %3, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod68.not = icmp eq i32 %xtraiter66, 0
  br i1 %lcmp.mod68.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter66, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter67 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter67.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !956
  %epil.iter67.next = add i32 %epil.iter67, 1     ; 2 uses
  %epil.iter67.cmp.not = icmp eq i32 %epil.iter67.next, %xtraiter66
  br i1 %epil.iter67.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !959

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02934.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter71 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter71.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  %niter71.next.7 = add i32 %niter71, 8           ; 2 uses
  %niter71.ncmp.7 = icmp eq i32 %niter71.next.7, %unroll_iter70
  br i1 %niter71.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bl, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !noalias !956 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !noalias !956, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.b, label %.loopexit16

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !noalias !956, !noundef !4
  %i.bg = add i64 %i.bf, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.035.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.035.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !956
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02934.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02934.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter72 = and i32 %4, 5                     ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02934.i, 3
  br i1 %i.bk, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter76 = and i32 %4, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod74.not = icmp eq i32 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter73 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter73.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !956
  %epil.iter73.next = add i32 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i32 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !960

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bl = add i32 %.sroa.0.02934.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter77 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter77.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  call void @llvm.x86.sse2.pause(), !noalias !956
  %niter77.next.7 = add i32 %niter77, 8           ; 2 uses
  %niter77.ncmp.7 = icmp eq i32 %niter77.next.7, %unroll_iter76
  br i1 %niter77.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit: ; preds = %bb.h
  %i.bm = load i32, ptr %i.i, align 8, !range !209, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit: ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa ; 2 uses
  store ptr %i.bn, ptr %i.g, align 8, !alias.scope !956
  %i.bo = add i64 %.sroa.02.035.i, 1              ; 2 uses
  store i64 %i.bo, ptr %i.j, align 8, !alias.scope !956
  store atomic i64 %i.bo, ptr %i.bn release, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bp)
  br label %.loopexit16

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit
  %i.bq = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.br = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bs = extractvalue { i64, i32 } %i.br, 0      ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  br i1 %i.bt, label %.split, label %bb.ab

bb.o:                                             ; preds = %.split, %bb.ab, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB4_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !961
  store ptr %i.g, ptr %i.f, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bu = load i8, ptr %i.v, align 8, !range !453, !noalias !964, !noundef !4
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !11

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.o
  %i.bw = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !961 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECsgNynMj4ykPw_6notify.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bw, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.u, %bb.o ] ; 4 uses
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !961, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !961
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.v, !prof !12

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !961
  %i.bz = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !961 ; 2 uses
  store ptr %i.bz, ptr %i.e, align 8, !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !961
  store ptr %i.g, ptr %i.c, align 8, !noalias !961
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChanneluE4send0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bz)
          to label %bb.s unwind label %bb.q, !noalias !961

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.cb = load ptr, ptr %i.e, align 8, !alias.scope !980, !noalias !961, !nonnull !4, !noundef !4
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !981
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.u, !noalias !961

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !961
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !991, !noalias !961, !nonnull !4, !noundef !4
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !992
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !961
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !961
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit

bb.u:                                             ; preds = %bb.aa, %bb.r
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !961
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.r, %bb.q
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.co, %bb.z ], [ %i.ca, %bb.r ], [ %i.co, %bb.aa ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.v:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !961
  store ptr %i.by, ptr %i.d, align 8, !noalias !961
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store atomic i64 0, ptr %i.ci release, align 8, !noalias !961
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store atomic ptr null, ptr %i.cj release, align 8, !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !961
  store ptr %i.g, ptr %i.b, align 8, !noalias !961
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5arrayINtB6_7ChanneluE4send0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.by)
          to label %bb.w unwind label %bb.z, !noalias !961

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !961
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !961, !noundef !4 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !noalias !961
  store ptr %i.by, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !961
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !993
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !961
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !961
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit

bb.z:                                             ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1002
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.u, !noalias !961

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChanneluE4send0uEs0_0CsgNynMj4ykPw_6notify(ptr nonnull %i.f), !noalias !961
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChanneluE4send0uECsgNynMj4ykPw_6notify.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChanneluE4send0uEs_0uECsgNynMj4ykPw_6notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !961
  %i.cr = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1009 ; 2 uses
  %i.cs = load i64, ptr %i.l, align 16, !noalias !1009, !noundef !4 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
end_hunk_6
