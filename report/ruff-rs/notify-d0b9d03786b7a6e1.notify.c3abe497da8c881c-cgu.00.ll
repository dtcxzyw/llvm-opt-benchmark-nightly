Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/notify-d0b9d03786b7a6e1.notify.c3abe497da8c881c-cgu.00?download=true
inline.NumInlined: 500
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !224, !noalias !227
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
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !238 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !238
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx30, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.063.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.062.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.061.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.035.060.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.035.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.063.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.061.i, 7
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.r, !noalias !238

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw i32 %.sroa.0.061.i, %.sroa.0.061.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.035.060.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !241

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.035.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.035.060.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.035.3.i, %bb.n ], [ %.sroa.035.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.061.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.061.i, %bb.k ], [ 1, %bb.n ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !238 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !238
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.035.3.i = phi ptr [ %.sroa.035.060.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.062.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBO_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB2r_()
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i unwind label %.body.thread24.loopexit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBO_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB2r_()
          to label %bb.i unwind label %bb.r, !noalias !238 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !238
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !238
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.035.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !238
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.062.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.063.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.063.i, i64 %i.z seq_cst acquire, align 8, !noalias !238
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.061.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i25.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i25.i, label %.backedge.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.ac, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i26.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i26.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i.epil, !llvm.loop !243

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i26.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  tail call void @llvm.x86.sse2.pause(), !noalias !238
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i26.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.035.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32, !prof !12

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32: ; preds = %bb.p
  store atomic ptr %.sroa.035.3.i, ptr %i.c release, align 8, !noalias !238
  %i.ae = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !238 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.035.3.i, ptr %i.af release, align 8, !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx36, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.035.1.ph.i = phi ptr [ %.sroa.035.060.i, %bb.d ], [ %.sroa.035.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.035.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread47.i

.thread47.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !238
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.035.4.i = phi ptr [ %.sroa.035.3.i, %bb.o ], [ %.sroa.035.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.035.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !238
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit

.body.thread24.loopexit:                          ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !244
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !244
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !249 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !249
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -2
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.w:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.r, %.thread47.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.r ], [ %lpad.thr_comm.i, %.thread47.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB1A_(ptr noalias noundef align 8 dereferenceable(56) %2) #20
          to label %bb.w unwind label %bb.x

bb.x:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !250 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !250
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx30, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.063.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.062.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.061.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.035.060.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.035.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.063.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.061.i, 7
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.r, !noalias !250

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw i32 %.sroa.0.061.i, %.sroa.0.061.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.035.060.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !253

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.035.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.035.060.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.035.3.i, %bb.n ], [ %.sroa.035.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.061.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.061.i, %bb.k ], [ 1, %bb.n ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !250 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !250
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.035.3.i = phi ptr [ %.sroa.035.060.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.062.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB2P_()
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i unwind label %.body.thread24.loopexit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB2P_()
          to label %bb.i unwind label %bb.r, !noalias !250 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !250
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !250
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.035.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !250
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.062.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.063.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.063.i, i64 %i.z seq_cst acquire, align 8, !noalias !250
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.061.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i25.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i25.i, label %.backedge.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.ac, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i26.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i26.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i.epil, !llvm.loop !254

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i26.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  tail call void @llvm.x86.sse2.pause(), !noalias !250
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i26.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.035.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32, !prof !12

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32: ; preds = %bb.p
  store atomic ptr %.sroa.035.3.i, ptr %i.c release, align 8, !noalias !250
  %i.ae = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !250 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.035.3.i, ptr %i.af release, align 8, !noalias !250
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx36, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.035.1.ph.i = phi ptr [ %.sroa.035.060.i, %bb.d ], [ %.sroa.035.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.035.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread47.i

.thread47.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !250
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.035.4.i = phi ptr [ %.sroa.035.3.i, %bb.o ], [ %.sroa.035.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.035.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !250
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit

.body.thread24.loopexit:                          ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !255
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !255
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !260 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !260
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -2
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.w:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.r, %.thread47.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.r ], [ %lpad.thr_comm.i, %.thread47.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB1J_(ptr noalias noundef align 8 dereferenceable(56) %2) #20
          to label %bb.w unwind label %bb.x

bb.x:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE18disconnect_sendersB1D_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversB1D_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04042.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversB1D_:bb.a
  %.not.i = icmp eq i64 %i.bc, %i.o
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bd = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bd, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [48 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !268
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !268
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 15 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %.sroa.012.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.07.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.u, label %bb.d, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.v = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter95 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter99 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter100 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter100.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  %niter100.next.7 = add i32 %niter100, 8         ; 2 uses
  %niter100.ncmp.7 = icmp eq i32 %niter100.next.7, %unroll_iter99
  br i1 %niter100.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !268
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod97.not = icmp eq i32 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter95, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter96 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter96.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  %epil.iter96.next = add i32 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i32 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !271

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod91.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod91.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter90 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter90.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !272

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !268
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !268
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !268 ; 3 uses
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
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.aj, label %bb.k, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.k:                                             ; preds = %bb.j
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %i.ak = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter89 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter93 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter94 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter94.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  %niter94.next.7 = add i32 %niter94, 8           ; 2 uses
  %niter94.ncmp.7 = icmp eq i32 %niter94.next.7, %unroll_iter93
  br i1 %niter94.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !268
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %4, 5                       ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %4, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod88 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !273

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.aq = phi i32 [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.ar = load atomic i64, ptr %1 acquire, align 128, !noalias !268
  %i.as = load atomic ptr, ptr %i.l acquire, align 8, !noalias !268
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.aq, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.s, 30
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.av = load atomic ptr, ptr %i.au acquire, align 8, !noalias !268 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !268
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.ay = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter101 = and i32 %i.ay, 7                 ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.az, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter105 = and i32 %i.ay, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  call void @llvm.x86.sse2.pause(), !noalias !268
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !268
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !274

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.ba = add i32 %.sroa.0.02.i30.i, 1
  %i.bb = load atomic ptr, ptr %i.au acquire, align 8, !noalias !268 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.av, %bb.o ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i, -2
  %i.be = add i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bg = load atomic ptr, ptr %i.bf monotonic, align 8, !noalias !268
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i64
  %spec.select17.i = or disjoint i64 %i.be, %i.bi
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !268
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !268
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.i, align 8, !range !89, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bj, -1
  br i1 %.not, label %bb.ac, label %bb.ab

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !268
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !268
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 3 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !275
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 6 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !275
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.t:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.t
  %i.bq = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter107 = and i32 %i.bq, 7                 ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.br, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter111 = and i32 %i.bq, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  call void @llvm.x86.sse2.pause(), !noalias !275
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !275
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !279
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.an:                                            ; preds = %bb.aj
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !321
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.ai, !noalias !279

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f), !noalias !279
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !279
  br label %bb.b

.split:                                           ; preds = %bb.ab
  %i.ee = extractvalue { i64, i32 } %i.de, 1      ; 2 uses
  %i.ef = icmp ult i32 %i.ee, 1000000000
  call void @llvm.assume(i1 %i.ef)
  %.not26 = icmp samesign ult i32 %i.ee, %i.bj
  br i1 %.not26, label %bb.ac, label %bb.aq

bb.ap:                                            ; preds = %bb.ab
  %.not25 = icmp slt i64 %i.df, %i.dd
  br i1 %.not25, label %bb.ac, label %bb.aq

bb.aq:                                            ; preds = %.split, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eg, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, %bb.as, %bb.aq
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread ], [ %.sroa.018.0.copyload, %bb.as ], [ -2, %bb.aq ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eh, align 8
  br label %bb.ar

bb.as:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419, i64 48, i1 false)
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !328 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !328
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload30 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx31, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.065.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.064.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.063.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.037.062.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.065.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.063.i, 7
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.r, !noalias !328

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter69 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.062.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !331

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !328 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !328
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.037.3.i = phi ptr [ %.sroa.037.062.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.064.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB28_()
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i unwind label %.body.thread25.loopexit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB28_()
          to label %bb.i unwind label %bb.r, !noalias !328 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !328
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !328
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !328
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !328
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ac, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i27.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i27.i.epil

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !332

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  tail call void @llvm.x86.sse2.pause(), !noalias !328
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, !prof !12

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread25.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !328
  %i.ae = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !328 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.037.3.i, ptr %i.af release, align 8, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload36 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx37, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.062.i, %bb.d ], [ %.sroa.037.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !328
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !328
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit

.body.thread25.loopexit:                          ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread25.loopexit.split-lp:                 ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ai = icmp eq ptr %.sroa.48.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  %.sroa.012.0.copyload40 = phi i64 [ %.sroa.012.0.copyload36, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.48.139 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.48.139, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload40, ptr %i.aj, align 8, !noalias !333
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !333
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !338 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread
  %.sroa.012.0.copyload32 = phi i64 [ %.sroa.012.0.copyload30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.012.0.copyload32, -2
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.copyload32, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit: ; preds = %.body.thread, %bb.w
  resume { ptr, i32 } %eh.lpad-body23

.body.thread:                                     ; preds = %.body.thread25.loopexit, %.body.thread25.loopexit.split-lp, %bb.r, %.thread49.i
  %eh.lpad-body23 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.r ], [ %lpad.thr_comm.i, %.thread49.i ], [ %lpad.loopexit, %.body.thread25.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread25.loopexit.split-lp ]
  %i.an = load i64, ptr %2, align 8, !range !5, !alias.scope !339, !noundef !4
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, label %bb.w

bb.w:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE18disconnect_sendersB1D_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversB1D_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversB1D_:bb.a
  %.not.i = icmp eq i64 %i.bc, %i.o
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bd = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bd, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [48 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !349
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !349
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 15 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %.sroa.012.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.07.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.u, label %bb.d, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.v = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter95 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter99 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter100 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter100.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  %niter100.next.7 = add i32 %niter100, 8         ; 2 uses
  %niter100.ncmp.7 = icmp eq i32 %niter100.next.7, %unroll_iter99
  br i1 %niter100.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !349
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod97.not = icmp eq i32 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter95, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter96 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter96.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  %epil.iter96.next = add i32 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i32 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !352

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod91.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod91.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter90 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter90.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !353

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !349
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !349
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !349 ; 3 uses
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
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.aj, label %bb.k, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.k:                                             ; preds = %bb.j
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %i.ak = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter89 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter93 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter94 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter94.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  %niter94.next.7 = add i32 %niter94, 8           ; 2 uses
  %niter94.ncmp.7 = icmp eq i32 %niter94.next.7, %unroll_iter93
  br i1 %niter94.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !349
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %4, 5                       ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %4, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod88 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !354

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.aq = phi i32 [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.ar = load atomic i64, ptr %1 acquire, align 128, !noalias !349
  %i.as = load atomic ptr, ptr %i.l acquire, align 8, !noalias !349
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.aq, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.s, 30
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.av = load atomic ptr, ptr %i.au acquire, align 8, !noalias !349 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !349
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.ay = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter101 = and i32 %i.ay, 7                 ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.az, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter105 = and i32 %i.ay, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  call void @llvm.x86.sse2.pause(), !noalias !349
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !349
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !355

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.ba = add i32 %.sroa.0.02.i30.i, 1
  %i.bb = load atomic ptr, ptr %i.au acquire, align 8, !noalias !349 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.av, %bb.o ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i, -2
  %i.be = add i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bg = load atomic ptr, ptr %i.bf monotonic, align 8, !noalias !349
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i64
  %spec.select17.i = or disjoint i64 %i.be, %i.bi
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !349
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !349
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.i, align 8, !range !89, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bj, -1
  br i1 %.not, label %bb.ac, label %bb.ab

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !349
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !349
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 3 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !356
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bs, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 6 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !356
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.t:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.t
  %i.bq = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter107 = and i32 %i.bq, 7                 ; 3 uses
  %i.br = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.br, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter111 = and i32 %i.bq, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !356
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvB1D_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !360
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.an:                                            ; preds = %bb.aj
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !401
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.ai, !noalias !360

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f), !noalias !360
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !360
  br label %bb.b

.split:                                           ; preds = %bb.ab
  %i.ee = extractvalue { i64, i32 } %i.de, 1      ; 2 uses
  %i.ef = icmp ult i32 %i.ee, 1000000000
  call void @llvm.assume(i1 %i.ef)
  %.not26 = icmp samesign ult i32 %i.ee, %i.bj
  br i1 %.not26, label %bb.ac, label %bb.aq

bb.ap:                                            ; preds = %bb.ab
  %.not25 = icmp slt i64 %i.df, %i.dd
  br i1 %.not25, label %bb.ac, label %bb.aq

bb.aq:                                            ; preds = %.split, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eg, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, %bb.as, %bb.aq
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread ], [ %.sroa.018.0.copyload, %bb.as ], [ -2, %bb.aq ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eh, align 8
  br label %bb.ar

bb.as:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419, i64 48, i1 false)
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4sendB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !408 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !408
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload30 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx31, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.065.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.064.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.063.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.037.062.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.065.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.063.i, 7
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.r, !noalias !408

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter69 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.062.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !411

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !408 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !408
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.037.3.i = phi ptr [ %.sroa.037.062.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.064.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB28_()
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i unwind label %.body.thread25.loopexit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEE13new_zeroed_inB28_()
          to label %bb.i unwind label %bb.r, !noalias !408 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !408
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !408
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !408
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !408
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ac, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i27.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i27.i.epil

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !412

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  tail call void @llvm.x86.sse2.pause(), !noalias !408
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, !prof !12

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread25.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !408
  %i.ae = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !408 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.037.3.i, ptr %i.af release, align 8, !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload36 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx37, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.062.i, %bb.d ], [ %.sroa.037.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !408
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !408
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit

.body.thread25.loopexit:                          ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread25.loopexit.split-lp:                 ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.ai = icmp eq ptr %.sroa.48.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  %.sroa.012.0.copyload40 = phi i64 [ %.sroa.012.0.copyload36, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.48.139 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.48.139, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload40, ptr %i.aj, align 8, !noalias !413
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !413
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !418 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread
  %.sroa.012.0.copyload32 = phi i64 [ %.sroa.012.0.copyload30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !418
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.012.0.copyload32, -2
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.copyload32, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit: ; preds = %.body.thread, %bb.w
  resume { ptr, i32 } %eh.lpad-body23

.body.thread:                                     ; preds = %.body.thread25.loopexit, %.body.thread25.loopexit.split-lp, %bb.r, %.thread49.i
  %eh.lpad-body23 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.r ], [ %lpad.thr_comm.i, %.thread49.i ], [ %lpad.loopexit, %.body.thread25.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread25.loopexit.split-lp ]
  %i.an = load i64, ptr %2, align 8, !range !5, !alias.scope !419, !noundef !4
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, label %bb.w

bb.w:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE18disconnect_sendersB10_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20disconnect_receiversB10_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20disconnect_receiversB10_:bb.a
  %niter33 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i32.i ]
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
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !425

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.av = add i32 %.sroa.0.02.i29.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEBF_(ptr noalias noundef align 8 dereferenceable(48) %i.an)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i ], [ %i.al, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i ] ; 2 uses
  %i.az = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.ba, %i.o
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4sendB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [40 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !426 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !426
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx30, i64 40, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.065.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.064.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.063.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.037.062.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.065.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.063.i, 7
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.r, !noalias !426

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.062.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !429

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !426 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !426
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.037.3.i = phi ptr [ %.sroa.037.062.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.064.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEE13new_zeroed_inB1v_()
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i unwind label %.body.thread24.loopexit

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEE13new_zeroed_inB1v_()
          to label %bb.i unwind label %bb.r, !noalias !426 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !426
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !426
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !426
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !426
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ac, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i27.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i27.i.epil

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !430

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  tail call void @llvm.x86.sse2.pause(), !noalias !426
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32, !prof !12

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !426
  %i.ae = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !426 ; 0 uses
  store atomic ptr %.sroa.037.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx36, i64 40, i1 false)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.062.i, %bb.d ], [ %.sroa.037.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.af, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !426
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !426
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit

.body.thread24.loopexit:                          ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit: ; preds = %bb.s, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.ah = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.47.138, i64 8
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !431
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !noalias !431
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !436 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !alias.scope !436
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -1
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.v

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit
  store i64 2, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.w:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.r, %.thread49.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.r ], [ %lpad.thr_comm.i, %.thread49.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEBF_(ptr noalias noundef align 8 dereferenceable(48) %2) #20
          to label %bb.w unwind label %bb.x

bb.x:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE8try_recvB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.416 = alloca [40 x i8], align 8          ; 2 uses
  %i.a = load atomic i64, ptr %1 acquire, align 128, !noalias !437
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !noalias !437
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.a
  %.sroa.0.037.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 15 uses
  %.sroa.012.0.i = phi ptr [ %i.c, %bb.a ], [ %.sroa.012.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.a, %bb.a ], [ %.sroa.07.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 5 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.backedge.i
  %i.h = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.h, label %bb.c, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.i = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter75 = and i32 %i.i, 7                   ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter79 = and i32 %i.i, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter80 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter80.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %niter80.next.7 = add i32 %niter80, 8           ; 2 uses
  %niter80.ncmp.7 = icmp eq i32 %niter80.next.7, %unroll_iter79
  br i1 %niter80.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.d:                                             ; preds = %.backedge.i
  %i.k = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.l = and i64 %.sroa.07.0.i, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.h

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.i, %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !437
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod77.not = icmp eq i32 %xtraiter75, 0
  br i1 %lcmp.mod77.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter75, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter76 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter76.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %epil.iter76.next = add i32 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i32 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !440

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i19.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !441

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.c
  %i.n = load atomic i64, ptr %1 acquire, align 128, !noalias !437
  %i.o = load atomic ptr, ptr %i.b acquire, align 8, !noalias !437
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.p = load atomic i64, ptr %i.d monotonic, align 128, !noalias !437 ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = icmp eq i64 %i.e, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted.i = xor i64 %i.p, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.s = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.k, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = and i64 %i.p, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.w, label %bb.j, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.j:                                             ; preds = %bb.i
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.j
  %i.x = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter69 = and i32 %i.x, 7                   ; 3 uses
  %i.y = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.y, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter73 = and i32 %i.x, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i19.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa, label %.lr.ph.i19.i

bb.k:                                             ; preds = %bb.h
  %i.z = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !437
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.l
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.ab = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ab, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !442

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ac = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.l
  %i.ad = phi i32 [ %i.ac, %._crit_edge.loopexit.i.i ], [ 1, %bb.l ]
  %i.ae = load atomic i64, ptr %1 acquire, align 128, !noalias !437
  %i.af = load atomic ptr, ptr %i.b acquire, align 8, !noalias !437
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ad, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.af, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.n, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ae, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.f, 30
  br i1 %i.ag, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ah = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !437 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.n, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.am, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.n ] ; 6 uses
  %i.aj = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.aj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i29.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !437
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.p
  %i.ak = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter81 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.al, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter85 = and i32 %i.ak, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter86 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter86.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %niter86.next.7 = add i32 %niter86, 8           ; 2 uses
  %niter86.ncmp.7 = icmp eq i32 %niter86.next.7, %unroll_iter85
  br i1 %niter86.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod83.not = icmp eq i32 %xtraiter81, 0
  br i1 %lcmp.mod83.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod84 = icmp ne i32 %xtraiter81, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter82 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter82.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !437
  %epil.iter82.next = add i32 %epil.iter82, 1     ; 2 uses
  %epil.iter82.cmp.not = icmp eq i32 %epil.iter82.next, %xtraiter81
  br i1 %epil.iter82.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !443

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.p, %bb.o
  %i.am = add i32 %.sroa.0.02.i30.i, 1
  %i.an = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !437 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.n
  %.lcssa.i.i = phi ptr [ %i.ah, %bb.n ], [ %i.an, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.ap = and i64 %.sroa.01.0.i, -2
  %i.aq = add i64 %i.ap, 2
  %i.ar = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !437
  %i.as = icmp ne ptr %i.ar, null
  %i.at = zext i1 %i.as to i64
  %spec.select17.i = or disjoint i64 %i.aq, %i.at
  store atomic ptr %.lcssa.i.i, ptr %i.b release, align 8, !noalias !437
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !437
  br label %bb.q

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.au, align 8
  br label %bb.aa

bb.q:                                             ; preds = %bb.m, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %i.f ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8, !noalias !444
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.q, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.be, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.q ] ; 6 uses
  %i.bb = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i3
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !444
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.s:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.s
  %i.bc = mul nuw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter87 = and i32 %i.bc, 7                  ; 3 uses
  %i.bd = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.bd, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter91 = and i32 %i.bc, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter92 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter92.next.7, %.lr.ph.i.i.i7 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  %niter92.next.7 = add i32 %niter92, 8           ; 2 uses
  %niter92.ncmp.7 = icmp eq i32 %niter92.next.7, %unroll_iter91
  br i1 %niter92.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod89.not = icmp eq i32 %xtraiter87, 0
  br i1 %lcmp.mod89.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod90 = icmp ne i32 %xtraiter87, 0
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter88 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter88.next, %.lr.ph.i.i.i7.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !444
  %epil.iter88.next = add i32 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i32 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !447
end_hunk_5
begin_hunk_6_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE20disconnect_receiversCsgNynMj4ykPw_6notify:bb.a
  %i.az = lshr i64 %i.ay, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.az, %i.o
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsgNynMj4ykPw_6notify.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.ba = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.ba, ptr %0 release, align 128
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsgNynMj4ykPw_6notify.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsgNynMj4ykPw_6notify(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.p = load atomic i64, ptr %0 acquire, align 128, !noalias !452
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !452
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 15 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %.sroa.012.0.i.be, %.backedge.i.backedge ] ; 35 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.07.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.u, label %bb.d, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.v = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter82 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter86 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter87 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter87.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  %niter87.next.7 = add i32 %niter87, 8           ; 2 uses
  %niter87.ncmp.7 = icmp eq i32 %niter87.next.7, %unroll_iter86
  br i1 %niter87.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !452
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod84.not = icmp eq i32 %xtraiter82, 0
  br i1 %lcmp.mod84.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod85 = icmp ne i32 %xtraiter82, 0
  call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter83 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter83.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  %epil.iter83.next = add i32 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i32 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !455

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod78.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter76, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter77 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter77.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  %epil.iter77.next = add i32 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i32 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !456

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %0 acquire, align 128, !noalias !452
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !452
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !452 ; 3 uses
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
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.aj, label %bb.k, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.k:                                             ; preds = %bb.j
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %i.ak = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter76 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter80 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter81 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter81.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  %niter81.next.7 = add i32 %niter81, 8           ; 2 uses
  %niter81.ncmp.7 = icmp eq i32 %niter81.next.7, %unroll_iter80
  br i1 %niter81.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %0, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !452
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %3, 5                       ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %3, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod75 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !457

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.aq = phi i32 [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.ar = load atomic i64, ptr %0 acquire, align 128, !noalias !452
  %i.as = load atomic ptr, ptr %i.l acquire, align 8, !noalias !452
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.aq, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.at = icmp eq i64 %i.s, 30
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !452 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.az, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.aw = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.aw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !452
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.ax = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter88 = and i32 %i.ax, 7                  ; 3 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.ay, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter92 = and i32 %i.ax, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter93 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter93.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  call void @llvm.x86.sse2.pause(), !noalias !452
  %niter93.next.7 = add i32 %niter93, 8           ; 2 uses
  %niter93.ncmp.7 = icmp eq i32 %niter93.next.7, %unroll_iter92
  br i1 %niter93.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod90.not = icmp eq i32 %xtraiter88, 0
  br i1 %lcmp.mod90.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter88, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter89 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter89.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !452
  %epil.iter89.next = add i32 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i32 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !458

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.az = add i32 %.sroa.0.02.i30.i, 1
  %i.ba = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !452 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.au, %bb.o ], [ %i.ba, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bc = and i64 %.sroa.01.0.i, -2
  %i.bd = add i64 %i.bc, 2
  %i.be = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !452
  %i.bf = icmp ne ptr %i.be, null
  %i.bg = zext i1 %i.bf to i64
  %spec.select17.i = or disjoint i64 %i.bd, %i.bg
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !452
  store atomic i64 %spec.select17.i, ptr %0 release, align 128, !noalias !452
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit: ; preds = %bb.h
  %i.bh = load i32, ptr %i.i, align 8, !range !89, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bh, -1
  br i1 %.not, label %bb.bd, label %bb.bc

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !452
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !452
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.s ; 3 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i4, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i

.lr.ph.i.i4:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6
  %.sroa.0.02.i.i5 = phi i32 [ %i.bq, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6 ], [ 0, %bb.r ] ; 6 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i5, 7
  br i1 %i.bn, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i4
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6

bb.t:                                             ; preds = %.lr.ph.i.i4
  %.not.i.i.i7 = icmp eq i32 %.sroa.0.02.i.i5, 0
  br i1 %.not.i.i.i7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.t
  %i.bo = mul nuw i32 %.sroa.0.02.i.i5, %.sroa.0.02.i.i5 ; 2 uses
  %xtraiter94 = and i32 %i.bo, 7                  ; 3 uses
  %i.bp = icmp ult i32 %.sroa.0.02.i.i5, 3
  br i1 %i.bp, label %.lr.ph.i.i.i8.epil.preheader, label %.lr.ph.i.i.i8.preheader.new

.lr.ph.i.i.i8.preheader.new:                      ; preds = %.lr.ph.i.i.i8.preheader
  %unroll_iter98 = and i32 %i.bo, 56
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8, %.lr.ph.i.i.i8.preheader.new
  %niter99 = phi i32 [ 0, %.lr.ph.i.i.i8.preheader.new ], [ %niter99.next.7, %.lr.ph.i.i.i8 ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter99.next.7 = add i32 %niter99, 8           ; 2 uses
  %niter99.ncmp.7 = icmp eq i32 %niter99.next.7, %unroll_iter98
  br i1 %niter99.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa, label %.lr.ph.i.i.i8

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8
  %lcmp.mod96.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod96.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i8.epil.preheader

.lr.ph.i.i.i8.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i8.preheader
  %lcmp.mod97 = icmp ne i32 %xtraiter94, 0
  call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph.i.i.i8.epil

.lr.ph.i.i.i8.epil:                               ; preds = %.lr.ph.i.i.i8.epil, %.lr.ph.i.i.i8.epil.preheader
  %epil.iter95 = phi i32 [ 0, %.lr.ph.i.i.i8.epil.preheader ], [ %epil.iter95.next, %.lr.ph.i.i.i8.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter95.next = add i32 %epil.iter95, 1     ; 2 uses
  %epil.iter95.cmp.not = icmp eq i32 %epil.iter95.next, %xtraiter94
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsgNynMj4ykPw_6notify:bb.a
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChanneluE4recvs_0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.kr)
          to label %bb.bl unwind label %bb.bo, !noalias !460

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !460
  %i.ld = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !460, !noundef !4 ; 3 uses
  store ptr %i.ld, ptr %i.a, align 8, !noalias !460
  store ptr %i.kr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !460
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lf = atomicrmw sub ptr %i.ld, i64 1 release, align 8, !noalias !492
  %i.lg = icmp eq i64 %i.lf, 1
  br i1 %i.lg, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !460
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !460
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

bb.bo:                                            ; preds = %bb.bk
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.li = atomicrmw sub ptr %i.kr, i64 1 release, align 8, !noalias !501
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.bp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.bj, !noalias !460

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs0_0CsgNynMj4ykPw_6notify(ptr nonnull %i.f), !noalias !460
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !460
  br label %bb.b

.split:                                           ; preds = %bb.bc
  %i.lk = extractvalue { i64, i32 } %i.kk, 1      ; 2 uses
  %i.ll = icmp ult i32 %i.lk, 1000000000
  call void @llvm.assume(i1 %i.ll)
  %.not18 = icmp samesign ult i32 %i.lk, %i.bh
  br i1 %.not18, label %bb.bd, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread

bb.bq:                                            ; preds = %bb.bc
  %.not17 = icmp slt i64 %i.kl, %i.kj
  br i1 %.not17, label %bb.bd, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread: ; preds = %.split, %bb.bq, %bb.h, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE7destroyCsgNynMj4ykPw_6notify.exit.sink.split.i
  %.sroa.0.0 = phi i8 [ 2, %bb.ax ], [ 2, %bb.aw ], [ 2, %bb.ba ], [ 2, %bb.ay ], [ 2, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE7destroyCsgNynMj4ykPw_6notify.exit.sink.split.i ], [ 2, %bb.u ], [ 2, %bb.v ], [ 2, %bb.w ], [ 2, %bb.x ], [ 2, %bb.y ], [ 2, %bb.z ], [ 2, %bb.aa ], [ 2, %bb.ab ], [ 2, %bb.ac ], [ 2, %bb.ad ], [ 2, %bb.ae ], [ 2, %bb.af ], [ 2, %bb.ag ], [ 2, %bb.ah ], [ 2, %bb.ai ], [ 2, %bb.aj ], [ 2, %bb.ak ], [ 2, %bb.al ], [ 2, %bb.am ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.ap ], [ 2, %bb.aq ], [ 2, %bb.ar ], [ 2, %bb.as ], [ 2, %bb.at ], [ 2, %bb.au ], [ 2, %bb.av ], [ 1, %bb.h ], [ 0, %bb.bq ], [ 0, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 1, 3) i8 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4sendCsgNynMj4ykPw_6notify(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !508 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !508
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.065.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.064.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.063.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.037.062.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.065.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.063.i, 7
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.r, !noalias !508

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter31 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter35 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter36 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter36.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  %niter36.next.7 = add i32 %niter36, 8           ; 2 uses
  %niter36.ncmp.7 = icmp eq i32 %niter36.next.7, %unroll_iter35
  br i1 %niter36.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.062.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod33.not = icmp eq i32 %xtraiter31, 0
  br i1 %lcmp.mod33.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod34 = icmp ne i32 %xtraiter31, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter32 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter32.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  %epil.iter32.next = add i32 %epil.iter32, 1     ; 2 uses
  %epil.iter32.cmp.not = icmp eq i32 %epil.iter32.next, %xtraiter31
  br i1 %epil.iter32.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !511

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ad, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !508 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !508
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.037.3.i = phi ptr [ %.sroa.037.062.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.064.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCsgNynMj4ykPw_6notify(), !noalias !508
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCsgNynMj4ykPw_6notify()
          to label %bb.i unwind label %bb.r, !noalias !508 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !508
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !508
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 256, i64 noundef 8) #13, !noalias !508
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !508
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %3, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ac, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %3, 56
  br label %.lr.ph.i27.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i27.i.epil

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !512

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  tail call void @llvm.x86.sse2.pause(), !noalias !508
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10, !prof !12

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21, !noalias !508
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !508
  %i.ae = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !508 ; 0 uses
  store atomic ptr %.sroa.037.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !508
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit32.i: ; preds = %.thread49.i, %bb.r
  resume { ptr, i32 } %lpad.thr_comm.i

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.062.i, %bb.d ], [ %.sroa.037.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit32.i, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 256, i64 noundef 8) #13, !noalias !508
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit32.i

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.4.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ag, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 256, i64 noundef 8) #13, !noalias !508
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit: ; preds = %._crit_edge.i, %bb.s
  %i.ah = icmp eq ptr %.sroa.4.0, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10
  %.sroa.4.114 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10 ], [ %.sroa.4.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit ]
  %.sroa.9.113 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.114, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.9.113
  %i.ak = atomicrmw or ptr %i.aj, i64 1 release, align 8 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.al)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread: ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit
  %i.am = phi i8 [ 2, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit ], [ 1, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit ], [ 1, %bb.a ]
  ret i8 %i.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit
  %.sroa.0.016 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1992, i64 noundef 8) #13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1984
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1992, i64 noundef 8) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %.sroa.06.015, i64 %i.j ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !5, !alias.scope !513, !noundef !4
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.015, %bb.e ], [ %.sroa.06.015, %bb.f ] ; 2 uses
  %i.p = add i64 %.sroa.0.016, 2                  ; 2 uses
  %.not = icmp eq i64 %i.p, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b monotonic, align 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load atomic ptr, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = and i64 %i.a, -2                         ; 2 uses
  %i.g = and i64 %i.c, -2                         ; 2 uses
  %.not14 = icmp eq i64 %i.f, %i.g
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit
  %.sroa.0.016 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1992, i64 noundef 8) #13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1984
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1992, i64 noundef 8) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit

end_hunk_7
