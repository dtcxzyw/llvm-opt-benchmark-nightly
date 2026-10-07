Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/notify-d0b9d03786b7a6e1.notify.c3abe497da8c881c-cgu.00?download=true
inline.NumInlined: 500
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgNynMj4ykPw_6notify.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !234, !noalias !235, !nonnull !4, !align !6, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !7, !alias.scope !234, !noalias !235, !noundef !4
  store ptr %i.g, ptr %i.a, align 8, !noalias !236
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.i, ptr %i.j, align 8, !noalias !236
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
          to label %bb.d unwind label %bb.c, !noalias !234

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #20
          to label %common.resume unwind label %bb.e, !noalias !234

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !234
  unreachable

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.aa, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgNynMj4ykPw_6notify.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !234, !noalias !235, !nonnull !4, !align !6, !noundef !4 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !7, !alias.scope !234, !noalias !235, !noundef !4 ; 2 uses
  %i.q = trunc nuw i8 %i.p to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.r = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgNynMj4ykPw_6notify.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.v, align 8
  store ptr %.0.val, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !237, !noalias !238, !noundef !4 ; 4 uses
  %i.y = load i64, ptr %i.t, align 8, !range !11, !alias.scope !237, !noalias !238, !noundef !4
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE8grow_oneCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.l unwind label %bb.h, !noalias !238

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !239
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.k:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsgNynMj4ykPw_6notify.exit
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgNynMj4ykPw_6notify(ptr nonnull %i.n, i8 %i.p) #20
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !237, !noalias !238, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ah = add nsw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !237, !noalias !238
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
  br i1 %i.at, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.au, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.aq monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.av = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsgNynMj4ykPw_6notify.exit, !prof !9

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
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !247 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !247
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
          to label %.loopexit.i unwind label %bb.r, !noalias !247

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw nsw i32 %.sroa.0.061.i, %.sroa.0.061.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
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
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !242

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.035.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.035.060.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.035.3.i, %bb.n ], [ %.sroa.035.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.061.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.061.i, %bb.k ], [ 1, %bb.n ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !247 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !247
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
          to label %bb.i unwind label %bb.r, !noalias !247 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !247
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !247
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.035.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !247
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.062.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtB1E_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB32_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.063.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.063.i, i64 %i.z seq_cst acquire, align 8, !noalias !247
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.061.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i25.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i25.i, label %.backedge.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %i.ac, 5                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.ad, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter = and i32 %i.ac, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i.epil, !llvm.loop !243

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i26.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i26.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.035.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32, !prof !9

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32: ; preds = %bb.p
  store atomic ptr %.sroa.035.3.i, ptr %i.c release, align 8, !noalias !247
  %i.af = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !247 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.035.3.i, ptr %i.ag release, align 8, !noalias !247
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
  %i.ah = icmp eq ptr %.sroa.035.1.ph.i, null
  br i1 %i.ah, label %.body.thread, label %.thread47.i

.thread47.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !247
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.035.4.i = phi ptr [ %.sroa.035.3.i, %bb.o ], [ %.sroa.035.0.be.i, %.backedge.i ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.035.4.i, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !247
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.aj = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aj, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ]
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.ak, align 8, !noalias !248
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !248
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = atomicrmw or ptr %i.al, i64 1 release, align 8, !noalias !250 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1W_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtBb_4path7PathBufNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1W_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !250
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
  %i.ao = landingpad { ptr, i32 }
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
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !258 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !258
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
          to label %.loopexit.i unwind label %bb.r, !noalias !258

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw nsw i32 %.sroa.0.061.i, %.sroa.0.061.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
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
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !253

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.035.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.035.060.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.035.3.i, %bb.n ], [ %.sroa.035.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.061.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.061.i, %bb.k ], [ 1, %bb.n ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !258 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !258
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
          to label %bb.i unwind label %bb.r, !noalias !258 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !258
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !258
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.035.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !258
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.062.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB3p_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.063.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.063.i, i64 %i.z seq_cst acquire, align 8, !noalias !258
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.061.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i25.i = icmp eq i32 %.sroa.0.061.i, 0
  br i1 %.not.i25.i, label %.backedge.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %i.ac, 5                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.061.i, 3
  br i1 %i.ad, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter = and i32 %i.ac, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i26.i.epil, !llvm.loop !254

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i26.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.061.i, 1
  br label %.backedge.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  tail call void @llvm.x86.sse2.pause(), !noalias !258
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i26.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.035.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32, !prof !9

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32: ; preds = %bb.p
  store atomic ptr %.sroa.035.3.i, ptr %i.c release, align 8, !noalias !258
  %i.af = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !258 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.035.3.i, ptr %i.ag release, align 8, !noalias !258
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
  %i.ah = icmp eq ptr %.sroa.035.1.ph.i, null
  br i1 %i.ah, label %.body.thread, label %.thread47.i

.thread47.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !258
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.035.4.i = phi ptr [ %.sroa.035.3.i, %bb.o ], [ %.sroa.035.0.be.i, %.backedge.i ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.035.4.i, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !258
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.aj = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aj, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ]
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.ak, align 8, !noalias !259
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !259
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = atomicrmw or ptr %i.al, i64 1 release, align 8, !noalias !261 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB2k_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB2k_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !261
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
  %i.ao = landingpad { ptr, i32 }
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
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.i = mul nuw nsw i32 %.sroa.0.04042.i, %.sroa.0.04042.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04042.i, 3
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !262

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.k = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o                   ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  br i1 %i.t, label %.lr.ph48.i, label %._crit_edge49.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.w = mul nuw nsw i32 %.sroa.0.1.i, %.sroa.0.1.i ; 2 uses
  %xtraiter22 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter26 = and i32 %i.w, 56
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i22.i ]
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
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !263

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i
  %i.ab = phi i64 [ %i.bc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1992, i64 noundef 8) #13
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 1984 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ah = mul nuw nsw i32 %.sroa.0.02.i27.i, %.sroa.0.02.i27.i ; 2 uses
  %xtraiter34 = and i32 %i.ah, 7                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i27.i, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ah, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
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
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !264

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.aj = add i32 %.sroa.0.02.i27.i, 1
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1992, i64 noundef 8) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.145.i, i64 %i.ac ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %.sroa.0.02.i29.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.at = mul nuw nsw i32 %.sroa.0.02.i29.i, %.sroa.0.02.i29.i ; 2 uses
  %xtraiter28 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i29.i, 3
  br i1 %i.au, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter32 = and i32 %i.at, 56
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
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
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !265

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.av = add i32 %.sroa.0.02.i29.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  %i.az = load i64, ptr %i.an, align 8, !range !5, !alias.scope !268, !noundef !4
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i: ; preds = %bb.n, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i
  %.sroa.011.2.i = phi ptr [ %i.am, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i ], [ %.sroa.011.145.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i ], [ %.sroa.011.145.i, %bb.n ] ; 2 uses
  %i.bb = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !312
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !312
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
  %i.v = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter95 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter99 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter100 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter100.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  %niter100.next.7 = add i32 %niter100, 8         ; 2 uses
  %niter100.ncmp.7 = icmp eq i32 %niter100.next.7, %unroll_iter99
  br i1 %niter100.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !312
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
  call void @llvm.x86.sse2.pause(), !noalias !312
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
  call void @llvm.x86.sse2.pause(), !noalias !312
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !272

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !312
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !312
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !312 ; 3 uses
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
  %i.ak = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter89 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter93 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter94 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter94.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  %niter94.next.7 = add i32 %niter94, 8           ; 2 uses
  %niter94.ncmp.7 = icmp eq i32 %niter94.next.7, %unroll_iter93
  br i1 %niter94.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !312
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.ao = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %i.ao, 5                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ap, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.ao, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !312
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !273

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aq = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.ar = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.as = load atomic i64, ptr %1 acquire, align 128, !noalias !312
  %i.at = load atomic ptr, ptr %i.l acquire, align 8, !noalias !312
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.at, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %i.s, 30
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !noalias !312 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !312
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.az = mul nuw nsw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter101 = and i32 %i.az, 7                 ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.ba, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter105 = and i32 %i.az, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
  call void @llvm.x86.sse2.pause(), !noalias !312
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
  call void @llvm.x86.sse2.pause(), !noalias !312
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !274

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.bb = add i32 %.sroa.0.02.i30.i, 1
  %i.bc = load atomic ptr, ptr %i.av acquire, align 8, !noalias !312 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.be = and i64 %.sroa.01.0.i, -2
  %i.bf = add i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8, !noalias !312
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = zext i1 %i.bi to i64
  %spec.select17.i = or disjoint i64 %i.bf, %i.bj
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !312
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !312
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit: ; preds = %bb.h
  %i.bk = load i32, ptr %i.i, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bk, -1
  br i1 %.not, label %bb.ac, label %bb.ab

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !312
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !312
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8, !noalias !313
  %i.bo = and i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 6 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !313
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.t:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.t
  %i.br = mul nuw nsw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter107 = and i32 %i.br, 7                 ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter111 = and i32 %i.br, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
  call void @llvm.x86.sse2.pause(), !noalias !313
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
  call void @llvm.x86.sse2.pause(), !noalias !313
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !277

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.t, %bb.s
  %i.bt = add i32 %.sroa.0.02.i.i4, 1
  %i.bu = load atomic i64, ptr %i.bm acquire, align 8, !noalias !313
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.r
  %.sroa.018.0.copyload = load i64, ptr %i.bl, align 8, !noalias !313 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.0..sroa_idx, i64 48, i1 false)
  %i.bx = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 31
  br i1 %i.by, label %.lr.ph.i2.i, label %bb.x

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i, %bb.w
  %.sroa.0.04.i.i = phi i64 [ %i.ch, %bb.w ], [ 0, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 2 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !noalias !313
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %.lr.ph.i2.i.1

bb.u:                                             ; preds = %.lr.ph.i2.i
  %i.ce = atomicrmw or ptr %i.ca, i64 4 acq_rel, align 8, !noalias !313
  %i.cf = and i64 %i.ce, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.u, %.lr.ph.i2.i
  %i.ch = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 120 ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8, !noalias !313
  %i.cl = and i64 %i.ck, 2
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i2.i.1
  %i.cn = atomicrmw or ptr %i.cj, i64 4 acq_rel, align 8, !noalias !313
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.ch, 30
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i, label %.lr.ph.i2.i

bb.x:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i
  %i.cq = atomicrmw or ptr %i.bm, i64 2 acq_rel, align 8, !noalias !313
  %i.cr = and i64 %i.cq, 4
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %bb.y

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i: ; preds = %bb.aa, %bb.w, %bb.y
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !313
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit

bb.y:                                             ; preds = %bb.x
  %i.ct = icmp samesign ult i64 %i.s, 29
  br i1 %i.ct, label %.lr.ph.i4.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i

.lr.ph.i4.i:                                      ; preds = %bb.y, %bb.aa
  %.sroa.0.04.i5.i = phi i64 [ %i.cu, %bb.aa ], [ %i.bx, %bb.y ] ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i5.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56 ; 2 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8, !noalias !313
  %i.cy = and i64 %i.cx, 2
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i4.i
  %i.da = atomicrmw or ptr %i.cw, i64 4 acq_rel, align 8, !noalias !313
  %i.db = and i64 %i.da, 2
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cu, 30
  br i1 %exitcond.not.i6.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i, label %.lr.ph.i4.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit: ; preds = %bb.z, %bb.u, %bb.v, %bb.x, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i
  %i.dd = icmp eq i64 %.sroa.018.0.copyload, -2
  br i1 %i.dd, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, label %bb.as

bb.ab:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  %i.de = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.df = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.dg = extractvalue { i64, i32 } %i.df, 0      ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.de
  br i1 %i.dh, label %.split, label %bb.ap

bb.ac:                                            ; preds = %.split, %bb.ap, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !314
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.di = load i8, ptr %i.o, align 8, !range !17, !noalias !315, !noundef !4
  %i.dj = icmp eq i8 %i.di, 1
  br i1 %i.dj, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !8

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.ac
  %i.dk = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !314 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.ac
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dk, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.n, %bb.ac ] ; 4 uses
  %i.dm = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !314, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !314
  %.not.i.i.i10 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i10, label %bb.ad, label %bb.aj, !prof !9

