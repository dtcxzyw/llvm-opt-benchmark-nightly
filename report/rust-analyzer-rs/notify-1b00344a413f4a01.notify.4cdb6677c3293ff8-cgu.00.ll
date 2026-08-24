Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/notify-1b00344a413f4a01.notify.4cdb6677c3293ff8-cgu.00?download=true
inline.NumInlined: 492
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !226, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp slt i64 %i.x, 384307168202282325
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !noundef !5 ; 2 uses
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
  br i1 %i.q, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.au, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.aq monotonic, align 4
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.av = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs6B6HQbbxj7M_6notify.exit, !prof !13

bb.r:                                             ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs6B6HQbbxj7M_6notify.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs6B6HQbbxj7M_6notify.exit: ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4sendB1W_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !241 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !241
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx30, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.068.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.067.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.066.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.039.065.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.039.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.068.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.066.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !241

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.066.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.066.i, %.sroa.0.066.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.066.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.039.065.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1F_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB33_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !244

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.066.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit60.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.039.0.be.i = phi ptr [ %.sroa.039.3.i, %.loopexit60.i ], [ %.sroa.039.065.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.af, %.loopexit60.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.066.i, %bb.j ], [ %.sroa.0.066.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !241 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !241
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1F_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB33_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.039.3.i = phi ptr [ %.sroa.039.065.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.067.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultNtNtBP_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB2s_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1F_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB33_.exit.i unwind label %.body.thread24.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1F_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB33_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultNtNtBP_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB2s_()
          to label %bb.h unwind label %bb.p, !noalias !241 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !241
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !241
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.039.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !241
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1F_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB33_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.067.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1F_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB33_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.068.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.068.i, i64 %i.z seq_cst acquire, align 8, !noalias !241
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.066.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.066.i, 0
  br i1 %.not.i26.i, label %.loopexit60.i, label %.lr.ph.i29.i.preheader

.lr.ph.i29.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.066.i, 3
  br i1 %i.ac, label %.lr.ph.i29.i.epil.preheader, label %.lr.ph.i29.i.preheader.new

.lr.ph.i29.i.preheader.new:                       ; preds = %.lr.ph.i29.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.lr.ph.i29.i, %.lr.ph.i29.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i29.i.preheader.new ], [ %niter.next.7, %.lr.ph.i29.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit60.i.loopexit.unr-lcssa, label %.lr.ph.i29.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.039.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread32, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread32: ; preds = %bb.n
  store atomic ptr %.sroa.039.3.i, ptr %i.c release, align 8, !noalias !241
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !241 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.039.3.i, ptr %i.ae release, align 8, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx36, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit.thread

.loopexit60.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i29.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit60.i, label %.lr.ph.i29.i.epil.preheader

.lr.ph.i29.i.epil.preheader:                      ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph.i29.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i29.i.epil

.lr.ph.i29.i.epil:                                ; preds = %.lr.ph.i29.i.epil, %.lr.ph.i29.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i29.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i29.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !241
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit60.i, label %.lr.ph.i29.i.epil, !llvm.loop !246

.loopexit60.i:                                    ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph.i29.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i
  %i.af = add i32 %.sroa.0.066.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.039.1.ph.i = phi ptr [ %.sroa.039.065.i, %bb.d ], [ %.sroa.039.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.039.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread51.i

.thread51.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !241
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.039.4.i = phi ptr [ %.sroa.039.3.i, %bb.m ], [ %.sroa.039.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.039.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !241
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit

.body.thread24.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread32, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !247
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !247
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !252 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1W_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !252
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -2
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtBb_4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1W_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.p, %.thread51.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread51.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscAsMj0W7j8b_3std4path7PathBufNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #20
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4sendB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !253 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !253
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx30, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.068.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.067.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.066.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.039.065.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.039.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.068.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.066.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !253

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.066.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.066.i, %.sroa.0.066.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.066.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.039.065.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB3q_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !256

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.066.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit60.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.039.0.be.i = phi ptr [ %.sroa.039.3.i, %.loopexit60.i ], [ %.sroa.039.065.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.af, %.loopexit60.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.066.i, %bb.j ], [ %.sroa.0.066.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !253 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !253
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB3q_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.039.3.i = phi ptr [ %.sroa.039.065.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.067.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB2Q_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB3q_.exit.i unwind label %.body.thread24.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB3q_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB2Q_()
          to label %bb.h unwind label %bb.p, !noalias !253 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !253
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !253
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.039.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !253
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB3q_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.067.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB3q_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.068.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.068.i, i64 %i.z seq_cst acquire, align 8, !noalias !253
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.066.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.066.i, 0
  br i1 %.not.i26.i, label %.loopexit60.i, label %.lr.ph.i29.i.preheader

.lr.ph.i29.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.066.i, 3
  br i1 %i.ac, label %.lr.ph.i29.i.epil.preheader, label %.lr.ph.i29.i.preheader.new

.lr.ph.i29.i.preheader.new:                       ; preds = %.lr.ph.i29.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %.lr.ph.i29.i, %.lr.ph.i29.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i29.i.preheader.new ], [ %niter.next.7, %.lr.ph.i29.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit60.i.loopexit.unr-lcssa, label %.lr.ph.i29.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.039.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread32, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread32: ; preds = %bb.n
  store atomic ptr %.sroa.039.3.i, ptr %i.c release, align 8, !noalias !253
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !253 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.039.3.i, ptr %i.ae release, align 8, !noalias !253
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx36, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit.thread

.loopexit60.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i29.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit60.i, label %.lr.ph.i29.i.epil.preheader

.lr.ph.i29.i.epil.preheader:                      ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph.i29.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i29.i.epil

.lr.ph.i29.i.epil:                                ; preds = %.lr.ph.i29.i.epil, %.lr.ph.i29.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i29.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i29.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !253
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit60.i, label %.lr.ph.i29.i.epil, !llvm.loop !257

.loopexit60.i:                                    ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph.i29.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i25.i
  %i.af = add i32 %.sroa.0.066.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.039.1.ph.i = phi ptr [ %.sroa.039.065.i, %bb.d ], [ %.sroa.039.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.039.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread51.i

.thread51.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !253
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.039.4.i = phi ptr [ %.sroa.039.3.i, %bb.m ], [ %.sroa.039.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.039.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !253
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit

.body.thread24.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread32, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !258
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !258
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !263 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB2k_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -2
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB2k_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.p, %.thread51.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread51.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCskihuepUL9Ty_12notify_types5event5EventNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB1J_(ptr noalias nofree noundef align 8 dereferenceable(56) %2) #20
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE18disconnect_sendersB1D_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE20disconnect_receiversB1D_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04951.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04951.i, 7
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvB1D_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !282
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.aj:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !324
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit.i.i.i unwind label %bb.ae, !noalias !282

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs6B6HQbbxj7M_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f) #23, !noalias !282
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit19.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !282
  br label %bb.b

.split:                                           ; preds = %bb.x
  %i.eb = extractvalue { i64, i32 } %i.db, 1      ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 1000000000
  call void @llvm.assume(i1 %i.ec)
  %.not33 = icmp samesign ult i32 %i.eb, %i.bg
  br i1 %.not33, label %bb.y, label %bb.am

bb.al:                                            ; preds = %bb.x
  %.not32 = icmp slt i64 %i.dc, %i.da
  br i1 %.not32, label %bb.y, label %bb.am

bb.am:                                            ; preds = %.split, %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ed, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit.thread, %bb.ao, %bb.am
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit.thread ], [ %.sroa.026.0.copyload, %bb.ao ], [ -2, %bb.am ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ee, align 8
  br label %bb.an

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, i64 48, i1 false)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4sendB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !331 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !331
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload30 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx31, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.070.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !331

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter69 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !334

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.af, %.loopexit62.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !331 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !331
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB29_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i unwind label %.body.thread25.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB29_()
          to label %bb.h unwind label %bb.p, !noalias !331 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !331
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !331
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !331
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.070.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.070.i, i64 %i.z seq_cst acquire, align 8, !noalias !331
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.ac, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
          to label %.noexc5 unwind label %.body.thread25.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.c release, align 8, !noalias !331
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !331 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.041.3.i, ptr %i.ae release, align 8, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload36 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx37, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !331
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !335

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %i.af = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !331
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !331
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit

.body.thread25.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread25.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ai = icmp eq ptr %.sroa.48.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit
  %.sroa.012.0.copyload40 = phi i64 [ %.sroa.012.0.copyload36, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.48.139 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.48.139, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload40, ptr %i.aj, align 8, !noalias !336
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !336
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !341 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread
  %.sroa.012.0.copyload32 = phi i64 [ %.sroa.012.0.copyload30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !341
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.012.0.copyload32, -2
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.copyload32, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit: ; preds = %.body.thread, %bb.u
  resume { ptr, i32 } %eh.lpad-body23

.body.thread:                                     ; preds = %.body.thread25.loopexit, %.body.thread25.loopexit.split-lp, %bb.p, %.thread53.i
  %eh.lpad-body23 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread53.i ], [ %lpad.loopexit, %.body.thread25.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread25.loopexit.split-lp ]
  %i.an = load i64, ptr %2, align 8, !range !6, !alias.scope !342, !noundef !5
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit, label %bb.u

bb.u:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE18disconnect_sendersB1D_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE20disconnect_receiversB1D_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvB1D_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !363
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.aj:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !404
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit.i.i.i unwind label %bb.ae, !noalias !363

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs6B6HQbbxj7M_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f) #23, !noalias !363
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit19.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !363
  br label %bb.b

.split:                                           ; preds = %bb.x
  %i.eb = extractvalue { i64, i32 } %i.db, 1      ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 1000000000
  call void @llvm.assume(i1 %i.ec)
  %.not33 = icmp samesign ult i32 %i.eb, %i.bg
  br i1 %.not33, label %bb.y, label %bb.am

bb.al:                                            ; preds = %bb.x
  %.not32 = icmp slt i64 %i.dc, %i.da
  br i1 %.not32, label %bb.y, label %bb.am

bb.am:                                            ; preds = %.split, %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ed, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit.thread, %bb.ao, %bb.am
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit.thread ], [ %.sroa.026.0.copyload, %bb.ao ], [ -2, %bb.am ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ee, align 8
  br label %bb.an

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4readB1D_.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, i64 48, i1 false)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE4sendB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [48 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [48 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !411 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !411
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload30 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx31, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.070.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !411

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter69 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !414

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.af, %.loopexit62.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !411 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !411
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB29_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i unwind label %.body.thread25.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEE13new_zeroed_inB29_()
          to label %bb.h unwind label %bb.p, !noalias !411 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !411
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !411
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !411
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEEEEB2J_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.070.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.070.i, i64 %i.z seq_cst acquire, align 8, !noalias !411
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.ac, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
          to label %.noexc5 unwind label %.body.thread25.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.c release, align 8, !noalias !411
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !411 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.041.3.i, ptr %i.ae release, align 8, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload36 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx37, i64 48, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !411
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !415

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %i.af = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !411
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !411
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit

.body.thread25.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread25.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.ai = icmp eq ptr %.sroa.48.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit
  %.sroa.012.0.copyload40 = phi i64 [ %.sroa.012.0.copyload36, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.48.139 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %.sroa.48.139, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload40, ptr %i.aj, align 8, !noalias !416
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !421 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread
  %.sroa.012.0.copyload32 = phi i64 [ %.sroa.012.0.copyload30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE10start_sendB1D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !421
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.012.0.copyload32, -2
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.012.0.copyload32, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEE5writeB1D_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit: ; preds = %.body.thread, %bb.u
  resume { ptr, i32 } %eh.lpad-body23

.body.thread:                                     ; preds = %.body.thread25.loopexit, %.body.thread25.loopexit.split-lp, %bb.p, %.thread53.i
  %eh.lpad-body23 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread53.i ], [ %lpad.loopexit, %.body.thread25.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread25.loopexit.split-lp ]
  %i.an = load i64, ptr %2, align 8, !range !6, !alias.scope !422, !noundef !5
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit, label %bb.u

bb.u:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE18disconnect_sendersB10_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE20disconnect_receiversB10_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE20disconnect_receiversB10_:bb.a
  %niter32 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i.i40.i.epil

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !llvm.loop !428

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.av = add i32 %.sroa.0.02.i33.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i32.i, label %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB2_4SlotNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i

_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB2_4SlotNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.an)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB2_4SlotNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB4_5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.154.i, %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB2_4SlotNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i ], [ %i.al, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB4_5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i ] ; 2 uses
  %i.az = add i64 %.sroa.05.055.i, 2              ; 3 uses
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.ba, %i.o
  br i1 %.not.i, label %._crit_edge58.i, label %.lr.ph57.i

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit: ; preds = %._crit_edge58.i, %bb.e
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE4sendB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [40 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !429 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !429
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx30, i64 40, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.070.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !429

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEEEEB2m_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !432

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.ae, %.loopexit62.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !429 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !429
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEEEEB2m_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEE13new_zeroed_inB1w_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEEEEB2m_.exit.i unwind label %.body.thread24.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEEEEB2m_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEE13new_zeroed_inB1w_()
          to label %bb.h unwind label %bb.p, !noalias !429 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !429
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !429
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !429
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEEEEB2m_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEEEEB2m_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.070.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.070.i, i64 %i.z seq_cst acquire, align 8, !noalias !429
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.ac, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32, !prof !13

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.c release, align 8, !noalias !429
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !429 ; 0 uses
  store atomic ptr %.sroa.041.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !429
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx36, i64 40, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !429
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !433

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %i.ae = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.af, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !429
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ag, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !429
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit

.body.thread24.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.ah = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.47.138, i64 8
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ai, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !434
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !noalias !434
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !439 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !alias.scope !439
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE5writeB10_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.p, %.thread53.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread53.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %2) #20
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtCs6B6HQbbxj7M_6notify7inotify12EventLoopMsgE8try_recvB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.422 = alloca [40 x i8], align 8          ; 2 uses
  %i.a = load atomic i64, ptr %1 acquire, align 128, !noalias !440
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !noalias !440
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.048.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.048.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.c, %bb.a ], [ %i.o, %.backedge.i ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.a, %bb.a ], [ %i.n, %.backedge.i ] ; 5 uses
  %i.e = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 5 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %.sroa.0.048.i, 7
  br i1 %i.h, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.048.i, %.sroa.0.048.i ; 2 uses
  %xtraiter86 = and i32 %i.i, 7                   ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.048.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter90 = and i32 %i.i, 56
  br label %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE4recvCs6B6HQbbxj7M_6notify:bb.a
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB7_7ChanneluE4recvs_0Cs6B6HQbbxj7M_6notify(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.ko)
          to label %bb.bh unwind label %bb.bk, !noalias !463

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !463
  %i.la = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !463, !noundef !5 ; 3 uses
  store ptr %i.la, ptr %i.a, align 8, !noalias !463
  store ptr %i.ko, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !463
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lc = atomicrmw sub ptr %i.la, i64 1 release, align 8, !noalias !495
  %i.ld = icmp eq i64 %i.lc, 1
  br i1 %i.ld, label %bb.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21, !noalias !463
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !463
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECs6B6HQbbxj7M_6notify.exit

bb.bk:                                            ; preds = %bb.bg
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = atomicrmw sub ptr %i.ko, i64 1 release, align 8, !noalias !504
  %i.lg = icmp eq i64 %i.lf, 1
  br i1 %i.lg, label %bb.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit.i.i.i

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCs6B6HQbbxj7M_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit.i.i.i unwind label %bb.bf, !noalias !463

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECs6B6HQbbxj7M_6notify.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs6B6HQbbxj7M_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs0_0Cs6B6HQbbxj7M_6notify(ptr nonnull %i.f) #23, !noalias !463
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECs6B6HQbbxj7M_6notify.exit

_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECs6B6HQbbxj7M_6notify.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs6B6HQbbxj7M_6notify.exit19.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs6B6HQbbxj7M_6notify.exit.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECs6B6HQbbxj7M_6notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !463
  br label %bb.b

.split:                                           ; preds = %bb.ay
  %i.lh = extractvalue { i64, i32 } %i.kh, 1      ; 2 uses
  %i.li = icmp ult i32 %i.lh, 1000000000
  call void @llvm.assume(i1 %i.li)
  %.not25 = icmp samesign ult i32 %i.lh, %i.be
  br i1 %.not25, label %bb.az, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE4readCs6B6HQbbxj7M_6notify.exit.thread

bb.bm:                                            ; preds = %bb.ay
  %.not24 = icmp slt i64 %i.ki, %i.kg
  br i1 %.not24, label %bb.az, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE4readCs6B6HQbbxj7M_6notify.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE4readCs6B6HQbbxj7M_6notify.exit.thread: ; preds = %.split, %bb.bm, %bb.h, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB4_5BlockuE7destroyCs6B6HQbbxj7M_6notify.exit.sink.split.i
  %.sroa.0.0 = phi i8 [ 2, %bb.au ], [ 2, %bb.at ], [ 2, %bb.aw ], [ 2, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB4_5BlockuE7destroyCs6B6HQbbxj7M_6notify.exit.sink.split.i ], [ 2, %bb.q ], [ 2, %bb.r ], [ 2, %bb.s ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.v ], [ 2, %bb.w ], [ 2, %bb.x ], [ 2, %bb.y ], [ 2, %bb.z ], [ 2, %bb.aa ], [ 2, %bb.ab ], [ 2, %bb.ac ], [ 2, %bb.ad ], [ 2, %bb.ae ], [ 2, %bb.af ], [ 2, %bb.ag ], [ 2, %bb.ah ], [ 2, %bb.ai ], [ 2, %bb.aj ], [ 2, %bb.ak ], [ 2, %bb.al ], [ 2, %bb.am ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.ap ], [ 2, %bb.aq ], [ 2, %bb.ar ], [ 2, %bb.as ], [ 1, %bb.h ], [ 0, %bb.bm ], [ 0, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 1, 3) i8 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE4sendCs6B6HQbbxj7M_6notify(ptr noundef nonnull align 128 %0, i64 %1, i32 noundef range(i32 -1, 1000000000) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !511 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !511
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.070.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !511

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter30 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter34 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter35 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter35.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  %niter35.next.7 = add i32 %niter35, 8           ; 2 uses
  %niter35.ncmp.7 = icmp eq i32 %niter35.next.7, %unroll_iter34
  br i1 %niter35.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod32.not = icmp eq i32 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod33 = icmp ne i32 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter31 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  %epil.iter31.next = add i32 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i32 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !514

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.ae, %.loopexit62.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !511 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !511
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCs6B6HQbbxj7M_6notify(), !noalias !511
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit.i

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCs6B6HQbbxj7M_6notify()
          to label %bb.h unwind label %bb.p, !noalias !511 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !511
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !511
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 256, i64 noundef 8) #13, !noalias !511
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.070.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.070.i, i64 %i.z seq_cst acquire, align 8, !noalias !511
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %xtraiter = and i32 %3, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.ac, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %3, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread9, !prof !13

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !511
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread9: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.c release, align 8, !noalias !511
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !511 ; 0 uses
  store atomic ptr %.sroa.041.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !511
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE5writeCs6B6HQbbxj7M_6notify.exit

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod29 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !511
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !515

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %i.ae = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit36.i: ; preds = %.thread53.i, %bb.p
  resume { ptr, i32 } %lpad.thr_comm.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit36.i, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 256, i64 noundef 8) #13, !noalias !511
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockuEEEECs6B6HQbbxj7M_6notify.exit36.i

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.4.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ag, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 256, i64 noundef 8) #13, !noalias !511
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit: ; preds = %._crit_edge.i, %bb.q
  %i.ah = icmp eq ptr %.sroa.4.0, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE5writeCs6B6HQbbxj7M_6notify.exit

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE5writeCs6B6HQbbxj7M_6notify.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread9
  %.sroa.4.113 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread9 ], [ %.sroa.4.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit ]
  %.sroa.9.112 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread9 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.113, i64 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.9.112
  %i.ak = atomicrmw or ptr %i.aj, i64 1 release, align 8 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.al) #23
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit.thread: ; preds = %bb.a, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE5writeCs6B6HQbbxj7M_6notify.exit
  %i.am = phi i8 [ 2, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE5writeCs6B6HQbbxj7M_6notify.exit ], [ 1, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCs6B6HQbbxj7M_6notify.exit ], [ 1, %bb.a ]
  ret i8 %i.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit
  %.sroa.0.016 = phi i64 [ %i.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1992, i64 noundef 8) #13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1984
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1992, i64 noundef 8) #13
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %.sroa.06.015, i64 %i.j ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !6, !alias.scope !516, !noundef !5
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6B6HQbbxj7M_6notify5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.06.1 = phi ptr [ %i.l, %bb.d ], [ %.sroa.06.015, %bb.e ], [ %.sroa.06.015, %bb.f ] ; 2 uses
  %i.p = add i64 %.sroa.0.016, 2                  ; 2 uses
  %.not = icmp eq i64 %i.p, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCshzWfHUSfYae_4core6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEENtNtNtB11_3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 128 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %i.e, %bb.a ], [ %.sroa.06.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, null
  br i1 %i.h, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit
  %.sroa.0.016 = phi i64 [ %i.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit ], [ %i.e, %bb.a ] ; 6 uses
  %i.i = lshr exact i64 %.sroa.0.016, 1
  %i.j = and i64 %i.i, 31                         ; 2 uses
  %.not11 = icmp eq i64 %i.j, 31
  br i1 %.not11, label %bb.d, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.lcssa, i64 noundef 1992, i64 noundef 8) #13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 1984
  %i.l = load atomic ptr, ptr %i.k monotonic, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.015) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.015, i64 noundef 1992, i64 noundef 8) #13
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs6B6HQbbxj7M_6notify5error5ErrorEEB12_.exit

end_hunk_4
