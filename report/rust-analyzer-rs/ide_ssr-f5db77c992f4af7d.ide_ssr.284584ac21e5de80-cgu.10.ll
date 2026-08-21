inline.NumInlined: 380
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE20disconnect_receiversCs3smBju6uAx0_7ide_ssr:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = atomicrmw or ptr %i.d, i64 %i.c seq_cst, align 8 ; 2 uses
  %i.f = load i64, ptr %i.b, align 16, !noundef !4 ; 2 uses
  %i.g = and i64 %i.f, %i.e
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.i) #27
  %.pre = load i64, ptr %i.b, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.k = load atomic i64, ptr %0 monotonic, align 128
  %i.l = xor i64 %i.j, -1
  %i.m = and i64 %i.e, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %i.s = phi i64 [ %i.j, %bb.c ], [ %.pre.i, %bb.i ]
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.i ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.c ], [ %.sroa.0.1.i, %bb.i ] ; 5 uses
  %i.t = add i64 %i.s, -1
  %i.u = and i64 %.sroa.0.0.i, %i.t               ; 3 uses
  %i.v = load i64, ptr %i.n, align 8, !noundef !4
  %i.w = sub i64 0, %i.v
  %i.x = and i64 %.sroa.0.0.i, %i.w
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.z = load i64, ptr %i.p, align 32, !noundef !4
  %i.aa = icmp ult i64 %i.u, %i.z
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.u ; 2 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = add i64 %.sroa.0.0.i, 1
  %i.ae = icmp eq i64 %i.ad, %i.ac
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp eq i64 %i.m, %.sroa.0.0.i
  br i1 %i.af, label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE20discard_all_messagesCs3smBju6uAx0_7ide_ssr.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = add nuw i64 %i.u, 1
  %i.ah = load i64, ptr %i.q, align 128, !noundef !4
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.aj, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.ak = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.ak, 7                    ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.al, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ak, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod1 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !344

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.h
  %i.am = add i32 %.sroa.0.07.i, 1
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs3smBju6uAx0_7ide_ssr.exit.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs3smBju6uAx0_7ide_ssr.exit.i ], [ %i.am, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs3smBju6uAx0_7ide_ssr.exit.i ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.b, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.an = load i64, ptr %i.n, align 8, !noundef !4
  %i.ao = add i64 %i.an, %i.x
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.ac, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  store ptr %.val.i, ptr %i.a, align 8
  store i64 %i.ar, ptr %i.r, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.as = atomicrmw sub ptr %.val.i, i64 1 release, align 8, !noalias !352
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs3smBju6uAx0_7ide_ssr.exit.i

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.a, align 8, !alias.scope !352, !nonnull !4, !noundef !4
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !352 ; 0 uses
  call void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #26
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs3smBju6uAx0_7ide_ssr.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs3smBju6uAx0_7ide_ssr.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE20discard_all_messagesCs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.e
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCs3smBju6uAx0_7ide_ssr(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 %3, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  %i.p = load atomic i64, ptr %i.n monotonic, align 128, !noalias !353 ; 2 uses
  %i.q = load i64, ptr %i.o, align 16, !noalias !353, !noundef !4 ; 2 uses
  %i.r = and i64 %i.q, %i.p
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs3smBju6uAx0_7ide_ssr.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ay
  %i.z = phi i64 [ %i.q, %.lr.ph.i.lr.ph ], [ %i.fm, %bb.ay ]
  %i.aa = phi i64 [ %i.p, %.lr.ph.i.lr.ph ], [ %i.fl, %bb.ay ]
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, %.lr.ph.i
  %i.ab = phi i64 [ %i.z, %.lr.ph.i ], [ %i.bd, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i ]
  %.sroa.02.044.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i ] ; 8 uses
  %.sroa.0.03943.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03943.i, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ad = add i64 %i.ab, -1
  %i.ae = and i64 %i.ad, %.sroa.02.044.i          ; 3 uses
  %i.af = load i64, ptr %i.t, align 8, !noalias !356, !noundef !4
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %.sroa.02.044.i, %i.ag
  %i.ai = load ptr, ptr %i.u, align 8, !noalias !356, !nonnull !4, !noundef !4
  %i.aj = load i64, ptr %i.v, align 32, !noalias !356, !noundef !4
  %i.ak = icmp ult i64 %i.ae, %i.aj
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ae ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8, !noalias !356 ; 2 uses
  %i.an = icmp eq i64 %.sroa.02.044.i, %i.am
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %i.t, align 8, !noalias !356, !noundef !4
  %i.ap = add i64 %i.ao, %i.am
  %i.aq = add i64 %.sroa.02.044.i, 1
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = add nuw i64 %i.ae, 1
  %i.at = load i64, ptr %i.w, align 128, !noalias !356, !noundef !4
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.av = icmp ult i32 %.sroa.0.03943.i, 7
  br i1 %i.av, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i unwind label %.body.thread36.loopexit

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.03943.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %4 = mul nuw i32 %.sroa.0.03943.i, %.sroa.0.03943.i ; 2 uses
  %xtraiter = and i32 %4, 7                       ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.03943.i, 3
  br i1 %i.aw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %4, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit125.unr-lcssa, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.c
  fence seq_cst
  %i.ax = load atomic i64, ptr %0 monotonic, align 128, !noalias !356
  %i.ay = load i64, ptr %i.t, align 8, !noalias !356, !noundef !4
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = icmp eq i64 %i.az, %.sroa.02.044.i
  br i1 %i.ba, label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCs3smBju6uAx0_7ide_ssr.exit, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i12.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i12.i: ; preds = %bb.g
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03943.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %.not.i13.i = icmp eq i32 %.sroa.0.03943.i, 0
  br i1 %.not.i13.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i16.i.preheader

.lr.ph.i16.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i12.i
  %xtraiter137 = and i32 %5, 5                    ; 3 uses
  %i.bb = icmp ult i32 %.sroa.0.03943.i, 3
  br i1 %i.bb, label %.lr.ph.i16.i.epil.preheader, label %.lr.ph.i16.i.preheader.new

.lr.ph.i16.i.preheader.new:                       ; preds = %.lr.ph.i16.i.preheader
  %unroll_iter141 = and i32 %5, 56
  br label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.lr.ph.i16.i, %.lr.ph.i16.i.preheader.new
  %niter142 = phi i32 [ 0, %.lr.ph.i16.i.preheader.new ], [ %niter142.next.7, %.lr.ph.i16.i ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  %niter142.next.7 = add i32 %niter142, 8         ; 2 uses
  %niter142.ncmp.7 = icmp eq i32 %niter142.next.7, %unroll_iter141
  br i1 %niter142.ncmp.7, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit124.unr-lcssa, label %.lr.ph.i16.i

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod146.not = icmp eq i32 %xtraiter144, 0
  br i1 %lcmp.mod146.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod147 = icmp ne i32 %xtraiter144, 0
  call void @llvm.assume(i1 %lcmp.mod147)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter145 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter145.next, %.lr.ph.i26.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  %epil.iter145.next = add i32 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i32 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i26.i.epil, !llvm.loop !358

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit124.unr-lcssa: ; preds = %.lr.ph.i16.i
  %lcmp.mod139.not = icmp eq i32 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i16.i.epil.preheader

.lr.ph.i16.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit124.unr-lcssa, %.lr.ph.i16.i.preheader
  %lcmp.mod140 = icmp ne i32 %xtraiter137, 0
  call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i16.i.epil

.lr.ph.i16.i.epil:                                ; preds = %.lr.ph.i16.i.epil, %.lr.ph.i16.i.epil.preheader
  %epil.iter138 = phi i32 [ 0, %.lr.ph.i16.i.epil.preheader ], [ %epil.iter138.next, %.lr.ph.i16.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  %epil.iter138.next = add i32 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i32 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i16.i.epil, !llvm.loop !359

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit125.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit125.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod136 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i.i.epil, !llvm.loop !360

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit125.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit124.unr-lcssa, %.lr.ph.i16.i.epil, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %bb.f, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i22.i, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i12.i, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.bc = load atomic i64, ptr %i.n monotonic, align 128, !noalias !356 ; 2 uses
  %.sroa.0.1.i = add i32 %.sroa.0.03943.i, 1
  %i.bd = load i64, ptr %i.o, align 16, !noalias !356, !noundef !4 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs3smBju6uAx0_7ide_ssr.exit

bb.h:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.t, align 8, !noalias !356, !noundef !4
  %i.bh = add i64 %i.bg, %i.ah
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.044.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.i ], [ %i.bh, %bb.h ]
  %i.bj = cmpxchg weak ptr %i.n, i64 %.sroa.02.044.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !356
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %bb.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i22.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i22.i: ; preds = %bb.j
  %.not.i23.i = icmp eq i32 %.sroa.0.03943.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i22.i
  %xtraiter144 = and i32 %i.ac, 7                 ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.03943.i, 3
  br i1 %i.bl, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter148 = and i32 %i.ac, 56
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter149 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter149.next.7, %.lr.ph.i26.i ]
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  call void @llvm.x86.sse2.pause(), !noalias !356
  %niter149.next.7 = add i32 %niter149, 8         ; 2 uses
  %niter149.ncmp.7 = icmp eq i32 %niter149.next.7, %unroll_iter148
  br i1 %niter149.ncmp.7, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

.body.thread36.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread36.loopexit.split-lp:                 ; preds = %bb.at, %bb.ao, %bb.aj, %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs3smBju6uAx0_7ide_ssr.exit.i.i, %bb.ah, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0uEs_0uECs3smBju6uAx0_7ide_ssr.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_sendCs3smBju6uAx0_7ide_ssr.exit: ; preds = %bb.g
  %i.bm = load i32, ptr %i.l, align 8, !range !154, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %bb.ai, label %bb.ah

bb.k:                                             ; preds = %bb.j
  store ptr %i.al, ptr %i.j, align 8, !alias.scope !356
  %i.bn = add i64 %.sroa.02.044.i, 1              ; 2 uses
  store i64 %i.bn, ptr %i.m, align 8, !alias.scope !356
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %1, ptr %i.bo, align 8
  store atomic i64 %i.bn, ptr %i.al release, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.bq = load atomic i8, ptr %i.bp seq_cst, align 8
  %.not.i.i12 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i12, label %.noexc14, label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs3smBju6uAx0_7ide_ssr.exit

.noexc14:                                         ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %i.br)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.bs = load i64, ptr %i.i, align 8, !range !135, !alias.scope !361, !noalias !364, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.q, !prof !22

