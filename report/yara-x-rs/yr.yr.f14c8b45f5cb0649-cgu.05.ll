Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.05?download=true
inline.NumInlined: 1363
inline.NumDeleted: 625
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE20disconnect_receiversCskIqAKC4t9Ft_2yr:bb.a

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge52.i:                                  ; preds = %bb.h, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.h ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bf, %bb.h ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE20discard_all_messagesCskIqAKC4t9Ft_2yr.exit, label %bb.c

.lr.ph51.i:                                       ; preds = %.loopexit.i, %bb.h
  %i.ad = phi i64 [ %i.bg, %bb.h ], [ %i.t, %.loopexit.i ]
  %.sroa.05.049.i = phi i64 [ %i.bf, %bb.h ], [ %i.q, %.loopexit.i ]
  %.sroa.011.148.i = phi ptr [ %.sroa.011.2.i, %bb.h ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge52.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1000, i64 noundef 8) #27
  br label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE20discard_all_messagesCskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %.lr.ph51.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.148.i, i64 992 ; 3 uses
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.aj = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.02.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.am, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.an = load atomic ptr, ptr %i.af acquire, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i

_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  %i.ap = load atomic ptr, ptr %i.af acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.148.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i, i64 noundef 1000, i64 noundef 8) #27
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph51.i
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.148.i, i64 %i.ae ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.av, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.aw = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.aw, label %.loopexit.i.thread.i31.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.ax, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.ax = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i34.i = lshr i32 %i.ax, %.sroa.0.02.i27.i
  %i.ay = icmp eq i32 %.sroa.0.0.highbits.i.i34.i, 0
  br i1 %i.ay, label %.preheader.i.i32.i, label %.loopexit.i.thread.i31.i

.loopexit.i.thread.i31.i:                         ; preds = %.preheader.i.i32.i, %.loopexit.i.i28.i
  %i.az = add nuw nsw i32 %.sroa.0.02.i27.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i: ; preds = %.loopexit.i.thread.i31.i, %.loopexit.i.i28.i
  %.sroa.0.1.i30.i = phi i32 [ %i.az, %.loopexit.i.thread.i31.i ], [ %.sroa.0.02.i27.i, %.loopexit.i.i28.i ]
  %i.ba = load atomic i64, ptr %i.ar acquire, align 8
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i26.i, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i

_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i, %bb.e
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.bd

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i, %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.148.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i ], [ %i.ap, %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i ] ; 2 uses
  %i.bf = add i64 %.sroa.05.049.i, 2              ; 3 uses
  %i.bg = lshr i64 %i.bf, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bg, %i.p
  br i1 %.not.i, label %._crit_edge52.i, label %.lr.ph51.i

_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE20discard_all_messagesCskIqAKC4t9Ft_2yr.exit: ; preds = %._crit_edge52.i, %bb.c
  %i.bh = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bh, ptr %0 release, align 128
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE20discard_all_messagesCskIqAKC4t9Ft_2yr.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4recvCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.425 = alloca [16 x i8], align 8          ; 2 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.s = load atomic i64, ptr %1 acquire, align 128, !noalias !2084
  %i.t = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2084
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.036.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.036.i.be, %.backedge.i.backedge ] ; 13 uses
  %.sroa.014.0.i = phi ptr [ %i.t, %bb.b ], [ %.sroa.014.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.05.0.i = phi i64 [ %i.s, %bb.b ], [ %.sroa.05.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.u = lshr i64 %.sroa.05.0.i, 1                ; 2 uses
  %i.v = and i64 %i.u, 31                         ; 6 uses
  %i.w = icmp eq i64 %i.v, 31
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge.i
  %i.x = icmp ult i32 %.sroa.0.036.i, 7
  br i1 %i.x, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.c
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2084
  %i.y = icmp ult i32 %.sroa.0.036.i, 11
  br i1 %i.y, label %.loopexit.i.thread.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.z, %.preheader.i.i ], [ 0, %bb.c ]
  %i.z = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2084
  %.sroa.0.0.highbits.i.i = lshr i32 %i.z, %.sroa.0.036.i
  %i.aa = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.aa, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ab = add nuw nsw i32 %.sroa.0.036.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.ab, %.loopexit.i.thread.i ], [ %.sroa.0.036.i, %.loopexit.i.i ]
  %i.ac = load atomic i64, ptr %1 acquire, align 128, !noalias !2084
  %i.ad = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2084
  br label %.backedge.i.backedge