bb.ad:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !314
  %i.dn = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !314 ; 2 uses
  store ptr %i.dn, ptr %i.e, align 8, !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !314
  store ptr %i.g, ptr %i.c, align 8, !noalias !314
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dn)
          to label %bb.ag unwind label %bb.ae, !noalias !314

bb.ae:                                            ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.dp = load ptr, ptr %i.e, align 8, !alias.scope !319, !noalias !314, !nonnull !4, !noundef !4
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !320
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.ai, !noalias !314

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ds = load ptr, ptr %i.e, align 8, !alias.scope !324, !noalias !314, !nonnull !4, !noundef !4
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !325
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !314
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !314
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.ai:                                            ; preds = %bb.ao, %bb.af
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !314
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.af, %bb.ae
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ae ], [ %i.ec, %bb.an ], [ %i.do, %bb.af ], [ %i.ec, %bb.ao ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.aj:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !314
  store ptr %i.dm, ptr %i.d, align 8, !noalias !314
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !314
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !314
  store ptr %i.g, ptr %i.b, align 8, !noalias !314
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.ak unwind label %bb.an, !noalias !314

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !314
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !314, !noundef !4 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !314
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !314
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !326
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !314
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !314
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.an:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !327
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.ai, !noalias !314

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f), !noalias !314
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !314
  br label %bb.b

.split:                                           ; preds = %bb.ab
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bk
  br i1 %.not26, label %bb.ac, label %bb.aq

bb.ap:                                            ; preds = %bb.ab
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ac, label %bb.aq

