Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.09?download=true
inline.NumInlined: 1108
inline.NumDeleted: 708
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker6notify:bb.a
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  invoke void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec5drain5DrainNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECsf8NQSppxkmK_14ide_completion.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsf8NQSppxkmK_14ide_completion.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %._crit_edge, label %bb.d

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsf8NQSppxkmK_14ide_completion.exit, %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec5drain5DrainNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsf8NQSppxkmK_14ide_completion.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs2_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %0, align 8, !range !166, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4 ; 7 uses
  switch i64 %i.d, label %default.unreachable46 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.as
  ]

default.unreachable46:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, ptr } @_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull align 128 %i.f, ptr noundef nonnull %1, i64 undef, i32 noundef -1)
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8, !noalias !1590 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 4 uses
  %i.k = load atomic ptr, ptr %i.j acquire, align 8, !noalias !1590
  %i.l = and i64 %i.i, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsf8NQSppxkmK_14ide_completion.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.sroa.03.079.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.w, %.backedge.i.i ] ; 3 uses
  %.sroa.07.078.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.x, %.backedge.i.i ] ; 2 uses
  %.sroa.0.077.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.042.076.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.042.0.be.i.i, %.backedge.i.i ] ; 4 uses
  %i.o = lshr exact i64 %.sroa.03.079.i.i, 1
  %i.p = and i64 %i.o, 31                         ; 3 uses
  %i.q = icmp eq i64 %i.p, 31
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult i32 %.sroa.0.077.i.i, 7
  br i1 %i.r, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %.loopexit64.i.i, !noalias !1590

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.sroa.0.077.i.i, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i.i
  %i.s = mul nuw i32 %.sroa.0.077.i.i, %.sroa.0.077.i.i ; 2 uses
  %xtraiter99 = and i32 %i.s, 7                   ; 3 uses
  %i.t = icmp ult i32 %.sroa.0.077.i.i, 3
  br i1 %i.t, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter103 = and i32 %i.s, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  %niter104.next.7 = add i32 %niter104, 8         ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103
  br i1 %niter104.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.p, 30                     ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.042.076.i.i, null
  %or.cond.i.i = select i1 %i.u, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECsf8NQSppxkmK_14ide_completion.exit.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0
  tail call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  %epil.iter100.next = add i32 %epil.iter100, 1   ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99
  br i1 %epil.iter100.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1593

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i.i, %bb.f
  %i.v = add i32 %.sroa.0.077.i.i, 1
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.loopexit63.i.i, %bb.n, %bb.m, %.loopexit.i.i
  %.sroa.042.0.be.i.i = phi ptr [ %.sroa.042.3.i.i, %.loopexit63.i.i ], [ %.sroa.042.076.i.i, %.loopexit.i.i ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.an, %.loopexit63.i.i ], [ %i.v, %.loopexit.i.i ], [ %.sroa.0.077.i.i, %bb.m ], [ %.sroa.0.077.i.i, %bb.n ]
  %i.w = load atomic i64, ptr %i.h acquire, align 8, !noalias !1590 ; 2 uses
  %i.x = load atomic ptr, ptr %i.j acquire, align 8, !noalias !1590
  %i.y = and i64 %i.w, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %._crit_edge.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECsf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.042.3.i.i = phi ptr [ %.sroa.042.076.i.i, %bb.g ], [ %i.ab, %bb.h ] ; 8 uses
  %i.aa = icmp eq ptr %.sroa.07.078.i.i, null
  br i1 %i.aa, label %bb.i, label %bb.o

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1590
  %i.ab = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #29, !noalias !1590 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.noexc20.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECsf8NQSppxkmK_14ide_completion.exit.i.i, !prof !143

.noexc20.i.i:                                     ; preds = %bb.h
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #39
          to label %.noexc.i unwind label %.body.i

.noexc.i:                                         ; preds = %.noexc20.i.i
  unreachable

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECsf8NQSppxkmK_14ide_completion.exit.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1590
  %i.ad = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #29, !noalias !1590 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !143

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #39
          to label %.noexc21.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1590

.noexc21.i.i:                                     ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = cmpxchg ptr %i.j, ptr null, ptr %i.ad release monotonic, align 8, !noalias !1590
  %i.ag = extractvalue { ptr, i1 } %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store atomic ptr %i.ad, ptr %i.n release, align 8, !noalias !1590
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq ptr %.sroa.042.3.i.i, null
  br i1 %i.ah, label %.backedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.3.i.i, i64 noundef 504, i64 noundef 8) #29, !noalias !1590
  br label %.backedge.i.i

bb.o:                                             ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECsf8NQSppxkmK_14ide_completion.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %.sroa.07.078.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECsf8NQSppxkmK_14ide_completion.exit.i.i ], [ %i.ad, %bb.l ] ; 3 uses
  %i.ai = add i64 %.sroa.03.079.i.i, 2
  %i.aj = cmpxchg weak ptr %i.h, i64 %.sroa.03.079.i.i, i64 %i.ai seq_cst acquire, align 8, !noalias !1590
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.aj, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.p, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i27.i.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i27.i.i: ; preds = %bb.o
  %.not.i28.i.i = icmp eq i32 %.sroa.0.077.i.i, 0
  br i1 %.not.i28.i.i, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i27.i.i
  %..i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.077.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i     ; 2 uses
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.077.i.i, 3
  br i1 %i.ak, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i31.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit63.i.i.loopexit.unr-lcssa, label %.lr.ph.i31.i.i