bb.d:                                             ; preds = %.backedge.i
  %i.ae = add i64 %.sroa.05.0.i, 2                ; 2 uses
  %i.af = and i64 %.sroa.05.0.i, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.ah = load atomic i64, ptr %i.p monotonic, align 128, !noalias !2084 ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.u, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted.i = xor i64 %i.ah, %.sroa.05.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %4 = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.ae, %4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = and i64 %i.ah, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE10start_recvCskIqAKC4t9Ft_2yr.exit, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ae, %bb.d ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.am = icmp eq ptr %.sroa.014.0.i, null
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = cmpxchg weak ptr %1, i64 %.sroa.05.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2084 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp ult i32 %.sroa.0.036.i, 7
  br i1 %i.aq, label %.preheader.i21.i, label %.loopexit.i20.i

.loopexit.i20.i:                                  ; preds = %bb.j
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2084
  %i.ar = icmp ult i32 %.sroa.0.036.i, 11
  br i1 %i.ar, label %.loopexit.i20.thread.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i

.preheader.i21.i:                                 ; preds = %bb.j, %.preheader.i21.i
  %.sroa.0.03.i22.i = phi i32 [ %i.as, %.preheader.i21.i ], [ 0, %bb.j ]
  %i.as = add nuw nsw i32 %.sroa.0.03.i22.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2084
  %.sroa.0.0.highbits.i23.i = lshr i32 %i.as, %.sroa.0.036.i
  %i.at = icmp eq i32 %.sroa.0.0.highbits.i23.i, 0
  br i1 %i.at, label %.preheader.i21.i, label %.loopexit.i20.thread.i

.loopexit.i20.thread.i:                           ; preds = %.preheader.i21.i, %.loopexit.i20.i
  %i.au = add nuw nsw i32 %.sroa.0.036.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i: ; preds = %.loopexit.i20.thread.i, %.loopexit.i20.i
  %.sroa.0.3.i = phi i32 [ %i.au, %.loopexit.i20.thread.i ], [ %.sroa.0.036.i, %.loopexit.i20.i ]
  %i.av = load atomic i64, ptr %1 acquire, align 128, !noalias !2084
  %i.aw = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2084
  br label %.backedge.i.backedge

bb.k:                                             ; preds = %bb.i
  %i.ax = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2084
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.036.i, i32 6)
  br label %bb.l

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i: ; preds = %bb.l
  %i.ay = icmp ult i32 %.sroa.0.036.i, 7
  %i.az = zext i1 %i.ay to i32
  %spec.select37.i = add nuw nsw i32 %.sroa.0.036.i, %i.az
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.036.i.be = phi i32 [ %spec.select37.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %.sroa.0.2.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %.sroa.0.3.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  %.sroa.014.0.i.be = phi ptr [ %i.ax, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.ad, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %i.aw, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  %.sroa.05.0.i.be = phi i64 [ %i.ap, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.ac, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %i.av, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  br label %.backedge.i

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.k ], [ %i.ba, %bb.l ]
  %i.ba = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2084
  %.sroa.0.0.highbits.i28.i = lshr i32 %i.ba, %..i.i.i
  %i.bb = icmp eq i32 %.sroa.0.0.highbits.i28.i, 0
  br i1 %i.bb, label %bb.l, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i

bb.m:                                             ; preds = %bb.i
  %i.bc = icmp eq i64 %i.v, 30
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 992 ; 2 uses
  %i.be = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !2084 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i29.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.n ] ; 5 uses
  %i.bg = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bg, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2084
  %i.bh = icmp ult i32 %.sroa.0.02.i29.i, 11
  br i1 %i.bh, label %.loopexit.i.thread.i.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.bi, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.bi = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2084
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.bi, %.sroa.0.02.i29.i
  %i.bj = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.bj, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.bk = add nuw nsw i32 %.sroa.0.02.i29.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bk, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i29.i, %.loopexit.i.i.i ]
  %i.bl = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !2084 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i