bb.aq:                                            ; preds = %.split, %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, %bb.as, %bb.aq
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread ], [ %.sroa.018.0.copyload, %bb.as ], [ -2, %bb.aq ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
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
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !337 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !337
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
          to label %.loopexit.i unwind label %bb.r, !noalias !337

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw nsw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter69 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
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
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !330

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !337 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !337
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
          to label %bb.i unwind label %bb.r, !noalias !337 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !337
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !337
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !337
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !337
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %i.ac, 5                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ad, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %i.ac, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !331

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  tail call void @llvm.x86.sse2.pause(), !noalias !337
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, !prof !9

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread25.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !337
  %i.af = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !337 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.037.3.i, ptr %i.ag release, align 8, !noalias !337
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
  %i.ah = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.ah, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !337
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !337
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.aj = icmp eq ptr %.sroa.48.0, null
  br i1 %i.aj, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  %.sroa.012.0.copyload40 = phi i64 [ %.sroa.012.0.copyload36, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.48.139 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.48.139, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload40, ptr %i.ak, align 8, !noalias !338
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !338
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = atomicrmw or ptr %i.al, i64 1 release, align 8, !noalias !340 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread
  %.sroa.012.0.copyload32 = phi i64 [ %.sroa.012.0.copyload30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !340
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
  %i.ao = load i64, ptr %2, align 8, !range !5, !alias.scope !341, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, label %bb.w

bb.w:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultbNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
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
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04042.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.i = mul nuw nsw i32 %.sroa.0.04042.i, %.sroa.0.04042.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04042.i, 3
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !342

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.k = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o                   ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  br i1 %i.t, label %.lr.ph48.i, label %._crit_edge49.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.w = mul nuw nsw i32 %.sroa.0.1.i, %.sroa.0.1.i ; 2 uses
  %xtraiter22 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter26 = and i32 %i.w, 56
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i22.i ]
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
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !343

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i
  %i.ab = phi i64 [ %i.bc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1992, i64 noundef 8) #13
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesB1D_.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 1984 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ah = mul nuw nsw i32 %.sroa.0.02.i27.i, %.sroa.0.02.i27.i ; 2 uses
  %xtraiter34 = and i32 %i.ah, 7                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i27.i, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ah, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
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
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !344

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.aj = add i32 %.sroa.0.02.i27.i, 1
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1992, i64 noundef 8) #13
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.145.i, i64 %i.ac ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %.sroa.0.02.i29.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.at = mul nuw nsw i32 %.sroa.0.02.i29.i, %.sroa.0.02.i29.i ; 2 uses
  %xtraiter28 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i29.i, 3
  br i1 %i.au, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter32 = and i32 %i.at, 56
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
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
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !345

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.av = add i32 %.sroa.0.02.i29.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  %i.az = load i64, ptr %i.an, align 8, !range !5, !alias.scope !348, !noundef !4
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.an)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit.i: ; preds = %bb.n, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i
  %.sroa.011.2.i = phi ptr [ %i.am, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i ], [ %.sroa.011.145.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i ], [ %.sroa.011.145.i, %bb.n ] ; 2 uses
  %i.bb = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !392
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !392
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
  %i.v = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter95 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter99 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter100 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter100.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  %niter100.next.7 = add i32 %niter100, 8         ; 2 uses
  %niter100.ncmp.7 = icmp eq i32 %niter100.next.7, %unroll_iter99
  br i1 %niter100.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !392
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
  call void @llvm.x86.sse2.pause(), !noalias !392
  %epil.iter96.next = add i32 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i32 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !351

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod91.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod91.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter90 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter90.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !392
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !352

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !392
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !392
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !392 ; 3 uses
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
  %i.ak = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter89 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter93 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter94 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter94.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  %niter94.next.7 = add i32 %niter94, 8           ; 2 uses
  %niter94.ncmp.7 = icmp eq i32 %niter94.next.7, %unroll_iter93
  br i1 %niter94.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !392
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.ao = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %i.ao, 5                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ap, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.ao, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !392
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !353

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aq = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.ar = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.as = load atomic i64, ptr %1 acquire, align 128, !noalias !392
  %i.at = load atomic ptr, ptr %i.l acquire, align 8, !noalias !392
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.at, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %i.s, 30
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !noalias !392 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !392
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.az = mul nuw nsw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter101 = and i32 %i.az, 7                 ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.ba, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter105 = and i32 %i.az, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
  call void @llvm.x86.sse2.pause(), !noalias !392
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
  call void @llvm.x86.sse2.pause(), !noalias !392
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !354

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.bb = add i32 %.sroa.0.02.i30.i, 1
  %i.bc = load atomic ptr, ptr %i.av acquire, align 8, !noalias !392 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.bc, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.be = and i64 %.sroa.01.0.i, -2
  %i.bf = add i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8, !noalias !392
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = zext i1 %i.bi to i64
  %spec.select17.i = or disjoint i64 %i.bf, %i.bj
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !392
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !392
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit: ; preds = %bb.h
  %i.bk = load i32, ptr %i.i, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bk, -1
  br i1 %.not, label %bb.ac, label %bb.ab

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextB1A_.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !392
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !392
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8, !noalias !393
  %i.bo = and i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 6 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !393
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.t:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.t
  %i.br = mul nuw nsw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter107 = and i32 %i.br, 7                 ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.bs, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter111 = and i32 %i.br, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
  call void @llvm.x86.sse2.pause(), !noalias !393
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
  call void @llvm.x86.sse2.pause(), !noalias !393
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !357

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.t, %bb.s
  %i.bt = add i32 %.sroa.0.02.i.i4, 1
  %i.bu = load atomic i64, ptr %i.bm acquire, align 8, !noalias !393
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.r
  %.sroa.018.0.copyload = load i64, ptr %i.bl, align 8, !noalias !393 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.0..sroa_idx, i64 48, i1 false)
  %i.bx = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 31
  br i1 %i.by, label %.lr.ph.i2.i, label %bb.x

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i, %bb.w
  %.sroa.0.04.i.i = phi i64 [ %i.ch, %bb.w ], [ 0, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 2 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !noalias !393
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.u, label %.lr.ph.i2.i.1

bb.u:                                             ; preds = %.lr.ph.i2.i
  %i.ce = atomicrmw or ptr %i.ca, i64 4 acq_rel, align 8, !noalias !393
  %i.cf = and i64 %i.ce, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.u, %.lr.ph.i2.i
  %i.ch = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.ci = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 120 ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8, !noalias !393
  %i.cl = and i64 %i.ck, 2
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i2.i.1
  %i.cn = atomicrmw or ptr %i.cj, i64 4 acq_rel, align 8, !noalias !393
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.ch, 30
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i, label %.lr.ph.i2.i

bb.x:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeB1x_.exit.i
  %i.cq = atomicrmw or ptr %i.bm, i64 2 acq_rel, align 8, !noalias !393
  %i.cr = and i64 %i.cq, 4
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %bb.y

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i: ; preds = %bb.aa, %bb.w, %bb.y
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !393
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit

bb.y:                                             ; preds = %bb.x
  %i.ct = icmp samesign ult i64 %i.s, 29
  br i1 %i.ct, label %.lr.ph.i4.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i

.lr.ph.i4.i:                                      ; preds = %bb.y, %bb.aa
  %.sroa.0.04.i5.i = phi i64 [ %i.cu, %bb.aa ], [ %i.bx, %bb.y ] ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i5.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56 ; 2 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8, !noalias !393
  %i.cy = and i64 %i.cx, 2
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i4.i
  %i.da = atomicrmw or ptr %i.cw, i64 4 acq_rel, align 8, !noalias !393
  %i.db = and i64 %i.da, 2
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cu, 30
  br i1 %exitcond.not.i6.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i, label %.lr.ph.i4.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit: ; preds = %bb.z, %bb.u, %bb.v, %bb.x, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyB1A_.exit.sink.split.i
  %i.dd = icmp eq i64 %.sroa.018.0.copyload, -2
  br i1 %i.dd, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, label %bb.as

bb.ab:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  %i.de = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.df = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.dg = extractvalue { i64, i32 } %i.df, 0      ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.de
  br i1 %i.dh, label %.split, label %bb.ap

bb.ac:                                            ; preds = %.split, %bb.ap, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvB1D_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !394
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.di = load i8, ptr %i.o, align 8, !range !17, !noalias !395, !noundef !4
  %i.dj = icmp eq i8 %i.di, 1
  br i1 %i.dj, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !8

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.ac
  %i.dk = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !394 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.ac
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dk, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.n, %bb.ac ] ; 4 uses
  %i.dm = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !394, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !394
  %.not.i.i.i10 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i10, label %bb.ad, label %bb.aj, !prof !9