bb.p:                                             ; preds = %bb.o
  br i1 %i.u, label %bb.q, label %._crit_edge.i.i

bb.q:                                             ; preds = %bb.p
  %.not15.i.i = icmp eq ptr %.sroa.042.3.i.i, null
  br i1 %.not15.i.i, label %bb.r, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.thread32.i, !prof !143

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #39
          to label %.noexc7.i unwind label %.body.i

.noexc7.i:                                        ; preds = %bb.r
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.thread32.i: ; preds = %bb.q
  store atomic ptr %.sroa.042.3.i.i, ptr %i.j release, align 8, !noalias !1590
  %i.al = atomicrmw add ptr %i.h, i64 2 release, align 8, !noalias !1590 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 496
  store atomic ptr %.sroa.042.3.i.i, ptr %i.am release, align 8, !noalias !1590
  br label %bb.u

.loopexit63.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i31.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %.loopexit63.i.i.loopexit.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !1590
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit63.i.i, label %.lr.ph.i31.i.i.epil, !llvm.loop !1594

.loopexit63.i.i:                                  ; preds = %.loopexit63.i.i.loopexit.unr-lcssa, %.lr.ph.i31.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i27.i.i
  %i.an = add i32 %.sroa.0.077.i.i, 1
  br label %.backedge.i.i

.loopexit64.i.i:                                  ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i.i:                           ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit64.i.i
  %.sroa.042.1.ph.i.i = phi ptr [ %.sroa.042.076.i.i, %.loopexit64.i.i ], [ %.sroa.042.3.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit64.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.042.1.ph.i.i, null
  br i1 %i.ao, label %.body.thread.i, label %.thread54.i.i

.thread54.i.i:                                    ; preds = %bb.s
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.1.ph.i.i, i64 noundef 504, i64 noundef 8) #29, !noalias !1590
  br label %.body.thread.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.p
  %.sroa.9.0.i = phi i64 [ %i.p, %bb.p ], [ 0, %.backedge.i.i ]
  %.sroa.4.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.p ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.042.4.i.i = phi ptr [ %.sroa.042.3.i.i, %bb.p ], [ %.sroa.042.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.042.4.i.i, null
  br i1 %i.ap, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.042.4.i.i, i64 noundef 504, i64 noundef 8) #29, !noalias !1590
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.i

.body.i:                                          ; preds = %bb.r, %.noexc20.i.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %bb.t, %._crit_edge.i.i
  %i.aq = icmp eq ptr %.sroa.4.0.i, null
  br i1 %i.aq, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsf8NQSppxkmK_14ide_completion.exit, label %bb.u

bb.u:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.thread32.i
  %.sroa.4.136.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.thread32.i ], [ %.sroa.4.0.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.i ]
  %.sroa.9.135.i = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.thread32.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCsf8NQSppxkmK_14ide_completion.exit.i ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.136.i, i64 %.sroa.9.135.i ; 2 uses
  store ptr %1, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = atomicrmw or ptr %i.as, i64 1 release, align 8 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 3 uses
  %i.av = load atomic i8, ptr %i.au seq_cst, align 8
  %.not.i.i8.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i8.i, label %.noexc9.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCsf8NQSppxkmK_14ide_completion.exit

.noexc9.i:                                        ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.aw)
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  %i.ax = load i64, ptr %i.c, align 8, !range !68, !alias.scope !1595, !noalias !1598, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.v, label %bb.aa, !prof !143

bb.v:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1600
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1595, !noalias !1598, !nonnull !4, !align !17, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !range !83, !alias.scope !1595, !noalias !1598, !noundef !4
  store ptr %i.ba, ptr %i.a, align 8, !noalias !1600
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bc, ptr %i.bd, align 8, !noalias !1600
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #39
          to label %bb.x unwind label %bb.w, !noalias !1595

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34
          to label %common.resume unwind label %bb.y, !noalias !1595

bb.x:                                             ; preds = %bb.v
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1595
  unreachable

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECsf8NQSppxkmK_14ide_completion.exit.i.i.i, %bb.ai, %.noexc6.i.i.i, %bb.ag, %.lr.ph.i.preheader.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.bi, i8 %i.bk) #34
          to label %common.resume unwind label %bb.aq

bb.aa:                                            ; preds = %.noexc9.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !1595, !noalias !1598, !nonnull !4, !align !17, !noundef !4 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !range !83, !alias.scope !1595, !noalias !1598, !noundef !4 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bm = load atomic i8, ptr %i.au seq_cst, align 8
  %.not2.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not2.i.i.i, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1601, !noalias !1604, !noundef !4 ; 4 uses
  %i.bq = icmp ult i64 %i.bp, 384307168202282326
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECsf8NQSppxkmK_14ide_completion.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.ab
  %i.bs = invoke noundef i64 @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @42)
          to label %.noexc.i.i.i unwind label %bb.z

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.preheader.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1601, !noalias !1604, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.bp, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, %.noexc.i.i.i
  %.sroa.02.010.i.i.i.i.i = phi i64 [ %i.cp, %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ 0, %.noexc.i.i.i ] ; 3 uses
  %i.bw = phi ptr [ %i.bx, %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ %i.bu, %.noexc.i.i.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.by = load ptr, ptr %i.bw, align 8, !alias.scope !1606, !noalias !1609, !nonnull !4, !noundef !4 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !1613, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ca, %i.bs
  br i1 %.not.i.i.i.i.i.i, label %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, label %bb.ac
end_hunk_0
