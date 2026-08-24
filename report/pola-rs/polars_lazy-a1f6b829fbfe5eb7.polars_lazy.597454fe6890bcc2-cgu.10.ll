Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_lazy-a1f6b829fbfe5eb7.polars_lazy.597454fe6890bcc2-cgu.10?download=true
inline.NumInlined: 254
inline.NumDeleted: 120
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker6notify:bb.a
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy.exit5: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1460
  %i.ae = load ptr, ptr %i.c, align 8, !dbg !1462, !nonnull !12, !noundef !12 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !dbg !1471, !nonnull !12, !noundef !12
  %i.ag = icmp eq ptr %i.ae, %i.af, !dbg !1473
  br i1 %i.ag, label %._crit_edge, label %bb.d, !dbg !1475

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy.exit, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1617
  unreachable, !dbg !1617

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec5drain5DrainNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy.exit
  resume { ptr, i32 } %.pn, !dbg !1617
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1618 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128, !dbg !1619
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1624 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !dbg !1632
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b, !dbg !1635

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.037 = phi i32 [ 0, %bb.a ], [ %.sroa.0.037.be, %.backedge ], !dbg !1637 ; 16 uses
  %.sroa.012.0 = phi ptr [ %i.c, %bb.a ], [ %i.m, %.backedge ], !dbg !1638 ; 3 uses
  %.sroa.07.0 = phi i64 [ %i.a, %bb.a ], [ %i.l, %.backedge ], !dbg !1640 ; 5 uses
  %i.e = lshr i64 %.sroa.07.0, 1, !dbg !1642      ; 2 uses
  %i.f = and i64 %i.e, 31, !dbg !1642             ; 3 uses
  %i.g = icmp eq i64 %i.f, 31, !dbg !1643
  br i1 %i.g, label %bb.c, label %bb.f, !dbg !1643

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %.sroa.0.037, 7, !dbg !1645
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !1645

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !1651
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, !dbg !1651

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %.sroa.0.037, 0, !dbg !1652
  br i1 %.not.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.preheader, !dbg !1667

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.i = mul nuw i32 %.sroa.0.037, %.sroa.0.037, !dbg !1668 ; 2 uses
  %xtraiter67 = and i32 %i.i, 7, !dbg !1667       ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.037, 3, !dbg !1667
  br i1 %i.j, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !1667

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter71 = and i32 %i.i, 56, !dbg !1667
  br label %.lr.ph.i, !dbg !1667

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter72 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter72.next.7, %.lr.ph.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  %niter72.next.7 = add i32 %niter72, 8, !dbg !1667 ; 2 uses
  %niter72.ncmp.7 = icmp eq i32 %niter72.next.7, %unroll_iter71, !dbg !1667
  br i1 %niter72.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !dbg !1667

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod69.not = icmp eq i32 %xtraiter67, 0, !dbg !1667
  br i1 %lcmp.mod69.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.epil.preheader, !dbg !1667

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod70 = icmp ne i32 %xtraiter67, 0, !dbg !1667
  tail call void @llvm.assume(i1 %lcmp.mod70), !dbg !1667
  br label %.lr.ph.i.epil, !dbg !1667

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %epil.iter68 = phi i32 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter68.next, %.lr.ph.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1676
  %epil.iter68.next = add i32 %epil.iter68, 1, !dbg !1667 ; 2 uses
  %epil.iter68.cmp.not = icmp eq i32 %epil.iter68.next, %xtraiter67, !dbg !1667
  br i1 %epil.iter68.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, label %.lr.ph.i.epil, !dbg !1667, !llvm.loop !1687

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.d, %bb.e
  %i.k = add i32 %.sroa.0.037, 1, !dbg !1689
  br label %.backedge, !dbg !1690

.backedge:                                        ; preds = %._crit_edge.loopexit.i, %bb.q, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22
  %.sroa.0.037.be = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit ], [ %i.ab, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22 ], [ %i.af, %._crit_edge.loopexit.i ], [ 1, %bb.q ]
  %i.l = load atomic i64, ptr %0 acquire, align 128, !dbg !1692
  %i.m = load atomic ptr, ptr %i.b acquire, align 8, !dbg !1695
  br label %bb.b, !dbg !1642

bb.f:                                             ; preds = %bb.b
  %i.n = add i64 %.sroa.07.0, 2, !dbg !1697       ; 2 uses
  %i.o = and i64 %.sroa.07.0, 1, !dbg !1698
  %i.p = icmp eq i64 %i.o, 0, !dbg !1698
  br i1 %i.p, label %bb.g, label %bb.j, !dbg !1698

bb.g:                                             ; preds = %bb.f
  fence seq_cst, !dbg !1700
  %i.q = load atomic i64, ptr %i.d monotonic, align 128, !dbg !1702 ; 3 uses
  %i.r = lshr i64 %i.q, 1, !dbg !1705
  %i.s = icmp eq i64 %i.e, %i.r, !dbg !1707
  br i1 %i.s, label %bb.i, label %bb.h, !dbg !1707

bb.h:                                             ; preds = %bb.g
  %.not.unshifted = xor i64 %i.q, %.sroa.07.0, !dbg !1708
  %.not = icmp ugt i64 %.not.unshifted, 63, !dbg !1708
  %i.t = zext i1 %.not to i64, !dbg !1708
  %spec.select = or disjoint i64 %i.n, %i.t, !dbg !1708
  br label %bb.j, !dbg !1708

bb.i:                                             ; preds = %bb.g
  %i.u = and i64 %i.q, 1, !dbg !1709
  %i.v = icmp eq i64 %i.u, 0, !dbg !1709
  br i1 %i.v, label %bb.l, label %bb.k, !dbg !1709

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.01.0 = phi i64 [ %i.n, %bb.f ], [ %spec.select, %bb.h ], !dbg !1694 ; 2 uses
  %i.w = icmp eq ptr %.sroa.012.0, null, !dbg !1710
  br i1 %i.w, label %bb.m, label %bb.p, !dbg !1710

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1711
  store ptr null, ptr %i.x, align 8, !dbg !1711
  br label %bb.l, !dbg !1712

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.v
  %.sroa.0.0 = phi i1 [ true, %bb.v ], [ true, %bb.k ], [ false, %bb.i ], !dbg !1713
  ret i1 %.sroa.0.0, !dbg !1714

bb.m:                                             ; preds = %bb.j
  %i.y = icmp ult i32 %.sroa.0.037, 7, !dbg !1715
  br i1 %i.y, label %bb.o, label %bb.n, !dbg !1715

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !1717
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22, !dbg !1717

bb.o:                                             ; preds = %bb.m
  %.not.i18 = icmp eq i32 %.sroa.0.037, 0, !dbg !1718
  br i1 %.not.i18, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22, label %.lr.ph.i19.preheader, !dbg !1722

.lr.ph.i19.preheader:                             ; preds = %bb.o
  %i.z = mul nuw i32 %.sroa.0.037, %.sroa.0.037, !dbg !1723 ; 2 uses
  %xtraiter61 = and i32 %i.z, 7, !dbg !1722       ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.037, 3, !dbg !1722
  br i1 %i.aa, label %.lr.ph.i19.epil.preheader, label %.lr.ph.i19.preheader.new, !dbg !1722

.lr.ph.i19.preheader.new:                         ; preds = %.lr.ph.i19.preheader
  %unroll_iter65 = and i32 %i.z, 56, !dbg !1722
  br label %.lr.ph.i19, !dbg !1722

.lr.ph.i19:                                       ; preds = %.lr.ph.i19, %.lr.ph.i19.preheader.new
  %niter66 = phi i32 [ 0, %.lr.ph.i19.preheader.new ], [ %niter66.next.7, %.lr.ph.i19 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  %niter66.next.7 = add i32 %niter66, 8, !dbg !1722 ; 2 uses
  %niter66.ncmp.7 = icmp eq i32 %niter66.next.7, %unroll_iter65, !dbg !1722
  br i1 %niter66.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.loopexit.unr-lcssa, label %.lr.ph.i19, !dbg !1722

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.loopexit.unr-lcssa: ; preds = %.lr.ph.i19
  %lcmp.mod63.not = icmp eq i32 %xtraiter61, 0, !dbg !1722
  br i1 %lcmp.mod63.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22, label %.lr.ph.i19.epil.preheader, !dbg !1722

.lr.ph.i19.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.loopexit.unr-lcssa, %.lr.ph.i19.preheader
  %lcmp.mod64 = icmp ne i32 %xtraiter61, 0, !dbg !1722
  tail call void @llvm.assume(i1 %lcmp.mod64), !dbg !1722
  br label %.lr.ph.i19.epil, !dbg !1722

.lr.ph.i19.epil:                                  ; preds = %.lr.ph.i19.epil, %.lr.ph.i19.epil.preheader
  %epil.iter62 = phi i32 [ 0, %.lr.ph.i19.epil.preheader ], [ %epil.iter62.next, %.lr.ph.i19.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1725
  %epil.iter62.next = add i32 %epil.iter62, 1, !dbg !1722 ; 2 uses
  %epil.iter62.cmp.not = icmp eq i32 %epil.iter62.next, %xtraiter61, !dbg !1722
  br i1 %epil.iter62.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22, label %.lr.ph.i19.epil, !dbg !1722, !llvm.loop !1728

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.loopexit.unr-lcssa, %.lr.ph.i19.epil, %bb.n, %bb.o
  %i.ab = add i32 %.sroa.0.037, 1, !dbg !1729
  br label %.backedge, !dbg !1690

bb.p:                                             ; preds = %bb.j
  %i.ac = cmpxchg weak ptr %0, i64 %.sroa.07.0, i64 %.sroa.01.0 seq_cst acquire, align 8, !dbg !1730
  %i.ad = extractvalue { i64, i1 } %i.ac, 1, !dbg !1730
  br i1 %i.ad, label %bb.r, label %bb.q, !dbg !1735

bb.q:                                             ; preds = %bb.p
  %.not.i23 = icmp eq i32 %.sroa.0.037, 0, !dbg !1736
  br i1 %.not.i23, label %.backedge, label %.lr.ph.i24.preheader, !dbg !1748

.lr.ph.i24.preheader:                             ; preds = %bb.q
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.037, i32 6), !dbg !1749 ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i, %.sroa.0.0.i.i, !dbg !1753 ; 2 uses
  %xtraiter = and i32 %2, 5, !dbg !1748           ; 3 uses
  %i.ae = icmp ult i32 %.sroa.0.037, 3, !dbg !1748
  br i1 %i.ae, label %.lr.ph.i24.epil.preheader, label %.lr.ph.i24.preheader.new, !dbg !1748

.lr.ph.i24.preheader.new:                         ; preds = %.lr.ph.i24.preheader
  %unroll_iter = and i32 %2, 56, !dbg !1748
  br label %.lr.ph.i24, !dbg !1748

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i24
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !1748
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i24.epil.preheader, !dbg !1748

.lr.ph.i24.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i24.preheader
  %lcmp.mod60 = icmp ne i32 %xtraiter, 0, !dbg !1748
  tail call void @llvm.assume(i1 %lcmp.mod60), !dbg !1748
  br label %.lr.ph.i24.epil, !dbg !1748

.lr.ph.i24.epil:                                  ; preds = %.lr.ph.i24.epil, %.lr.ph.i24.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !1748 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !1748
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i24.epil, !dbg !1748, !llvm.loop !1760

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i24.epil, %._crit_edge.loopexit.i.unr-lcssa
  %i.af = add i32 %.sroa.0.037, 1, !dbg !1761
  br label %.backedge, !dbg !1762

.lr.ph.i24:                                       ; preds = %.lr.ph.i24, %.lr.ph.i24.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.preheader.new ], [ %niter.next.7, %.lr.ph.i24 ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  tail call void @llvm.x86.sse2.pause(), !dbg !1755
  %niter.next.7 = add i32 %niter, 8, !dbg !1748   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !1748
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i24, !dbg !1748

bb.r:                                             ; preds = %bb.p
  %i.ag = icmp eq i64 %i.f, 30, !dbg !1766
  br i1 %i.ag, label %bb.s, label %bb.v, !dbg !1766

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 2480 ; 2 uses
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8, !dbg !1767 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !1775
  br i1 %i.aj, label %.lr.ph.i29, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE9wait_nextCs7Ga9Brpi21q_11polars_lazy.exit, !dbg !1775

.lr.ph.i29:                                       ; preds = %bb.s, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i30 = phi i32 [ %i.an, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.s ] ; 6 uses
  %i.ak = icmp ult i32 %.sroa.0.02.i30, 7, !dbg !1777
  br i1 %i.ak, label %bb.u, label %bb.t, !dbg !1777

bb.t:                                             ; preds = %.lr.ph.i29
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now(), !dbg !1779
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !1779

bb.u:                                             ; preds = %.lr.ph.i29
  %.not.i.i = icmp eq i32 %.sroa.0.02.i30, 0, !dbg !1780
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !1784

.lr.ph.i.i.preheader:                             ; preds = %bb.u
  %i.al = mul nuw i32 %.sroa.0.02.i30, %.sroa.0.02.i30, !dbg !1785 ; 2 uses
  %xtraiter73 = and i32 %i.al, 7, !dbg !1784      ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.02.i30, 3, !dbg !1784
  br i1 %i.am, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !1784

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter77 = and i32 %i.al, 56, !dbg !1784
  br label %.lr.ph.i.i, !dbg !1784

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter78 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter78.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  %niter78.next.7 = add i32 %niter78, 8, !dbg !1784 ; 2 uses
  %niter78.ncmp.7 = icmp eq i32 %niter78.next.7, %unroll_iter77, !dbg !1784
  br i1 %niter78.ncmp.7, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !1784

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod75.not = icmp eq i32 %xtraiter73, 0, !dbg !1784
  br i1 %lcmp.mod75.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !1784

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod76 = icmp ne i32 %xtraiter73, 0, !dbg !1784
  tail call void @llvm.assume(i1 %lcmp.mod76), !dbg !1784
  br label %.lr.ph.i.i.epil, !dbg !1784

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter74 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter74.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !1787
  %epil.iter74.next = add i32 %epil.iter74, 1, !dbg !1784 ; 2 uses
  %epil.iter74.cmp.not = icmp eq i32 %epil.iter74.next, %xtraiter73, !dbg !1784
  br i1 %epil.iter74.cmp.not, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !1784, !llvm.loop !1790

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.u, %bb.t
  %i.an = add i32 %.sroa.0.02.i30, 1, !dbg !1791
  %i.ao = load atomic ptr, ptr %i.ah acquire, align 8, !dbg !1767 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null, !dbg !1775
  br i1 %i.ap, label %.lr.ph.i29, label %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE9wait_nextCs7Ga9Brpi21q_11polars_lazy.exit, !dbg !1775

_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE9wait_nextCs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.s
  %.lcssa.i = phi ptr [ %i.ai, %bb.s ], [ %i.ao, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !1767 ; 2 uses
  %i.aq = and i64 %.sroa.01.0, -2, !dbg !1792
  %i.ar = add i64 %i.aq, 2, !dbg !1794
  %i.as = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 2480, !dbg !1798
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8, !dbg !1805
  %i.au = icmp ne ptr %i.at, null, !dbg !1807
  %i.av = zext i1 %i.au to i64, !dbg !1807
  %spec.select17 = or disjoint i64 %i.ar, %i.av, !dbg !1807
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8, !dbg !1808
  store atomic i64 %spec.select17, ptr %0 release, align 128, !dbg !1813
  br label %bb.v, !dbg !1818

bb.v:                                             ; preds = %bb.r, %_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE9wait_nextCs7Ga9Brpi21q_11polars_lazy.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1819
  store ptr %.sroa.012.0, ptr %i.aw, align 8, !dbg !1819
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1820
  store i64 %i.f, ptr %i.ax, align 8, !dbg !1820
  br label %bb.l, !dbg !1821
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE18disconnect_sendersCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1823 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1824
  %i.d = atomicrmw or ptr %i.c, i64 1 seq_cst, align 8, !dbg !1831
  %i.e = and i64 %i.d, 1, !dbg !1834
  %i.f = icmp eq i64 %i.e, 0, !dbg !1834          ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !1834

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !1836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1837
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.g), !dbg !1840
  call void @llvm.experimental.noalias.scope.decl(metadata !1841), !dbg !1844
  %i.h = load i64, ptr %i.b, align 8, !dbg !1845, !range !32, !alias.scope !1841, !noalias !1847, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1, !dbg !1849
  br i1 %i.i, label %bb.c, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy.exit.i, !dbg !1849, !prof !266

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1850, !noalias !1851
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1850
  %i.k = load ptr, ptr %i.j, align 8, !dbg !1850, !alias.scope !1841, !noalias !1847, !nonnull !12, !align !212, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1850
  %i.m = load i8, ptr %i.l, align 8, !dbg !1850, !range !213, !alias.scope !1841, !noalias !1847, !noundef !12
  store ptr %i.k, ptr %i.a, align 8, !dbg !1850, !noalias !1851
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1850
  store i8 %i.m, ptr %i.n, align 8, !dbg !1850, !noalias !1851
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
          to label %bb.e unwind label %bb.d, !dbg !1852, !noalias !1841

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume.i unwind label %bb.f, !dbg !1853, !noalias !1841

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !1854, !noalias !1841
  unreachable, !dbg !1854

common.resume.i:                                  ; preds = %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1855

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1856
  %i.r = load ptr, ptr %i.q, align 8, !dbg !1856, !alias.scope !1841, !noalias !1847, !nonnull !12, !align !212, !noundef !12 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1856
  %i.t = load i8, ptr %i.s, align 8, !dbg !1856, !range !213, !alias.scope !1841, !noalias !1847, !noundef !12 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1, !dbg !1856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1857
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !1858
  call void @llvm.experimental.noalias.scope.decl(metadata !1864), !dbg !1867
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !1868
  %i.x = load ptr, ptr %i.w, align 8, !dbg !1868, !alias.scope !1864, !nonnull !12, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !1883 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !1883, !alias.scope !1864, !noundef !12 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24, !dbg !1884
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i, !dbg !1884
  %i.ab = icmp eq i64 %i.z, 0, !dbg !1893
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1902

.lr.ph.i.i:                                       ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy.exit.i, %.noexc5.i
  %.sroa.0.03.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 24, !dbg !1903 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.03.i.i, align 8, !dbg !1906, !noalias !1864, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24, !dbg !1908
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !dbg !1913, !noalias !1864
  %i.af = extractvalue { i64, i1 } %i.ae, 1, !dbg !1913
  br i1 %i.af, label %bb.g, label %.noexc5.i, !dbg !1915

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy.exit.i
  invoke fastcc void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v) #25
          to label %_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.i, !dbg !1916

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.03.i.i, align 8, !dbg !1917, !noalias !1864, !nonnull !12, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !1926
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !1926, !noalias !1864, !nonnull !12, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40, !dbg !1939 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !dbg !1948, !noalias !1864
  %i.al = icmp eq i32 %i.ak, -1, !dbg !1951
  br i1 %i.al, label %bb.h, label %.noexc5.i, !dbg !1951