bb.ad:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !394
  %i.dn = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !394 ; 2 uses
  store ptr %i.dn, ptr %i.e, align 8, !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !394
  store ptr %i.g, ptr %i.c, align 8, !noalias !394
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dn)
          to label %bb.ag unwind label %bb.ae, !noalias !394

bb.ae:                                            ; preds = %bb.ad
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.dp = load ptr, ptr %i.e, align 8, !alias.scope !399, !noalias !394, !nonnull !4, !noundef !4
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !400
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.ai, !noalias !394

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !394
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ds = load ptr, ptr %i.e, align 8, !alias.scope !404, !noalias !394, !nonnull !4, !noundef !4
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !405
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !394
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !394
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.ai:                                            ; preds = %bb.ao, %bb.af
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !394
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.af, %bb.ae
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ae ], [ %i.ec, %bb.an ], [ %i.do, %bb.af ], [ %i.ec, %bb.ao ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.aj:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !394
  store ptr %i.dm, ptr %i.d, align 8, !noalias !394
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store atomic i64 0, ptr %i.dw release, align 8, !noalias !394
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store atomic ptr null, ptr %i.dx release, align 8, !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !394
  store ptr %i.g, ptr %i.b, align 8, !noalias !394
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0B1F_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dm)
          to label %bb.ak unwind label %bb.an, !noalias !394

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !394
  %i.dy = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !394, !noundef !4 ; 3 uses
  store ptr %i.dy, ptr %i.a, align 8, !noalias !394
  store ptr %i.dm, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !394
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = atomicrmw sub ptr %i.dy, i64 1 release, align 8, !noalias !406
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !394
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !394
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

bb.an:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !407
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.ai, !noalias !394

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs0_0B2h_(ptr nonnull %i.f), !noalias !394
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEB2f_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uEB3T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !394
  br label %bb.b

.split:                                           ; preds = %bb.ab
  %i.ef = extractvalue { i64, i32 } %i.df, 1      ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 1000000000
  call void @llvm.assume(i1 %i.eg)
  %.not26 = icmp samesign ult i32 %i.ef, %i.bk
  br i1 %.not26, label %bb.ac, label %bb.aq

bb.ap:                                            ; preds = %bb.ab
  %.not25 = icmp slt i64 %i.dg, %i.de
  br i1 %.not25, label %bb.ac, label %bb.aq

bb.aq:                                            ; preds = %.split, %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.eh, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread, %bb.as, %bb.aq
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread ], [ %.sroa.018.0.copyload, %bb.as ], [ -2, %bb.aq ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readB1D_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ei, align 8
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
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !417 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !417
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
          to label %.loopexit.i unwind label %bb.r, !noalias !417

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw nsw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter69 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter73 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
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
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !410

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !417 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !417
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
          to label %bb.i unwind label %bb.r, !noalias !417 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !417
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !417
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !417
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEEEEB2I_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !417
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %i.ac, 5                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ad, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %i.ac, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !411

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  tail call void @llvm.x86.sse2.pause(), !noalias !417
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, !prof !9

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread25.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !417
  %i.af = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !417 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 1984
  store atomic ptr %.sroa.037.3.i, ptr %i.ag release, align 8, !noalias !417
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
  %i.ah = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.ah, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !417
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.48.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 1992, i64 noundef 8) #13, !noalias !417
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.aj = icmp eq ptr %.sroa.48.0, null
  br i1 %i.aj, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit
  %.sroa.012.0.copyload40 = phi i64 [ %.sroa.012.0.copyload36, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.48.139 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread33 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ]
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.48.139, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload40, ptr %i.ak, align 8, !noalias !418
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !noalias !418
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = atomicrmw or ptr %i.al, i64 1 release, align 8, !noalias !420 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.u

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE5writeB1D_.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread
  %.sroa.012.0.copyload32 = phi i64 [ %.sroa.012.0.copyload30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_sendB1D_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !alias.scope !420
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
  %i.ao = load i64, ptr %2, align 8, !range !5, !alias.scope !421, !noundef !4
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit, label %bb.w

bb.w:                                             ; preds = %.body.thread
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgNynMj4ykPw_6notify5error5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsgNynMj4ykPw_6notify5error5ErrorEEB12_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
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
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04042.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.i = mul nuw nsw i32 %.sroa.0.04042.i, %.sroa.0.04042.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04042.i, 3
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !422

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.k = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o                   ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  br i1 %i.t, label %.lr.ph48.i, label %._crit_edge49.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.w = mul nuw nsw i32 %.sroa.0.1.i, %.sroa.0.1.i ; 2 uses
  %xtraiter22 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter26 = and i32 %i.w, 56
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i22.i ]
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
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !423

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.az, %bb.n ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.ab = phi i64 [ %i.ba, %bb.n ], [ %i.s, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.az, %bb.n ], [ %i.p, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1744, i64 noundef 8) #13
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE20discard_all_messagesB10_.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ad = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %i.ai, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.af = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ag = mul nuw nsw i32 %.sroa.0.02.i27.i, %.sroa.0.02.i27.i ; 2 uses
  %xtraiter34 = and i32 %i.ag, 7                  ; 3 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i27.i, 3
  br i1 %i.ah, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ag, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
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
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !424

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ai = add i32 %.sroa.0.02.i27.i, 1
  %i.aj = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.al = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1744, i64 noundef 8) #13
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %i.ac ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %.sroa.0.02.i29.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.at = mul nuw nsw i32 %.sroa.0.02.i29.i, %.sroa.0.02.i29.i ; 2 uses
  %xtraiter28 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i29.i, 3
  br i1 %i.au, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter32 = and i32 %i.at, 56
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
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
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !433 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !433
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
          to label %.loopexit.i unwind label %bb.r, !noalias !433

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw nsw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
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
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !428

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !433 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !433
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
          to label %bb.i unwind label %bb.r, !noalias !433 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !433
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !433
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !433
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgEEEEB2l_.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !433
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %i.ac, 5                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ad, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %i.ac, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !429

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  tail call void @llvm.x86.sse2.pause(), !noalias !433
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32, !prof !9

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !433
  %i.af = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !433 ; 0 uses
  store atomic ptr %.sroa.037.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !433
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
  %i.ag = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !433
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !433
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE5writeB10_.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_sendB10_.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.47.138, i64 8
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.aj, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.ak, align 8, !noalias !434
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !noalias !434
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = atomicrmw or ptr %i.al, i64 1 release, align 8, !noalias !436 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.an)
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
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE8try_recvB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.416 = alloca [40 x i8], align 8          ; 2 uses
  %i.a = load atomic i64, ptr %1 acquire, align 128, !noalias !446
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !noalias !446
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
  %i.i = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter75 = and i32 %i.i, 7                   ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter79 = and i32 %i.i, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter80 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter80.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %niter80.next.7 = add i32 %niter80, 8           ; 2 uses
  %niter80.ncmp.7 = icmp eq i32 %niter80.next.7, %unroll_iter79
  br i1 %niter80.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.d:                                             ; preds = %.backedge.i
  %i.k = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.l = and i64 %.sroa.07.0.i, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.h

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.i, %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !446
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
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %epil.iter76.next = add i32 %epil.iter76, 1     ; 2 uses
  %epil.iter76.cmp.not = icmp eq i32 %epil.iter76.next, %xtraiter75
  br i1 %epil.iter76.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !439

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i19.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !440

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.j, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.c
  %i.n = load atomic i64, ptr %1 acquire, align 128, !noalias !446
  %i.o = load atomic ptr, ptr %i.b acquire, align 8, !noalias !446
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.p = load atomic i64, ptr %i.d monotonic, align 128, !noalias !446 ; 3 uses
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
  %i.x = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter69 = and i32 %i.x, 7                   ; 3 uses
  %i.y = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.y, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter73 = and i32 %i.x, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i19.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit63.unr-lcssa, label %.lr.ph.i19.i