bb.l:                                             ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !366
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !361, !noalias !364, !nonnull !4, !align !9, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bx = load i8, ptr %i.bw, align 8, !range !102, !alias.scope !361, !noalias !364, !noundef !4
  store ptr %i.bv, ptr %i.g, align 8, !noalias !366
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.bx, ptr %i.by, align 8, !noalias !366
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
          to label %bb.n unwind label %bb.m, !noalias !361

bb.m:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #30
          to label %.body.thread33 unwind label %bb.o, !noalias !361

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29, !noalias !361
  unreachable

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i, %bb.y, %.noexc6.i.i, %bb.w, %.lr.ph.i.preheader.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs3smBju6uAx0_7ide_ssr(ptr nonnull %i.cd, i8 %i.cf) #30
          to label %.body.thread33 unwind label %bb.ag

bb.q:                                             ; preds = %.noexc14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !361, !noalias !364, !nonnull !4, !align !9, !noundef !4 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !102, !alias.scope !361, !noalias !364, !noundef !4 ; 2 uses
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ch = load atomic i8, ptr %i.bp seq_cst, align 8
  %.not2.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not2.i.i, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !367, !noalias !370, !noundef !4 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, 384307168202282326
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.r
  %i.cn = invoke noundef i64 @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
          to label %.noexc.i.i unwind label %bb.p

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !367, !noalias !370, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ck, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i, %.noexc.i.i
  %.sroa.02.010.i.i.i.i = phi i64 [ %i.dk, %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.cr = phi ptr [ %i.cs, %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i ], [ %i.cp, %.noexc.i.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.ct = load ptr, ptr %i.cr, align 8, !alias.scope !372, !noalias !375, !nonnull !4, !noundef !4 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !379, !noundef !4
  %.not.i.i.i.i.i = icmp eq i64 %i.cv, %i.cn
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !372, !noalias !375, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cz = cmpxchg ptr %i.cy, i64 0, i64 %i.cx acq_rel acquire, align 8, !noalias !379
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.cz, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.t, label %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !372, !noalias !375, !noundef !4 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store atomic ptr %i.db, ptr %i.dd release, align 8, !noalias !379
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !noalias !379, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 2 uses
  %i.dh = atomicrmw xchg ptr %i.dg, i32 1 release, align 4, !noalias !379
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.w, label %.noexc6.i.i

bb.w:                                             ; preds = %bb.v
  %i.dj = invoke noundef zeroext i1 @_RNvNtNtNtNtCscAsMj0W7j8b_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.dg)
          to label %.noexc6.i.i unwind label %bb.p ; 0 uses

_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i
  %i.dk = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.dl = icmp eq ptr %i.cs, %i.cq
  br i1 %i.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i, label %.lr.ph.i.i.i.i

.noexc6.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dm = icmp samesign ult i64 %.sroa.02.010.i.i.i.i, %i.ck
  call void @llvm.assume(i1 %i.dm)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryE6removeCs3smBju6uAx0_7ide_ssr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ci, i64 noundef %.sroa.02.010.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i unwind label %bb.p

_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i: ; preds = %.noexc6.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !alias.scope !380 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.dn = icmp eq ptr %.pr.i.i, null
  br i1 %i.dn, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i
  %i.do = atomicrmw sub ptr %.pr.i.i, i64 1 release, align 8, !noalias !383
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i unwind label %bb.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i: ; preds = %_RNCNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs3smBju6uAx0_7ide_ssr.exit.i.i.i.i, %bb.y, %bb.x, %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ci)
          to label %bb.z unwind label %bb.p

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryEECs3smBju6uAx0_7ide_ssr.exit.i.i
  %i.dq = load i64, ptr %i.cj, align 8, !noundef !4 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
end_hunk_0