_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.n
  %.lcssa.i.i = phi ptr [ %i.be, %bb.n ], [ %i.bl, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ] ; 2 uses
  %i.bn = and i64 %.sroa.01.0.i, -2
  %5 = add i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 992
  %i.bp = load atomic ptr, ptr %i.bo monotonic, align 8, !noalias !2084
  %6 = icmp ne ptr %i.bp, null
  %7 = zext i1 %6 to i64
  %spec.select19.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.o release, align 8, !noalias !2084
  store atomic i64 %spec.select19.i, ptr %1 release, align 128, !noalias !2084
  br label %bb.o

_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE10start_recvCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.g
  %exitcond = icmp eq i32 %.sroa.0.0, 11
  br i1 %exitcond, label %bb.y, label %bb.w

bb.o:                                             ; preds = %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE9wait_nextCskIqAKC4t9Ft_2yr.exit.i, %bb.m
  store ptr %.sroa.014.0.i, ptr %i.k, align 8, !alias.scope !2084
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !2084
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %i.v ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !2085
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i5, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i

.lr.ph.i.i5:                                      ; preds = %bb.o, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8
  %.sroa.0.02.i.i6 = phi i32 [ %.sroa.0.1.i.i9, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8 ], [ 0, %bb.o ] ; 5 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i.i6, 7
  br i1 %i.bv, label %.preheader.i.i.i11, label %.loopexit.i.i.i7

.loopexit.i.i.i7:                                 ; preds = %.lr.ph.i.i5
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2085
  %i.bw = icmp ult i32 %.sroa.0.02.i.i6, 11
  br i1 %i.bw, label %.loopexit.i.thread.i.i10, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8

.preheader.i.i.i11:                               ; preds = %.lr.ph.i.i5, %.preheader.i.i.i11
  %.sroa.0.03.i.i.i12 = phi i32 [ %i.bx, %.preheader.i.i.i11 ], [ 0, %.lr.ph.i.i5 ]
  %i.bx = add nuw nsw i32 %.sroa.0.03.i.i.i12, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2085
  %.sroa.0.0.highbits.i.i.i13 = lshr i32 %i.bx, %.sroa.0.02.i.i6
  %i.by = icmp eq i32 %.sroa.0.0.highbits.i.i.i13, 0
  br i1 %i.by, label %.preheader.i.i.i11, label %.loopexit.i.thread.i.i10

.loopexit.i.thread.i.i10:                         ; preds = %.preheader.i.i.i11, %.loopexit.i.i.i7
  %i.bz = add nuw nsw i32 %.sroa.0.02.i.i6, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8: ; preds = %.loopexit.i.thread.i.i10, %.loopexit.i.i.i7
  %.sroa.0.1.i.i9 = phi i32 [ %i.bz, %.loopexit.i.thread.i.i10 ], [ %.sroa.0.02.i.i6, %.loopexit.i.i.i7 ]
  %i.ca = load atomic i64, ptr %i.br acquire, align 8, !noalias !2085
  %i.cb = and i64 %i.ca, 1
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i5, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i

_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8, %bb.o
  %.sroa.024.0.copyload = load i64, ptr %i.bq, align 8, !noalias !2085 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.425, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.425.0..sroa_idx, i64 16, i1 false)
  %i.cd = add nuw nsw i64 %i.v, 1                 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 31
  br i1 %i.ce, label %.lr.ph.i1.i, label %bb.s

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i, %bb.r
  %.sroa.0.03.i.i4 = phi i64 [ %i.cn, %bb.r ], [ 0, %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.03.i.i4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 2 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8, !noalias !2085
  %i.ci = and i64 %i.ch, 2
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.p, label %.lr.ph.i1.i.1

bb.p:                                             ; preds = %.lr.ph.i1.i
  %i.ck = atomicrmw or ptr %i.cg, i64 4 acq_rel, align 8, !noalias !2085
  %i.cl = and i64 %i.ck, 2
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.p, %.lr.ph.i1.i
  %i.cn = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.03.i.i4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 2 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8, !noalias !2085
  %i.cr = and i64 %i.cq, 2
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i1.i.1
  %i.ct = atomicrmw or ptr %i.cp, i64 4 acq_rel, align 8, !noalias !2085
  %i.cu = and i64 %i.ct, 2
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i1.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.cn, 30
  br i1 %exitcond.not.i.i.1, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE7destroyCskIqAKC4t9Ft_2yr.exit.sink.split.i, label %.lr.ph.i1.i

bb.s:                                             ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCsG258MDvU3F_3std4path7PathBufE10wait_writeCskIqAKC4t9Ft_2yr.exit.i
  %i.cw = atomicrmw or ptr %i.br, i64 2 acq_rel, align 8, !noalias !2085
  %i.cx = and i64 %i.cw, 4
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit, label %bb.t

_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE7destroyCskIqAKC4t9Ft_2yr.exit.sink.split.i: ; preds = %bb.v, %bb.r, %bb.t
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i, i64 noundef 1000, i64 noundef 8) #27, !noalias !2085
  br label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit

bb.t:                                             ; preds = %bb.s
  %i.cz = icmp samesign ult i64 %i.v, 29
  br i1 %i.cz, label %.lr.ph.i3.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE7destroyCskIqAKC4t9Ft_2yr.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.t, %bb.v
  %.sroa.0.03.i4.i = phi i64 [ %i.da, %bb.v ], [ %i.cd, %bb.t ] ; 2 uses
  %i.da = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.03.i4.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8, !noalias !2085
  %i.de = and i64 %i.dd, 2
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i3.i
  %i.dg = atomicrmw or ptr %i.dc, i64 4 acq_rel, align 8, !noalias !2085
  %i.dh = and i64 %i.dg, 2
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.da, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE7destroyCskIqAKC4t9Ft_2yr.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.u, %bb.p, %bb.q, %bb.s, %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCsG258MDvU3F_3std4path7PathBufE7destroyCskIqAKC4t9Ft_2yr.exit.sink.split.i
  %i.dj = icmp eq i64 %.sroa.024.0.copyload, -1
  br i1 %i.dj, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4readCskIqAKC4t9Ft_2yr.exit.thread, label %bb.aq

bb.w:                                             ; preds = %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE10start_recvCskIqAKC4t9Ft_2yr.exit
  %i.dk = icmp samesign ult i32 %.sroa.0.0, 7
  br i1 %i.dk, label %.preheader.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.dl, %.preheader.i ], [ 0, %bb.w ]
  %i.dl = add nuw nsw i32 %.sroa.0.03.i, 1        ; 2 uses
  call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.dl, %.sroa.0.0
  %i.dm = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.dm, label %.preheader.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.preheader.i, %bb.x
  %i.dn = add nuw nsw i32 %.sroa.0.0, 1
  br label %.backedge

.backedge:                                        ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %_RINvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4recvs_0uECskIqAKC4t9Ft_2yr.exit
  %.sroa.0.0.be = phi i32 [ %i.dn, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %_RINvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4recvs_0uECskIqAKC4t9Ft_2yr.exit ]
  br label %bb.b

bb.y:                                             ; preds = %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE10start_recvCskIqAKC4t9Ft_2yr.exit
  %i.do = load i32, ptr %i.i, align 8, !range !28, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.do, -1
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.dq = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.dr = extractvalue { i64, i32 } %i.dq, 0      ; 2 uses
  %i.ds = icmp eq i64 %i.dr, %i.dp
  br i1 %i.ds, label %.split, label %bb.an

bb.aa:                                            ; preds = %.split, %bb.an, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2086
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dt = load i8, ptr %i.r, align 8, !range !30, !noalias !2087, !noundef !6
  %i.du = icmp eq i8 %i.dt, 1
  br i1 %i.du, label %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i, label %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i, !prof !10

_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.aa
  %i.dv = call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1i_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2a_B28_4with7CONTEXT27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !2086 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1P_B1N_4withNCNvMs1_NtNtB1R_7flavors4listINtB3h_7ChannelNtNtBa_4path7PathBufE4recvs_0uEs_0uECskIqAKC4t9Ft_2yr.exit.i, label %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i

_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i, %bb.aa
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dv, %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i ], [ %i.q, %bb.aa ] ; 4 uses
  %i.dx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2086, !noundef !6 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2086
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.ah, !prof !8

bb.ab:                                            ; preds = %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2086
  %i.dy = call noundef nonnull ptr @_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context3new(), !noalias !2086 ; 2 uses
  store ptr %i.dy, ptr %i.e, align 8, !noalias !2086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2086
  store ptr %i.g, ptr %i.c, align 8, !noalias !2086
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtCsG258MDvU3F_3std4path7PathBufE4recvs_0CskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dy)
          to label %bb.ae unwind label %bb.ac, !noalias !2086