bb.k:                                             ; preds = %bb.h
  %i.z = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !446
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.ab = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.l
  %xtraiter = and i32 %i.ab, 5                    ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ac, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.ab, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !441

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ad = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.l
  %i.ae = phi i32 [ %i.ad, %._crit_edge.loopexit.i.i ], [ 1, %bb.l ]
  %i.af = load atomic i64, ptr %1 acquire, align 128, !noalias !446
  %i.ag = load atomic ptr, ptr %i.b acquire, align 8, !noalias !446
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ae, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.n, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.af, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i64 %i.f, 30
  br i1 %i.ah, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !446 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.n, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.an, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.n ] ; 6 uses
  %i.ak = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ak, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i29.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !446
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.p
  %i.al = mul nuw nsw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter81 = and i32 %i.al, 7                  ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.am, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter85 = and i32 %i.al, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter86 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter86.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  tail call void @llvm.x86.sse2.pause(), !noalias !446
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
  tail call void @llvm.x86.sse2.pause(), !noalias !446
  %epil.iter82.next = add i32 %epil.iter82, 1     ; 2 uses
  %epil.iter82.cmp.not = icmp eq i32 %epil.iter82.next, %xtraiter81
  br i1 %epil.iter82.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !442

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.p, %bb.o
  %i.an = add i32 %.sroa.0.02.i30.i, 1
  %i.ao = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !446 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.n
  %.lcssa.i.i = phi ptr [ %i.ai, %bb.n ], [ %i.ao, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.aq = and i64 %.sroa.01.0.i, -2
  %i.ar = add i64 %i.aq, 2
  %i.as = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !446
  %i.at = icmp ne ptr %i.as, null
  %i.au = zext i1 %i.at to i64
  %spec.select17.i = or disjoint i64 %i.ar, %i.au
  store atomic ptr %.lcssa.i.i, ptr %i.b release, align 8, !noalias !446
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !446
  br label %bb.q

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit: ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.av, align 8
  br label %bb.aa

bb.q:                                             ; preds = %bb.m, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE9wait_nextBX_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %i.f ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !noalias !447
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.q, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %.sroa.0.02.i.i4 = phi i32 [ %i.bf, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.q ] ; 6 uses
  %i.bc = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bc, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i3
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !447
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.s:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.s
  %i.bd = mul nuw nsw i32 %.sroa.0.02.i.i4, %.sroa.0.02.i.i4 ; 2 uses
  %xtraiter87 = and i32 %i.bd, 7                  ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.02.i.i4, 3
  br i1 %i.be, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter91 = and i32 %i.bd, 56
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter92 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter92.next.7, %.lr.ph.i.i.i7 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  tail call void @llvm.x86.sse2.pause(), !noalias !447
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
  tail call void @llvm.x86.sse2.pause(), !noalias !447
  %epil.iter88.next = add i32 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i32 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !445

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.s, %bb.r
  %i.bf = add i32 %.sroa.0.02.i.i4, 1
  %i.bg = load atomic i64, ptr %i.ay acquire, align 8, !noalias !447
  %i.bh = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.q
  %.sroa.015.0.copyload = load i64, ptr %i.ax, align 8, !noalias !447 ; 2 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx, i64 40, i1 false)
  %i.bj = add nuw nsw i64 %i.f, 1                 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 31
  br i1 %i.bk, label %.lr.ph.i2.i, label %bb.w

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i, %bb.v
  %.sroa.0.04.i.i = phi i64 [ %i.bt, %bb.v ], [ 0, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 2 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8, !noalias !447
  %i.bo = and i64 %i.bn, 2
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %.lr.ph.i2.i.1

bb.t:                                             ; preds = %.lr.ph.i2.i
  %i.bq = atomicrmw or ptr %i.bm, i64 4 acq_rel, align 8, !noalias !447
  %i.br = and i64 %i.bq, 2
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit, label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.t, %.lr.ph.i2.i
  %i.bt = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 112 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !447
  %i.bx = and i64 %i.bw, 2
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i2.i.1
  %i.bz = atomicrmw or ptr %i.bv, i64 4 acq_rel, align 8, !noalias !447
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.bt, 30
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE7destroyBX_.exit.sink.split.i, label %.lr.ph.i2.i

bb.w:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10wait_writeBU_.exit.i
  %i.cc = atomicrmw or ptr %i.ay, i64 2 acq_rel, align 8, !noalias !447
  %i.cd = and i64 %i.cc, 4
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit, label %bb.x

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE7destroyBX_.exit.sink.split.i: ; preds = %bb.z, %bb.v, %bb.x
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1744, i64 noundef 8) #13, !noalias !447
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp samesign ult i64 %i.f, 29
  br i1 %i.cf, label %.lr.ph.i4.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE7destroyBX_.exit.sink.split.i