bb.h:                                             ; preds = %bb.g
  %i.am = invoke noundef zeroext i1 @_RNvNtNtNtNtCsh8eZTKRCwoO_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.aj)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !1952 ; 0 uses

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.an = icmp eq ptr %i.ac, %i.aa, !dbg !1893
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1902

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvCs7Ga9Brpi21q_11polars_lazy:bb.a
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i unwind label %bb.j, !dbg !2540, !noalias !2341

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7Ga9Brpi21q_11polars_lazy.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs0_0Cs7Ga9Brpi21q_11polars_lazy(ptr nonnull %i.f), !dbg !2541, !noalias !2341
  br label %_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2541

_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uECs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy.exit19.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy.exit.i.i.i, %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs_0uECs7Ga9Brpi21q_11polars_lazy.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2545, !noalias !2341
  %i.at = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy(ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 dereferenceable(40) %i.h), !dbg !2315
  br i1 %i.at, label %._crit_edge, label %bb.b, !dbg !2317

.split:                                           ; preds = %bb.c
  %i.au = extractvalue { i64, i32 } %i.t, 1, !dbg !2329 ; 2 uses
  %i.av = icmp ult i32 %i.au, 1000000000, !dbg !2546
  call void @llvm.assume(i1 %i.av), !dbg !2546
  %.not5 = icmp samesign ult i32 %i.au, %i.p, !dbg !2559
  br i1 %.not5, label %bb.d, label %bb.r, !dbg !2329

bb.q:                                             ; preds = %bb.c
  %.not4 = icmp slt i64 %i.u, %i.s, !dbg !2559
  br i1 %.not4, label %bb.d, label %bb.r, !dbg !2329

bb.r:                                             ; preds = %.split, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2567
  store i8 0, ptr %i.aw, align 8, !dbg !2567
  store i64 19, ptr %0, align 8, !dbg !2567
  br label %bb.s, !dbg !2568

bb.s:                                             ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !2570
  ret void, !dbg !2571

bb.t:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2572
  store i8 1, ptr %i.ax, align 8, !dbg !2572
  store i64 19, ptr %0, align 8, !dbg !2572
  br label %bb.v, !dbg !2574

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !dbg !2575
  br label %bb.v, !dbg !2576

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2577
  br label %bb.s, !dbg !2568
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4sendCs7Ga9Brpi21q_11polars_lazy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2578 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [64 x i8], align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !2579 ; 5 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !dbg !2590, !noalias !2592 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !2595 ; 5 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !dbg !2603, !noalias !2592
  %i.h = and i64 %i.e, 1, !dbg !2605
  %i.i = icmp eq i64 %i.h, 0, !dbg !2605
  br i1 %i.i, label %.lr.ph.lr.ph.i, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread, !dbg !2605

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !2608
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !2609
  %.sroa.016.0.copyload36 = load i64, ptr %2, align 8, !dbg !2609
  %.sroa.5.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !2609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx37, i64 64, i1 false), !dbg !2609
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2610

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i, !dbg !2605

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph80.i = phi i64 [ %i.e, %.lr.ph.lr.ph.i ], [ %i.am, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph79.i = phi ptr [ %i.g, %.lr.ph.lr.ph.i ], [ %i.an, %.outer.backedge.i ]
  %.sroa.0.0.ph78.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.037.0.ph77.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.037.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.0.ph80.i, 1, !dbg !2613
  %i.l = and i64 %i.k, 31, !dbg !2613             ; 2 uses
  %i.m = icmp eq i64 %i.l, 31, !dbg !2614
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !dbg !2614

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.073.i77, 1, !dbg !2616  ; 2 uses
  %i.o = lshr exact i64 %i.v, 1, !dbg !2613
  %i.p = and i64 %i.o, 31, !dbg !2613             ; 2 uses
  %i.q = icmp eq i64 %i.p, 31, !dbg !2614
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !dbg !2614

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.073.i77 = phi i32 [ %i.n, %bb.b ], [ %.sroa.0.0.ph78.i, %.lr.ph.i ] ; 6 uses
  %i.r = icmp ult i32 %.sroa.0.073.i77, 7, !dbg !2618
  br i1 %i.r, label %bb.d, label %bb.c, !dbg !2618

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.loopexit58.i, !dbg !2619, !noalias !2592

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.073.i77, 0, !dbg !2620
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !2624

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.s = mul nuw i32 %.sroa.0.073.i77, %.sroa.0.073.i77, !dbg !2625 ; 2 uses
  %xtraiter = and i32 %i.s, 7, !dbg !2624         ; 3 uses
  %i.t = icmp ult i32 %.sroa.0.073.i77, 3, !dbg !2624
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !2624

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.s, 56, !dbg !2624
  br label %.lr.ph.i.i, !dbg !2624

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  %niter.next.7 = add i32 %niter, 8, !dbg !2624   ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !2624
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !2624

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.075.i.lcssa = phi i64 [ %.sroa.03.0.ph80.i, %.lr.ph.i ], [ %i.v, %bb.b ] ; 2 uses
  %.sroa.07.074.i.lcssa = phi ptr [ %.sroa.07.0.ph79.i, %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %.sroa.0.073.i.lcssa = phi i32 [ %.sroa.0.0.ph78.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa54 = phi i64 [ %i.l, %.lr.ph.i ], [ %i.p, %bb.b ], !dbg !2613 ; 2 uses
  %i.u = icmp eq i64 %.lcssa54, 30, !dbg !2630    ; 2 uses
  %.not.i = icmp eq ptr %.sroa.037.0.ph77.i, null
  %or.cond.i = select i1 %i.u, i1 %.not.i, i1 false, !dbg !2630
  br i1 %or.cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy.exit.i, !dbg !2630

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !2624
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader, !dbg !2624

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0, !dbg !2624
  tail call void @llvm.assume(i1 %lcmp.mod185), !dbg !2624
  br label %.lr.ph.i.i.epil, !dbg !2624

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2627, !noalias !2592
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !2624 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !2624
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !dbg !2624, !llvm.loop !2631

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.v = load atomic i64, ptr %i.d acquire, align 128, !dbg !2632, !noalias !2592 ; 3 uses
  %i.w = load atomic ptr, ptr %i.f acquire, align 8, !dbg !2635, !noalias !2592
  %i.x = and i64 %i.v, 1, !dbg !2605
  %i.y = icmp eq i64 %i.x, 0, !dbg !2605
  br i1 %i.y, label %bb.b, label %.outer._crit_edge.i, !dbg !2605

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy.exit.i: ; preds = %bb.e, %._crit_edge
  %.sroa.037.2.i = phi ptr [ %.sroa.037.0.ph77.i, %._crit_edge ], [ %i.aa, %bb.e ], !dbg !2638 ; 9 uses
  %i.z = icmp eq ptr %.sroa.07.074.i.lcssa, null, !dbg !2639
  br i1 %i.z, label %bb.f, label %bb.k, !dbg !2639

bb.e:                                             ; preds = %._crit_edge
  %i.aa = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13new_zeroed_inCs7Ga9Brpi21q_11polars_lazy()
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy.exit.i unwind label %.body.loopexit, !dbg !2640

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy.exit.i
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13new_zeroed_inCs7Ga9Brpi21q_11polars_lazy()
          to label %bb.g unwind label %.loopexit.split-lp.i, !dbg !2646, !noalias !2592 ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = cmpxchg ptr %i.f, ptr null, ptr %i.ab release monotonic, align 8, !dbg !2650, !noalias !2592
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1, !dbg !2650
  br i1 %i.ad, label %bb.h, label %bb.i, !dbg !2656

bb.h:                                             ; preds = %bb.g
  store atomic ptr %i.ab, ptr %i.j release, align 8, !dbg !2657, !noalias !2592
  br label %bb.k, !dbg !2661

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.037.2.i, null, !dbg !2662
  br i1 %i.ae, label %.outer.backedge.i, label %bb.j, !dbg !2662

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.2.i, i64 noundef 2488, i64 noundef 8) #14, !dbg !2665, !noalias !2592
  br label %.outer.backedge.i, !dbg !2662

bb.k:                                             ; preds = %bb.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy.exit.i
  %.sroa.07.1.i = phi ptr [ %.sroa.07.074.i.lcssa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy.exit.i ], [ %i.ab, %bb.h ], !dbg !2672 ; 3 uses
  %i.af = add i64 %.sroa.03.075.i.lcssa, 2, !dbg !2673
  %i.ag = cmpxchg weak ptr %i.d, i64 %.sroa.03.075.i.lcssa, i64 %i.af seq_cst acquire, align 8, !dbg !2674, !noalias !2592
  %i.ah = extractvalue { i64, i1 } %i.ag, 1, !dbg !2674
  br i1 %i.ah, label %bb.m, label %bb.l, !dbg !2679

bb.l:                                             ; preds = %bb.k
  %.not.i26.i = icmp eq i32 %.sroa.0.073.i.lcssa, 0, !dbg !2680
  br i1 %.not.i26.i, label %.outer.backedge.i, label %.lr.ph.i27.i.preheader, !dbg !2685

.lr.ph.i27.i.preheader:                           ; preds = %bb.l
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.073.i.lcssa, i32 6), !dbg !2686 ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i, !dbg !2688 ; 2 uses
  %xtraiter186 = and i32 %5, 5, !dbg !2685        ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.073.i.lcssa, 3, !dbg !2685
  br i1 %i.ai, label %.lr.ph.i27.i.epil.preheader, label %.lr.ph.i27.i.preheader.new, !dbg !2685

.lr.ph.i27.i.preheader.new:                       ; preds = %.lr.ph.i27.i.preheader
  %unroll_iter190 = and i32 %5, 56, !dbg !2685
  br label %.lr.ph.i27.i, !dbg !2685

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i27.i
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0, !dbg !2685
  br i1 %lcmp.mod188.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil.preheader, !dbg !2685

.lr.ph.i27.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i27.i.preheader
  %lcmp.mod189 = icmp ne i32 %xtraiter186, 0, !dbg !2685
  tail call void @llvm.assume(i1 %lcmp.mod189), !dbg !2685
  br label %.lr.ph.i27.i.epil, !dbg !2685

.lr.ph.i27.i.epil:                                ; preds = %.lr.ph.i27.i.epil, %.lr.ph.i27.i.epil.preheader
  %epil.iter187 = phi i32 [ 0, %.lr.ph.i27.i.epil.preheader ], [ %epil.iter187.next, %.lr.ph.i27.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  %epil.iter187.next = add i32 %epil.iter187, 1, !dbg !2685 ; 2 uses
  %epil.iter187.cmp.not = icmp eq i32 %epil.iter187.next, %xtraiter186, !dbg !2685
  br i1 %epil.iter187.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i27.i.epil, !dbg !2685, !llvm.loop !2693

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i27.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aj = add i32 %.sroa.0.073.i.lcssa, 1, !dbg !2694
  br label %.outer.backedge.i, !dbg !2695

.lr.ph.i27.i:                                     ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i.preheader.new
  %niter191 = phi i32 [ 0, %.lr.ph.i27.i.preheader.new ], [ %niter191.next.7, %.lr.ph.i27.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  tail call void @llvm.x86.sse2.pause(), !dbg !2690, !noalias !2592
  %niter191.next.7 = add i32 %niter191, 8, !dbg !2685 ; 2 uses
  %niter191.ncmp.7 = icmp eq i32 %niter191.next.7, %unroll_iter190, !dbg !2685
  br i1 %niter191.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i27.i, !dbg !2685

bb.m:                                             ; preds = %bb.k
  br i1 %i.u, label %bb.n, label %.outer._crit_edge.i, !dbg !2697

bb.n:                                             ; preds = %bb.m
  %.not16.i = icmp eq ptr %.sroa.037.2.i, null, !dbg !2698
  br i1 %.not16.i, label %bb.o, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread39, !dbg !2701, !prof !266

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24
          to label %.noexc5 unwind label %.body.loopexit.split-lp, !dbg !2702

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread39: ; preds = %bb.n
  store atomic ptr %.sroa.037.2.i, ptr %i.f release, align 8, !dbg !2703, !noalias !2592
  %i.ak = atomicrmw add ptr %i.d, i64 2 release, align 8, !dbg !2707, !noalias !2592 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i, i64 2480, !dbg !2712
  store atomic ptr %.sroa.037.2.i, ptr %i.al release, align 8, !dbg !2713, !noalias !2592
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !2608
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !2609
  %.sroa.016.0.copyload42 = load i64, ptr %2, align 8, !dbg !2609
  %.sroa.5.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !2609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx43, i64 64, i1 false), !dbg !2609
  br label %bb.r, !dbg !2610

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.l, %bb.j, %bb.i
  %.sroa.037.0.ph.be.i = phi ptr [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %.sroa.037.2.i, %bb.l ], [ %.sroa.037.2.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.073.i.lcssa, %bb.j ], [ %.sroa.0.073.i.lcssa, %bb.i ], [ 1, %bb.l ], [ %i.aj, %._crit_edge.loopexit.i.i ]
  %i.am = load atomic i64, ptr %i.d acquire, align 128, !dbg !2716, !noalias !2592 ; 2 uses
  %i.an = load atomic ptr, ptr %i.f acquire, align 8, !dbg !2719, !noalias !2592
  %i.ao = and i64 %i.am, 1, !dbg !2605
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !2605
  br i1 %i.ap, label %.lr.ph.i, label %.outer._crit_edge.i, !dbg !2605

.loopexit58.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit58.i
  %.sroa.037.1.ph.i = phi ptr [ %.sroa.037.0.ph77.i, %.loopexit58.i ], [ %.sroa.037.2.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit58.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.aq = icmp eq ptr %.sroa.037.1.ph.i, null, !dbg !2721
  br i1 %i.aq, label %.body.thread, label %.thread49.i, !dbg !2721

.thread49.i:                                      ; preds = %bb.p
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.1.ph.i, i64 noundef 2488, i64 noundef 8) #14, !dbg !2723, !noalias !2592
  br label %.body.thread, !dbg !2721

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.m
  %.sroa.9.0 = phi i64 [ %.lcssa54, %bb.m ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ], !dbg !2730
  %.sroa.412.0 = phi ptr [ %.sroa.07.1.i, %bb.m ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ], !dbg !2731 ; 2 uses
  %.sroa.037.3.i = phi ptr [ %.sroa.037.2.i, %bb.m ], [ %.sroa.037.0.ph77.i, %.loopexit.i ], [ %.sroa.037.0.ph.be.i, %.outer.backedge.i ], !dbg !2638 ; 2 uses
  %i.ar = icmp eq ptr %.sroa.037.3.i, null, !dbg !2732
  br i1 %i.ar, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit, label %bb.q, !dbg !2732

bb.q:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.037.3.i, i64 noundef 2488, i64 noundef 8) #14, !dbg !2734, !noalias !2592
  br label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit, !dbg !2732

.body.loopexit:                                   ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit: ; preds = %bb.q, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !2608
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !2609
  %.sroa.016.0.copyload = load i64, ptr %2, align 8, !dbg !2609 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !2609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx, i64 64, i1 false), !dbg !2609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741), !dbg !2744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745), !dbg !2744
  %i.as = icmp eq ptr %.sroa.412.0, null, !dbg !2610
  br i1 %i.as, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit, label %bb.r, !dbg !2610

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread39, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit
  %.sroa.016.0.copyload46 = phi i64 [ %.sroa.016.0.copyload42, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread39 ], [ %.sroa.016.0.copyload, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit ]
  %.sroa.412.145 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread39 ], [ %.sroa.412.0, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit ]
  %.sroa.9.144 = phi i64 [ 30, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit.thread39 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy.exit ] ; 2 uses
  %i.at = icmp samesign ult i64 %.sroa.9.144, 31, !dbg !2747
  tail call void @llvm.assume(i1 %i.at), !dbg !2754
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %.sroa.412.145, i64 %.sroa.9.144, !dbg !2755 ; 3 uses
  store i64 %.sroa.016.0.copyload46, ptr %i.au, align 8, !dbg !2756, !noalias !2741
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !2756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx18, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false), !dbg !2756, !noalias !2741
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72, !dbg !2762
  %i.aw = atomicrmw or ptr %i.av, i64 1 release, align 8, !dbg !2769, !noalias !2772 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 312, !dbg !2773 ; 3 uses
  %i.ay = load atomic i8, ptr %i.ax seq_cst, align 8, !dbg !2780, !noalias !2772
  %i.az = icmp eq i8 %i.ay, 0, !dbg !2783
  br i1 %i.az, label %.noexc6, label %_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy.exit.thread, !dbg !2783