bb.ac:                                            ; preds = %bb.ab
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  call void @llvm.experimental.noalias.scope.decl(metadata !2089)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE20disconnect_receiversB1b_:bb.a
  %i.t = lshr i64 %i.q, 1                         ; 3 uses
  %i.u = icmp ne i64 %i.t, %i.p
  %i.v = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.ab, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.t, %i.p
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.3.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.w = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.w, label %.preheader.i22.i, label %.loopexit.i21.i

.loopexit.i21.i:                                  ; preds = %.preheader.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.x = icmp ult i32 %.sroa.0.1.i, 11
  br i1 %i.x, label %.loopexit.i21.thread.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.f, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.f ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bd, %bb.f ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE20discard_all_messagesB1b_.exit, label %bb.c

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.f
  %i.ad = phi i64 [ %i.be, %bb.f ], [ %i.t, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bd, %bb.f ], [ %i.q, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.f ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1248, i64 noundef 8) #27
  br label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE20discard_all_messagesB1b_.exit

bb.d:                                             ; preds = %.lr.ph48.i
  %i.af = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ah, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.ai, label %.loopexit.i.thread.i.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.aj, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.aj = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.aj, %.sroa.0.02.i.i
  %i.ak = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.ak, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.al = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.al, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.am = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i

_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  %i.ao = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1248, i64 noundef 8) #27
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph48.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.ae ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.av, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  %i.aw = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.aw, label %.loopexit.i.thread.i31.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.ax, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.ax = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i34.i = lshr i32 %i.ax, %.sroa.0.02.i27.i
  %i.ay = icmp eq i32 %.sroa.0.0.highbits.i.i34.i, 0
  br i1 %i.ay, label %.preheader.i.i32.i, label %.loopexit.i.thread.i31.i

.loopexit.i.thread.i31.i:                         ; preds = %.preheader.i.i32.i, %.loopexit.i.i28.i
  %i.az = add nuw nsw i32 %.sroa.0.02.i27.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i: ; preds = %.loopexit.i.thread.i31.i, %.loopexit.i.i28.i
  %.sroa.0.1.i30.i = phi i32 [ %i.az, %.loopexit.i.thread.i31.i ], [ %.sroa.0.02.i27.i, %.loopexit.i.i28.i ]
  %i.ba = load atomic i64, ptr %i.ar acquire, align 8
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i26.i, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i

_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i, %bb.e
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr4walk7MessageEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aq)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i, %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i ], [ %i.ao, %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i ] ; 2 uses
  %i.bd = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.be, %i.p
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE20discard_all_messagesB1b_.exit: ; preds = %._crit_edge49.i, %bb.c
  %i.bf = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bf, ptr %0 release, align 128
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE20discard_all_messagesB1b_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4recvB1b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.425 = alloca [24 x i8], align 8          ; 2 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %i.s = load atomic i64, ptr %1 acquire, align 128, !noalias !2147
  %i.t = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2147
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.036.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.036.i.be, %.backedge.i.backedge ] ; 13 uses
  %.sroa.014.0.i = phi ptr [ %i.t, %bb.b ], [ %.sroa.014.0.i.be, %.backedge.i.backedge ] ; 9 uses
  %.sroa.05.0.i = phi i64 [ %i.s, %bb.b ], [ %.sroa.05.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.u = lshr i64 %.sroa.05.0.i, 1                ; 2 uses
  %i.v = and i64 %i.u, 31                         ; 6 uses
  %i.w = icmp eq i64 %i.v, 31
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge.i
  %i.x = icmp ult i32 %.sroa.0.036.i, 7
  br i1 %i.x, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.c
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2147
  %i.y = icmp ult i32 %.sroa.0.036.i, 11
  br i1 %i.y, label %.loopexit.i.thread.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.z, %.preheader.i.i ], [ 0, %bb.c ]
  %i.z = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2147
  %.sroa.0.0.highbits.i.i = lshr i32 %i.z, %.sroa.0.036.i
  %i.aa = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.aa, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ab = add nuw nsw i32 %.sroa.0.036.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.ab, %.loopexit.i.thread.i ], [ %.sroa.0.036.i, %.loopexit.i.i ]
  %i.ac = load atomic i64, ptr %1 acquire, align 128, !noalias !2147
  %i.ad = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2147
  br label %.backedge.i.backedge