.lr.ph.i4.i:                                      ; preds = %bb.x, %bb.z
  %.sroa.0.04.i5.i = phi i64 [ %i.cg, %bb.z ], [ %i.bj, %bb.x ] ; 2 uses
  %i.cg = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i5.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 2 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8, !noalias !447
  %i.ck = and i64 %i.cj, 2
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i4.i
  %i.cm = atomicrmw or ptr %i.ci, i64 4 acq_rel, align 8, !noalias !447
  %i.cn = and i64 %i.cm, 2
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cg, 30
  br i1 %exitcond.not.i6.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE7destroyBX_.exit.sink.split.i, label %.lr.ph.i4.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit: ; preds = %bb.y, %bb.t, %bb.u, %bb.w, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE7destroyBX_.exit.sink.split.i
  %i.cp = icmp eq i64 %.sroa.015.0.copyload, -1
  br i1 %i.cp, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread, label %bb.ab

bb.aa:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread, %bb.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit
  %.sink = phi i64 [ -1, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread ], [ %.sroa.015.0.copyload, %bb.ab ], [ -1, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE10start_recvB10_.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit.thread: ; preds = %bb.g, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cq, align 8
  br label %bb.aa

bb.ab:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgNynMj4ykPw_6notify7inotify12EventLoopMsgE4readB10_.exit
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416, i64 40, i1 false)
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE20disconnect_receiversCsgNynMj4ykPw_6notify(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04042.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.i = mul nuw nsw i32 %.sroa.0.04042.i, %.sroa.0.04042.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04042.i, 3
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !448

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.k = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o                   ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  br i1 %i.t, label %.lr.ph48.i, label %._crit_edge49.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.w = mul nuw nsw i32 %.sroa.0.1.i, %.sroa.0.1.i ; 2 uses
  %xtraiter22 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter26 = and i32 %i.w, 56
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter27 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter27.next.7, %.lr.ph.i22.i ]
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
  br i1 %niter27.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod24.not = icmp eq i32 %xtraiter22, 0
  br i1 %lcmp.mod24.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter22, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter23 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter23.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter23.next = add i32 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i32 %epil.iter23.next, %xtraiter22
  br i1 %epil.iter23.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !449

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.ay, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsgNynMj4ykPw_6notify.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i
  %i.ab = phi i64 [ %i.az, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.ay, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 256, i64 noundef 8) #13
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE20discard_all_messagesCsgNynMj4ykPw_6notify.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ad = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %i.ai, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.af = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ag = mul nuw nsw i32 %.sroa.0.02.i27.i, %.sroa.0.02.i27.i ; 2 uses
  %xtraiter34 = and i32 %i.ag, 7                  ; 3 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i27.i, 3
  br i1 %i.ah, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ag, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
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
  br i1 %niter39.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !450

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ai = add i32 %.sroa.0.02.i27.i, 1
  %i.aj = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.al = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 256, i64 noundef 8) #13
  br label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ac ; 2 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8
  %i.ap = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %.sroa.0.02.i29.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 6 uses
  %i.ar = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.as = mul nuw nsw i32 %.sroa.0.02.i29.i, %.sroa.0.02.i29.i ; 2 uses
  %xtraiter28 = and i32 %i.as, 7                  ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02.i29.i, 3
  br i1 %i.at, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter32 = and i32 %i.as, 56
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
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
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !451

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.au = add i32 %.sroa.0.02.i29.i, 1
  %i.av = load atomic i64, ptr %i.an acquire, align 8
  %i.aw = and i64 %i.av, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i
  %.sroa.011.2.i = phi ptr [ %i.al, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i ], [ %.sroa.011.145.i, %bb.k ], [ %.sroa.011.145.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ] ; 2 uses
  %i.ay = add i64 %.sroa.05.046.i, 2              ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.p = load atomic i64, ptr %0 acquire, align 128, !noalias !493
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !493
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
  %i.v = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter82 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter86 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter87 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter87.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  %niter87.next.7 = add i32 %niter87, 8           ; 2 uses
  %niter87.ncmp.7 = icmp eq i32 %niter87.next.7, %unroll_iter86
  br i1 %niter87.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !493
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
  call void @llvm.x86.sse2.pause(), !noalias !493
  %epil.iter83.next = add i32 %epil.iter83, 1     ; 2 uses
  %epil.iter83.cmp.not = icmp eq i32 %epil.iter83.next, %xtraiter82
  br i1 %epil.iter83.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !454

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod78.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter76, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter77 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter77.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !493
  %epil.iter77.next = add i32 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i32 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !455

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %0 acquire, align 128, !noalias !493
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !493
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !493 ; 3 uses
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
  %i.ak = mul nuw nsw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter76 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter80 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter81 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter81.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  %niter81.next.7 = add i32 %niter81, 8           ; 2 uses
  %niter81.ncmp.7 = icmp eq i32 %niter81.next.7, %unroll_iter80
  br i1 %niter81.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit67.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %0, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !493
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.ao = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %i.ao, 5                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ap, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.ao, 56
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
  call void @llvm.x86.sse2.pause(), !noalias !493
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !456

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aq = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.ar = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.as = load atomic i64, ptr %0 acquire, align 128, !noalias !493
  %i.at = load atomic ptr, ptr %i.l acquire, align 8, !noalias !493
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.at, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %i.s, 30
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !493 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ax = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !493
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %i.ay = mul nuw nsw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter88 = and i32 %i.ay, 7                  ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.az, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter92 = and i32 %i.ay, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter93 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter93.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
  call void @llvm.x86.sse2.pause(), !noalias !493
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
  call void @llvm.x86.sse2.pause(), !noalias !493
  %epil.iter89.next = add i32 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i32 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !457

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.ba = add i32 %.sroa.0.02.i30.i, 1
  %i.bb = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !493 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.av, %bb.o ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i, -2
  %i.be = add i64 %i.bd, 2
  %i.bf = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !493
  %i.bg = icmp ne ptr %i.bf, null
  %i.bh = zext i1 %i.bg to i64
  %spec.select17.i = or disjoint i64 %i.be, %i.bh
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !493
  store atomic i64 %spec.select17.i, ptr %0 release, align 128, !noalias !493
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit: ; preds = %bb.h
  %i.bi = load i32, ptr %i.i, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bi, -1
  br i1 %.not, label %bb.bd, label %bb.bc

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsgNynMj4ykPw_6notify.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !493
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !493
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8 ; 4 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.s ; 3 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i4, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i

.lr.ph.i.i4:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6
  %.sroa.0.02.i.i5 = phi i32 [ %i.br, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6 ], [ 0, %bb.r ] ; 6 uses
  %i.bo = icmp ult i32 %.sroa.0.02.i.i5, 7
  br i1 %i.bo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i4
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6