.noexc6:                                          ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !2784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2785, !noalias !2772
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.ba), !dbg !2786
  call void @llvm.experimental.noalias.scope.decl(metadata !2787), !dbg !2790
  %i.bb = load i64, ptr %i.c, align 8, !dbg !2791, !range !32, !alias.scope !2787, !noalias !2793, !noundef !12
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !2795
  br i1 %i.bc, label %bb.s, label %bb.x, !dbg !2795, !prof !266

bb.s:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2796, !noalias !2797
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2796
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !2796, !alias.scope !2787, !noalias !2793, !nonnull !12, !align !212, !noundef !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2796
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !2796, !range !213, !alias.scope !2787, !noalias !2793, !noundef !12
  store ptr %i.be, ptr %i.a, align 8, !dbg !2796, !noalias !2797
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2796
  store i8 %i.bg, ptr %i.bh, align 8, !dbg !2796, !noalias !2797
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #24
          to label %bb.u unwind label %bb.t, !dbg !2798, !noalias !2799

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc5waker5WakerEEECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %.body.thread27 unwind label %bb.v, !dbg !2800, !noalias !2799

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #20, !dbg !2801, !noalias !2799
  unreachable, !dbg !2801

bb.w:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECs7Ga9Brpi21q_11polars_lazy.exit.i.i, %bb.af, %.noexc5.i.i, %bb.ad, %.lr.ph.i.preheader.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs7Ga9Brpi21q_11polars_lazy(ptr nonnull %i.bm, i8 %i.bo) #21
          to label %.body.thread27 unwind label %bb.an, !dbg !2802, !noalias !2772

bb.x:                                             ; preds = %.noexc6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2803
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !2803, !alias.scope !2787, !noalias !2793, !nonnull !12, !align !212, !noundef !12 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2803
  %i.bo = load i8, ptr %i.bn, align 8, !dbg !2803, !range !213, !alias.scope !2787, !noalias !2793, !noundef !12 ; 2 uses
  %i.bp = trunc nuw i8 %i.bo to i1, !dbg !2803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2804, !noalias !2772
  %i.bq = load atomic i8, ptr %i.ax seq_cst, align 8, !dbg !2805, !noalias !2772
  %i.br = icmp eq i8 %i.bq, 0, !dbg !2809
  br i1 %i.br, label %bb.y, label %bb.aj, !dbg !2809

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2810, !noalias !2772
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8, !dbg !2811 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2816), !dbg !2819
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !2820 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !2820, !alias.scope !2816, !noalias !2827, !noundef !12 ; 4 uses
  %i.bv = icmp ult i64 %i.bu, 384307168202282326, !dbg !2829
  call void @llvm.assume(i1 %i.bv), !dbg !2831
  %i.bw = icmp eq i64 %i.bu, 0, !dbg !2832
  br i1 %i.bw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryEECs7Ga9Brpi21q_11polars_lazy.exit.i.i, label %.lr.ph.i.preheader.i.i.i, !dbg !2832

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.y
  %i.bx = invoke noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs7Ga9Brpi21q_11polars_lazy(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11)
          to label %.noexc.i.i unwind label %bb.w, !dbg !2833, !noalias !2772

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16, !dbg !2836
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !2836, !alias.scope !2816, !noalias !2827, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.bu, 24, !dbg !2850
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i.i.i, !dbg !2850
  br label %.lr.ph.i.i.i.i, !dbg !2859

.lr.ph.i.i.i.i:                                   ; preds = %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy.exit.i.i.i.i, %.noexc.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ %i.cv, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy.exit.i.i.i.i ], [ 0, %.noexc.i.i ] ; 3 uses
  %i.cb = phi ptr [ %i.cc, %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy.exit.i.i.i.i ], [ %i.bz, %.noexc.i.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24, !dbg !2868 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2875), !dbg !2878
  %i.cd = load ptr, ptr %i.cb, align 8, !dbg !2879, !alias.scope !2875, !noalias !2888, !nonnull !12, !noundef !12 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40, !dbg !2892
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !2892, !noalias !2893, !noundef !12
  %.not.i.i.i.i.i = icmp eq i64 %i.cf, %i.bx, !dbg !2859
  br i1 %.not.i.i.i.i.i, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy.exit.i.i.i.i, label %bb.z, !dbg !2859

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !2894
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !2894, !alias.scope !2875, !noalias !2888, !noundef !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24, !dbg !2895
  %i.cj = cmpxchg ptr %i.ci, i64 0, i64 %i.ch acq_rel acquire, align 8, !dbg !2900, !noalias !2893
  %i.ck = extractvalue { i64, i1 } %i.cj, 1, !dbg !2900
  br i1 %i.ck, label %bb.aa, label %_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy.exit.i.i.i.i, !dbg !2902