bb.d:                                             ; preds = %.backedge.i
  %i.ae = add i64 %.sroa.05.0.i, 2                ; 2 uses
  %i.af = and i64 %.sroa.05.0.i, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.ah = load atomic i64, ptr %i.p monotonic, align 128, !noalias !2147 ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.u, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted.i = xor i64 %i.ah, %.sroa.05.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %4 = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.ae, %4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = and i64 %i.ah, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10start_recvB1b_.exit, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ae, %bb.d ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.am = icmp eq ptr %.sroa.014.0.i, null
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = cmpxchg weak ptr %1, i64 %.sroa.05.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2147 ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp ult i32 %.sroa.0.036.i, 7
  br i1 %i.aq, label %.preheader.i21.i, label %.loopexit.i20.i

.loopexit.i20.i:                                  ; preds = %bb.j
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2147
  %i.ar = icmp ult i32 %.sroa.0.036.i, 11
  br i1 %i.ar, label %.loopexit.i20.thread.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i

.preheader.i21.i:                                 ; preds = %bb.j, %.preheader.i21.i
  %.sroa.0.03.i22.i = phi i32 [ %i.as, %.preheader.i21.i ], [ 0, %bb.j ]
  %i.as = add nuw nsw i32 %.sroa.0.03.i22.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2147
  %.sroa.0.0.highbits.i23.i = lshr i32 %i.as, %.sroa.0.036.i
  %i.at = icmp eq i32 %.sroa.0.0.highbits.i23.i, 0
  br i1 %i.at, label %.preheader.i21.i, label %.loopexit.i20.thread.i

.loopexit.i20.thread.i:                           ; preds = %.preheader.i21.i, %.loopexit.i20.i
  %i.au = add nuw nsw i32 %.sroa.0.036.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i: ; preds = %.loopexit.i20.thread.i, %.loopexit.i20.i
  %.sroa.0.3.i = phi i32 [ %i.au, %.loopexit.i20.thread.i ], [ %.sroa.0.036.i, %.loopexit.i20.i ]
  %i.av = load atomic i64, ptr %1 acquire, align 128, !noalias !2147
  %i.aw = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2147
  br label %.backedge.i.backedge

bb.k:                                             ; preds = %bb.i
  %i.ax = load atomic ptr, ptr %i.o acquire, align 8, !noalias !2147
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.036.i, i32 6)
  br label %bb.l

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i: ; preds = %bb.l
  %i.ay = icmp ult i32 %.sroa.0.036.i, 7
  %i.az = zext i1 %i.ay to i32
  %spec.select37.i = add nuw nsw i32 %.sroa.0.036.i, %i.az
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.036.i.be = phi i32 [ %spec.select37.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %.sroa.0.2.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %.sroa.0.3.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  %.sroa.014.0.i.be = phi ptr [ %i.ax, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.ad, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %i.aw, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  %.sroa.05.0.i.be = phi i64 [ %i.ap, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.ac, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %i.av, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  br label %.backedge.i

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.k ], [ %i.ba, %bb.l ]
  %i.ba = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2147
  %.sroa.0.0.highbits.i28.i = lshr i32 %i.ba, %..i.i.i
  %i.bb = icmp eq i32 %.sroa.0.0.highbits.i28.i, 0
  br i1 %i.bb, label %bb.l, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i

bb.m:                                             ; preds = %bb.i
  %i.bc = icmp eq i64 %i.v, 30
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = load atomic ptr, ptr %.sroa.014.0.i acquire, align 8, !noalias !2147 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i29.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.n ] ; 5 uses
  %i.bf = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bf, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2147
  %i.bg = icmp ult i32 %.sroa.0.02.i29.i, 11
  br i1 %i.bg, label %.loopexit.i.thread.i.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.bh, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.bh = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2147
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.bh, %.sroa.0.02.i29.i
  %i.bi = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.bi, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.bj = add nuw nsw i32 %.sroa.0.02.i29.i, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bj, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i29.i, %.loopexit.i.i.i ]
  %i.bk = load atomic ptr, ptr %.sroa.014.0.i acquire, align 8, !noalias !2147 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %.lr.ph.i.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i