bb.t:                                             ; preds = %.lr.ph.i.i4
  %.not.i.i.i7 = icmp eq i32 %.sroa.0.02.i.i5, 0
  br i1 %.not.i.i.i7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.t
  %i.bp = mul nuw nsw i32 %.sroa.0.02.i.i5, %.sroa.0.02.i.i5 ; 2 uses
  %xtraiter94 = and i32 %i.bp, 7                  ; 3 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i5, 3
  br i1 %i.bq, label %.lr.ph.i.i.i8.epil.preheader, label %.lr.ph.i.i.i8.preheader.new

.lr.ph.i.i.i8.preheader.new:                      ; preds = %.lr.ph.i.i.i8.preheader
  %unroll_iter98 = and i32 %i.bp, 56
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
  br i1 %epil.iter95.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i8.epil, !llvm.loop !458

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i8.epil, %bb.t, %bb.s
  %i.br = add i32 %.sroa.0.02.i.i5, 1
  %i.bs = load atomic i64, ptr %i.bk acquire, align 8
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i4, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, %bb.r
  %i.bv = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 31
  br i1 %i.bw, label %.preheader.preheader.i, label %bb.ay

.preheader.preheader.i:                           ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsgNynMj4ykPw_6notify.exit.i
  %i.bx = load atomic i64, ptr %i.bj acquire, align 8
  %i.by = and i64 %i.bx, 2
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.u, label %.preheader.1.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE7destroyCsgNynMj4ykPw_6notify.exit.sink.split.i: ; preds = %bb.bb, %bb.az, %bb.ax, %.preheader.29.i
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 256, i64 noundef 8) #13
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread

bb.u:                                             ; preds = %.preheader.preheader.i
  %i.ca = atomicrmw or ptr %i.bj, i64 4 acq_rel, align 8
  %i.cb = and i64 %i.ca, 2
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.u, %.preheader.preheader.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 16 ; 2 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8
  %i.cf = and i64 %i.ce, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %.preheader.2.i

bb.v:                                             ; preds = %.preheader.1.i
  %i.ch = atomicrmw or ptr %i.cd, i64 4 acq_rel, align 8
  %i.ci = and i64 %i.ch, 2
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.v, %.preheader.1.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 24 ; 2 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8
  %i.cm = and i64 %i.cl, 2
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %.preheader.3.i

bb.w:                                             ; preds = %.preheader.2.i
  %i.co = atomicrmw or ptr %i.ck, i64 4 acq_rel, align 8
  %i.cp = and i64 %i.co, 2
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.w, %.preheader.2.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 32 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.x, label %.preheader.4.i

bb.x:                                             ; preds = %.preheader.3.i
  %i.cv = atomicrmw or ptr %i.cr, i64 4 acq_rel, align 8
  %i.cw = and i64 %i.cv, 2
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %bb.x, %.preheader.3.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 40 ; 2 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8
  %i.da = and i64 %i.cz, 2
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.y, label %.preheader.5.i

bb.y:                                             ; preds = %.preheader.4.i
  %i.dc = atomicrmw or ptr %i.cy, i64 4 acq_rel, align 8
  %i.dd = and i64 %i.dc, 2
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %bb.y, %.preheader.4.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 48 ; 2 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8
  %i.dh = and i64 %i.dg, 2
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.z, label %.preheader.6.i

bb.z:                                             ; preds = %.preheader.5.i
  %i.dj = atomicrmw or ptr %i.df, i64 4 acq_rel, align 8
  %i.dk = and i64 %i.dj, 2
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %bb.z, %.preheader.5.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 56 ; 2 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8
  %i.do = and i64 %i.dn, 2
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %.preheader.7.i

bb.aa:                                            ; preds = %.preheader.6.i
  %i.dq = atomicrmw or ptr %i.dm, i64 4 acq_rel, align 8
  %i.dr = and i64 %i.dq, 2
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %bb.aa, %.preheader.6.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 64 ; 2 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8
  %i.dv = and i64 %i.du, 2
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ab, label %.preheader.8.i

bb.ab:                                            ; preds = %.preheader.7.i
  %i.dx = atomicrmw or ptr %i.dt, i64 4 acq_rel, align 8
  %i.dy = and i64 %i.dx, 2
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %bb.ab, %.preheader.7.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 72 ; 2 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8
  %i.ec = and i64 %i.eb, 2
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.ac, label %.preheader.9.i

bb.ac:                                            ; preds = %.preheader.8.i
  %i.ee = atomicrmw or ptr %i.ea, i64 4 acq_rel, align 8
  %i.ef = and i64 %i.ee, 2
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.9.i

.preheader.9.i:                                   ; preds = %bb.ac, %.preheader.8.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 80 ; 2 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8
  %i.ej = and i64 %i.ei, 2
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.ad, label %.preheader.10.i

bb.ad:                                            ; preds = %.preheader.9.i
  %i.el = atomicrmw or ptr %i.eh, i64 4 acq_rel, align 8
  %i.em = and i64 %i.el, 2
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.10.i

.preheader.10.i:                                  ; preds = %bb.ad, %.preheader.9.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 88 ; 2 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8
  %i.eq = and i64 %i.ep, 2
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ae, label %.preheader.11.i

bb.ae:                                            ; preds = %.preheader.10.i
  %i.es = atomicrmw or ptr %i.eo, i64 4 acq_rel, align 8
  %i.et = and i64 %i.es, 2
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread, label %.preheader.11.i

.preheader.11.i:                                  ; preds = %bb.ae, %.preheader.10.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 96 ; 2 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8
  %i.ex = and i64 %i.ew, 2
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsgNynMj4ykPw_6notify:bb.a
  %exitcond.not.i7.i = icmp eq i64 %i.kc, 30
  br i1 %exitcond.not.i7.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockuE7destroyCsgNynMj4ykPw_6notify.exit.sink.split.i, label %.lr.ph.i5.i

bb.bc:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit
  %i.kk = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.kl = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.km = extractvalue { i64, i32 } %i.kl, 0      ; 2 uses
  %i.kn = icmp eq i64 %i.km, %i.kk
  br i1 %i.kn, label %.split, label %bb.bq

bb.bd:                                            ; preds = %.split, %bb.bq, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsgNynMj4ykPw_6notify.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !494
  store ptr %i.g, ptr %i.f, align 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ko = load i8, ptr %i.o, align 8, !range !17, !noalias !495, !noundef !4
  %i.kp = icmp eq i8 %i.ko, 1
  br i1 %i.kp, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, !prof !8

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i: ; preds = %bb.bd
  %i.kq = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsgNynMj4ykPw_6notify(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !494 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i, %bb.bd
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.kq, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i ], [ %i.n, %bb.bd ] ; 4 uses
  %i.ks = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !494, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !494
  %.not.i.i.i11 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i11, label %bb.be, label %bb.bk, !prof !9

bb.be:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !494
  %i.kt = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !494 ; 2 uses
  store ptr %i.kt, ptr %i.e, align 8, !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !494
  store ptr %i.g, ptr %i.c, align 8, !noalias !494
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChanneluE4recvs_0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.kt)
          to label %bb.bh unwind label %bb.bf, !noalias !494