bb.aa:                                            ; preds = %bb.z
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!1536 = distinct !DILocation(line: 3065, column: 26, scope: !1153, inlinedAt: !1533)
!1537 = !DILocation(line: 100, column: 16, scope: !1528)
!1538 = !DILocation(line: 444, column: 20, scope: !1539, inlinedAt: !1540)
!1539 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mpmc::context::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1540 = !DILocation(line: 2110, column: 27, scope: !1541, inlinedAt: !1542)
!1541 = distinct !DISubprogram(name: "inner<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !132, file: !131, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1542 = !DILocation(line: 2428, column: 15, scope: !1543, inlinedAt: !1545)
!1543 = distinct !DISubprogram(name: "deref<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1544, file: !131, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1544 = !DINamespace(name: "{impl#34}", scope: !133)
!1545 = !DILocation(line: 151, column: 9, scope: !1546, inlinedAt: !1547)
!1546 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context6unpark", scope: !1156, file: !852, line: 150, type: !11, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1547 = !DILocation(line: 101, column: 26, scope: !1528)
!1548 = !DILocation(line: 444, column: 20, scope: !1549, inlinedAt: !1550)
!1549 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::thread::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1550 = !DILocation(line: 2110, column: 27, scope: !1551, inlinedAt: !1553)
!1551 = !DILexicalBlockFile(scope: !1552, file: !131, discriminator: 2)
!1552 = distinct !DISubprogram(name: "inner<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtBM_5alloc6SystemE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !132, file: !131, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1553 = !DILocation(line: 2428, column: 15, scope: !1554, inlinedAt: !1556)
!1554 = !DILexicalBlockFile(scope: !1555, file: !131, discriminator: 2)
!1555 = distinct !DISubprogram(name: "deref<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1544, file: !131, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1556 = !DILocation(line: 1366, column: 38, scope: !1557, inlinedAt: !1561)
!1557 = distinct !DISubprogram(name: "as_ref<alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3pinINtB5_3PinINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtB1i_5alloc6SystemEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !1559, file: !1558, line: 1361, type: !11, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1558 = !DIFile(filename: "library/core/src/pin.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "623b9e075064997a07f817474d78ce5e")
!1559 = !DINamespace(name: "Pin", scope: !1560)
!1560 = !DINamespace(name: "pin", scope: !10)
!1561 = !DILocation(line: 184, column: 20, scope: !1562, inlinedAt: !1566)
!1562 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread6unpark", scope: !1564, file: !1563, line: 183, type: !11, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1563 = !DIFile(filename: "library/std/src/thread/thread.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3005680e1504410ed32e1506758665e5")
!1564 = !DINamespace(name: "Thread", scope: !1565)
!1565 = !DINamespace(name: "thread", scope: !175)
!1566 = !DILocation(line: 151, column: 27, scope: !1546, inlinedAt: !1547)
!1567 = !DILocation(line: 2447, column: 9, scope: !1568, inlinedAt: !1569)
!1568 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align4<u32>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align4mEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1569 = !DILocation(line: 3615, column: 24, scope: !1570, inlinedAt: !1571)
!1570 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE6as_ptr", scope: !147, file: !142, line: 3614, type: !11, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1571 = !DILocation(line: 2927, column: 43, scope: !1572, inlinedAt: !1573)
!1572 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE4swap", scope: !147, file: !142, line: 2925, type: !11, scopeLine: 2925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1573 = !DILocation(line: 96, column: 23, scope: !1574, inlinedAt: !1579)
!1574 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync14thread_parking5futexNtB2_6Parker6unpark", scope: !1576, file: !1575, line: 89, type: !11, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1575 = !DIFile(filename: "library/std/src/sys/sync/thread_parking/futex.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f084bc8309111c8b9abe307f3e759919")
!1576 = !DINamespace(name: "Parker", scope: !1577)
!1577 = !DINamespace(name: "futex", scope: !1578)
!1578 = !DINamespace(name: "thread_parking", scope: !93)
!1579 = !DILocation(line: 184, column: 38, scope: !1562, inlinedAt: !1566)
!1580 = !DILocation(line: 3922, column: 24, scope: !1581, inlinedAt: !1582)
!1581 = distinct !DISubprogram(name: "atomic_swap<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_swapmECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3916, type: !11, scopeLine: 3916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1582 = !DILocation(line: 2927, column: 26, scope: !1572, inlinedAt: !1573)
!1583 = !DILocation(line: 96, column: 12, scope: !1574, inlinedAt: !1579)
!1584 = !DILocation(line: 97, column: 13, scope: !1574, inlinedAt: !1579)
!1585 = !{!1586}
!1586 = distinct !{!1586, !1587, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1587 = distinct !{!1587, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy"}
!1588 = !{!1589}
!1589 = distinct !{!1589, !1590, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1590 = distinct !{!1590, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!1591 = !DILocation(line: 810, column: 1, scope: !1039, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 103, column: 9, scope: !1461)
!1593 = !{!1594}
!1594 = distinct !{!1594, !1595, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1595 = distinct !{!1595, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!1596 = !DILocation(line: 810, column: 1, scope: !886, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 810, column: 1, scope: !1039, inlinedAt: !1592)
!1598 = !{!1599}
!1599 = distinct !{!1599, !1600, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1600 = distinct !{!1600, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!1601 = !DILocation(line: 810, column: 1, scope: !892, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 810, column: 1, scope: !886, inlinedAt: !1597)
!1603 = !DILocation(line: 444, column: 20, scope: !895, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 2110, column: 27, scope: !897, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 2814, column: 17, scope: !899, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 810, column: 1, scope: !892, inlinedAt: !1602)
!1607 = !{!1599, !1594, !1589, !1586}
!1608 = !DILocation(line: 3956, column: 24, scope: !903, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 3193, column: 26, scope: !905, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 2814, column: 32, scope: !899, inlinedAt: !1606)
!1611 = !DILocation(line: 2814, column: 12, scope: !899, inlinedAt: !1606)
!1612 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 64, column: 9, scope: !899, inlinedAt: !1606)
!1614 = !DILocation(line: 2857, column: 18, scope: !899, inlinedAt: !1606)
!1615 = !DILocation(line: 810, column: 1, scope: !1479, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 103, column: 9, scope: !1457)
!1617 = !DILocation(line: 98, column: 5, scope: !1457)
!1618 = distinct !DISubprogram(name: "start_recv<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_recvCs7Ga9Brpi21q_11polars_lazy", scope: !1132, file: !939, line: 284, type: !11, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1619 = !DILocation(line: 3905, column: 24, scope: !229, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 2870, column: 26, scope: !1621, inlinedAt: !1622)
!1621 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !147, file: !142, line: 2868, type: !11, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1622 = !DILocation(line: 286, column: 40, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !939, line: 285, column: 9)
!1624 = !DILocation(line: 2447, column: 9, scope: !1625, inlinedAt: !1626)
!1625 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB7_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1626 = !DILocation(line: 2500, column: 16, scope: !1627, inlinedAt: !1628)
!1627 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE6as_ptrCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 2499, type: !11, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1628 = !DILocation(line: 1732, column: 35, scope: !1629, inlinedAt: !1630)
!1629 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE4loadCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 1730, type: !11, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1630 = !DILocation(line: 287, column: 41, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !939, line: 286, column: 9)
!1632 = !DILocation(line: 3905, column: 24, scope: !1633, inlinedAt: !1634)
!1633 = distinct !DISubprogram(name: "atomic_load<*mut std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB6_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3900, type: !11, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1634 = distinct !DILocation(line: 1732, column: 18, scope: !1629, inlinedAt: !1630)
!1635 = !DILocation(line: 289, column: 9, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !939, line: 287, column: 9)
!1637 = !DILocation(line: 0, scope: !1618)
!1638 = !DILocation(line: 1732, column: 18, scope: !1629, inlinedAt: !1639)
!1639 = !DILocation(line: 0, scope: !1631)
!1640 = !DILocation(line: 2870, column: 26, scope: !1621, inlinedAt: !1641)
!1641 = !DILocation(line: 0, scope: !1623)
!1642 = !DILocation(line: 291, column: 26, scope: !1636)
!1643 = !DILocation(line: 294, column: 16, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !939, line: 291, column: 13)
!1645 = !DILocation(line: 127, column: 12, scope: !1646, inlinedAt: !1650)
!1646 = distinct !DISubprogram(name: "spin_heavy", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy", scope: !1648, file: !1647, line: 126, type: !11, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1647 = !DIFile(filename: "library/std/src/sync/mpmc/utils.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b941d8df8f24d0813175fb738fe0f164")
!1648 = !DINamespace(name: "Backoff", scope: !1649)
!1649 = !DINamespace(name: "utils", scope: !856)
!1650 = distinct !DILocation(line: 295, column: 25, scope: !1644)
!1651 = !DILocation(line: 132, column: 13, scope: !1646, inlinedAt: !1650)
!1652 = !DILocation(line: 1917, column: 50, scope: !1653, inlinedAt: !1656)
!1653 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !1654, file: !1207, line: 1917, type: !11, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1654 = !DINamespace(name: "{impl#64}", scope: !1655)
!1655 = !DINamespace(name: "impls", scope: !1209)
!1656 = distinct !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !1661)
!1657 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCs7Ga9Brpi21q_11polars_lazy", scope: !1659, file: !1658, line: 780, type: !11, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1658 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!1659 = !DINamespace(name: "{impl#5}", scope: !1660)
!1660 = !DINamespace(name: "range", scope: !1328)
!1661 = distinct !DILocation(line: 866, column: 14, scope: !1662, inlinedAt: !1664)
!1662 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCs7Ga9Brpi21q_11polars_lazy", scope: !1663, file: !1658, line: 865, type: !11, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1663 = !DINamespace(name: "{impl#6}", scope: !1660)
!1664 = distinct !DILocation(line: 128, column: 22, scope: !1665, inlinedAt: !1650)
!1665 = !DILexicalBlockFile(scope: !1666, file: !1647, discriminator: 2)
!1666 = distinct !DILexicalBlock(scope: !1646, file: !1647, line: 128, column: 13)
!1667 = !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !1661)
!1668 = !DILocation(line: 3558, column: 28, scope: !1669, inlinedAt: !1675)
!1669 = distinct !DILexicalBlock(scope: !1671, file: !1670, line: 3550, column: 13)
!1670 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7da08fe6de751b90c62a398311fb672e")
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1670, line: 3549, column: 13)
!1672 = distinct !DISubprogram(name: "pow", linkageName: "_RNvMs6_NtCscgRAwXFJnXP_4core3numm3pow", scope: !1673, file: !1670, line: 3545, type: !11, scopeLine: 3545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1673 = !DINamespace(name: "{impl#8}", scope: !1674)
!1674 = !DINamespace(name: "num", scope: !10)
!1675 = distinct !DILocation(line: 128, column: 41, scope: !1646, inlinedAt: !1650)
!1676 = !DILocation(line: 25, column: 14, scope: !1677, inlinedAt: !1682)
!1677 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !1679, file: !1678, line: 22, type: !11, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1678 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/sse2.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6b1864d45cac802b34c17e3c3e5be790")
!1679 = !DINamespace(name: "sse2", scope: !1680)
!1680 = !DINamespace(name: "x86", scope: !1681)
!1681 = !DINamespace(name: "core_arch", scope: !10)
!1682 = distinct !DILocation(line: 287, column: 13, scope: !1683, inlinedAt: !1686)
!1683 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !1685, file: !1684, line: 270, type: !11, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1684 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3bdbac5c7616d584a36b114744411911")
!1685 = !DINamespace(name: "hint", scope: !10)
!1686 = distinct !DILocation(line: 129, column: 17, scope: !1666, inlinedAt: !1650)
!1687 = distinct !{!1687, !1688}
!1688 = !{!"llvm.loop.unroll.disable"}
!1689 = !DILocation(line: 135, column: 23, scope: !1646, inlinedAt: !1650)
!1690 = !DILocation(line: 0, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1644, file: !1238, discriminator: 0)
!1692 = !DILocation(line: 3905, column: 24, scope: !229, inlinedAt: !1693)
!1693 = !DILocation(line: 2870, column: 26, scope: !1621, inlinedAt: !1694)
!1694 = !DILocation(line: 0, scope: !1644)
!1695 = !DILocation(line: 3905, column: 24, scope: !1633, inlinedAt: !1696)
!1696 = !DILocation(line: 1732, column: 18, scope: !1629, inlinedAt: !1694)
!1697 = !DILocation(line: 301, column: 32, scope: !1644)
!1698 = !DILocation(line: 303, column: 16, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1644, file: !939, line: 301, column: 13)
!1700 = !DILocation(line: 4390, column: 23, scope: !152, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 304, column: 17, scope: !1699)
!1702 = !DILocation(line: 3904, column: 24, scope: !229, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 2870, column: 26, scope: !1621, inlinedAt: !1704)
!1704 = !DILocation(line: 305, column: 44, scope: !1699)
!1705 = !DILocation(line: 308, column: 37, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1699, file: !939, line: 305, column: 17)
!1707 = !DILocation(line: 308, column: 20, scope: !1706)
!1708 = !DILocation(line: 321, column: 20, scope: !1706)
!1709 = !DILocation(line: 310, column: 24, scope: !1706)
!1710 = !DILocation(line: 328, column: 16, scope: !1699)
!1711 = !DILocation(line: 312, column: 25, scope: !1706)
!1712 = !DILocation(line: 313, column: 25, scope: !1706)
!1713 = !DILocation(line: 0, scope: !1699)
!1714 = !DILocation(line: 366, column: 6, scope: !1618)
!1715 = !DILocation(line: 127, column: 12, scope: !1646, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 329, column: 25, scope: !1699)
!1717 = !DILocation(line: 132, column: 13, scope: !1646, inlinedAt: !1716)
!1718 = !DILocation(line: 1917, column: 50, scope: !1653, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 866, column: 14, scope: !1662, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 128, column: 22, scope: !1665, inlinedAt: !1716)
!1722 = !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !1720)
!1723 = !DILocation(line: 3558, column: 28, scope: !1669, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 128, column: 41, scope: !1646, inlinedAt: !1716)
!1725 = !DILocation(line: 25, column: 14, scope: !1677, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 287, column: 13, scope: !1683, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 129, column: 17, scope: !1666, inlinedAt: !1716)
!1728 = distinct !{!1728, !1688}
!1729 = !DILocation(line: 135, column: 23, scope: !1646, inlinedAt: !1716)
!1730 = !DILocation(line: 4084, column: 17, scope: !1731, inlinedAt: !1732)
!1731 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakjECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 4034, type: !11, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1732 = distinct !DILocation(line: 3130, column: 21, scope: !1733, inlinedAt: !1734)
!1733 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !147, file: !142, line: 3123, type: !11, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1734 = !DILocation(line: 336, column: 35, scope: !1699)
!1735 = !DILocation(line: 336, column: 13, scope: !1699)
!1736 = !DILocation(line: 1917, column: 50, scope: !1737, inlinedAt: !1738)
!1737 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXs10_NtNtCscgRAwXFJnXP_4core3cmp5implsmNtB8_10PartialOrd2lt", scope: !1654, file: !1207, line: 1917, type: !11, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1738 = distinct !DILocation(line: 781, column: 12, scope: !1739, inlinedAt: !1740)
!1739 = distinct !DISubprogram(name: "spec_next<u32>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtB5_17RangeIteratorImpl9spec_nextCs7Ga9Brpi21q_11polars_lazy", scope: !1659, file: !1658, line: 780, type: !11, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1740 = distinct !DILocation(line: 866, column: 14, scope: !1741, inlinedAt: !1742)
!1741 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangemENtNtNtB7_6traits8iterator8Iterator4nextCs7Ga9Brpi21q_11polars_lazy", scope: !1663, file: !1658, line: 865, type: !11, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1742 = distinct !DILocation(line: 115, column: 18, scope: !1743, inlinedAt: !1747)
!1743 = !DILexicalBlockFile(scope: !1744, file: !1647, discriminator: 2)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1647, line: 115, column: 9)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !1647, line: 114, column: 9)
!1746 = distinct !DISubprogram(name: "spin_light", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light", scope: !1648, file: !1647, line: 113, type: !11, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1747 = distinct !DILocation(line: 360, column: 29, scope: !1699)
!1748 = !DILocation(line: 781, column: 12, scope: !1739, inlinedAt: !1740)
!1749 = !DILocation(line: 1077, column: 12, scope: !1750, inlinedAt: !1752)
!1750 = distinct !DISubprogram(name: "min<u32>", linkageName: "_RNvYmNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCs7Ga9Brpi21q_11polars_lazy", scope: !1751, file: !1207, line: 1073, type: !11, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1751 = !DINamespace(name: "Ord", scope: !1209)
!1752 = distinct !DILocation(line: 114, column: 36, scope: !1746, inlinedAt: !1747)
!1753 = !DILocation(line: 3558, column: 28, scope: !1669, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 115, column: 26, scope: !1745, inlinedAt: !1747)
!1755 = !DILocation(line: 25, column: 14, scope: !1756, inlinedAt: !1757)
!1756 = distinct !DISubprogram(name: "_mm_pause", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse29__mm_pause", scope: !1679, file: !1678, line: 22, type: !11, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1757 = distinct !DILocation(line: 287, column: 13, scope: !1758, inlinedAt: !1759)
!1758 = distinct !DISubprogram(name: "spin_loop", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint9spin_loop", scope: !1685, file: !1684, line: 270, type: !11, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1759 = distinct !DILocation(line: 116, column: 13, scope: !1744, inlinedAt: !1747)
!1760 = distinct !{!1760, !1688}
!1761 = !DILocation(line: 119, column: 23, scope: !1745, inlinedAt: !1747)
!1762 = !DILocation(line: 555, column: 18, scope: !1763, inlinedAt: !1765)
!1763 = distinct !DISubprogram(name: "get<u32>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellmE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1764, file: !1001, line: 552, type: !11, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1764 = !DINamespace(name: "Cell", scope: !1003)
!1765 = distinct !DILocation(line: 119, column: 33, scope: !1745, inlinedAt: !1747)
!1766 = !DILocation(line: 344, column: 24, scope: !1699)
!1767 = !DILocation(line: 3905, column: 24, scope: !1633, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 1732, column: 18, scope: !1769, inlinedAt: !1770)
!1769 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE4loadCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 1730, type: !11, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1770 = distinct !DILocation(line: 80, column: 34, scope: !1771, inlinedAt: !1774)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !939, line: 78, column: 9)
!1772 = distinct !DISubprogram(name: "wait_next<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE9wait_nextCs7Ga9Brpi21q_11polars_lazy", scope: !1773, file: !939, line: 77, type: !11, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1773 = !DINamespace(name: "Block", scope: !942)
!1774 = distinct !DILocation(line: 345, column: 45, scope: !1699)
!1775 = !DILocation(line: 81, column: 17, scope: !1776, inlinedAt: !1774)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !939, line: 80, column: 13)
!1777 = !DILocation(line: 127, column: 12, scope: !1646, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 84, column: 21, scope: !1776, inlinedAt: !1774)
!1779 = !DILocation(line: 132, column: 13, scope: !1646, inlinedAt: !1778)
!1780 = !DILocation(line: 1917, column: 50, scope: !1653, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 866, column: 14, scope: !1662, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 128, column: 22, scope: !1665, inlinedAt: !1778)
!1784 = !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !1782)
!1785 = !DILocation(line: 3558, column: 28, scope: !1669, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 128, column: 41, scope: !1646, inlinedAt: !1778)
!1787 = !DILocation(line: 25, column: 14, scope: !1677, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 287, column: 13, scope: !1683, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 129, column: 17, scope: !1666, inlinedAt: !1778)
!1790 = distinct !{!1790, !1688}
!1791 = !DILocation(line: 135, column: 23, scope: !1646, inlinedAt: !1778)
!1792 = !DILocation(line: 346, column: 46, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1699, file: !939, line: 345, column: 25)
!1794 = !DILocation(line: 2511, column: 13, scope: !1795, inlinedAt: !1797)
!1795 = distinct !DISubprogram(name: "wrapping_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_add", scope: !1796, file: !1670, line: 2510, type: !11, scopeLine: 2510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1796 = !DINamespace(name: "{impl#11}", scope: !1674)
!1797 = !DILocation(line: 346, column: 69, scope: !1793)
!1798 = !DILocation(line: 2447, column: 9, scope: !1625, inlinedAt: !1799)
!1799 = !DILocation(line: 2500, column: 16, scope: !1800, inlinedAt: !1801)
!1800 = !DILexicalBlockFile(scope: !1627, file: !142, discriminator: 6)
!1801 = !DILocation(line: 1732, column: 35, scope: !1802, inlinedAt: !1803)
!1802 = !DILexicalBlockFile(scope: !1629, file: !142, discriminator: 6)
!1803 = !DILocation(line: 347, column: 42, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1793, file: !939, line: 346, column: 25)
!1805 = !DILocation(line: 3904, column: 24, scope: !1633, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 1732, column: 18, scope: !1629, inlinedAt: !1803)
!1807 = !DILocation(line: 347, column: 29, scope: !1804)
!1808 = !DILocation(line: 3890, column: 24, scope: !1809, inlinedAt: !1810)
!1809 = distinct !DISubprogram(name: "atomic_store<*mut std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB6_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3885, type: !11, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1810 = distinct !DILocation(line: 1763, column: 13, scope: !1811, inlinedAt: !1812)
!1811 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE5storeCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 1760, type: !11, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1812 = !DILocation(line: 351, column: 41, scope: !1804)
!1813 = !DILocation(line: 3890, column: 24, scope: !1814, inlinedAt: !1815)
!1814 = distinct !DISubprogram(name: "atomic_store<usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storejECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3885, type: !11, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1815 = distinct !DILocation(line: 2898, column: 26, scope: !1816, inlinedAt: !1817)
!1816 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE5store", scope: !147, file: !142, line: 2896, type: !11, scopeLine: 2896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1817 = !DILocation(line: 352, column: 41, scope: !1804)
!1818 = !DILocation(line: 344, column: 21, scope: !1699)
!1819 = !DILocation(line: 355, column: 21, scope: !1699)
!1820 = !DILocation(line: 356, column: 21, scope: !1699)
!1821 = !DILocation(line: 0, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1699, file: !1238, discriminator: 0)
!1823 = distinct !DISubprogram(name: "disconnect_senders<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE18disconnect_sendersCs7Ga9Brpi21q_11polars_lazy", scope: !1132, file: !939, line: 512, type: !11, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1824 = !DILocation(line: 2447, column: 9, scope: !1825, inlinedAt: !1826)
!1825 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1826 = !DILocation(line: 3615, column: 24, scope: !1827, inlinedAt: !1828)
!1827 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !147, file: !142, line: 3614, type: !11, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1828 = !DILocation(line: 3295, column: 41, scope: !1829, inlinedAt: !1830)
!1829 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !147, file: !142, line: 3293, type: !11, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1830 = !DILocation(line: 513, column: 36, scope: !1823)
!1831 = !DILocation(line: 4135, column: 23, scope: !1832, inlinedAt: !1833)
!1832 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 4131, type: !11, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1833 = !DILocation(line: 3295, column: 26, scope: !1829, inlinedAt: !1830)
!1834 = !DILocation(line: 515, column: 12, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1823, file: !939, line: 513, column: 9)
!1836 = !DILocation(line: 516, column: 13, scope: !1835)
!1837 = !DILocation(line: 188, column: 25, scope: !1838, inlinedAt: !1839)
!1838 = distinct !DISubprogram(name: "disconnect", linkageName: "_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect", scope: !956, file: !955, line: 187, type: !11, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1839 = distinct !DILocation(line: 516, column: 28, scope: !1835)
!1840 = !DILocation(line: 188, column: 36, scope: !1838, inlinedAt: !1839)
!1841 = !{!1842}
!1842 = distinct !{!1842, !1843, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!1843 = distinct !{!1843, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy"}
!1844 = !DILocation(line: 188, column: 43, scope: !1838, inlinedAt: !1839)
!1845 = !DILocation(line: 1231, column: 15, scope: !965, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 188, column: 43, scope: !1838, inlinedAt: !1839)
!1847 = !{!1848}
!1848 = distinct !{!1848, !1843, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy: argument 1"}
!1849 = !DILocation(line: 1231, column: 9, scope: !965, inlinedAt: !1846)
!1850 = !DILocation(line: 1233, column: 17, scope: !965, inlinedAt: !1846)
!1851 = !{!1842, !1848}
!1852 = !DILocation(line: 1233, column: 23, scope: !973, inlinedAt: !1846)
!1853 = !DILocation(line: 1233, column: 86, scope: !965, inlinedAt: !1846)
!1854 = !DILocation(line: 1227, column: 5, scope: !965, inlinedAt: !1846)
!1855 = !DILocation(line: 0, scope: !1838, inlinedAt: !1839)
!1856 = !DILocation(line: 1232, column: 16, scope: !965, inlinedAt: !1846)
!1857 = !DILocation(line: 188, column: 50, scope: !1838, inlinedAt: !1839)
!1858 = !DILocation(line: 2447, column: 9, scope: !1859, inlinedAt: !1860)
!1859 = distinct !DISubprogram(name: "get<std::sync::mpmc::waker::Waker>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5WakerE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1860 = distinct !DILocation(line: 736, column: 39, scope: !1861, inlinedAt: !1862)
!1861 = distinct !DISubprogram(name: "deref_mut<std::sync::mpmc::waker::Waker>", linkageName: "_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCs7Ga9Brpi21q_11polars_lazy", scope: !1006, file: !216, line: 735, type: !11, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1862 = distinct !DILocation(line: 189, column: 9, scope: !1863, inlinedAt: !1839)
!1863 = distinct !DILexicalBlock(scope: !1838, file: !955, line: 188, column: 9)
!1864 = !{!1865}
!1865 = distinct !{!1865, !1866, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10disconnect: argument 0"}
!1866 = distinct !{!1866, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10disconnect"}
!1867 = !DILocation(line: 189, column: 15, scope: !1863, inlinedAt: !1839)
!1868 = !DILocation(line: 614, column: 9, scope: !1869, inlinedAt: !1870)
!1869 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy", scope: !1024, file: !1023, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1870 = distinct !DILocation(line: 609, column: 14, scope: !1871, inlinedAt: !1872)
!1871 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy", scope: !1024, file: !1023, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1872 = distinct !DILocation(line: 296, column: 20, scope: !1873, inlinedAt: !1874)
!1873 = distinct !DISubprogram(name: "ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3ptrCs7Ga9Brpi21q_11polars_lazy", scope: !1028, file: !1023, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1874 = distinct !DILocation(line: 1942, column: 18, scope: !1875, inlinedAt: !1876)
!1875 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6as_ptrCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 1939, type: !11, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1876 = distinct !DILocation(line: 1841, column: 76, scope: !1877, inlinedAt: !1878)
!1877 = distinct !DISubprogram(name: "as_slice<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8as_sliceCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 1824, type: !11, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1878 = distinct !DILocation(line: 3756, column: 14, scope: !1879, inlinedAt: !1880)
!1879 = distinct !DISubprogram(name: "deref<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1290, file: !1010, line: 3755, type: !11, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1880 = distinct !DILocation(line: 109, column: 22, scope: !1881, inlinedAt: !1882)
!1881 = distinct !DISubprogram(name: "disconnect", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10disconnect", scope: !981, file: !955, line: 108, type: !11, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1882 = distinct !DILocation(line: 189, column: 15, scope: !1863, inlinedAt: !1839)
!1883 = !DILocation(line: 1841, column: 86, scope: !1877, inlinedAt: !1878)
!1884 = !DILocation(line: 961, column: 18, scope: !1885, inlinedAt: !1886)
!1885 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry3addCs7Ga9Brpi21q_11polars_lazy", scope: !1069, file: !1068, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1886 = distinct !DILocation(line: 102, column: 78, scope: !1887, inlinedAt: !1890)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !1301, line: 98, column: 9)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !1301, line: 97, column: 9)
!1889 = distinct !DISubprogram(name: "new<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3newCs7Ga9Brpi21q_11polars_lazy", scope: !1304, file: !1301, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1890 = distinct !DILocation(line: 1041, column: 9, scope: !1891, inlinedAt: !1892)
!1891 = distinct !DISubprogram(name: "iter<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry4iterCs7Ga9Brpi21q_11polars_lazy", scope: !1309, file: !1308, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1892 = distinct !DILocation(line: 109, column: 37, scope: !1881, inlinedAt: !1882)
!1893 = !DILocation(line: 1717, column: 9, scope: !1894, inlinedAt: !1895)
!1894 = distinct !DISubprogram(name: "eq<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtB9_3cmp9PartialEq2eqCs7Ga9Brpi21q_11polars_lazy", scope: !1313, file: !126, line: 1716, type: !11, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1895 = distinct !DILocation(line: 180, column: 28, scope: !1896, inlinedAt: !1899)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !1316, line: 162, column: 17)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !1316, line: 161, column: 17)
!1898 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ga9Brpi21q_11polars_lazy", scope: !1319, file: !1316, line: 157, type: !11, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1899 = distinct !DILocation(line: 109, column: 22, scope: !1900, inlinedAt: !1882)
!1900 = !DILexicalBlockFile(scope: !1901, file: !955, discriminator: 4)
!1901 = distinct !DILexicalBlock(scope: !1881, file: !955, line: 109, column: 9)
!1902 = !DILocation(line: 180, column: 28, scope: !1896, inlinedAt: !1899)
!1903 = !DILocation(line: 659, column: 28, scope: !1904, inlinedAt: !1905)
!1904 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3addCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 651, type: !11, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1905 = distinct !DILocation(line: 185, column: 40, scope: !1896, inlinedAt: !1899)
!1906 = !DILocation(line: 110, column: 25, scope: !1907, inlinedAt: !1882)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !955, line: 109, column: 9)
!1908 = !DILocation(line: 2447, column: 9, scope: !1149, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 3615, column: 24, scope: !1151, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 3065, column: 55, scope: !1153, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 92, column: 14, scope: !1155, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 110, column: 25, scope: !1907, inlinedAt: !1882)
!1913 = !DILocation(line: 4010, column: 17, scope: !1159, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 3065, column: 26, scope: !1153, inlinedAt: !1911)
!1915 = !DILocation(line: 110, column: 16, scope: !1907, inlinedAt: !1882)
!1916 = !DILocation(line: 120, column: 14, scope: !1881, inlinedAt: !1882)
!1917 = !DILocation(line: 444, column: 20, scope: !1918, inlinedAt: !1919)
!1918 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mpmc::context::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1919 = distinct !DILocation(line: 2110, column: 27, scope: !1920, inlinedAt: !1921)
!1920 = distinct !DISubprogram(name: "inner<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !132, file: !131, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1921 = distinct !DILocation(line: 2428, column: 15, scope: !1922, inlinedAt: !1923)
!1922 = distinct !DISubprogram(name: "deref<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1544, file: !131, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1923 = distinct !DILocation(line: 151, column: 9, scope: !1924, inlinedAt: !1925)
!1924 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context6unpark", scope: !1156, file: !852, line: 150, type: !11, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1925 = distinct !DILocation(line: 116, column: 26, scope: !1907, inlinedAt: !1882)
!1926 = !DILocation(line: 444, column: 20, scope: !1927, inlinedAt: !1928)
!1927 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::thread::thread::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1928 = distinct !DILocation(line: 2110, column: 27, scope: !1929, inlinedAt: !1931)
!1929 = !DILexicalBlockFile(scope: !1930, file: !131, discriminator: 2)
!1930 = distinct !DISubprogram(name: "inner<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtBM_5alloc6SystemE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !132, file: !131, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1931 = distinct !DILocation(line: 2428, column: 15, scope: !1932, inlinedAt: !1934)
!1932 = !DILexicalBlockFile(scope: !1933, file: !131, discriminator: 2)
!1933 = distinct !DISubprogram(name: "deref<std::thread::thread::Inner, std::alloc::System>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1544, file: !131, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1934 = distinct !DILocation(line: 1366, column: 38, scope: !1935, inlinedAt: !1936)
!1935 = distinct !DISubprogram(name: "as_ref<alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3pinINtB5_3PinINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std6thread6thread5InnerNtNtB1i_5alloc6SystemEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !1559, file: !1558, line: 1361, type: !11, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1936 = distinct !DILocation(line: 184, column: 20, scope: !1937, inlinedAt: !1938)
!1937 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMs_NtNtCsh8eZTKRCwoO_3std6thread6threadNtB4_6Thread6unpark", scope: !1564, file: !1563, line: 183, type: !11, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1938 = distinct !DILocation(line: 151, column: 27, scope: !1924, inlinedAt: !1925)
!1939 = !DILocation(line: 2447, column: 9, scope: !1940, inlinedAt: !1941)
!1940 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align4<u32>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align4mEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1941 = distinct !DILocation(line: 3615, column: 24, scope: !1942, inlinedAt: !1943)
!1942 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE6as_ptr", scope: !147, file: !142, line: 3614, type: !11, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1943 = distinct !DILocation(line: 2927, column: 43, scope: !1944, inlinedAt: !1945)
!1944 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE4swap", scope: !147, file: !142, line: 2925, type: !11, scopeLine: 2925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1945 = distinct !DILocation(line: 96, column: 23, scope: !1946, inlinedAt: !1947)
!1946 = distinct !DISubprogram(name: "unpark", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync14thread_parking5futexNtB2_6Parker6unpark", scope: !1576, file: !1575, line: 89, type: !11, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1947 = distinct !DILocation(line: 184, column: 38, scope: !1937, inlinedAt: !1938)
!1948 = !DILocation(line: 3922, column: 24, scope: !1949, inlinedAt: !1950)
!1949 = distinct !DISubprogram(name: "atomic_swap<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_swapmECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3916, type: !11, scopeLine: 3916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1950 = distinct !DILocation(line: 2927, column: 26, scope: !1944, inlinedAt: !1945)
!1951 = !DILocation(line: 96, column: 12, scope: !1946, inlinedAt: !1947)
!1952 = !DILocation(line: 97, column: 13, scope: !1946, inlinedAt: !1947)
!1953 = !DILocation(line: 192, column: 5, scope: !1838, inlinedAt: !1839)
!1954 = !DILocation(line: 3024, column: 19, scope: !1955, inlinedAt: !1956)
!1955 = distinct !DISubprogram(name: "len<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3lenCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 3023, type: !11, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1956 = distinct !DILocation(line: 3049, column: 14, scope: !1957, inlinedAt: !1958)
!1957 = distinct !DISubprogram(name: "is_empty<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8is_emptyCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 3048, type: !11, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!1958 = distinct !DILocation(line: 191, column: 36, scope: !1863, inlinedAt: !1839)
!1959 = !DILocation(line: 3029, column: 37, scope: !1960, inlinedAt: !1956)
!1960 = distinct !DILexicalBlock(scope: !1955, file: !1010, line: 3024, column: 9)
!1961 = !DILocation(line: 3029, column: 18, scope: !1960, inlinedAt: !1956)
!1962 = !DILocation(line: 191, column: 20, scope: !1863, inlinedAt: !1839)
!1963 = !DILocation(line: 3024, column: 19, scope: !1955, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 3049, column: 14, scope: !1965, inlinedAt: !1966)
!1965 = !DILexicalBlockFile(scope: !1957, file: !1010, discriminator: 2)
end_hunk_2
begin_hunk_3_@llvm.memset.p0.i64
!2480 = distinct !DISubprogram(name: "atomic_store<*mut ()>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic12atomic_storeOuECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3885, type: !11, scopeLine: 3885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2481 = distinct !DILocation(line: 1763, column: 13, scope: !2477, inlinedAt: !2478)
!2482 = !DILocation(line: 57, column: 31, scope: !2469, inlinedAt: !2390)
!2483 = !DILocation(line: 1015, column: 18, scope: !2399, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 48, column: 30, scope: !2485, inlinedAt: !2486)
!2485 = !DILexicalBlockFile(scope: !2401, file: !852, discriminator: 2)
!2486 = distinct !DILocation(line: 57, column: 31, scope: !2469, inlinedAt: !2390)
!2487 = !DILocation(line: 49, column: 13, scope: !2488, inlinedAt: !2486)
!2488 = distinct !DILexicalBlock(scope: !2401, file: !852, line: 48, column: 13)
!2489 = !DILocation(line: 437, column: 9, scope: !2490, inlinedAt: !2491)
!2490 = distinct !DISubprogram(name: "set<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtB7_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEE3setCs7Ga9Brpi21q_11polars_lazy", scope: !1764, file: !1001, line: 433, type: !11, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2491 = distinct !DILocation(line: 58, column: 26, scope: !2492, inlinedAt: !2390)
!2492 = distinct !DILexicalBlock(scope: !2469, file: !852, line: 57, column: 21)
!2493 = !DILocation(line: 929, column: 22, scope: !2383, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 513, column: 9, scope: !2495, inlinedAt: !2496)
!2495 = !DILexicalBlockFile(scope: !2385, file: !1001, discriminator: 2)
!2496 = distinct !DILocation(line: 437, column: 14, scope: !2490, inlinedAt: !2491)
!2497 = !DILocation(line: 930, column: 49, scope: !2498, inlinedAt: !2494)
!2498 = distinct !DILexicalBlock(scope: !2383, file: !397, line: 929, column: 9)
!2499 = !DILocation(line: 810, column: 1, scope: !2500, inlinedAt: !2501)
!2500 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<std::sync::mpmc::context::Context>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy", scope: !9, file: !8, line: 810, type: !11, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2501 = distinct !DILocation(line: 437, column: 26, scope: !2490, inlinedAt: !2491)
!2502 = !DILocation(line: 3956, column: 24, scope: !903, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 3193, column: 26, scope: !905, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 2814, column: 32, scope: !899, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 810, column: 1, scope: !892, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 810, column: 1, scope: !886, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 810, column: 1, scope: !2500, inlinedAt: !2501)
!2508 = !{!2509, !2511, !2513, !2515, !2342}
!2509 = distinct !{!2509, !2510, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2510 = distinct !{!2510, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2511 = distinct !{!2511, !2512, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2512 = distinct !{!2512, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!2513 = distinct !{!2513, !2514, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2514 = distinct !{!2514, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!2515 = distinct !{!2515, !2516, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2516 = distinct !{!2516, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextEECs7Ga9Brpi21q_11polars_lazy"}
!2517 = !DILocation(line: 2814, column: 12, scope: !899, inlinedAt: !2505)
!2518 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 64, column: 9, scope: !899, inlinedAt: !2505)
!2520 = !DILocation(line: 2857, column: 18, scope: !899, inlinedAt: !2505)
!2521 = !DILocation(line: 437, column: 26, scope: !2490, inlinedAt: !2491)
!2522 = !DILocation(line: 60, column: 17, scope: !2389, inlinedAt: !2390)
!2523 = !DILocation(line: 61, column: 13, scope: !2389, inlinedAt: !2390)
!2524 = !DILocation(line: 3956, column: 24, scope: !903, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 3193, column: 26, scope: !905, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 2814, column: 32, scope: !899, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 810, column: 1, scope: !892, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 810, column: 1, scope: !886, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 60, column: 17, scope: !2389, inlinedAt: !2390)
!2530 = !{!2531, !2533, !2535, !2342}
!2531 = distinct !{!2531, !2532, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2532 = distinct !{!2532, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs7Ga9Brpi21q_11polars_lazy"}
!2533 = distinct !{!2533, !2534, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2534 = distinct !{!2534, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEECs7Ga9Brpi21q_11polars_lazy"}
!2535 = distinct !{!2535, !2536, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2536 = distinct !{!2536, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context7ContextECs7Ga9Brpi21q_11polars_lazy"}
!2537 = !DILocation(line: 2814, column: 12, scope: !899, inlinedAt: !2527)
!2538 = !DILocation(line: 4387, column: 24, scope: !152, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 64, column: 9, scope: !899, inlinedAt: !2527)
!2540 = !DILocation(line: 2857, column: 18, scope: !899, inlinedAt: !2527)
!2541 = !DILocation(line: 1622, column: 23, scope: !2542, inlinedAt: !2544)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !196, line: 1622, column: 13)
!2543 = distinct !DISubprogram(name: "unwrap_or_else<(), std::thread::local::AccessError, std::sync::mpmc::context::{impl#0}::with::{closure_env#2}<std::sync::mpmc::list::{impl#3}::recv::{closure_env#1}<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, ()>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultuNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE14unwrap_or_elseNCINvMNtNtNtBP_4sync4mpmc7contextNtB1U_7Context4withNCNvMs1_NtB1W_4listINtB2M_7ChannelIBw_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4recvs_0uEs0_0ECs7Ga9Brpi21q_11polars_lazy", scope: !197, file: !196, line: 1616, type: !11, scopeLine: 1616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2544 = distinct !DILocation(line: 62, column: 14, scope: !2364, inlinedAt: !2340)
!2545 = !DILocation(line: 63, column: 5, scope: !2339, inlinedAt: !2340)
!2546 = !DILocation(line: 49, column: 26, scope: !2547, inlinedAt: !2551)
!2547 = distinct !DISubprogram(name: "as_inner", linkageName: "_RNvMs6_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11Nanoseconds8as_inner", scope: !2549, file: !2548, line: 46, type: !11, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2548 = !DIFile(filename: "library/core/src/num/niche_types.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b3871eb21e61251a8509e6d07911f9fb")
!2549 = !DINamespace(name: "Nanoseconds", scope: !2550)
!2550 = !DINamespace(name: "niche_types", scope: !1674)
!2551 = !DILocation(line: 70, column: 32, scope: !2552, inlinedAt: !2554)
!2552 = distinct !DISubprogram(name: "cmp", linkageName: "_RNvXsa_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp3Ord3cmp", scope: !2553, file: !2548, line: 69, type: !11, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2553 = !DINamespace(name: "{impl#12}", scope: !2550)
!2554 = !DILocation(line: 77, column: 22, scope: !2555, inlinedAt: !2557)
!2555 = distinct !DISubprogram(name: "partial_cmp", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core3num11niche_typesNtB5_11NanosecondsNtNtB9_3cmp10PartialOrd11partial_cmp", scope: !2556, file: !2548, line: 76, type: !11, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2556 = !DINamespace(name: "{impl#13}", scope: !2550)
!2557 = !DILocation(line: 25, column: 38, scope: !2558, inlinedAt: !2332)
!2558 = !DILexicalBlockFile(scope: !2331, file: !1189, discriminator: 2)
!2559 = !DILocation(line: 539, column: 9, scope: !2560, inlinedAt: !2561)
!2560 = distinct !DISubprogram(name: "is_ge", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3cmpNtB2_8Ordering5is_ge", scope: !1214, file: !1207, line: 538, type: !11, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2561 = !DILocation(line: 250, column: 5, scope: !2562, inlinedAt: !2563)
!2562 = distinct !DISubprogram(name: "call_once<fn(core::cmp::Ordering) -> bool, (core::cmp::Ordering)>", linkageName: "_RNvYNvMNtCscgRAwXFJnXP_4core3cmpNtB5_8Ordering5is_geINtNtNtB7_3ops8function6FnOnceTBu_EE9call_onceCs7Ga9Brpi21q_11polars_lazy", scope: !167, file: !166, line: 250, type: !11, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2563 = !DILocation(line: 664, column: 24, scope: !2564, inlinedAt: !2566)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !863, line: 664, column: 13)
!2565 = distinct !DISubprogram(name: "is_some_and<core::cmp::Ordering, fn(core::cmp::Ordering) -> bool>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtB5_3cmp8OrderingE11is_some_andNvMBK_BI_5is_geECs7Ga9Brpi21q_11polars_lazy", scope: !864, file: !863, line: 661, type: !11, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2566 = !DILocation(line: 1466, column: 33, scope: !2337, inlinedAt: !2329)
!2567 = !DILocation(line: 437, column: 28, scope: !2319)
!2568 = !DILocation(line: 0, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2316, file: !1238, discriminator: 0)
!2570 = !DILocation(line: 466, column: 5, scope: !2310)
!2571 = !DILocation(line: 466, column: 6, scope: !2310)
!2572 = !DILocation(line: 968, column: 23, scope: !2573, inlinedAt: !2325)
!2573 = distinct !DILexicalBlock(scope: !2324, file: !196, line: 968, column: 13)
!2574 = !DILocation(line: 968, column: 32, scope: !2324, inlinedAt: !2325)
!2575 = !DILocation(line: 967, column: 16, scope: !2324, inlinedAt: !2325)
!2576 = !DILocation(line: 970, column: 5, scope: !2324, inlinedAt: !2325)
!2577 = !DILocation(line: 431, column: 87, scope: !2316)
!2578 = distinct !DISubprogram(name: "send<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE4sendCs7Ga9Brpi21q_11polars_lazy", scope: !1132, file: !939, line: 404, type: !11, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2579 = !DILocation(line: 2447, column: 9, scope: !2580, inlinedAt: !2581)
!2580 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2581 = distinct !DILocation(line: 3615, column: 24, scope: !2582, inlinedAt: !2583)
!2582 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !147, file: !142, line: 3614, type: !11, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2583 = distinct !DILocation(line: 2870, column: 43, scope: !2584, inlinedAt: !2585)
!2584 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE4load", scope: !147, file: !142, line: 2868, type: !11, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2585 = distinct !DILocation(line: 177, column: 40, scope: !2586, inlinedAt: !2588)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !939, line: 176, column: 9)
!2587 = distinct !DISubprogram(name: "start_send<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy", scope: !1132, file: !939, line: 175, type: !11, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2588 = distinct !DILocation(line: 410, column: 22, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2578, file: !939, line: 409, column: 9)
!2590 = !DILocation(line: 3905, column: 24, scope: !229, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 2870, column: 26, scope: !2584, inlinedAt: !2585)
!2592 = !{!2593}
!2593 = distinct !{!2593, !2594, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2594 = distinct !{!2594, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE10start_sendCs7Ga9Brpi21q_11polars_lazy"}
!2595 = !DILocation(line: 2447, column: 9, scope: !2596, inlinedAt: !2597)
!2596 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<*mut std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8OINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB7_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2597 = distinct !DILocation(line: 2500, column: 16, scope: !2598, inlinedAt: !2599)
!2598 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE6as_ptrCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 2499, type: !11, scopeLine: 2499, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2599 = distinct !DILocation(line: 1732, column: 35, scope: !2600, inlinedAt: !2601)
!2600 = distinct !DISubprogram(name: "load<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE4loadCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 1730, type: !11, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2601 = distinct !DILocation(line: 178, column: 41, scope: !2602, inlinedAt: !2588)
!2602 = distinct !DILexicalBlock(scope: !2586, file: !939, line: 177, column: 9)
!2603 = !DILocation(line: 3905, column: 24, scope: !1633, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1732, column: 18, scope: !2600, inlinedAt: !2601)
!2605 = !DILocation(line: 183, column: 16, scope: !2606, inlinedAt: !2588)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !939, line: 179, column: 9)
!2607 = distinct !DILexicalBlock(scope: !2602, file: !939, line: 178, column: 9)
!2608 = !DILocation(line: 411, column: 18, scope: !2589)
!2609 = !DILocation(line: 411, column: 36, scope: !2589)
!2610 = !DILocation(line: 265, column: 12, scope: !2611, inlinedAt: !2612)
!2611 = distinct !DISubprogram(name: "write<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy", scope: !1132, file: !939, line: 263, type: !103, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2612 = distinct !DILocation(line: 411, column: 23, scope: !2589)
!2613 = !DILocation(line: 189, column: 26, scope: !2606, inlinedAt: !2588)
!2614 = !DILocation(line: 192, column: 16, scope: !2615, inlinedAt: !2588)
!2615 = distinct !DILexicalBlock(scope: !2606, file: !939, line: 189, column: 13)
!2616 = !DILocation(line: 135, column: 23, scope: !1646, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 193, column: 25, scope: !2615, inlinedAt: !2588)
!2618 = !DILocation(line: 127, column: 12, scope: !1646, inlinedAt: !2617)
!2619 = !DILocation(line: 132, column: 13, scope: !1646, inlinedAt: !2617)
!2620 = !DILocation(line: 1917, column: 50, scope: !1653, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 866, column: 14, scope: !1662, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 128, column: 22, scope: !1665, inlinedAt: !2617)
!2624 = !DILocation(line: 781, column: 12, scope: !1657, inlinedAt: !2622)
!2625 = !DILocation(line: 3558, column: 28, scope: !1669, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 128, column: 41, scope: !1646, inlinedAt: !2617)
!2627 = !DILocation(line: 25, column: 14, scope: !1677, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 287, column: 13, scope: !1683, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 129, column: 17, scope: !1666, inlinedAt: !2617)
!2630 = !DILocation(line: 201, column: 16, scope: !2615, inlinedAt: !2588)
!2631 = distinct !{!2631, !1688}
!2632 = !DILocation(line: 3905, column: 24, scope: !229, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 2870, column: 26, scope: !2584, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 194, column: 40, scope: !2615, inlinedAt: !2588)
!2635 = !DILocation(line: 3905, column: 24, scope: !1633, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1732, column: 18, scope: !2600, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 195, column: 41, scope: !2615, inlinedAt: !2588)
!2638 = !DILocation(line: 0, scope: !2607, inlinedAt: !2588)
!2639 = !DILocation(line: 207, column: 16, scope: !2615, inlinedAt: !2588)
!2640 = !DILocation(line: 341, column: 9, scope: !2641, inlinedAt: !2643)
!2641 = distinct !DISubprogram(name: "new_zeroed<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE10new_zeroedCs7Ga9Brpi21q_11polars_lazy", scope: !2642, file: !406, line: 340, type: !11, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2642 = !DINamespace(name: "{impl#0}", scope: !409)
!2643 = distinct !DILocation(line: 73, column: 18, scope: !2644, inlinedAt: !2645)
!2644 = distinct !DISubprogram(name: "new<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>", linkageName: "_RNvMs_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB4_5BlockINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE3newCs7Ga9Brpi21q_11polars_lazy", scope: !1773, file: !939, line: 66, type: !11, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2645 = distinct !DILocation(line: 202, column: 35, scope: !2615, inlinedAt: !2588)
!2646 = !DILocation(line: 341, column: 9, scope: !2641, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 73, column: 18, scope: !2648, inlinedAt: !2649)
!2648 = !DILexicalBlockFile(scope: !2644, file: !939, discriminator: 2)
!2649 = distinct !DILocation(line: 208, column: 41, scope: !2615, inlinedAt: !2588)
!2650 = !DILocation(line: 3998, column: 17, scope: !2651, inlinedAt: !2652)
!2651 = distinct !DISubprogram(name: "atomic_compare_exchange<*mut std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB6_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3969, type: !11, scopeLine: 3969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2652 = distinct !DILocation(line: 1920, column: 18, scope: !2653, inlinedAt: !2654)
!2653 = distinct !DISubprogram(name: "compare_exchange<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE16compare_exchangeCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 1912, type: !11, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2654 = distinct !DILocation(line: 213, column: 22, scope: !2655, inlinedAt: !2588)
!2655 = distinct !DILexicalBlock(scope: !2615, file: !939, line: 208, column: 17)
!2656 = !DILocation(line: 210, column: 20, scope: !2655, inlinedAt: !2588)
!2657 = !DILocation(line: 3890, column: 24, scope: !1809, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1763, column: 13, scope: !2659, inlinedAt: !2660)
!2659 = distinct !DISubprogram(name: "store<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicOINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE5storeCs7Ga9Brpi21q_11polars_lazy", scope: !147, file: !142, line: 1760, type: !11, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2660 = distinct !DILocation(line: 221, column: 37, scope: !2655, inlinedAt: !2588)
!2661 = !DILocation(line: 3896, column: 2, scope: !1809, inlinedAt: !2658)
!2662 = !DILocation(line: 810, column: 1, scope: !2663, inlinedAt: !2664)
!2663 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::boxed::Box<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECs7Ga9Brpi21q_11polars_lazy", scope: !9, file: !8, line: 810, type: !103, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2664 = distinct !DILocation(line: 224, column: 21, scope: !2655, inlinedAt: !2588)
!2665 = !DILocation(line: 128, column: 14, scope: !424, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 229, column: 22, scope: !428, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 344, column: 9, scope: !431, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 462, column: 23, scope: !433, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1921, column: 24, scope: !2097, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 810, column: 1, scope: !2101, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 810, column: 1, scope: !2663, inlinedAt: !2664)
!2672 = !DILocation(line: 0, scope: !2602, inlinedAt: !2588)
!2673 = !DILocation(line: 231, column: 28, scope: !2615, inlinedAt: !2588)
!2674 = !DILocation(line: 4084, column: 17, scope: !1731, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 3130, column: 21, scope: !2676, inlinedAt: !2677)
!2676 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE21compare_exchange_weak", scope: !147, file: !142, line: 3123, type: !11, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2677 = distinct !DILocation(line: 234, column: 35, scope: !2678, inlinedAt: !2588)
!2678 = distinct !DILexicalBlock(scope: !2615, file: !939, line: 231, column: 13)
!2679 = !DILocation(line: 234, column: 13, scope: !2678, inlinedAt: !2588)
!2680 = !DILocation(line: 1917, column: 50, scope: !1737, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 781, column: 12, scope: !1739, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 866, column: 14, scope: !1741, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 115, column: 18, scope: !1743, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 254, column: 29, scope: !2678, inlinedAt: !2588)
!2685 = !DILocation(line: 781, column: 12, scope: !1739, inlinedAt: !2682)
!2686 = !DILocation(line: 1077, column: 12, scope: !1750, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 114, column: 36, scope: !1746, inlinedAt: !2684)
!2688 = !DILocation(line: 3558, column: 28, scope: !1669, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 115, column: 26, scope: !1745, inlinedAt: !2684)
!2690 = !DILocation(line: 25, column: 14, scope: !1756, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 287, column: 13, scope: !1758, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 116, column: 13, scope: !1744, inlinedAt: !2684)
!2693 = distinct !{!2693, !1688}
!2694 = !DILocation(line: 119, column: 23, scope: !1745, inlinedAt: !2684)
!2695 = !DILocation(line: 555, column: 18, scope: !1763, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 119, column: 33, scope: !1745, inlinedAt: !2684)
!2697 = !DILocation(line: 242, column: 24, scope: !2678, inlinedAt: !2588)
!2698 = !DILocation(line: 1014, column: 15, scope: !2699, inlinedAt: !2700)
!2699 = distinct !DISubprogram(name: "unwrap<alloc::boxed::Box<std::sync::mpmc::list::Block<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, alloc::alloc::Global>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEE6unwrapCs7Ga9Brpi21q_11polars_lazy", scope: !864, file: !863, line: 1013, type: !11, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2700 = distinct !DILocation(line: 243, column: 67, scope: !2678, inlinedAt: !2588)
!2701 = !DILocation(line: 1014, column: 9, scope: !2699, inlinedAt: !2700)
!2702 = !DILocation(line: 1016, column: 21, scope: !2699, inlinedAt: !2700)
!2703 = !DILocation(line: 3890, column: 24, scope: !1809, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1763, column: 13, scope: !2659, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 244, column: 41, scope: !2706, inlinedAt: !2588)
!2706 = distinct !DILexicalBlock(scope: !2678, file: !939, line: 243, column: 25)
!2707 = !DILocation(line: 3939, column: 24, scope: !2708, inlinedAt: !2709)
!2708 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3933, type: !11, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2709 = distinct !DILocation(line: 3162, column: 26, scope: !2710, inlinedAt: !2711)
!2710 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !147, file: !142, line: 3160, type: !11, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2711 = distinct !DILocation(line: 245, column: 41, scope: !2706, inlinedAt: !2588)
!2712 = !DILocation(line: 246, column: 25, scope: !2706, inlinedAt: !2588)
!2713 = !DILocation(line: 3890, column: 24, scope: !1809, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1763, column: 13, scope: !2659, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 246, column: 39, scope: !2706, inlinedAt: !2588)
!2716 = !DILocation(line: 3905, column: 24, scope: !229, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 2870, column: 26, scope: !2584, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 0, scope: !2615, inlinedAt: !2588)
!2719 = !DILocation(line: 3905, column: 24, scope: !1633, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1732, column: 18, scope: !2600, inlinedAt: !2718)
!2721 = !DILocation(line: 810, column: 1, scope: !2663, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 260, column: 5, scope: !2607, inlinedAt: !2588)
!2723 = !DILocation(line: 128, column: 14, scope: !424, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 229, column: 22, scope: !428, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 344, column: 9, scope: !431, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 462, column: 23, scope: !433, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1921, column: 24, scope: !2097, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 810, column: 1, scope: !2101, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 810, column: 1, scope: !2663, inlinedAt: !2722)
!2730 = !DILocation(line: 0, scope: !2578)
!2731 = !DILocation(line: 0, scope: !2606, inlinedAt: !2588)
!2732 = !DILocation(line: 810, column: 1, scope: !2663, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 260, column: 5, scope: !2607, inlinedAt: !2588)
!2734 = !DILocation(line: 128, column: 14, scope: !424, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 229, column: 22, scope: !428, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 344, column: 9, scope: !431, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 462, column: 23, scope: !433, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1921, column: 24, scope: !2097, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 810, column: 1, scope: !2101, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 810, column: 1, scope: !2663, inlinedAt: !2733)
!2741 = !{!2742}
!2742 = distinct !{!2742, !2743, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2743 = distinct !{!2743, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy"}
!2744 = !DILocation(line: 411, column: 23, scope: !2589)
!2745 = !{!2746}
!2746 = distinct !{!2746, !2743, !"_RNvMs1_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4listINtB5_7ChannelINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy: argument 1"}
!2747 = !DILocation(line: 252, column: 39, scope: !2748, inlinedAt: !2749)
!2748 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB9_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE13get_uncheckedCs7Ga9Brpi21q_11polars_lazy", scope: !2142, file: !843, line: 239, type: !11, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2749 = distinct !DILocation(line: 646, column: 26, scope: !2750, inlinedAt: !2751)
!2750 = distinct !DISubprogram(name: "get_unchecked<std::sync::mpmc::list::Slot<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc4list4SlotINtNtB5_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE13get_uncheckedjECs7Ga9Brpi21q_11polars_lazy", scope: !1309, file: !1308, line: 639, type: !11, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2751 = distinct !DILocation(line: 273, column: 39, scope: !2752, inlinedAt: !2612)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !939, line: 271, column: 9)
!2753 = distinct !DILexicalBlock(scope: !2611, file: !939, line: 270, column: 9)
!2754 = !DILocation(line: 252, column: 13, scope: !2748, inlinedAt: !2749)
!2755 = !DILocation(line: 253, column: 13, scope: !2748, inlinedAt: !2749)
!2756 = !DILocation(line: 1921, column: 41, scope: !2757, inlinedAt: !2758)
!2757 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr5writeINtNtNtB4_3mem12maybe_uninit11MaybeUninitINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECs7Ga9Brpi21q_11polars_lazy", scope: !9, file: !8, line: 1898, type: !11, scopeLine: 1898, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2758 = distinct !DILocation(line: 1418, column: 18, scope: !2759, inlinedAt: !2760)
!2759 = distinct !DISubprogram(name: "write<core::mem::maybe_uninit::MaybeUninit<core::result::Result<polars_core::frame::dataframe::DataFrame, polars_error::PolarsError>>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitINtNtB6_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE5writeCs7Ga9Brpi21q_11polars_lazy", scope: !1069, file: !1068, line: 1413, type: !11, scopeLine: 1413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2760 = distinct !DILocation(line: 274, column: 28, scope: !2761, inlinedAt: !2612)
!2761 = distinct !DILexicalBlock(scope: !2752, file: !939, line: 273, column: 13)
!2762 = !DILocation(line: 2447, column: 9, scope: !2763, inlinedAt: !2764)
!2763 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align8<usize>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align8jEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2764 = distinct !DILocation(line: 3615, column: 24, scope: !2765, inlinedAt: !2766)
!2765 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE6as_ptr", scope: !147, file: !142, line: 3614, type: !11, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2766 = distinct !DILocation(line: 3295, column: 41, scope: !2767, inlinedAt: !2768)
!2767 = distinct !DISubprogram(name: "fetch_or", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE8fetch_or", scope: !147, file: !142, line: 3293, type: !11, scopeLine: 3293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2768 = distinct !DILocation(line: 275, column: 24, scope: !2761, inlinedAt: !2612)
!2769 = !DILocation(line: 4137, column: 24, scope: !2770, inlinedAt: !2771)
!2770 = distinct !DISubprogram(name: "atomic_or<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic9atomic_orjjECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 4131, type: !11, scopeLine: 4131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2771 = distinct !DILocation(line: 3295, column: 26, scope: !2767, inlinedAt: !2768)
!2772 = !{!2742, !2746}
!2773 = !DILocation(line: 2447, column: 9, scope: !2774, inlinedAt: !2775)
!2774 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align1<u8>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align1hEE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2775 = distinct !DILocation(line: 741, column: 37, scope: !2776, inlinedAt: !2777)
!2776 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4load", scope: !147, file: !142, line: 738, type: !11, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2777 = distinct !DILocation(line: 172, column: 27, scope: !2778, inlinedAt: !2779)
!2778 = distinct !DISubprogram(name: "notify", linkageName: "_RNvMs0_NtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify", scope: !956, file: !955, line: 171, type: !11, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2779 = distinct !DILocation(line: 279, column: 24, scope: !2752, inlinedAt: !2612)
!2780 = !DILocation(line: 3906, column: 23, scope: !2781, inlinedAt: !2782)
!2781 = distinct !DISubprogram(name: "atomic_load<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadhECs7Ga9Brpi21q_11polars_lazy", scope: !143, file: !142, line: 3900, type: !11, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2782 = distinct !DILocation(line: 741, column: 18, scope: !2776, inlinedAt: !2777)
!2783 = !DILocation(line: 172, column: 13, scope: !2778, inlinedAt: !2779)
!2784 = !DILocation(line: 279, column: 9, scope: !2752, inlinedAt: !2612)
!2785 = !DILocation(line: 173, column: 29, scope: !2778, inlinedAt: !2779)
!2786 = !DILocation(line: 173, column: 40, scope: !2778, inlinedAt: !2779)
!2787 = !{!2788}
!2788 = distinct !{!2788, !2789, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2789 = distinct !{!2789, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy"}
!2790 = !DILocation(line: 173, column: 47, scope: !2778, inlinedAt: !2779)
!2791 = !DILocation(line: 1231, column: 15, scope: !965, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 173, column: 47, scope: !2778, inlinedAt: !2779)
!2793 = !{!2794, !2742, !2746}
!2794 = distinct !{!2794, !2789, !"_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs7Ga9Brpi21q_11polars_lazy: argument 1"}
!2795 = !DILocation(line: 1231, column: 9, scope: !965, inlinedAt: !2792)
!2796 = !DILocation(line: 1233, column: 17, scope: !965, inlinedAt: !2792)
!2797 = !{!2788, !2794, !2742, !2746}
!2798 = !DILocation(line: 1233, column: 23, scope: !973, inlinedAt: !2792)
!2799 = !{!2788, !2742, !2746}
!2800 = !DILocation(line: 1233, column: 86, scope: !965, inlinedAt: !2792)
!2801 = !DILocation(line: 1227, column: 5, scope: !965, inlinedAt: !2792)
!2802 = !DILocation(line: 182, column: 9, scope: !2778, inlinedAt: !2779)
!2803 = !DILocation(line: 1232, column: 16, scope: !965, inlinedAt: !2792)
!2804 = !DILocation(line: 173, column: 54, scope: !2778, inlinedAt: !2779)
!2805 = !DILocation(line: 3906, column: 23, scope: !2781, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 741, column: 18, scope: !2776, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 174, column: 31, scope: !2808, inlinedAt: !2779)
!2808 = distinct !DILexicalBlock(scope: !2778, file: !955, line: 173, column: 13)
!2809 = !DILocation(line: 174, column: 17, scope: !2808, inlinedAt: !2779)
!2810 = !DILocation(line: 175, column: 17, scope: !2808, inlinedAt: !2779)
!2811 = !DILocation(line: 2447, column: 9, scope: !2812, inlinedAt: !2813)
!2812 = distinct !DISubprogram(name: "get<std::sync::mpmc::waker::Waker>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5WakerE3getCs7Ga9Brpi21q_11polars_lazy", scope: !1002, file: !1001, line: 2443, type: !11, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2813 = distinct !DILocation(line: 736, column: 39, scope: !2814, inlinedAt: !2815)
!2814 = distinct !DISubprogram(name: "deref_mut<std::sync::mpmc::waker::Waker>", linkageName: "_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_10MutexGuardNtNtNtB9_4mpmc5waker5WakerENtNtNtCscgRAwXFJnXP_4core3ops5deref8DerefMut9deref_mutCs7Ga9Brpi21q_11polars_lazy", scope: !1006, file: !216, line: 735, type: !11, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2815 = distinct !DILocation(line: 175, column: 17, scope: !2808, inlinedAt: !2779)
!2816 = !{!2817}
!2817 = distinct !{!2817, !2818, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select: argument 1"}
!2818 = distinct !{!2818, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select"}
!2819 = !DILocation(line: 175, column: 23, scope: !2808, inlinedAt: !2779)
!2820 = !DILocation(line: 3024, column: 19, scope: !2821, inlinedAt: !2822)
!2821 = distinct !DISubprogram(name: "len<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3lenCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 3023, type: !11, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2822 = distinct !DILocation(line: 3049, column: 14, scope: !2823, inlinedAt: !2824)
!2823 = distinct !DISubprogram(name: "is_empty<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8is_emptyCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 3048, type: !11, scopeLine: 3048, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2824 = distinct !DILocation(line: 68, column: 27, scope: !2825, inlinedAt: !2826)
!2825 = distinct !DISubprogram(name: "try_select", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select", scope: !981, file: !955, line: 67, type: !11, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2826 = distinct !DILocation(line: 175, column: 23, scope: !2808, inlinedAt: !2779)
!2827 = !{!2828, !2742, !2746}
!2828 = distinct !{!2828, !2818, !"_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB2_5Waker10try_select: argument 0"}
!2829 = !DILocation(line: 3029, column: 37, scope: !2830, inlinedAt: !2822)
!2830 = distinct !DILexicalBlock(scope: !2821, file: !1010, line: 3024, column: 9)
!2831 = !DILocation(line: 3029, column: 18, scope: !2830, inlinedAt: !2822)
!2832 = !DILocation(line: 68, column: 12, scope: !2825, inlinedAt: !2826)
!2833 = !DILocation(line: 208, column: 11, scope: !2834, inlinedAt: !2835)
!2834 = distinct !DISubprogram(name: "current_thread_id", linkageName: "_RNvNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker17current_thread_id", scope: !957, file: !955, line: 204, type: !11, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2835 = distinct !DILocation(line: 71, column: 29, scope: !2825, inlinedAt: !2826)
!2836 = !DILocation(line: 614, column: 9, scope: !2837, inlinedAt: !2838)
!2837 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy", scope: !1024, file: !1023, line: 613, type: !11, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2838 = distinct !DILocation(line: 609, column: 14, scope: !2839, inlinedAt: !2840)
!2839 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, std::sync::mpmc::waker::Entry>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryECs7Ga9Brpi21q_11polars_lazy", scope: !1024, file: !1023, line: 608, type: !11, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2840 = distinct !DILocation(line: 296, column: 20, scope: !2841, inlinedAt: !2842)
!2841 = distinct !DISubprogram(name: "ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3ptrCs7Ga9Brpi21q_11polars_lazy", scope: !1028, file: !1023, line: 295, type: !11, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2842 = distinct !DILocation(line: 1942, column: 18, scope: !2843, inlinedAt: !2844)
!2843 = distinct !DISubprogram(name: "as_ptr<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE6as_ptrCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 1939, type: !11, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2844 = distinct !DILocation(line: 1841, column: 76, scope: !2845, inlinedAt: !2846)
!2845 = distinct !DISubprogram(name: "as_slice<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE8as_sliceCs7Ga9Brpi21q_11polars_lazy", scope: !1011, file: !1010, line: 1824, type: !11, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2846 = distinct !DILocation(line: 3756, column: 14, scope: !2847, inlinedAt: !2848)
!2847 = distinct !DISubprogram(name: "deref<std::sync::mpmc::waker::Entry, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1290, file: !1010, line: 3755, type: !11, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2848 = distinct !DILocation(line: 73, column: 13, scope: !2849, inlinedAt: !2826)
!2849 = distinct !DILexicalBlock(scope: !2825, file: !955, line: 71, column: 13)
!2850 = !DILocation(line: 961, column: 18, scope: !2851, inlinedAt: !2852)
!2851 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry3addCs7Ga9Brpi21q_11polars_lazy", scope: !1069, file: !1068, line: 927, type: !11, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2852 = distinct !DILocation(line: 102, column: 78, scope: !2853, inlinedAt: !2856)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !1301, line: 98, column: 9)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !1301, line: 97, column: 9)
!2855 = distinct !DISubprogram(name: "new<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3newCs7Ga9Brpi21q_11polars_lazy", scope: !1304, file: !1301, line: 96, type: !11, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2856 = distinct !DILocation(line: 1041, column: 9, scope: !2857, inlinedAt: !2858)
!2857 = distinct !DISubprogram(name: "iter<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5Entry4iterCs7Ga9Brpi21q_11polars_lazy", scope: !1309, file: !1308, line: 1040, type: !11, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2858 = distinct !DILocation(line: 74, column: 18, scope: !2849, inlinedAt: !2826)
!2859 = !DILocation(line: 77, column: 21, scope: !2860, inlinedAt: !2862)
!2860 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy", scope: !2861, file: !955, line: 75, type: !103, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2861 = !DINamespace(name: "try_select", scope: !1355)
!2862 = distinct !DILocation(line: 384, column: 24, scope: !2863, inlinedAt: !2867)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !1316, line: 383, column: 49)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !1316, line: 382, column: 17)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !1316, line: 381, column: 17)
!2866 = distinct !DISubprogram(name: "position<std::sync::mpmc::waker::Entry, std::sync::mpmc::waker::{impl#0}::try_select::{closure_env#0}>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECs7Ga9Brpi21q_11polars_lazy", scope: !1319, file: !1316, line: 377, type: !11, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2867 = distinct !DILocation(line: 75, column: 18, scope: !2849, inlinedAt: !2826)
!2868 = !DILocation(line: 659, column: 28, scope: !2869, inlinedAt: !2870)
!2869 = distinct !DISubprogram(name: "add<std::sync::mpmc::waker::Entry>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryE3addCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 651, type: !11, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2870 = distinct !DILocation(line: 185, column: 40, scope: !2871, inlinedAt: !2874)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !1316, line: 162, column: 17)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !1316, line: 161, column: 17)
!2873 = distinct !DISubprogram(name: "next<std::sync::mpmc::waker::Entry>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7Ga9Brpi21q_11polars_lazy", scope: !1319, file: !1316, line: 157, type: !11, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2874 = distinct !DILocation(line: 383, column: 42, scope: !2863, inlinedAt: !2867)
!2875 = !{!2876}
!2876 = distinct !{!2876, !2877, !"_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2877 = distinct !{!2877, !"_RNCNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs7Ga9Brpi21q_11polars_lazy"}
!2878 = !DILocation(line: 384, column: 24, scope: !2863, inlinedAt: !2867)
!2879 = !DILocation(line: 444, column: 20, scope: !2880, inlinedAt: !2881)
!2880 = distinct !DISubprogram(name: "as_ref<alloc::sync::ArcInner<std::sync::mpmc::context::Inner>>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerEE6as_refCs7Ga9Brpi21q_11polars_lazy", scope: !127, file: !126, line: 440, type: !11, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2881 = distinct !DILocation(line: 2110, column: 27, scope: !2882, inlinedAt: !2883)
!2882 = distinct !DISubprogram(name: "inner<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerE5innerCs7Ga9Brpi21q_11polars_lazy", scope: !132, file: !131, line: 2104, type: !11, scopeLine: 2104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2883 = distinct !DILocation(line: 2428, column: 15, scope: !2884, inlinedAt: !2885)
!2884 = distinct !DISubprogram(name: "deref<std::sync::mpmc::context::Inner, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7context5InnerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs7Ga9Brpi21q_11polars_lazy", scope: !1544, file: !131, line: 2427, type: !11, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2885 = distinct !DILocation(line: 157, column: 9, scope: !2886, inlinedAt: !2887)
!2886 = distinct !DISubprogram(name: "thread_id", linkageName: "_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc7contextNtB2_7Context9thread_id", scope: !1156, file: !852, line: 156, type: !11, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !12)
!2887 = distinct !DILocation(line: 77, column: 33, scope: !2860, inlinedAt: !2862)
!2888 = !{!2889, !2891, !2828, !2817, !2742, !2746}
!2889 = distinct !{!2889, !2890, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECs7Ga9Brpi21q_11polars_lazy: argument 0"}
!2890 = distinct !{!2890, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECs7Ga9Brpi21q_11polars_lazy"}
!2891 = distinct !{!2891, !2890, !"_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCsh8eZTKRCwoO_3std4sync4mpmc5waker5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMBS_NtBS_5Waker10try_select0ECs7Ga9Brpi21q_11polars_lazy: argument 1"}
!2892 = !DILocation(line: 157, column: 9, scope: !2886, inlinedAt: !2887)
!2893 = !{!2876, !2889, !2891, !2828, !2817, !2742, !2746}
!2894 = !DILocation(line: 80, column: 61, scope: !2860, inlinedAt: !2862)
!2895 = !DILocation(line: 2447, column: 9, scope: !1149, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 3615, column: 24, scope: !1151, inlinedAt: !2897)
end_hunk_3