_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.n
  %.lcssa.i.i = phi ptr [ %i.bd, %bb.n ], [ %i.bk, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ] ; 2 uses
  %i.bm = and i64 %.sroa.01.0.i, -2
  %5 = add i64 %i.bm, 2
  %i.bn = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !2147
  %6 = icmp ne ptr %i.bn, null
  %7 = zext i1 %6 to i64
  %spec.select19.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.o release, align 8, !noalias !2147
  store atomic i64 %spec.select19.i, ptr %1 release, align 128, !noalias !2147
  br label %bb.o

_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10start_recvB1b_.exit: ; preds = %bb.g
  %exitcond = icmp eq i32 %.sroa.0.0, 11
  br i1 %exitcond, label %bb.y, label %bb.w

bb.o:                                             ; preds = %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE9wait_nextB18_.exit.i, %bb.m
  store ptr %.sroa.014.0.i, ptr %i.k, align 8, !alias.scope !2147
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !2147
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 8
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.v ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8, !noalias !2148
  %i.bs = and i64 %i.br, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i5, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i

.lr.ph.i.i5:                                      ; preds = %bb.o, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8
  %.sroa.0.02.i.i6 = phi i32 [ %.sroa.0.1.i.i9, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8 ], [ 0, %bb.o ] ; 5 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i.i6, 7
  br i1 %i.bu, label %.preheader.i.i.i11, label %.loopexit.i.i.i7

.loopexit.i.i.i7:                                 ; preds = %.lr.ph.i.i5
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2148
  %i.bv = icmp ult i32 %.sroa.0.02.i.i6, 11
  br i1 %i.bv, label %.loopexit.i.thread.i.i10, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8

.preheader.i.i.i11:                               ; preds = %.lr.ph.i.i5, %.preheader.i.i.i11
  %.sroa.0.03.i.i.i12 = phi i32 [ %i.bw, %.preheader.i.i.i11 ], [ 0, %.lr.ph.i.i5 ]
  %i.bw = add nuw nsw i32 %.sroa.0.03.i.i.i12, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !2148
  %.sroa.0.0.highbits.i.i.i13 = lshr i32 %i.bw, %.sroa.0.02.i.i6
  %i.bx = icmp eq i32 %.sroa.0.0.highbits.i.i.i13, 0
  br i1 %i.bx, label %.preheader.i.i.i11, label %.loopexit.i.thread.i.i10

.loopexit.i.thread.i.i10:                         ; preds = %.preheader.i.i.i11, %.loopexit.i.i.i7
  %i.by = add nuw nsw i32 %.sroa.0.02.i.i6, 1
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8: ; preds = %.loopexit.i.thread.i.i10, %.loopexit.i.i.i7
  %.sroa.0.1.i.i9 = phi i32 [ %i.by, %.loopexit.i.thread.i.i10 ], [ %.sroa.0.02.i.i6, %.loopexit.i.i.i7 ]
  %i.bz = load atomic i64, ptr %i.bq acquire, align 8, !noalias !2148
  %i.ca = and i64 %i.bz, 1
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.i5, label %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i

_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i: ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i8, %bb.o
  %.sroa.024.0.copyload = load i64, ptr %i.bp, align 8, !noalias !2148 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425.0..sroa_idx, i64 24, i1 false)
  %i.cc = add nuw nsw i64 %i.v, 1                 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 31
  br i1 %i.cd, label %.lr.ph.i1.i, label %bb.s

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i, %bb.r
  %.sroa.0.03.i.i4 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.03.i.i4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8, !noalias !2148
  %i.ch = and i64 %i.cg, 2
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %.lr.ph.i1.i.1

bb.p:                                             ; preds = %.lr.ph.i1.i
  %i.cj = atomicrmw or ptr %i.cf, i64 4 acq_rel, align 8, !noalias !2148
  %i.ck = and i64 %i.cj, 2
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.p, %.lr.ph.i1.i
  %i.cm = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.03.i.i4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80 ; 2 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8, !noalias !2148
  %i.cq = and i64 %i.cp, 2
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i1.i.1
  %i.cs = atomicrmw or ptr %i.co, i64 4 acq_rel, align 8, !noalias !2148
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i1.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.cm, 30
  br i1 %exitcond.not.i.i.1, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE7destroyB18_.exit.sink.split.i, label %.lr.ph.i1.i