bb.bf:                                            ; preds = %bb.be
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.kv = load ptr, ptr %i.e, align 8, !alias.scope !499, !noalias !494, !nonnull !4, !noundef !4
  %i.kw = atomicrmw sub ptr %i.kv, i64 1 release, align 8, !noalias !500
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.bg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.bj, !noalias !494

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !494
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ky = load ptr, ptr %i.e, align 8, !alias.scope !504, !noalias !494, !nonnull !4, !noundef !4
  %i.kz = atomicrmw sub ptr %i.ky, i64 1 release, align 8, !noalias !505
  %i.la = icmp eq i64 %i.kz, 1
  br i1 %i.la, label %bb.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !494
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !494
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

bb.bj:                                            ; preds = %bb.bp, %bb.bg
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !494
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bg, %bb.bf
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ku, %bb.bf ], [ %i.li, %bb.bo ], [ %i.ku, %bb.bg ], [ %i.li, %bb.bp ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.bk:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !494
  store ptr %i.ks, ptr %i.d, align 8, !noalias !494
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  store atomic i64 0, ptr %i.lc release, align 8, !noalias !494
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  store atomic ptr null, ptr %i.ld release, align 8, !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !494
  store ptr %i.g, ptr %i.b, align 8, !noalias !494
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChanneluE4recvs_0CsgNynMj4ykPw_6notify(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.ks)
          to label %bb.bl unwind label %bb.bo, !noalias !494

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !494
  %i.le = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !494, !noundef !4 ; 3 uses
  store ptr %i.le, ptr %i.a, align 8, !noalias !494
  store ptr %i.ks, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !494
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lg = atomicrmw sub ptr %i.le, i64 1 release, align 8, !noalias !506
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !494
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !494
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

bb.bo:                                            ; preds = %bb.bk
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = atomicrmw sub ptr %i.ks, i64 1 release, align 8, !noalias !507
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.bp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit.i.i.i unwind label %bb.bj, !noalias !494

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgNynMj4ykPw_6notify.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs0_0CsgNynMj4ykPw_6notify(ptr nonnull %i.f), !noalias !494
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit

_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsgNynMj4ykPw_6notify.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECsgNynMj4ykPw_6notify.exit19.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECsgNynMj4ykPw_6notify.exit.i.i.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsgNynMj4ykPw_6notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !494
  br label %bb.b

.split:                                           ; preds = %bb.bc
  %i.ll = extractvalue { i64, i32 } %i.kl, 1      ; 2 uses
  %i.lm = icmp ult i32 %i.ll, 1000000000
  call void @llvm.assume(i1 %i.lm)
  %.not18 = icmp samesign ult i32 %i.ll, %i.bi
  br i1 %.not18, label %bb.bd, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE4readCsgNynMj4ykPw_6notify.exit.thread

bb.bq:                                            ; preds = %bb.bc
  %.not17 = icmp slt i64 %i.km, %i.kk
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
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !512 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !512
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
          to label %.loopexit.i unwind label %bb.r, !noalias !512

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.l = mul nuw nsw i32 %.sroa.0.063.i, %.sroa.0.063.i ; 2 uses
  %xtraiter31 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter35 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter36 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter36.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
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
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  %epil.iter32.next = add i32 %epil.iter32, 1     ; 2 uses
  %epil.iter32.cmp.not = icmp eq i32 %epil.iter32.next, %xtraiter31
  br i1 %epil.iter32.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !510

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.e, %bb.d
  %i.o = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %._crit_edge.loopexit.i.i, %bb.n, %bb.l, %bb.k, %.loopexit.i
  %.sroa.037.0.be.i = phi ptr [ %i.v, %bb.l ], [ %.sroa.037.062.i, %.loopexit.i ], [ %i.v, %bb.k ], [ %.sroa.037.3.i, %bb.n ], [ %.sroa.037.3.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %.sroa.0.063.i, %bb.l ], [ %i.o, %.loopexit.i ], [ %.sroa.0.063.i, %bb.k ], [ 1, %bb.n ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !512 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !512
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.037.3.i = phi ptr [ %.sroa.037.062.i, %bb.f ], [ %i.u, %bb.g ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.064.i, null
  br i1 %i.t, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCsgNynMj4ykPw_6notify(), !noalias !512
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEE13new_zeroed_inCsgNynMj4ykPw_6notify()
          to label %bb.i unwind label %bb.r, !noalias !512 ; 5 uses

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !512
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !512
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.y = icmp eq ptr %.sroa.037.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 256, i64 noundef 8) #13, !noalias !512
  br label %.backedge.i

bb.m:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.064.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit.i ], [ %i.v, %bb.j ] ; 3 uses
  %i.z = add i64 %.sroa.03.065.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.065.i, i64 %i.z seq_cst acquire, align 8, !noalias !512
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.063.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i26.i = icmp eq i32 %.sroa.0.063.i, 0
  br i1 %.not.i26.i, label %.backedge.i, label %.lr.ph.i27.i.preheader

.lr.ph.i27.i.preheader:                           ; preds = %bb.n
  %xtraiter = and i32 %i.ac, 5                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.063.i, 3
  br i1 %i.ad, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter = and i32 %i.ac, 56
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
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !llvm.loop !511

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.063.i, 1
  br label %.backedge.i

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  tail call void @llvm.x86.sse2.pause(), !noalias !512
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i

bb.o:                                             ; preds = %bb.m
  br i1 %i.n, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  %.not16.i = icmp eq ptr %.sroa.037.3.i, null
  br i1 %.not16.i, label %bb.q, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21, !noalias !512
  unreachable

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10: ; preds = %bb.p
  store atomic ptr %.sroa.037.3.i, ptr %i.c release, align 8, !noalias !512
  %i.af = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !512 ; 0 uses
  store atomic ptr %.sroa.037.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !512
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit32.i: ; preds = %.thread49.i, %bb.r
  resume { ptr, i32 } %lpad.thr_comm.i

bb.r:                                             ; preds = %bb.h, %bb.d
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.062.i, %bb.d ], [ %.sroa.037.3.i, %bb.h ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.ag = icmp eq ptr %.sroa.037.1.ph.i, null
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit32.i, label %.thread49.i

.thread49.i:                                      ; preds = %bb.r
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 256, i64 noundef 8) #13, !noalias !512
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4list5BlockuEEEECsgNynMj4ykPw_6notify.exit32.i

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.o
  %.sroa.9.0 = phi i64 [ %i.i, %bb.o ], [ 0, %.backedge.i ]
  %.sroa.4.0 = phi ptr [ %.sroa.07.2.i, %bb.o ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.037.4.i = phi ptr [ %.sroa.037.3.i, %bb.o ], [ %.sroa.037.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.037.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.4.i, i64 noundef 256, i64 noundef 8) #13, !noalias !512
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit: ; preds = %._crit_edge.i, %bb.s
  %i.ai = icmp eq ptr %.sroa.4.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10
  %.sroa.4.114 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10 ], [ %.sroa.4.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit ]
  %.sroa.9.113 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread10 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.114, i64 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.9.113
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am)
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit.thread: ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE10start_sendCsgNynMj4ykPw_6notify.exit, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChanneluE5writeCsgNynMj4ykPw_6notify.exit
end_hunk_1