bb.s:                                             ; preds = %_RNvMNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10wait_writeB15_.exit.i
  %i.cv = atomicrmw or ptr %i.bq, i64 2 acq_rel, align 8, !noalias !2148
  %i.cw = and i64 %i.cv, 4
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit, label %bb.t

_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE7destroyB18_.exit.sink.split.i: ; preds = %bb.v, %bb.r, %bb.t
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i, i64 noundef 1248, i64 noundef 8) #27, !noalias !2148
  br label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit

bb.t:                                             ; preds = %bb.s
  %i.cy = icmp samesign ult i64 %i.v, 29
  br i1 %i.cy, label %.lr.ph.i3.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE7destroyB18_.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.t, %bb.v
  %.sroa.0.03.i4.i = phi i64 [ %i.cz, %bb.v ], [ %i.cc, %bb.t ] ; 2 uses
  %i.cz = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.03.i4.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40 ; 2 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8, !noalias !2148
  %i.dd = and i64 %i.dc, 2
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i3.i
  %i.df = atomicrmw or ptr %i.db, i64 4 acq_rel, align 8, !noalias !2148
  %i.dg = and i64 %i.df, 2
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cz, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE7destroyB18_.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit: ; preds = %bb.u, %bb.p, %bb.q, %bb.s, %_RNvMs_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCskIqAKC4t9Ft_2yr4walk7MessageE7destroyB18_.exit.sink.split.i
  %i.di = icmp eq i64 %.sroa.024.0.copyload, -1
  br i1 %i.di, label %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4readB1b_.exit.thread, label %bb.aq

bb.w:                                             ; preds = %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10start_recvB1b_.exit
  %i.dj = icmp samesign ult i32 %.sroa.0.0, 7
  br i1 %i.dj, label %.preheader.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.dk, %.preheader.i ], [ 0, %bb.w ]
  %i.dk = add nuw nsw i32 %.sroa.0.03.i, 1        ; 2 uses
  call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.dk, %.sroa.0.0
  %i.dl = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.dl, label %.preheader.i, label %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.preheader.i, %bb.x
  %i.dm = add nuw nsw i32 %.sroa.0.0, 1
  br label %.backedge

.backedge:                                        ; preds = %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %_RINvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4recvs_0uEB1N_.exit
  %.sroa.0.0.be = phi i32 [ %i.dm, %_RNvMNtCs7uMgTmySp6A_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %_RINvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4recvs_0uEB1N_.exit ]
  br label %bb.b

bb.y:                                             ; preds = %_RNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE10start_recvB1b_.exit
  %i.dn = load i32, ptr %i.i, align 8, !range !28, !noundef !6 ; 2 uses
  %.not = icmp eq i32 %i.dn, -1
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.do = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.dp = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.dq = extractvalue { i64, i32 } %i.dp, 0      ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.do
  br i1 %i.dr, label %.split, label %bb.an

bb.aa:                                            ; preds = %.split, %bb.an, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2149
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ds = load i8, ptr %i.r, align 8, !range !30, !noalias !2150, !noundef !6
  %i.dt = icmp eq i8 %i.ds, 1
  br i1 %i.dt, label %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i, label %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i, !prof !10

_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.aa
  %i.du = call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1i_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2a_B28_4with7CONTEXT27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %i.q, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !2149 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1P_B1N_4withNCNvMs1_NtNtB1R_7flavors4listINtB3h_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4recvs_0uEs_0uEB3V_.exit.i, label %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i

_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i, %bb.aa
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.du, %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.i.i ], [ %i.q, %bb.aa ] ; 4 uses
  %i.dw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2149, !noundef !6 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2149
  %.not.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.ah, !prof !8

bb.ab:                                            ; preds = %_RNvYNCNKNvNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCskIqAKC4t9Ft_2yr.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2149
  %i.dx = call noundef nonnull ptr @_RNvMNtCsgqCuqWkNCVj_17crossbeam_channel7contextNtB2_7Context3new(), !noalias !2149 ; 2 uses
  store ptr %i.dx, ptr %i.e, align 8, !noalias !2149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2149
  store ptr %i.g, ptr %i.c, align 8, !noalias !2149
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtCskIqAKC4t9Ft_2yr4walk7MessageE4recvs_0B1d_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dx)
          to label %bb.ae unwind label %bb.ac, !noalias !2149

bb.ac:                                            ; preds = %bb.ab
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
end_hunk_1
