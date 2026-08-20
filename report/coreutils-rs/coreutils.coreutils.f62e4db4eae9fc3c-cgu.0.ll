inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB2_12block_signalECsl8pJiQOn4hA_9coreutils:bb.a
  %.not60.i = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %.not60.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.j = ptrtoint ptr %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i
  %.sroa.6.049.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.07.0.i.i.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %.sroa.15.048.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.sroa.78.0.i.i.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 6 uses
  %.sroa.23.047.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.k, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.10.046.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %i.k = add i64 %.sroa.23.047.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.6.049.i, null
  br i1 %.not.i.i.i, label %bb.c, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = inttoptr i64 %.sroa.10.046.i to ptr      ; 3 uses
  %i.m = icmp eq i64 %.sroa.15.048.i, 0
  br i1 %i.m, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %xtraiter = and i64 %.sroa.15.048.i, 7          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.013.017.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.l, %.lr.ph.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.i.prol ], [ %.sroa.15.048.i, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.prol, i64 104
  %i.o = add i64 %.sroa.011.016.i.i.i.prol, -1    ; 2 uses
  %.sroa.013.0.i.i.i.prol = load ptr, ptr %i.n, align 8, !noalias !1745, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1750

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.013.0.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.013.017.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.sroa.011.016.i.i.i.unr = phi i64 [ %.sroa.15.048.i, %.lr.ph.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.prol ]
  %i.p = icmp ult i64 %.sroa.15.048.i, 8
  br i1 %i.p, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.013.017.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ], [ %.sroa.013.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %.sroa.011.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i, i64 104
  %.sroa.013.0.i.i.i = load ptr, ptr %i.q, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i, i64 104
  %.sroa.013.0.i.i.i.1 = load ptr, ptr %i.r, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.1, i64 104
  %.sroa.013.0.i.i.i.2 = load ptr, ptr %i.s, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.2, i64 104
  %.sroa.013.0.i.i.i.3 = load ptr, ptr %i.t, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.3, i64 104
  %.sroa.013.0.i.i.i.4 = load ptr, ptr %i.u, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.4, i64 104
  %.sroa.013.0.i.i.i.5 = load ptr, ptr %i.v, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.5, i64 104
  %.sroa.013.0.i.i.i.6 = load ptr, ptr %i.w, align 8, !noalias !1745, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.6, i64 104
  %i.y = add i64 %.sroa.011.016.i.i.i, -8         ; 2 uses
  %.sroa.013.0.i.i.i.7 = load ptr, ptr %i.x, align 8, !noalias !1745, !nonnull !12, !noundef !12 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.c, %bb.b
  %.sroa.59.0.copyload.i.i.i = phi i64 [ %.sroa.15.048.i, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i = phi i64 [ %.sroa.10.046.i, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i = phi ptr [ %.sroa.6.049.i, %bb.b ], [ %i.l, %bb.c ], [ %.sroa.013.0.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.7, %.lr.ph.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i, i64 98
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !1752, !noundef !12
  %i.ac = zext i16 %i.ab to i64
  %i.ad = icmp ult i64 %.sroa.59.0.copyload.i.i.i, %i.ac
  br i1 %i.ad, label %bb.f, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.d
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.ae, %bb.d ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.ag, %bb.d ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.ae = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !1761, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.d
  %i.af = zext i16 %i.ai to i64
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 96
  %i.ai = load i16, ptr %i.ah, align 8, !noalias !1761 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 98
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !1752, !noundef !12
  %i.al = icmp ult i16 %i.ai, %i.ak
  br i1 %i.al, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #50, !noalias !1764
  unreachable

bb.f:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.af, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i = phi ptr [ %i.ae, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.am = icmp eq i64 %.sroa.7.0.ph.i.i.i.i, 0
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i, 1
  br label %.loopexit30.i

bb.h:                                             ; preds = %bb.f
  %i.ao = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i, i64 112
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %.sroa.10.0.ph.i.i.i.i ; 2 uses
  %xtraiter31 = and i64 %.sroa.7.0.ph.i.i.i.i, 7  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.ar, %.prol.preheader ], [ %i.aq, %bb.h ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i, %bb.h ]
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !1765, !nonnull !12, !noundef !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1769

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.aq, %bb.h ], [ %i.ar, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i, %bb.h ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.as = icmp ult i64 %.sroa.7.0.ph.i.i.i.i, 8
  br i1 %i.as, label %.loopexit30.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bb, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !1765, !nonnull !12, !noundef !12
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !1765, !nonnull !12, !noundef !12 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 104
  br i1 %i.ba, label %.loopexit30.i, label %.new

.loopexit30.i:                                    ; preds = %.prol.loopexit, %.new, %bb.g
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.an, %bb.g ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i, %bb.g ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i, i64 8
  %i.bd = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.10.0.ph.i.i.i.i
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1742, !noundef !12 ; 3 uses
  %i.bg = tail call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %i.bf) #45, !noalias !1742
  br i1 %i.bg, label %bb.i, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i

bb.i:                                             ; preds = %.loopexit30.i
  %i.bh = tail call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12block_signal(i64 noundef %i.bf) #45, !noalias !1742 ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.j, label %.loopexit29.sink.split.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bf, i8 noundef 2, i1 noundef zeroext true) #45, !noalias !1742
  br label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i

_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.j, %.loopexit30.i
  %i.bj = icmp eq i64 %i.k, 0
  br i1 %i.bj, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12block_signalE0Csl8pJiQOn4hA_9coreutils.exit.i, %.preheader.i
  br i1 %i.c, label %bb.k, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit

bb.k:                                             ; preds = %._crit_edge.i
  %i.bk = tail call noundef i64 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals25signal_number_upper_bound() #45, !noalias !1742 ; 3 uses
  %.not.i7351.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i7351.i, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.k
  br i1 %.not.i, label %.preheader.i.preheader.i, label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %.lr.ph54.i, %.backedge.us.i
  %.sroa.03.052.us.i = phi i64 [ %i.bl, %.backedge.us.i ], [ 1, %.lr.ph54.i ] ; 6 uses
  %i.bl = add i64 %.sroa.03.052.us.i, 1
  switch i64 %.sroa.03.052.us.i, label %bb.l [
    i64 19, label %.backedge.us.i
    i64 9, label %.backedge.us.i
  ]

bb.l:                                             ; preds = %.lr.ph54.split.us.i
  %i.bm = tail call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.us.i) #45, !noalias !1742
  br i1 %i.bm, label %bb.m, label %.backedge.us.i

bb.m:                                             ; preds = %bb.l
  %i.bn = tail call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12block_signal(i64 noundef %.sroa.03.052.us.i) #45, !noalias !1742 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %.not.i80.us.i = icmp eq ptr %i.bo, null
  br i1 %.not.i80.us.i, label %bb.n, label %.loopexit29.sink.split.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.03.052.us.i, i8 noundef 2, i1 noundef zeroext false) #45, !noalias !1742
  br label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.n, %bb.l, %.lr.ph54.split.us.i, %.lr.ph54.split.us.i
  %exitcond.not.i = icmp eq i64 %.sroa.03.052.us.i, %i.bk
  br i1 %exitcond.not.i, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph54.split.us.i

.preheader.i.preheader.i:                         ; preds = %.lr.ph54.i, %.backedge.i
  %.sroa.03.052.i = phi i64 [ %i.bp, %.backedge.i ], [ 1, %.lr.ph54.i ] ; 7 uses
  %i.bp = add i64 %.sroa.03.052.i, 1
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.preheader.i
  %.sroa.3.0.i.i.i = phi i64 [ %i.cf, %bb.q ], [ %i.i, %.preheader.i.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ce, %bb.q ], [ %i.g, %.preheader.i.preheader.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 98
  %i.bs = load i16, ptr %i.br, align 2, !noalias !1770, !noundef !12 ; 2 uses
  %i.bt = zext i16 %i.bs to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.bt, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx
  %i.bv = icmp eq i16 %i.bs, 0
  br i1 %i.bv, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i16, i64 8 ; 2 uses
  %i.bx = add nuw nsw i64 %.sroa.8.0.i.i.i.i15, 1
  %i.by = icmp eq ptr %i.bw, %i.bu
  br i1 %i.by, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.o
  %.sroa.0.03.i.i.i.i16 = phi ptr [ %i.bw, %bb.o ], [ %i.bq, %.preheader.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i15 = phi i64 [ %i.bx, %bb.o ], [ 0, %.preheader.i.i ] ; 2 uses
  %.val6.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i16, align 8, !noalias !1770, !noundef !12
  %i.bz = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.03.052.i, i64 %.val6.i.i.i.i)
  switch i8 %i.bz, label %bb.p [
    i8 -1, label %._crit_edge
    i8 0, label %.backedge.i
    i8 1, label %bb.o
  ]

bb.p:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %.preheader.i.i
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.bt, %.preheader.i.i ], [ %i.bt, %bb.o ], [ %.sroa.8.0.i.i.i.i15, %.lr.ph ] ; 2 uses
  %i.ca = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.ca, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 104
  %i.cc = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.sroa.4.0.i.ph.i.i.i
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1770, !nonnull !12, !noundef !12
  %i.cf = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader.i.i

.loopexit29.sink.split.i:                         ; preds = %bb.i, %bb.m, %bb.s
  %.us-phi.sink.i = phi { ptr, ptr } [ %i.bn, %bb.m ], [ %i.ci, %bb.s ], [ %i.bh, %bb.i ]
  %.sroa.0.0.ph.i = phi ptr [ %i.bo, %bb.m ], [ %i.cj, %bb.s ], [ %i.bi, %bb.i ]
  %i.cg = extractvalue { ptr, ptr } %.us-phi.sink.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  br label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit

.loopexit.i:                                      ; preds = %._crit_edge
  switch i64 %.sroa.03.052.i, label %bb.r [
    i64 19, label %.backedge.i
    i64 9, label %.backedge.i
  ]

bb.r:                                             ; preds = %.loopexit.i
  %i.ch = tail call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.i) #45, !noalias !1742
  br i1 %i.ch, label %bb.s, label %.backedge.i

bb.s:                                             ; preds = %bb.r
  %i.ci = tail call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12block_signal(i64 noundef %.sroa.03.052.i) #45, !noalias !1742 ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ci, 0      ; 2 uses
  %.not.i80.i = icmp eq ptr %i.cj, null
  br i1 %.not.i80.i, label %bb.t, label %.loopexit29.sink.split.i

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.03.052.i, i8 noundef 2, i1 noundef zeroext false) #45, !noalias !1742
  br label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph, %bb.t, %bb.r, %.loopexit.i, %.loopexit.i
  %exitcond84.not.i = icmp eq i64 %.sroa.03.052.i, %i.bk
  br i1 %exitcond84.not.i, label %_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit, label %.preheader.i.preheader.i

_RINvMs_Cs41JD7yXDh97_6uu_envNtB5_13SignalRequest15for_each_signalNCINvB5_19apply_signal_actionNvB5_12block_signalE0ECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.backedge.us.i, %.backedge.i, %bb.a, %._crit_edge.i, %bb.k, %.loopexit29.sink.split.i
  %.sroa.5.0.i = phi ptr [ undef, %bb.a ], [ undef, %bb.k ], [ undef, %.backedge.i ], [ undef, %._crit_edge.i ], [ %i.cg, %.loopexit29.sink.split.i ], [ undef, %.backedge.us.i ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.k ], [ null, %.backedge.i ], [ null, %._crit_edge.i ], [ %.sroa.0.0.ph.i, %.loopexit29.sink.split.i ], [ null, %.backedge.us.i ]
  %i.ck = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.cl = insertvalue { ptr, ptr } %i.ck, ptr %.sroa.5.0.i, 1
  ret { ptr, ptr } %i.cl
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef i32 @_RINvCs41JD7yXDh97_6uu_env6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBz_6cloned6ClonedINtNtNtBD_5slice4iter4IterB2a_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [712 x i8], align 8               ; 5 uses
  %i.o = alloca [56 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %i.u = alloca [232 x i8], align 8               ; 8 uses
  %i.v = alloca [232 x i8], align 8               ; 27 uses
  %.sroa.16.i.i = alloca [56 x i8], align 8       ; 5 uses
  %.sroa.17.i.i = alloca [24 x i8], align 8       ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [56 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [3 x i8], align 4                 ; 11 uses
  %i.aa = alloca [4 x i8], align 4                ; 3 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 9 uses
  %i.an = tail call noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() #45
  br i1 %i.an, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = tail call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() #45 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ap = tail call noundef i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() #45 ; 2 uses
  %.not.i = icmp eq i32 %i.ap, -1
  br i1 %.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1773
  store i32 %i.ap, ptr %i.aa, align 4, !noalias !1773
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 37, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @896, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #50
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1776
  store i24 131072, ptr %i.z, align 4, !noalias !1776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1784
  call fastcc void @_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterB1J_EEENtNtNtBa_6traits8iterator8Iterator7collectINtB10_3VecB1J_EECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0) #51, !noalias !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1784
  call void @_RNvMs1_Cs41JD7yXDh97_6uu_envNtB5_10EnvAppData28process_all_string_arguments(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull dereferenceable(3) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #45, !noalias !1790
  %i.aq = load i64, ptr %i.r, align 8, !range !13, !noalias !1784, !noundef !12 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1784 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1784 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1784
  br i1 %i.ar, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtCsqsXNUdQJE7_3nix5errno6consts5ErrnoE6expectCsl8pJiQOn4hA_9coreutils.exit
  store i64 %i.aq, ptr %i.q, align 8, !noalias !1784
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx2.i.i.i, align 8, !noalias !1784
  %.sroa.8.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.av, ptr %.sroa.8.0..sroa_idx4.i.i.i, align 8, !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1784
  store ptr null, ptr %i.p, align 8, !noalias !1784
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !1784
  %.cast.i.i.i = ptrtoint ptr %i.av to i64
  %.idx.i.i.i = mul nuw nsw i64 %.cast.i.i.i, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.i
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.thread16.i.i.i
  %.sroa.06.017.i.i.i = phi ptr [ %i.ay, %.thread16.i.i.i ], [ %i.at, %bb.e ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.017.i.i.i, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.017.i.i.i, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.017.i.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1790, !noundef !12
  switch i64 %i.bb, label %.thread16.i.i.i [
    i64 15, label %bb.f
    i64 16, label %bb.h
    i64 14, label %bb.j
  ]

._crit_edge.i.i.i:                                ; preds = %.thread16.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1784
  call void @_RNvCs41JD7yXDh97_6uu_env6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.n) #45, !noalias !1790
end_hunk_0
begin_hunk_1_@_RINvCs41JD7yXDh97_6uu_env6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBz_6cloned6ClonedINtNtNtBD_5slice4iter4IterB2a_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i79.i.i.prol.loopexit, label %.lr.ph.i.i.i.i79.i.i.prol

.lr.ph.i.i.i.i79.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i79.i.i.preheader, %.lr.ph.i.i.i.i79.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i79.i.i.prol ], [ %i.ei, %.lr.ph.i.i.i.i79.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.prol = phi i64 [ %i.el, %.lr.ph.i.i.i.i79.i.i.prol ], [ %.sroa.15.048.i.i.i.i, %.lr.ph.i.i.i.i79.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i79.i.i.prol ], [ 0, %.lr.ph.i.i.i.i79.i.i.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.prol, i64 104
  %i.el = add i64 %.sroa.011.016.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.prol = load ptr, ptr %i.ek, align 8, !noalias !1822, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i79.i.i.prol.loopexit, label %.lr.ph.i.i.i.i79.i.i.prol, !llvm.loop !1827

.lr.ph.i.i.i.i79.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i79.i.i.prol, %.lr.ph.i.i.i.i79.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i79.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i79.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.unr = phi ptr [ %i.ei, %.lr.ph.i.i.i.i79.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i79.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.048.i.i.i.i, %.lr.ph.i.i.i.i79.i.i.preheader ], [ %i.el, %.lr.ph.i.i.i.i79.i.i.prol ]
  %i.em = icmp ult i64 %.sroa.15.048.i.i.i.i, 8
  br i1 %i.em, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i79.i.i

.lr.ph.i.i.i.i79.i.i:                             ; preds = %.lr.ph.i.i.i.i79.i.i.prol.loopexit, %.lr.ph.i.i.i.i79.i.i
  %.sroa.013.017.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i79.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i79.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i, i64 104
  %.sroa.013.0.i.i.i.i.i.i = load ptr, ptr %i.en, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i, i64 104
  %.sroa.013.0.i.i.i.i.i.i.1 = load ptr, ptr %i.eo, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.1, i64 104
  %.sroa.013.0.i.i.i.i.i.i.2 = load ptr, ptr %i.ep, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.2, i64 104
  %.sroa.013.0.i.i.i.i.i.i.3 = load ptr, ptr %i.eq, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.3, i64 104
  %.sroa.013.0.i.i.i.i.i.i.4 = load ptr, ptr %i.er, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.4, i64 104
  %.sroa.013.0.i.i.i.i.i.i.5 = load ptr, ptr %i.es, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.5, i64 104
  %.sroa.013.0.i.i.i.i.i.i.6 = load ptr, ptr %i.et, align 8, !noalias !1822, !nonnull !12, !noundef !12
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.6, i64 104
  %i.ev = add i64 %.sroa.011.016.i.i.i.i.i.i, -8  ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.7 = load ptr, ptr %i.eu, align 8, !noalias !1822, !nonnull !12, !noundef !12 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i79.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i79.i.i.prol.loopexit, %.lr.ph.i.i.i.i79.i.i, %bb.ad, %bb.ac
  %.sroa.59.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.15.048.i.i.i.i, %bb.ac ], [ 0, %bb.ad ], [ 0, %.lr.ph.i.i.i.i79.i.i ], [ 0, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i = phi i64 [ %.sroa.10.046.i.i.i.i, %bb.ac ], [ 0, %bb.ad ], [ 0, %.lr.ph.i.i.i.i79.i.i ], [ 0, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i = phi ptr [ %.sroa.6.049.i.i.i.i, %bb.ac ], [ %i.ei, %bb.ad ], [ %.sroa.013.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i79.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i79.i.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i, i64 98
  %i.ey = load i16, ptr %i.ex, align 2, !noalias !1828, !noundef !12
  %i.ez = zext i16 %i.ey to i64
  %i.fa = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i, %i.ez
  br i1 %i.fa, label %bb.ag, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.ae
  %.sroa.0.022.i.i.i.i.i.i.i.i = phi ptr [ %i.fb, %bb.ae ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i = phi i64 [ %i.fd, %bb.ae ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ]
  %i.fb = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, align 8, !noalias !1837, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.ae
  %i.fc = zext i16 %i.ff to i64
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fd = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 96
  %i.ff = load i16, ptr %i.fe, align 8, !noalias !1837 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 98
  %i.fh = load i16, ptr %i.fg, align 2, !noalias !1828, !noundef !12
  %i.fi = icmp ult i16 %i.ff, %i.fh
  br i1 %i.fi, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #50, !noalias !1840
  unreachable

bb.ag:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.fc, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i = phi i64 [ %i.fd, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i = phi ptr [ %i.fb, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 3 uses
  %i.fj = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 0
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fk = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 1
  br label %.loopexit30.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fl = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 112
  %i.fn = getelementptr [8 x i8], ptr %i.fm, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i ; 2 uses
  %xtraiter307 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod308.not = icmp eq i64 %xtraiter307, 0
  br i1 %lcmp.mod308.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ai, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.fo, %.prol.preheader ], [ %i.fn, %bb.ai ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.ai ]
  %prol.iter309 = phi i64 [ %prol.iter309.next, %.prol.preheader ], [ 0, %bb.ai ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !1841, !nonnull !12, !noundef !12 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 104 ; 2 uses
  %prol.iter309.next = add i64 %prol.iter309, 1   ; 2 uses
  %prol.iter309.cmp.not = icmp eq i64 %prol.iter309.next, %xtraiter307
  br i1 %prol.iter309.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1845

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ai
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ai ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.fn, %bb.ai ], [ %i.fo, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.fp = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i, 8
  br i1 %i.fp, label %.loopexit30.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.fy, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.fq, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.fr, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.fs, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ft, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fu, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fv, align 8, !noalias !1841, !nonnull !12, !noundef !12
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fw, align 8, !noalias !1841, !nonnull !12, !noundef !12 ; 2 uses
  %i.fx = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 104
  br i1 %i.fx, label %.loopexit30.i.i.i.i, label %.new

.loopexit30.i.i.i.i:                              ; preds = %.prol.loopexit, %.new, %bb.ah
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.fk, %bb.ah ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i, i64 8
  %i.ga = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !1846, !noundef !12 ; 4 uses
  %i.gd = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %i.gc) #45, !noalias !1846
  br i1 %i.gd, label %bb.aj, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.aj:                                            ; preds = %.loopexit30.i.i.i.i
  %i.ge = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %i.gc) #45, !noalias !1846 ; 2 uses
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %.loopexit164.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.gc, i8 noundef 0, i1 noundef zeroext true) #45, !noalias !1846
  %i.gg = icmp eq i64 %i.gc, 13
  br i1 %i.gg, label %bb.al, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1847
  store ptr @717, ptr %i.k, align 8, !noalias !1847, !captures !1848
  store i64 12, ptr %i.ef, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1847
  store ptr @718, ptr %i.j, align 8, !noalias !1847, !captures !1848
  store i64 7, ptr %i.eg, align 8, !noalias !1847
  %i.gh = call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6setenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 7) #45, !noalias !1846 ; 2 uses
  %.not.i.i72.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i72.i.i.i.i, label %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @_RNCINvNtCs2vKOLqTMYjT_3std3env7set_varReBA_E0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noundef nonnull %i.gh) #51, !noalias !1846
  unreachable

_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1847
  br label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.ak, %.loopexit30.i.i.i.i
  %i.gi = icmp eq i64 %i.eh, 0
  br i1 %i.gi, label %._crit_edge.i.i.i.i, label %bb.ac

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_12reset_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.preheader.i.i.i.i
  br i1 %i.dw, label %bb.an, label %.loopexit165.i.i

bb.an:                                            ; preds = %._crit_edge.i.i.i.i
  %i.gj = call noundef i64 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals25signal_number_upper_bound() #45, !noalias !1846 ; 3 uses
  %.not.i7351.i.i.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i7351.i.i.i.i, label %.loopexit165.i.i, label %.lr.ph54.i.i.i.i

.lr.ph54.i.i.i.i:                                 ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader.i.i.i.i, label %.lr.ph54.split.us.i.i.i.i

.lr.ph54.split.us.i.i.i.i:                        ; preds = %.lr.ph54.i.i.i.i, %.backedge.us.i.i.i.i
  %.sroa.03.052.us.i.i.i.i = phi i64 [ %i.gm, %.backedge.us.i.i.i.i ], [ 1, %.lr.ph54.i.i.i.i ] ; 7 uses
  %i.gm = add i64 %.sroa.03.052.us.i.i.i.i, 1
  switch i64 %.sroa.03.052.us.i.i.i.i, label %bb.ao [
    i64 19, label %.backedge.us.i.i.i.i
    i64 9, label %.backedge.us.i.i.i.i
  ]

bb.ao:                                            ; preds = %.lr.ph54.split.us.i.i.i.i
  %i.gn = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.us.i.i.i.i) #45, !noalias !1846
  br i1 %i.gn, label %bb.ap, label %.backedge.us.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.go = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %.sroa.03.052.us.i.i.i.i) #45, !noalias !1846 ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0      ; 2 uses
  %.not.i80.us.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i80.us.i.i.i.i, label %bb.aq, label %.loopexit164.i.i

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.us.i.i.i.i, i8 noundef 0, i1 noundef zeroext false) #45, !noalias !1846
  %i.gq = icmp eq i64 %.sroa.03.052.us.i.i.i.i, 13
  br i1 %i.gq, label %bb.ar, label %.backedge.us.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1847
  store ptr @717, ptr %i.i, align 8, !noalias !1847, !captures !1848
  store i64 12, ptr %i.gk, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1847
  store ptr @718, ptr %i.h, align 8, !noalias !1847, !captures !1848
  store i64 7, ptr %i.gl, align 8, !noalias !1847
  %i.gr = call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6setenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 7) #45, !noalias !1846 ; 2 uses
  %.not.i.i82.us.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i82.us.i.i.i.i, label %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.us.i.i.i.i, label %.split57.us.i.i.i.i

_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.us.i.i.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1847
  br label %.backedge.us.i.i.i.i

.backedge.us.i.i.i.i:                             ; preds = %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.us.i.i.i.i, %bb.aq, %bb.ao, %.lr.ph54.split.us.i.i.i.i, %.lr.ph54.split.us.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %.sroa.03.052.us.i.i.i.i, %i.gj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit165.i.i, label %.lr.ph54.split.us.i.i.i.i

.preheader.i.preheader.i.i.i.i:                   ; preds = %.lr.ph54.i.i.i.i, %.backedge.i.i.i.i
  %.sroa.03.052.i.i.i.i = phi i64 [ %i.gs, %.backedge.i.i.i.i ], [ 1, %.lr.ph54.i.i.i.i ] ; 8 uses
  %i.gs = add i64 %.sroa.03.052.i.i.i.i, 1
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.au, %.preheader.i.preheader.i.i.i.i
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.hi, %bb.au ], [ %i.ed, %.preheader.i.preheader.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.hh, %bb.au ], [ %i.eb, %.preheader.i.preheader.i.i.i.i ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 98
  %i.gv = load i16, ptr %i.gu, align 2, !noalias !1849, !noundef !12 ; 2 uses
  %i.gw = zext i16 %i.gv to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.gw, 3
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx
  %i.gy = icmp eq i16 %i.gv, 0
  br i1 %i.gy, label %._crit_edge, label %.lr.ph

bb.as:                                            ; preds = %.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i.i.i259, i64 8 ; 2 uses
  %i.ha = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i258, 1
  %i.hb = icmp eq ptr %i.gz, %i.gx
  br i1 %i.hb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i.i, %bb.as
  %.sroa.0.03.i.i.i.i.i.i.i259 = phi ptr [ %i.gz, %bb.as ], [ %i.gt, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i.i.i258 = phi i64 [ %i.ha, %bb.as ], [ 0, %.preheader.i.i.i.i.i ] ; 2 uses
  %.val6.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i.i.i259, align 8, !noalias !1849, !noundef !12
  %i.hc = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.03.052.i.i.i.i, i64 %.val6.i.i.i.i.i.i.i)
  switch i8 %i.hc, label %bb.at [
    i8 -1, label %._crit_edge
    i8 0, label %.backedge.i.i.i.i
    i8 1, label %bb.as
  ]

bb.at:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.as, %.lr.ph, %.preheader.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.gw, %.preheader.i.i.i.i.i ], [ %i.gw, %bb.as ], [ %.sroa.8.0.i.i.i.i.i.i.i258, %.lr.ph ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.hd, label %.loopexit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 104
  %i.hf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !1849, !nonnull !12, !noundef !12
  %i.hi = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %.preheader.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %._crit_edge
  switch i64 %.sroa.03.052.i.i.i.i, label %bb.av [
    i64 19, label %.backedge.i.i.i.i
    i64 9, label %.backedge.i.i.i.i
  ]

bb.av:                                            ; preds = %.loopexit.i.i.i.i
  %i.hj = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.i.i.i.i) #45, !noalias !1846
  br i1 %i.hj, label %bb.aw, label %.backedge.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hk = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env12reset_signal(i64 noundef %.sroa.03.052.i.i.i.i) #45, !noalias !1846 ; 2 uses
  %i.hl = extractvalue { ptr, ptr } %i.hk, 0      ; 2 uses
  %.not.i80.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i80.i.i.i.i, label %bb.ax, label %.loopexit164.i.i

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.i.i.i.i, i8 noundef 0, i1 noundef zeroext false) #45, !noalias !1846
  %i.hm = icmp eq i64 %.sroa.03.052.i.i.i.i, 13
  br i1 %i.hm, label %bb.ay, label %.backedge.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1847
  store ptr @717, ptr %i.i, align 8, !noalias !1847, !captures !1848
  store i64 12, ptr %i.gk, align 8, !noalias !1847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1847
  store ptr @718, ptr %i.h, align 8, !noalias !1847, !captures !1848
  store i64 7, ptr %i.gl, align 8, !noalias !1847
  %i.hn = call noundef ptr @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6setenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @717, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @718, i64 noundef 7) #45, !noalias !1846 ; 2 uses
  %.not.i.i82.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i82.i.i.i.i, label %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.i.i.i.i, label %.split57.us.i.i.i.i

.split57.us.i.i.i.i:                              ; preds = %bb.ar, %bb.ay
  %.us-phi58.i.i.i.i = phi ptr [ %i.hn, %bb.ay ], [ %i.gr, %bb.ar ]
  call fastcc void @_RNCINvNtCs2vKOLqTMYjT_3std3env7set_varReBA_E0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noundef nonnull %.us-phi58.i.i.i.i) #51, !noalias !1846
  unreachable

_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.i.i.i.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1847
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.lr.ph, %_RINvNtCs2vKOLqTMYjT_3std3env7set_varReBy_ECsl8pJiQOn4hA_9coreutils.exit.i83.i.i.i.i, %bb.ax, %bb.av, %.loopexit.i.i.i.i, %.loopexit.i.i.i.i
  %exitcond84.not.i.i.i.i = icmp eq i64 %.sroa.03.052.i.i.i.i, %i.gj
  br i1 %exitcond84.not.i.i.i.i, label %.loopexit165.i.i, label %.preheader.i.preheader.i.i.i.i

.loopexit165.i.i:                                 ; preds = %.backedge.us.i.i.i.i, %.backedge.i.i.i.i, %bb.an, %._crit_edge.i.i.i.i, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.hp = load i8, ptr %i.ho, align 8, !range !80, !alias.scope !1858, !noalias !1859, !noundef !12
  %i.hq = trunc nuw i8 %i.hp to i1                ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1858, !noalias !1859 ; 2 uses
  %i.ht = icmp ne i64 %i.hs, 0                    ; 2 uses
  %or.cond4.not.i.i80.i.i = select i1 %i.hq, i1 true, i1 %i.ht
  br i1 %or.cond4.not.i.i80.i.i, label %.preheader.i.i83.i.i, label %.loopexit160.i.i

.preheader.i.i83.i.i:                             ; preds = %.loopexit165.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !1858, !noalias !1859, !noundef !12 ; 3 uses
  %.not.i.i84.i.i = icmp ne ptr %i.hv, null       ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !1858, !noalias !1859 ; 2 uses
  %.not60.i.i85.i.i = select i1 %.not.i.i84.i.i, i1 %i.ht, i1 false
  br i1 %.not60.i.i85.i.i, label %.lr.ph.i.i111.i.i, label %._crit_edge.i.i86.i.i

.lr.ph.i.i111.i.i:                                ; preds = %.preheader.i.i83.i.i
  %i.hy = ptrtoint ptr %i.hv to i64
  br label %bb.az

bb.az:                                            ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i111.i.i
  %.sroa.6.049.i.i112.i.i = phi ptr [ null, %.lr.ph.i.i111.i.i ], [ %.sroa.07.0.i.i.i.i.i135.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.sroa.15.048.i.i113.i.i = phi i64 [ %i.hx, %.lr.ph.i.i111.i.i ], [ %.sroa.78.0.i.i.i.i.i134.i.i, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 6 uses
  %.sroa.23.047.i.i114.i.i = phi i64 [ %i.hs, %.lr.ph.i.i111.i.i ], [ %i.hz, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.10.046.i.i115.i.i = phi i64 [ %i.hy, %.lr.ph.i.i111.i.i ], [ 0, %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.hz = add i64 %.sroa.23.047.i.i114.i.i, -1    ; 2 uses
  %.not.i.i.i.i116.i.i = icmp eq ptr %.sroa.6.049.i.i112.i.i, null
  br i1 %.not.i.i.i.i116.i.i, label %bb.ba, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ia = inttoptr i64 %.sroa.10.046.i.i115.i.i to ptr ; 3 uses
  %i.ib = icmp eq i64 %.sroa.15.048.i.i113.i.i, 0
  br i1 %i.ib, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, label %.lr.ph.i.i.i.i137.i.i.preheader

.lr.ph.i.i.i.i137.i.i.preheader:                  ; preds = %bb.ba
  %xtraiter310 = and i64 %.sroa.15.048.i.i113.i.i, 7 ; 2 uses
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  br i1 %lcmp.mod311.not, label %.lr.ph.i.i.i.i137.i.i.prol.loopexit, label %.lr.ph.i.i.i.i137.i.i.prol

.lr.ph.i.i.i.i137.i.i.prol:                       ; preds = %.lr.ph.i.i.i.i137.i.i.preheader, %.lr.ph.i.i.i.i137.i.i.prol
  %.sroa.013.017.i.i.i.i138.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i140.i.i.prol, %.lr.ph.i.i.i.i137.i.i.prol ], [ %i.ia, %.lr.ph.i.i.i.i137.i.i.preheader ]
  %.sroa.011.016.i.i.i.i139.i.i.prol = phi i64 [ %i.id, %.lr.ph.i.i.i.i137.i.i.prol ], [ %.sroa.15.048.i.i113.i.i, %.lr.ph.i.i.i.i137.i.i.preheader ]
  %prol.iter312 = phi i64 [ %prol.iter312.next, %.lr.ph.i.i.i.i137.i.i.prol ], [ 0, %.lr.ph.i.i.i.i137.i.i.preheader ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i138.i.i.prol, i64 104
  %i.id = add i64 %.sroa.011.016.i.i.i.i139.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i140.i.i.prol = load ptr, ptr %i.ic, align 8, !noalias !1861, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter312.next = add i64 %prol.iter312, 1   ; 2 uses
  %prol.iter312.cmp.not = icmp eq i64 %prol.iter312.next, %xtraiter310
  br i1 %prol.iter312.cmp.not, label %.lr.ph.i.i.i.i137.i.i.prol.loopexit, label %.lr.ph.i.i.i.i137.i.i.prol, !llvm.loop !1866

.lr.ph.i.i.i.i137.i.i.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i137.i.i.prol, %.lr.ph.i.i.i.i137.i.i.preheader
  %.sroa.013.0.i.i.i.i140.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i137.i.i.preheader ], [ %.sroa.013.0.i.i.i.i140.i.i.prol, %.lr.ph.i.i.i.i137.i.i.prol ]
  %.sroa.013.017.i.i.i.i138.i.i.unr = phi ptr [ %i.ia, %.lr.ph.i.i.i.i137.i.i.preheader ], [ %.sroa.013.0.i.i.i.i140.i.i.prol, %.lr.ph.i.i.i.i137.i.i.prol ]
  %.sroa.011.016.i.i.i.i139.i.i.unr = phi i64 [ %.sroa.15.048.i.i113.i.i, %.lr.ph.i.i.i.i137.i.i.preheader ], [ %i.id, %.lr.ph.i.i.i.i137.i.i.prol ]
  %i.ie = icmp ult i64 %.sroa.15.048.i.i113.i.i, 8
  br i1 %i.ie, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, label %.lr.ph.i.i.i.i137.i.i

.lr.ph.i.i.i.i137.i.i:                            ; preds = %.lr.ph.i.i.i.i137.i.i.prol.loopexit, %.lr.ph.i.i.i.i137.i.i
  %.sroa.013.017.i.i.i.i138.i.i = phi ptr [ %.sroa.013.0.i.i.i.i140.i.i.7, %.lr.ph.i.i.i.i137.i.i ], [ %.sroa.013.017.i.i.i.i138.i.i.unr, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i139.i.i = phi i64 [ %i.in, %.lr.ph.i.i.i.i137.i.i ], [ %.sroa.011.016.i.i.i.i139.i.i.unr, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ]
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i138.i.i, i64 104
  %.sroa.013.0.i.i.i.i140.i.i = load ptr, ptr %i.if, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.1 = load ptr, ptr %i.ig, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.1, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.2 = load ptr, ptr %i.ih, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.2, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.3 = load ptr, ptr %i.ii, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.3, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.4 = load ptr, ptr %i.ij, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.4, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.5 = load ptr, ptr %i.ik, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.5, i64 104
  %.sroa.013.0.i.i.i.i140.i.i.6 = load ptr, ptr %i.il, align 8, !noalias !1861, !nonnull !12, !noundef !12
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i140.i.i.6, i64 104
  %i.in = add i64 %.sroa.011.016.i.i.i.i139.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i140.i.i.7 = load ptr, ptr %i.im, align 8, !noalias !1861, !nonnull !12, !noundef !12 ; 2 uses
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, label %.lr.ph.i.i.i.i137.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i: ; preds = %.lr.ph.i.i.i.i137.i.i.prol.loopexit, %.lr.ph.i.i.i.i137.i.i, %bb.ba, %bb.az
  %.sroa.59.0.copyload.i.i.i.i118.i.i = phi i64 [ %.sroa.15.048.i.i113.i.i, %bb.az ], [ 0, %bb.ba ], [ 0, %.lr.ph.i.i.i.i137.i.i ], [ 0, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i119.i.i = phi i64 [ %.sroa.10.046.i.i115.i.i, %bb.az ], [ 0, %bb.ba ], [ 0, %.lr.ph.i.i.i.i137.i.i ], [ 0, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i120.i.i = phi ptr [ %.sroa.6.049.i.i112.i.i, %bb.az ], [ %i.ia, %bb.ba ], [ %.sroa.013.0.i.i.i.i140.i.i.lcssa.unr, %.lr.ph.i.i.i.i137.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i140.i.i.7, %.lr.ph.i.i.i.i137.i.i ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i120.i.i, i64 98
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !1867, !noundef !12
  %i.ir = zext i16 %i.iq to i64
  %i.is = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i118.i.i, %i.ir
  br i1 %i.is, label %bb.bd, label %.lr.ph.i.i.i.i.i.i121.i.i

.lr.ph.i.i.i.i.i.i121.i.i:                        ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i, %bb.bb
  %.sroa.0.022.i.i.i.i.i.i122.i.i = phi ptr [ %i.it, %bb.bb ], [ %.sroa.07.0.copyload.i.i.i.i120.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i123.i.i = phi i64 [ %i.iv, %bb.bb ], [ %.sroa.48.0.copyload.i.i.i.i119.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ]
  %i.it = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i122.i.i, align 8, !noalias !1876, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i.i124.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i.i.i.i.i124.i.i, label %bb.bc, label %bb.bb

._crit_edge.loopexit.i.i.i.i.i.i125.i.i:          ; preds = %bb.bb
  %i.iu = zext i16 %i.ix to i64
  br label %bb.bd

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i.i.i121.i.i
  %i.iv = add i64 %.sroa.5.021.i.i.i.i.i.i123.i.i, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i122.i.i, i64 96
  %i.ix = load i16, ptr %i.iw, align 8, !noalias !1876 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 98
  %i.iz = load i16, ptr %i.iy, align 2, !noalias !1867, !noundef !12
  %i.ja = icmp ult i16 %i.ix, %i.iz
  br i1 %i.ja, label %._crit_edge.loopexit.i.i.i.i.i.i125.i.i, label %.lr.ph.i.i.i.i.i.i121.i.i

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i121.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @807) #50, !noalias !1879
  unreachable

bb.bd:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i125.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i
  %.sroa.10.0.ph.i.i.i.i.i126.i.i = phi i64 [ %i.iu, %._crit_edge.loopexit.i.i.i.i.i.i125.i.i ], [ %.sroa.59.0.copyload.i.i.i.i118.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i.i127.i.i = phi i64 [ %i.iv, %._crit_edge.loopexit.i.i.i.i.i.i125.i.i ], [ %.sroa.48.0.copyload.i.i.i.i119.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i128.i.i = phi ptr [ %i.it, %._crit_edge.loopexit.i.i.i.i.i.i125.i.i ], [ %.sroa.07.0.copyload.i.i.i.i120.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutjNtNtB7_7set_val9SetValZSTE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i.i.i117.i.i ] ; 3 uses
  %i.jb = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i127.i.i, 0
  br i1 %i.jb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jc = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i, 1
  br label %.loopexit30.i.i133.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.jd = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i, 11
  call void @llvm.assume(i1 %i.jd)
  %i.je = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i128.i.i, i64 112
  %i.jf = getelementptr [8 x i8], ptr %i.je, i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i ; 2 uses
  %xtraiter317 = and i64 %.sroa.7.0.ph.i.i.i.i.i127.i.i, 7 ; 2 uses
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.prol.loopexit315, label %.prol.preheader314

.prol.preheader314:                               ; preds = %bb.bf, %.prol.preheader314
  %.sroa.017.0.in.i.i.i.i.i.i129.i.i.prol = phi ptr [ %i.jg, %.prol.preheader314 ], [ %i.jf, %bb.bf ]
  %.sroa.019.0.in.i.i.i.i.i.i130.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i131.i.i.prol, %.prol.preheader314 ], [ %.sroa.7.0.ph.i.i.i.i.i127.i.i, %bb.bf ]
  %prol.iter319 = phi i64 [ %prol.iter319.next, %.prol.preheader314 ], [ 0, %bb.bf ]
  %.sroa.019.0.i.i.i.i.i.i131.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i130.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i132.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i129.i.i.prol, align 8, !noalias !1880, !nonnull !12, !noundef !12 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.prol, i64 104 ; 2 uses
  %prol.iter319.next = add i64 %prol.iter319, 1   ; 2 uses
  %prol.iter319.cmp.not = icmp eq i64 %prol.iter319.next, %xtraiter317
  br i1 %prol.iter319.cmp.not, label %.prol.loopexit315, label %.prol.preheader314, !llvm.loop !1884

.prol.loopexit315:                                ; preds = %.prol.preheader314, %bb.bf
  %.sroa.017.0.i.i.i.i.i.i132.i.i.lcssa.unr = phi ptr [ poison, %bb.bf ], [ %.sroa.017.0.i.i.i.i.i.i132.i.i.prol, %.prol.preheader314 ]
  %.sroa.017.0.in.i.i.i.i.i.i129.i.i.unr = phi ptr [ %i.jf, %bb.bf ], [ %i.jg, %.prol.preheader314 ]
  %.sroa.019.0.in.i.i.i.i.i.i130.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i127.i.i, %bb.bf ], [ %.sroa.019.0.i.i.i.i.i.i131.i.i.prol, %.prol.preheader314 ]
  %i.jh = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i127.i.i, 8
  br i1 %i.jh, label %.loopexit30.i.i133.i.i, label %.new316

.new316:                                          ; preds = %.prol.loopexit315, %.new316
  %.sroa.017.0.in.i.i.i.i.i.i129.i.i = phi ptr [ %i.jq, %.new316 ], [ %.sroa.017.0.in.i.i.i.i.i.i129.i.i.unr, %.prol.loopexit315 ]
  %.sroa.019.0.in.i.i.i.i.i.i130.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i131.i.i.7, %.new316 ], [ %.sroa.019.0.in.i.i.i.i.i.i130.i.i.unr, %.prol.loopexit315 ]
  %.sroa.017.0.i.i.i.i.i.i132.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i129.i.i, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.1 = load ptr, ptr %i.ji, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.1, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.2 = load ptr, ptr %i.jj, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.2, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.3 = load ptr, ptr %i.jk, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.3, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.4 = load ptr, ptr %i.jl, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.4, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.5 = load ptr, ptr %i.jm, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.5, i64 104
  %.sroa.017.0.i.i.i.i.i.i132.i.i.6 = load ptr, ptr %i.jn, align 8, !noalias !1880, !nonnull !12, !noundef !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.6, i64 104
  %.sroa.019.0.i.i.i.i.i.i131.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i130.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i132.i.i.7 = load ptr, ptr %i.jo, align 8, !noalias !1880, !nonnull !12, !noundef !12 ; 2 uses
  %i.jp = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i131.i.i.7, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i132.i.i.7, i64 104
  br i1 %i.jp, label %.loopexit30.i.i133.i.i, label %.new316

.loopexit30.i.i133.i.i:                           ; preds = %.prol.loopexit315, %.new316, %bb.be
  %.sroa.78.0.i.i.i.i.i134.i.i = phi i64 [ %i.jc, %bb.be ], [ 0, %.new316 ], [ 0, %.prol.loopexit315 ]
  %.sroa.07.0.i.i.i.i.i135.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i128.i.i, %bb.be ], [ %.sroa.017.0.i.i.i.i.i.i132.i.i.lcssa.unr, %.prol.loopexit315 ], [ %.sroa.017.0.i.i.i.i.i.i132.i.i.7, %.new316 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i128.i.i, i64 8
  %i.js = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i, 11
  call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.sroa.10.0.ph.i.i.i.i.i126.i.i
  %i.ju = load i64, ptr %i.jt, align 8, !noalias !1885, !noundef !12 ; 3 uses
  %i.jv = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %i.ju) #45, !noalias !1885
  br i1 %i.jv, label %bb.bg, label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.bg:                                            ; preds = %.loopexit30.i.i133.i.i
  %i.jw = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env13ignore_signal(i64 noundef %i.ju) #45, !noalias !1885 ; 2 uses
  %i.jx = extractvalue { ptr, ptr } %i.jw, 0      ; 2 uses
  %.not.i.i.i136.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i136.i.i, label %bb.bh, label %.loopexit164.i.i

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %i.ju, i8 noundef 1, i1 noundef zeroext true) #45, !noalias !1885
  br label %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.bh, %.loopexit30.i.i133.i.i
  %i.jy = icmp eq i64 %i.hz, 0
  br i1 %i.jy, label %._crit_edge.i.i86.i.i, label %bb.az

._crit_edge.i.i86.i.i:                            ; preds = %_RNCINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB4_13ignore_signalE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.preheader.i.i83.i.i
  br i1 %i.hq, label %bb.bi, label %.loopexit160.i.i

bb.bi:                                            ; preds = %._crit_edge.i.i86.i.i
  %i.jz = call noundef i64 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals25signal_number_upper_bound() #45, !noalias !1885 ; 3 uses
  %.not.i7351.i.i87.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not.i7351.i.i87.i.i, label %.loopexit160.i.i, label %.lr.ph54.i.i88.i.i

.lr.ph54.i.i88.i.i:                               ; preds = %bb.bi
  br i1 %.not.i.i84.i.i, label %.preheader.i.preheader.i.i97.i.i, label %.lr.ph54.split.us.i.i89.i.i

.lr.ph54.split.us.i.i89.i.i:                      ; preds = %.lr.ph54.i.i88.i.i, %.backedge.us.i.i91.i.i
  %.sroa.03.052.us.i.i90.i.i = phi i64 [ %i.ka, %.backedge.us.i.i91.i.i ], [ 1, %.lr.ph54.i.i88.i.i ] ; 6 uses
  %i.ka = add i64 %.sroa.03.052.us.i.i90.i.i, 1
  switch i64 %.sroa.03.052.us.i.i90.i.i, label %bb.bj [
    i64 19, label %.backedge.us.i.i91.i.i
    i64 9, label %.backedge.us.i.i91.i.i
  ]

bb.bj:                                            ; preds = %.lr.ph54.split.us.i.i89.i.i
  %i.kb = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.us.i.i90.i.i) #45, !noalias !1885
  br i1 %i.kb, label %bb.bk, label %.backedge.us.i.i91.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.kc = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env13ignore_signal(i64 noundef %.sroa.03.052.us.i.i90.i.i) #45, !noalias !1885 ; 2 uses
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0      ; 2 uses
  %.not.i80.us.i.i93.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i80.us.i.i93.i.i, label %bb.bl, label %.loopexit164.i.i

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.us.i.i90.i.i, i8 noundef 1, i1 noundef zeroext false) #45, !noalias !1885
  br label %.backedge.us.i.i91.i.i

.backedge.us.i.i91.i.i:                           ; preds = %bb.bl, %bb.bj, %.lr.ph54.split.us.i.i89.i.i, %.lr.ph54.split.us.i.i89.i.i
  %exitcond.not.i.i92.i.i = icmp eq i64 %.sroa.03.052.us.i.i90.i.i, %i.jz
  br i1 %exitcond.not.i.i92.i.i, label %.loopexit160.i.i, label %.lr.ph54.split.us.i.i89.i.i

.preheader.i.preheader.i.i97.i.i:                 ; preds = %.lr.ph54.i.i88.i.i, %.backedge.i.i106.i.i
  %.sroa.03.052.i.i98.i.i = phi i64 [ %i.ke, %.backedge.i.i106.i.i ], [ 1, %.lr.ph54.i.i88.i.i ] ; 7 uses
  %i.ke = add i64 %.sroa.03.052.i.i98.i.i, 1
  br label %.preheader.i.i.i99.i.i

.preheader.i.i.i99.i.i:                           ; preds = %bb.bo, %.preheader.i.preheader.i.i97.i.i
  %.sroa.3.0.i.i.i.i100.i.i = phi i64 [ %i.ku, %bb.bo ], [ %i.hx, %.preheader.i.preheader.i.i97.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i101.i.i = phi ptr [ %i.kt, %bb.bo ], [ %i.hv, %.preheader.i.preheader.i.i97.i.i ] ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i101.i.i, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i101.i.i, i64 98
  %i.kh = load i16, ptr %i.kg, align 2, !noalias !1886, !noundef !12 ; 2 uses
  %i.ki = zext i16 %i.kh to i64                   ; 3 uses
  %.idx269 = shl nuw nsw i64 %i.ki, 3
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx269
  %i.kk = icmp eq i16 %i.kh, 0
  br i1 %i.kk, label %._crit_edge265, label %.lr.ph264

bb.bm:                                            ; preds = %.lr.ph264
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i.i103.i.i263, i64 8 ; 2 uses
  %i.km = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i102.i.i262, 1
  %i.kn = icmp eq ptr %i.kl, %i.kj
  br i1 %i.kn, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader.i.i.i99.i.i, %bb.bm
  %.sroa.0.03.i.i.i.i.i103.i.i263 = phi ptr [ %i.kl, %bb.bm ], [ %i.kf, %.preheader.i.i.i99.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i102.i.i262 = phi i64 [ %i.km, %bb.bm ], [ 0, %.preheader.i.i.i99.i.i ] ; 2 uses
  %.val6.i.i.i.i.i104.i.i = load i64, ptr %.sroa.0.03.i.i.i.i.i103.i.i263, align 8, !noalias !1886, !noundef !12
  %i.ko = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.sroa.03.052.i.i98.i.i, i64 %.val6.i.i.i.i.i104.i.i)
  switch i8 %i.ko, label %bb.bn [
    i8 -1, label %._crit_edge265
    i8 0, label %.backedge.i.i106.i.i
    i8 1, label %bb.bm
  ]

bb.bn:                                            ; preds = %.lr.ph264
  unreachable

._crit_edge265:                                   ; preds = %bb.bm, %.lr.ph264, %.preheader.i.i.i99.i.i
  %.sroa.4.0.i.ph.i.i.i.i108.i.i = phi i64 [ %i.ki, %.preheader.i.i.i99.i.i ], [ %i.ki, %bb.bm ], [ %.sroa.8.0.i.i.i.i.i102.i.i262, %.lr.ph264 ] ; 2 uses
  %i.kp = icmp eq i64 %.sroa.3.0.i.i.i.i100.i.i, 0
  br i1 %i.kp, label %.loopexit.i.i109.i.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge265
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i101.i.i, i64 104
  %i.kr = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i108.i.i, 12
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.sroa.4.0.i.ph.i.i.i.i108.i.i
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !1886, !nonnull !12, !noundef !12
  %i.ku = add i64 %.sroa.3.0.i.i.i.i100.i.i, -1
  br label %.preheader.i.i.i99.i.i

.loopexit.i.i109.i.i:                             ; preds = %._crit_edge265
  switch i64 %.sroa.03.052.i.i98.i.i, label %bb.bp [
    i64 19, label %.backedge.i.i106.i.i
    i64 9, label %.backedge.i.i106.i.i
  ]

bb.bp:                                            ; preds = %.loopexit.i.i109.i.i
  %i.kv = call noundef zeroext i1 @_RNvCs41JD7yXDh97_6uu_env15signal_is_valid(i64 noundef %.sroa.03.052.i.i98.i.i) #45, !noalias !1885
  br i1 %i.kv, label %bb.bq, label %.backedge.i.i106.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.kw = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env13ignore_signal(i64 noundef %.sroa.03.052.i.i98.i.i) #45, !noalias !1885 ; 2 uses
  %i.kx = extractvalue { ptr, ptr } %i.kw, 0      ; 2 uses
  %.not.i80.i.i110.i.i = icmp eq ptr %i.kx, null
  br i1 %.not.i80.i.i110.i.i, label %bb.br, label %.loopexit164.i.i

bb.br:                                            ; preds = %bb.bq
  call void @_RNvMs0_Cs41JD7yXDh97_6uu_envNtB5_15SignalActionLog6record(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef %.sroa.03.052.i.i98.i.i, i8 noundef 1, i1 noundef zeroext false) #45, !noalias !1885
  br label %.backedge.i.i106.i.i

.backedge.i.i106.i.i:                             ; preds = %.lr.ph264, %bb.br, %bb.bp, %.loopexit.i.i109.i.i, %.loopexit.i.i109.i.i
  %exitcond84.not.i.i107.i.i = icmp eq i64 %.sroa.03.052.i.i98.i.i, %i.jz
  br i1 %exitcond84.not.i.i107.i.i, label %.loopexit160.i.i, label %.preheader.i.preheader.i.i97.i.i

.loopexit160.i.i:                                 ; preds = %.backedge.us.i.i91.i.i, %.backedge.i.i106.i.i, %bb.bi, %._crit_edge.i.i86.i.i, %.loopexit165.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.kz = call fastcc { ptr, ptr } @_RINvCs41JD7yXDh97_6uu_env19apply_signal_actionNvB2_12block_signalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ky, ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #45 ; 2 uses
  %i.la = extractvalue { ptr, ptr } %i.kz, 0      ; 2 uses
  %.not76.i.i = icmp eq ptr %i.la, null
  br i1 %.not76.i.i, label %bb.bs, label %.loopexit164.i.i

bb.bs:                                            ; preds = %.loopexit160.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.v, i64 225
  %i.lc = load i8, ptr %i.lb, align 1, !range !80, !noalias !1782, !noundef !12
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env15SignalActionLogECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1782
  %i.le = call { ptr, ptr } @_RNvCs41JD7yXDh97_6uu_env22apply_change_directory(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.v) #45, !noalias !1809 ; 2 uses
  %i.lf = extractvalue { ptr, ptr } %i.le, 0      ; 2 uses
  %.not77.i.i = icmp eq ptr %i.lf, null
  br i1 %.not77.i.i, label %bb.bw, label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  call void @_RNvCs41JD7yXDh97_6uu_env20list_signal_handling(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) #45, !noalias !1809
  br label %bb.bt

bb.bv:                                            ; preds = %bb.bt
  %i.lg = extractvalue { ptr, ptr } %i.le, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lg) ]
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bt
  %i.lh = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.li = load i64, ptr %i.lh, align 8, !noalias !1782, !noundef !12 ; 2 uses
  %i.lj = icmp ult i64 %i.li, 576460752303423488
  call void @llvm.assume(i1 %i.lj)
  %i.lk = icmp eq i64 %i.li, 0
  br i1 %i.lk, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load i8, ptr %i.z, align 4, !range !80, !alias.scope !1779, !noalias !1809, !noundef !12
  %i.lm = trunc nuw i8 %i.ll to i1
  %i.ln = call { ptr, ptr } @_RNvMs1_Cs41JD7yXDh97_6uu_envNtB5_10EnvAppData11run_program(ptr noalias nofree noundef nonnull dereferenceable(3) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.v, i1 noundef zeroext %i.lm) #45, !noalias !1809 ; 2 uses
  %i.lo = extractvalue { ptr, ptr } %i.ln, 0
  %i.lp = extractvalue { ptr, ptr } %i.ln, 1
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.lq = getelementptr inbounds nuw i8, ptr %i.v, i64 226
  %i.lr = load i8, ptr %i.lq, align 2, !range !1889, !noalias !1782, !noundef !12
  %i.ls = call fastcc noundef ptr @_RINvNtNtCsh036I4OHgIr_6uucore4mods7display18print_all_env_varsNtNtB4_11line_ending10LineEndingECsl8pJiQOn4hA_9coreutils(i8 noundef %i.lr) #45, !noalias !1809 ; 2 uses
  %.not78.i.i = icmp eq ptr %i.ls, null
  br i1 %.not78.i.i, label %_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lt = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ls) #45, !noalias !1809 ; 2 uses
  %i.lu = extractvalue { ptr, ptr } %i.lt, 0
  %i.lv = extractvalue { ptr, ptr } %i.lt, 1
  br label %bb.ca

_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.by
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env7OptionsECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(232) %i.v) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1782
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set8BTreeSetReEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1782
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.x) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1782
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1776
  br label %bb.ce

bb.ca:                                            ; preds = %.loopexit164.i.i, %bb.bz, %bb.bx, %bb.bv, %bb.aa, %bb.y
  %.sroa.12.1.i.i = phi ptr [ %i.dq, %bb.y ], [ %i.dt, %bb.aa ], [ %i.lw, %.loopexit164.i.i ], [ %i.lg, %bb.bv ], [ %i.lv, %bb.bz ], [ %i.lp, %bb.bx ]
  %.sroa.0.1.i.i = phi ptr [ %i.dp, %bb.y ], [ %i.ds, %bb.aa ], [ %.sroa.0.2.i.i, %.loopexit164.i.i ], [ %i.lf, %bb.bv ], [ %i.lu, %bb.bz ], [ %i.lo, %bb.bx ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env7OptionsECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(232) %i.v) #45, !noalias !1809
  br label %bb.cb

.loopexit164.i.i:                                 ; preds = %bb.aj, %bb.ap, %bb.aw, %bb.bg, %bb.bk, %bb.bq, %.loopexit160.i.i
  %.sink312.i.i = phi { ptr, ptr } [ %i.kc, %bb.bk ], [ %i.go, %bb.ap ], [ %i.hk, %bb.aw ], [ %i.jw, %bb.bg ], [ %i.kw, %bb.bq ], [ %i.kz, %.loopexit160.i.i ], [ %i.ge, %bb.aj ]
  %.sroa.0.2.i.i = phi ptr [ %i.kd, %bb.bk ], [ %i.gp, %bb.ap ], [ %i.hl, %bb.aw ], [ %i.jx, %bb.bg ], [ %i.kx, %bb.bq ], [ %i.la, %.loopexit160.i.i ], [ %i.gf, %bb.aj ]
  %i.lw = extractvalue { ptr, ptr } %.sink312.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs41JD7yXDh97_6uu_env15SignalActionLogECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1782
  br label %bb.ca

bb.cb:                                            ; preds = %bb.ca, %bb.w
  %.sroa.12.3.i.i = phi ptr [ %i.dn, %bb.w ], [ %.sroa.12.1.i.i, %bb.ca ]
  %.sroa.0.3.i.i = phi ptr [ %i.dl, %bb.w ], [ %.sroa.0.1.i.i, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1782
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set8BTreeSetReEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1782
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.x) #45, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1782
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.lx = icmp eq ptr %.sroa.5.0.copyload.i.i, null
  br i1 %i.lx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.lz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ 0, %bb.cb ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.lz = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  %.val.i.i.i.i.i.i = load i64, ptr %i.ly, align 8, !range !63, !alias.scope !1896, !noalias !1899, !noundef !12 ; 2 uses
  %i.ma = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ma, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !1902, !noalias !1899, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !1903
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.cc, %.lr.ph.i.i.i.i.i
  %i.mc = icmp eq i64 %i.lz, %i.cy
  br i1 %i.mc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.cb
  %i.md = icmp eq i64 %.sroa.0141.0.copyload.i.i, 0
  br i1 %i.md, label %_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.cd

bb.cd:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.me = mul nuw i64 %.sroa.0141.0.copyload.i.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i, i64 noundef %i.me, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !1899
  br label %_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNvCs41JD7yXDh97_6uu_env6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBI_6cloned6ClonedINtNtNtBM_5slice4iter4IterB2j_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1782
end_hunk_1
begin_hunk_2_@_RINvCsdBUjgVUISxQ_6uu_sum6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBz_6cloned6ClonedINtNtNtBD_5slice4iter4IterB2a_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.assume(i1 %i.ep)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.eq = getelementptr i8, ptr %i.ee, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  store ptr %i.eq, ptr %i.di, align 8, !alias.scope !10317, !noalias !10314
  store i8 3, ptr %i.v, align 8, !alias.scope !10317, !noalias !10314
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di) #45, !noalias !10314
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10314
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10267
  %.val88.i = load ptr, ptr %i.al, align 8, !noalias !10267, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.val88.i, i64 12 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !noalias !10267, !noundef !12
  %i.et = add i32 %i.es, -1                       ; 2 uses
  store i32 %i.et, ptr %i.er, align 4, !noalias !10267
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i

bb.ad:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i
  store atomic i64 0, ptr %.val88.i monotonic, align 8, !noalias !10267
  %i.ev = getelementptr inbounds nuw i8, ptr %.val88.i, i64 8 ; 2 uses
  %i.ew = atomicrmw xchg ptr %i.ev, i32 0 release, align 4, !noalias !10267
  %i.ex = icmp eq i32 %i.ew, 2
  br i1 %i.ex, label %bb.ae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i, !prof !48

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ev) #45, !noalias !10267
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ae, %bb.ad, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10267
  call void @llvm.experimental.noalias.scope.decl(metadata !10320)
  %i.ey = load ptr, ptr %i.dd, align 8, !alias.scope !10320, !noalias !10267, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !invariant.load !12, !noalias !10323 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i
  %i.fa = load ptr, ptr %i.am, align 8, !alias.scope !10320, !noalias !10267, !nonnull !12, !noundef !12
  call void %i.ez(ptr noundef nonnull %i.fa) #51, !noalias !10323, !inline_history !10324
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !range !63, !invariant.load !12, !noalias !10323 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.ag
  %.val.i96.i = load ptr, ptr %i.am, align 8, !alias.scope !10320, !noalias !10267, !nonnull !12, !noundef !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !range !267, !invariant.load !12, !noalias !10323
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i96.i, i64 noundef %i.fc, i64 noundef range(i64 1, -9223372036854775807) %i.ff) #45, !noalias !10323
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !10267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10267
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit.i
  %i.fg = icmp eq ptr %i.dj, %i.cp
  br i1 %i.fg, label %._crit_edge.i, label %bb.q

bb.ah:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !noalias !10267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10267
  br i1 %i.cf, label %bb.aw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !10325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.u, i8 0, i64 8192, i1 false), !noalias !10328
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i, %bb.ai
  %.sroa.03.0.i.i.ph = phi i16 [ %.lcssa289, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i ], [ 0, %bb.ai ] ; 4 uses
  %.sroa.0.0.i97.i.ph = phi i64 [ %i.hh, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i ], [ 0, %bb.ai ] ; 3 uses
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i99.i
  %i.fh = call { i64, ptr } @_RNvXCsdBUjgVUISxQ_6uu_sumNtB2_6ReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull %i.u, i64 noundef 8192) #45, !noalias !10330 ; 2 uses
  %i.fi = extractvalue { i64, ptr } %i.fh, 0
  %i.fj = extractvalue { i64, ptr } %i.fh, 1      ; 10 uses
  %i.fk = ptrtoint ptr %i.fj to i64               ; 10 uses
  %i.fl = trunc nuw i64 %i.fi to i1
  br i1 %i.fl, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  %i.fm = and i64 %i.fk, 3                        ; 2 uses
  switch i64 %i.fm, label %default.unreachable [
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 0, label %bb.am
    i64 1, label %bb.an
  ], !prof !91

bb.ak:                                            ; preds = %bb.aj
  %i.fn = lshr i64 %i.fk, 32
  %i.fo = trunc nuw i64 %i.fn to i32
  %i.fp = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #45, !noalias !10330
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !10330, !nonnull !12, !noundef !12
  %i.fs = call noundef i8 %i.fr(i32 noundef %i.fo) #45, !noalias !10330, !inline_history !10331
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.ft = lshr i64 %i.fk, 32
  %i.fu = icmp ult ptr %i.fj, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i = trunc i64 %i.ft to i8 ; 2 uses
  %i.fv = icmp ne i8 %switch.idx.cast.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.assume(i1 %i.fv)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.am:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fx = load i8, ptr %i.fw, align 8, !range !605, !noalias !10330, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

bb.an:                                            ; preds = %bb.aj
  %i.fy = getelementptr i8, ptr %i.fj, i64 31
  %i.fz = load i8, ptr %i.fy, align 8, !range !605, !noalias !10330, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.sroa.0.0.i.i.i = phi i8 [ %i.fs, %bb.ak ], [ %switch.idx.cast.i.i.i.i.i, %bb.al ], [ %i.fx, %bb.am ], [ %i.fz, %bb.an ]
  %i.ga = icmp eq i8 %.sroa.0.0.i.i.i, 35
  br i1 %i.ga, label %bb.at, label %bb.as

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.gb = icmp eq ptr %i.fj, null
  br i1 %i.gb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gc = lshr i64 %.sroa.0.0.i97.i.ph, 10
  %i.gd = and i64 %.sroa.0.0.i97.i.ph, 1023
  %.not.i98.i = icmp ne i64 %i.gd, 0
  %i.ge = zext i1 %.not.i98.i to i64
  %.sroa.05.0.i.i = add nuw nsw i64 %i.gc, %i.ge  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10328
  %.val8.i.i = load i32, ptr %i.an, align 8, !range !575, !alias.scope !10325, !noalias !10330, !noundef !12
  %i.gf = icmp eq i32 %.val8.i.i, 0
  br i1 %i.gf, label %_RINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB2_6ReaderECsl8pJiQOn4hA_9coreutils.exit.thread170.i, label %_RINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB2_6ReaderECsl8pJiQOn4hA_9coreutils.exit.thread170.sink.split.i

bb.aq:                                            ; preds = %bb.ao
  %i.gg = icmp ult ptr %i.fj, inttoptr (i64 8193 to ptr)
  br i1 %i.gg, label %.preheader176.i.preheader, label %bb.ar, !prof !10332

.preheader176.i.preheader:                        ; preds = %bb.aq
  %xtraiter = and i64 %i.fk, 3                    ; 3 uses
  %i.gh = icmp ult ptr %i.fj, inttoptr (i64 4 to ptr)
  br i1 %i.gh, label %.preheader176.i.epil.preheader, label %.preheader176.i.preheader.new

.preheader176.i.preheader.new:                    ; preds = %.preheader176.i.preheader
  %unroll_iter = and i64 %i.fk, -4
  br label %.preheader176.i

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fk, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #50, !noalias !10330
  unreachable

.preheader176.i:                                  ; preds = %.preheader176.i, %.preheader176.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader176.i.preheader.new ], [ %i.hb, %.preheader176.i ] ; 5 uses
  %.sroa.02.0.i.i.i = phi i16 [ %.sroa.03.0.i.i.ph, %.preheader176.i.preheader.new ], [ %i.ha, %.preheader176.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader176.i.preheader.new ], [ %niter.next.3, %.preheader176.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i = load i8, ptr %i.gi, align 1, !noalias !10328, !noundef !12
  %i.gj = call noundef i16 @llvm.fshl.i16(i16 %.sroa.02.0.i.i.i, i16 %.sroa.02.0.i.i.i, i16 15)
  %i.gk = zext i8 %.val.i.i.i to i16
  %i.gl = add i16 %i.gj, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.0.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %.val.i.i.i.1 = load i8, ptr %i.gn, align 1, !noalias !10328, !noundef !12
  %i.go = call noundef i16 @llvm.fshl.i16(i16 %i.gl, i16 %i.gl, i16 15)
  %i.gp = zext i8 %.val.i.i.i.1 to i16
  %i.gq = add i16 %i.go, %i.gp                    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.0.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %.val.i.i.i.2 = load i8, ptr %i.gs, align 1, !noalias !10328, !noundef !12
  %i.gt = call noundef i16 @llvm.fshl.i16(i16 %i.gq, i16 %i.gq, i16 15)
  %i.gu = zext i8 %.val.i.i.i.2 to i16
  %i.gv = add i16 %i.gt, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.0.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 3
  %.val.i.i.i.3 = load i8, ptr %i.gx, align 1, !noalias !10328, !noundef !12
  %i.gy = call noundef i16 @llvm.fshl.i16(i16 %i.gv, i16 %i.gv, i16 15)
  %i.gz = zext i8 %.val.i.i.i.3 to i16
  %i.ha = add i16 %i.gy, %i.gz                    ; 3 uses
  %i.hb = add nuw i64 %.sroa.04.0.i.i.i, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa, label %.preheader176.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa: ; preds = %.preheader176.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i, label %.preheader176.i.epil.preheader

.preheader176.i.epil.preheader:                   ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa, %.preheader176.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader176.i.preheader ], [ %i.hb, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i16 [ %.sroa.03.0.i.i.ph, %.preheader176.i.preheader ], [ %i.ha, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod340 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod340)
  br label %.preheader176.i.epil

.preheader176.i.epil:                             ; preds = %.preheader176.i.epil, %.preheader176.i.epil.preheader
  %.sroa.04.0.i.i.i.epil = phi i64 [ %i.hg, %.preheader176.i.epil ], [ %.sroa.04.0.i.i.i.epil.init, %.preheader176.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.epil = phi i16 [ %i.hf, %.preheader176.i.epil ], [ %.sroa.02.0.i.i.i.epil.init, %.preheader176.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader176.i.epil ], [ 0, %.preheader176.i.epil.preheader ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.0.i.i.i.epil
  %.val.i.i.i.epil = load i8, ptr %i.hc, align 1, !noalias !10328, !noundef !12
  %i.hd = call noundef i16 @llvm.fshl.i16(i16 %.sroa.02.0.i.i.i.epil, i16 %.sroa.02.0.i.i.i.epil, i16 15)
  %i.he = zext i8 %.val.i.i.i.epil to i16
  %i.hf = add i16 %i.hd, %i.he                    ; 2 uses
  %i.hg = add nuw i64 %.sroa.04.0.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i, label %.preheader176.i.epil, !llvm.loop !10333

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i: ; preds = %.preheader176.i.epil, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa
  %.lcssa289 = phi i16 [ %i.ha, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i.unr-lcssa ], [ %i.hf, %.preheader176.i.epil ]
  %i.hh = add i64 %.sroa.0.0.i97.i.ph, %i.fk
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer

bb.as:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10328
  %.val6.i.i = load i32, ptr %i.an, align 8, !range !575, !alias.scope !10325, !noalias !10330, !noundef !12
  %i.hi = icmp eq i32 %.val6.i.i, 0
  br i1 %i.hi, label %_RINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB2_6ReaderECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB2_6ReaderECsl8pJiQOn4hA_9coreutils.exit.thread.sink.split.i

bb.at:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10334
  switch i64 %i.fm, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i99.i
    i64 3, label %bb.au
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i99.i
    i64 1, label %bb.av
  ], !prof !91

bb.au:                                            ; preds = %bb.at
  %i.hj = icmp ult ptr %i.fj, inttoptr (i64 188978561024 to ptr)
  %i.hk = and i64 %i.fk, 1095216660480
  %i.hl = icmp ne i64 %i.hk, 1095216660480
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.assume(i1 %i.hl)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i99.i

bb.av:                                            ; preds = %bb.at
  %i.hm = getelementptr i8, ptr %i.fj, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ]
  store ptr %i.hm, ptr %i.cr, align 8, !alias.scope !10337, !noalias !10334
  store i8 3, ptr %i.t, align 8, !alias.scope !10337, !noalias !10334
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cr) #45, !noalias !10340
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i99.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i99.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10334
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.aw:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !10341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8192) %i.s, i8 0, i64 8192, i1 false), !noalias !10344
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i, %bb.aw
  %.sroa.03.0.i101.i.ph = phi i32 [ %.lcssa243, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i ], [ 0, %bb.aw ] ; 4 uses
  %.sroa.0.0.i102.i.ph = phi i64 [ %i.jh, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i ], [ 0, %bb.aw ] ; 3 uses
  br label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i.outer, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i112.i
  %i.hn = call { i64, ptr } @_RNvXCsdBUjgVUISxQ_6uu_sumNtB2_6ReaderNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull %i.s, i64 noundef 8192) #45, !noalias !10346 ; 2 uses
  %i.ho = extractvalue { i64, ptr } %i.hn, 0
  %i.hp = extractvalue { i64, ptr } %i.hn, 1      ; 10 uses
  %i.hq = ptrtoint ptr %i.hp to i64               ; 11 uses
  %i.hr = trunc nuw i64 %i.ho to i1
  br i1 %i.hr, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hp) ]
  %i.hs = and i64 %i.hq, 3                        ; 2 uses
  switch i64 %i.hs, label %default.unreachable [
    i64 2, label %bb.ay
    i64 3, label %bb.az
    i64 0, label %bb.ba
    i64 1, label %bb.bb
  ], !prof !91

bb.ay:                                            ; preds = %bb.ax
  %i.ht = lshr i64 %i.hq, 32
  %i.hu = trunc nuw i64 %i.ht to i32
  %i.hv = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #45, !noalias !10346
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !noalias !10346, !nonnull !12, !noundef !12
  %i.hy = call noundef i8 %i.hx(i32 noundef %i.hu) #45, !noalias !10346, !inline_history !10347
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i110.i

bb.az:                                            ; preds = %bb.ax
  %i.hz = lshr i64 %i.hq, 32
  %i.ia = icmp ult ptr %i.hp, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i114.i = trunc i64 %i.hz to i8 ; 2 uses
  %i.ib = icmp ne i8 %switch.idx.cast.i.i.i.i114.i, -1
  call void @llvm.assume(i1 %i.ia)
  call void @llvm.assume(i1 %i.ib)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i110.i

bb.ba:                                            ; preds = %bb.ax
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.id = load i8, ptr %i.ic, align 8, !range !605, !noalias !10346, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i110.i

bb.bb:                                            ; preds = %bb.ax
  %i.ie = getelementptr i8, ptr %i.hp, i64 31
  %i.if = load i8, ptr %i.ie, align 8, !range !605, !noalias !10346, !noundef !12
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i110.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i110.i: ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sroa.0.0.i.i111.i = phi i8 [ %i.hy, %bb.ay ], [ %switch.idx.cast.i.i.i.i114.i, %bb.az ], [ %i.id, %bb.ba ], [ %i.if, %bb.bb ]
  %i.ig = icmp eq i8 %.sroa.0.0.i.i111.i, 35
  br i1 %i.ig, label %bb.bh, label %bb.bg

bb.bc:                                            ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ih = icmp eq ptr %i.hp, null
  br i1 %i.ih, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ii = and i32 %.sroa.03.0.i101.i.ph, 65535
  %i.ij = lshr i32 %.sroa.03.0.i101.i.ph, 16
  %i.ik = add nuw nsw i32 %i.ii, %i.ij            ; 2 uses
  %i.il = lshr i32 %i.ik, 16
  %i.im = add nuw nsw i32 %i.il, %i.ik
  %i.in = lshr i64 %.sroa.0.0.i102.i.ph, 9
  %i.io = and i64 %.sroa.0.0.i102.i.ph, 511
  %.not.i108.i = icmp ne i64 %i.io, 0
  %i.ip = zext i1 %.not.i108.i to i64
  %.sroa.09.0.i.i = add nuw nsw i64 %i.in, %i.ip  ; 2 uses
  %i.iq = trunc i32 %i.im to i16                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10344
  %.val12.i.i = load i32, ptr %i.an, align 8, !range !575, !alias.scope !10341, !noalias !10346, !noundef !12
  %i.ir = icmp eq i32 %.val12.i.i, 0
  br i1 %i.ir, label %_RINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB2_6ReaderECsl8pJiQOn4hA_9coreutils.exit.thread170.i, label %_RINvCsdBUjgVUISxQ_6uu_sum7bsd_sumNtB2_6ReaderECsl8pJiQOn4hA_9coreutils.exit.thread170.sink.split.i

bb.be:                                            ; preds = %bb.bc
  %i.is = icmp ult ptr %i.hp, inttoptr (i64 8193 to ptr)
  br i1 %i.is, label %.preheader.i.preheader, label %bb.bf, !prof !10332

.preheader.i.preheader:                           ; preds = %bb.be
  %min.iters.check = icmp ult ptr %i.hp, inttoptr (i64 8 to ptr)
  br i1 %min.iters.check, label %.preheader.i.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.preheader
  %n.vec = and i64 %i.hq, -8                      ; 3 uses
  %i.it = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.sroa.03.0.i101.i.ph, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.it, %vector.ph ], [ %i.iy, %vector.body ]
  %vec.phi278 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.iz, %vector.body ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %wide.load = load <4 x i8>, ptr %i.iu, align 1, !noalias !10344
  %wide.load279 = load <4 x i8>, ptr %i.iv, align 1, !noalias !10344
  %i.iw = zext <4 x i8> %wide.load to <4 x i32>
  %i.ix = zext <4 x i8> %wide.load279 to <4 x i32>
  %i.iy = add <4 x i32> %vec.phi, %i.iw           ; 2 uses
  %i.iz = add <4 x i32> %vec.phi278, %i.ix        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ja = icmp eq i64 %index.next, %n.vec
  br i1 %i.ja, label %middle.block, label %vector.body, !llvm.loop !10348

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.iz, %i.iy
  %i.jb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.hq
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvCsdBUjgVUISxQ_6uu_sum8sysv_sumNtB1I_6ReaderE0ECsl8pJiQOn4hA_9coreutils.exit.loopexit.i.i, label %.preheader.i.preheader280

.preheader.i.preheader280:                        ; preds = %.preheader.i.preheader, %middle.block
  %.sroa.04.0.i.i103.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i104.i.ph = phi i32 [ %.sroa.03.0.i101.i.ph, %.preheader.i.preheader ], [ %i.jb, %middle.block ]
  br label %.preheader.i

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hq, i64 noundef 8192, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #50, !noalias !10346
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader280, %.preheader.i
  %.sroa.04.0.i.i103.i = phi i64 [ %i.jf, %.preheader.i ], [ %.sroa.04.0.i.i103.i.ph, %.preheader.i.preheader280 ] ; 2 uses
  %.sroa.02.0.i.i104.i = phi i32 [ %i.je, %.preheader.i ], [ %.sroa.02.0.i.i104.i.ph, %.preheader.i.preheader280 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.04.0.i.i103.i
  %.val.i.i105.i = load i8, ptr %i.jc, align 1, !noalias !10344, !noundef !12
end_hunk_2
begin_hunk_3_@_RINvMs4_CsgDnTRHLCOsi_7uu_joinINtB6_4ReprNtB6_12MultiByteSepE12write_fieldsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECsl8pJiQOn4hA_9coreutils:bb.a
bb.c:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit23.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit23, %bb.b
  %exitcond.not = icmp eq i64 %i.l, %i.b
  br i1 %exitcond.not, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18978)
  %i.m = load i64, ptr %1, align 8, !range !63, !alias.scope !18978, !noalias !18981, !noundef !12
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !18978, !noalias !18981, !noundef !12 ; 4 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nsw i64 %i.m, %i.n
  %i.q = icmp ult i64 %.val21, %i.p
  br i1 %i.q, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit, !prof !5

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18983)
  %i.r = load ptr, ptr %i.g, align 8, !alias.scope !18986, !noalias !18987, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val21, i1 false), !noalias !18986
  %i.t = add nuw i64 %i.n, %.val21
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !18986, !noalias !18987
  br label %bb.e

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d
  %i.u = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val21) #53 ; 2 uses
  %.not17 = icmp eq ptr %i.u, null
  br i1 %.not17, label %bb.e, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit
  %i.v = tail call { ptr, i64 } @_RNvMsa_CsgDnTRHLCOsi_7uu_joinNtB5_4Line9get_field(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %.sroa.015.028) #45 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %.not18 = icmp eq ptr %i.w, null
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %or.cond = select i1 %.not18, i1 true, i1 %i.y  ; 2 uses
  %.sroa.4.0 = select i1 %or.cond, i64 %i.k, i64 %i.x ; 4 uses
  %.sroa.08.0 = select i1 %or.cond, ptr %i.i, ptr %i.w ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18989)
  %i.z = load i64, ptr %1, align 8, !range !63, !alias.scope !18989, !noalias !18992, !noundef !12
  %i.aa = load i64, ptr %i.f, align 8, !alias.scope !18989, !noalias !18992, !noundef !12 ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sub nsw i64 %i.z, %i.aa
  %i.ad = icmp ult i64 %.sroa.4.0, %i.ac
  br i1 %i.ad, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit23.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit23, !prof !5

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit23.thread: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18994)
  %i.ae = load ptr, ptr %i.g, align 8, !alias.scope !18997, !noalias !18998, !nonnull !12, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %.sroa.08.0, i64 range(i64 0, -9223372036854775808) %.sroa.4.0, i1 false), !noalias !18997
  %i.ag = add nuw i64 %i.aa, %.sroa.4.0
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !18997, !noalias !18998
  br label %bb.c

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit23: ; preds = %bb.e
  %i.ah = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0) #53 ; 2 uses
  %.not19 = icmp eq ptr %i.ah, null
  br i1 %.not19, label %bb.c, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs4_CsgDnTRHLCOsi_7uu_joinINtB6_4ReprNtB6_13WhitespaceSepE12write_fieldsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECsl8pJiQOn4hA_9coreutils(ptr nofree readonly captures(address, read_provenance) %.24.val, i64 %.32.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %.not8 = icmp eq i64 %i.b, 0
  br i1 %.not8, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.015.05 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.c ] ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.015.05, 1         ; 2 uses
  %.not = icmp eq i64 %.sroa.015.05, %2
  br i1 %.not, label %bb.c, label %bb.d

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge: ; preds = %bb.c, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.ab, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22 ], [ %i.o, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit ], [ null, %bb.c ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22, %bb.b
  %exitcond.not = icmp eq i64 %i.f, %i.b
  br i1 %exitcond.not, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19000)
  %i.g = load i64, ptr %0, align 8, !range !63, !alias.scope !19000, !noalias !19003, !noundef !12
  %i.h = load i64, ptr %i.d, align 8, !alias.scope !19000, !noalias !19003, !noundef !12 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = sub nsw i64 %i.g, %i.h
  %i.k = icmp ugt i64 %i.j, 1
  br i1 %i.k, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit, !prof !5

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19005)
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !19008, !noalias !19009, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  store i8 32, ptr %i.m, align 1, !noalias !19008
  %i.n = add nuw i64 %i.h, 1
  store i64 %i.n, ptr %i.d, align 8, !alias.scope !19008, !noalias !19009
  br label %bb.e

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d
  %i.o = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 1) #53 ; 2 uses
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %bb.e, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge

bb.e:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit
  %i.p = tail call { ptr, i64 } @_RNvMsa_CsgDnTRHLCOsi_7uu_joinNtB5_4Line9get_field(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i64 noundef %.sroa.015.05) #45 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %.not18 = icmp eq ptr %i.q, null
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %or.cond = select i1 %.not18, i1 true, i1 %i.s  ; 2 uses
  %.sroa.4.0 = select i1 %or.cond, i64 %.32.val, i64 %i.r ; 4 uses
  %.sroa.08.0 = select i1 %or.cond, ptr %.24.val, ptr %i.q ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19011)
  %i.t = load i64, ptr %0, align 8, !range !63, !alias.scope !19011, !noalias !19014, !noundef !12
  %i.u = load i64, ptr %i.d, align 8, !alias.scope !19011, !noalias !19014, !noundef !12 ; 4 uses
  %i.v = icmp sgt i64 %i.u, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = sub nsw i64 %i.t, %i.u
  %i.x = icmp ult i64 %.sroa.4.0, %i.w
  br i1 %i.x, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22, !prof !5

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22.thread: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19016)
  %i.y = load ptr, ptr %i.e, align 8, !alias.scope !19019, !noalias !19020, !nonnull !12, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %.sroa.08.0, i64 range(i64 0, -9223372036854775808) %.sroa.4.0, i1 false), !noalias !19019
  %i.aa = add nuw i64 %.sroa.4.0, %i.u
  store i64 %i.aa, ptr %i.d, align 8, !alias.scope !19019, !noalias !19020
  br label %bb.c

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit22: ; preds = %bb.e
  %i.ab = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.0) #53 ; 2 uses
  %.not19 = icmp eq ptr %i.ab, null
  br i1 %.not19, label %bb.c, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsl8pJiQOn4hA_9coreutils.exit._crit_edge
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i64 1, 0) i64 @_RINvMs4_NtCskMQyL8guyrm_15string_interner8internerINtB6_14StringInternerINtNtNtB8_7backend6bucket13BucketBackendNtNtB8_6symbol11SymbolUsizeENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = icmp samesign ult i64 %2, 17
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 7
  br i1 %i.e, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.c

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i: ; preds = %bb.a
  %i.f = add i64 %2, -17                          ; 2 uses
  %i.g = lshr i64 %i.f, 4                         ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i
  %unroll_iter = and i64 %i.h, 2305843009213693950
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new ], [ %i.s, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new ], [ %i.ac, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i = phi ptr [ %1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new ], [ %i.t, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i, align 1, !alias.scope !19022, !noalias !19033
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i = load i64, ptr %i.k, align 1, !alias.scope !19022, !noalias !19033
  %i.l = xor i64 %.sroa.037.0.copyload.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i
  %i.m = xor i64 %.sroa.039.0.copyload.i.i.i.i.i, -6626703657320631856
  %i.n = zext i64 %i.l to i128
  %i.o = zext i64 %i.m to i128
  %i.p = mul nuw i128 %i.o, %i.n                  ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.j, align 1, !alias.scope !19022, !noalias !19033
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.u, align 1, !alias.scope !19022, !noalias !19033
  %i.v = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i
  %i.w = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.1, -6626703657320631856
  %i.x = zext i64 %i.v to i128
  %i.y = zext i64 %i.w to i128
  %i.z = mul nuw i128 %i.y, %i.x                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i
  %i.ad = and i64 %i.f, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ad, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i ], [ %i.s, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i ], [ %i.ac, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.epil.init = phi ptr [ %1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.preheader.i.i.i.i.i ], [ %i.t, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod23 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %.sroa.037.0.copyload.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.epil.init, align 1, !alias.scope !19022, !noalias !19033
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.epil = load i64, ptr %i.ae, align 1, !alias.scope !19022, !noalias !19033
  %i.af = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.epil.init
  %i.ag = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.epil, -6626703657320631856
  %i.ah = zext i64 %i.af to i128
  %i.ai = zext i64 %i.ag to i128
  %i.aj = mul nuw i128 %i.ai, %i.ah               ; 2 uses
  %i.ak = lshr i128 %i.aj, 64
  %i.al = xor i128 %i.ak, %i.aj
  %i.am = trunc i128 %i.al to i64
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.lcssa = phi i64 [ %i.s, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.epil.init, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i.epil.preheader ]
  %.lcssa20 = phi i64 [ %i.ac, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i.unr-lcssa ], [ %i.am, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit74.i.i.i.i.i.epil.preheader ]
  %i.an = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i = load i64, ptr %i.ao, align 1, !alias.scope !19022, !noalias !19033
  %i.ap = xor i64 %.sroa.041.0.copyload.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.lcssa
  %i.aq = getelementptr i8, ptr %i.an, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i = load i64, ptr %i.aq, align 1, !alias.scope !19022, !noalias !19033
  %i.ar = xor i64 %.sroa.043.0.copyload.i.i.i.i.i, %.lcssa20
  br label %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit

bb.c:                                             ; preds = %bb.b
  %i.as = icmp samesign ugt i64 %2, 3
  br i1 %i.as, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.d

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.028.0.copyload.i.i.i.i.i = load i64, ptr %1, align 1, !alias.scope !19022, !noalias !19033
  %i.at = xor i64 %.sroa.028.0.copyload.i.i.i.i.i, 2611923443488327891
  %i.au = getelementptr i8, ptr %1, i64 %2
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i = load i64, ptr %i.av, align 1, !alias.scope !19022, !noalias !19033
  %i.aw = xor i64 %.sroa.030.0.copyload.i.i.i.i.i, 1376283091369227076
  br label %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit, label %bb.e

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ax = getelementptr i8, ptr %1, i64 %2
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i = load i32, ptr %i.ay, align 1, !alias.scope !19022, !noalias !19033
  %.sroa.032.0.copyload.i.i.i.i.i = load i32, ptr %1, align 1, !alias.scope !19022, !noalias !19033
  %i.az = zext i32 %.sroa.032.0.copyload.i.i.i.i.i to i64
  %i.ba = xor i64 %i.az, 2611923443488327891
  %i.bb = zext i32 %.sroa.033.0.copyload.i.i.i.i.i to i64
  %i.bc = xor i64 %i.bb, 1376283091369227076
  br label %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.d
  %i.bd = load i8, ptr %1, align 1, !alias.scope !19022, !noalias !19033, !noundef !12
  %i.be = lshr i64 %2, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !19022, !noalias !19033, !noundef !12
  %i.bh = getelementptr i8, ptr %1, i64 %2
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !19022, !noalias !19033, !noundef !12
  %i.bk = zext i8 %i.bd to i64
  %i.bl = xor i64 %i.bk, 2611923443488327891
  %i.bm = zext i8 %i.bj to i64
  %i.bn = shl nuw nsw i64 %i.bm, 8
  %i.bo = zext i8 %i.bg to i64
  %i.bp = or disjoint i64 %i.bn, %i.bo
  %i.bq = xor i64 %i.bp, 1376283091369227076
  br label %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.d, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.e
  %.sroa.06.1.i.i.i.i.i = phi i64 [ %i.aw, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %i.bc, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %i.bq, %bb.e ], [ 1376283091369227076, %bb.d ], [ %i.ar, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.at, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %i.ba, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ %i.bl, %bb.e ], [ 2611923443488327891, %bb.d ], [ %i.ap, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit70.i.i.i.i.i ]
  %i.br = zext i64 %.sroa.0.1.i.i.i.i.i to i128
  %i.bs = zext i64 %.sroa.06.1.i.i.i.i.i to i128
  %i.bt = mul nuw i128 %i.br, %i.bs               ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = xor i128 %i.bu, %i.bt
  %i.bw = trunc i128 %i.bv to i64
  %i.bx = xor i64 %2, %i.bw
  %i.by = mul i64 %i.bx, 1452335207727870361
  %i.bz = add i64 %i.by, 4919460506697669435      ; 2 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 26) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19042)
  %i.cb = lshr i64 %i.ca, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8           ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !19045, !noalias !19046, !noundef !12 ; 2 uses
  %i.cf = load ptr, ptr %i.b, align 8, !alias.scope !19045, !noalias !19046, !nonnull !12, !noundef !12 ; 2 uses
  %i.cg = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !19040, !noalias !19049, !nonnull !12
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !19040, !noalias !19049
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.011.0.i.i = phi i64 [ 0, %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit ], [ %i.dh, %bb.g ]
  %.pn.i = phi i64 [ %i.ca, %_RINvNtCskMQyL8guyrm_15string_interner8interner9make_hasheNtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherECsl8pJiQOn4hA_9coreutils.exit ], [ %i.di, %bb.g ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.ce         ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i30.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !19050 ; 2 uses
  %i.cl = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i, %i.ch
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i33.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i
  %.sroa.05.0.i34.i = phi i16 [ %i.dg, %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i ], [ %i.cm, %bb.f ] ; 3 uses
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.01.0.i.i, %i.co
  %i.cq = and i64 %i.cp, %i.ce
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %.val2.i.i = load i64, ptr %i.ct, align 8, !range !19053, !noalias !19054, !noundef !12 ; 2 uses
  %i.cu = add i64 %.val2.i.i, -1                  ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %.val1.i.i.i.i
  tail call void @llvm.assume(i1 %i.cv), !noalias !19042
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i.i, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !noalias !19054, !noundef !12
  %i.cz = icmp eq i64 %2, %i.cy
  br i1 %i.cz, label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i, label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, !prof !19057

_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.lr.ph.i
  %i.da = load ptr, ptr %i.cw, align 8, !noalias !19054, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %i.da, i64 %2), !alias.scope !19058, !noalias !19054
  %i.db = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.db, label %_RINvMs2_NtCs1y2vtkYNekJ_9hashbrown9raw_entryINtB6_18RawEntryBuilderMutNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuuE6searchNCINvMs4_NtB1a_8internerINtB2i_14StringInternerINtNtNtB1a_7backend6bucket13BucketBackendB16_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0ECsl8pJiQOn4hA_9coreutils.exit, label %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, !prof !4519

._crit_edge.i:                                    ; preds = %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i, %bb.f
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i30.i, splat (i8 -1)
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.g, label %bb.h, !prof !48

_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNCINvMs6_NtCs1y2vtkYNekJ_9hashbrown3rawINtB8_8RawTableTNtNtCskMQyL8guyrm_15string_interner6symbol11SymbolUsizeuEE4findNCINvMs2_NtBa_9raw_entryINtB22_18RawEntryBuilderMutBS_uuE6searchNCINvMs4_NtBW_8internerINtB34_14StringInternerINtNtNtBW_7backend6bucket13BucketBackendBS_ENtCs4jvHr4X8PhZ_10rustc_hash13FxBuildHasherE19get_or_intern_usingReE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i
  %i.df = add i16 %.sroa.05.0.i34.i, -1
  %i.dg = and i16 %i.df, %.sroa.05.0.i34.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not.i.i, label %._crit_edge.i, label %.lr.ph.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.dh = add i64 %.sroa.011.0.i.i, 16            ; 2 uses
  %i.di = add i64 %.sroa.01.0.i.i, %i.dh
  br label %bb.f

bb.h:                                             ; preds = %._crit_edge.i
  %i.dj = tail call fastcc noundef i64 @_RNvXs1_NtNtCskMQyL8guyrm_15string_interner7backend6bucketINtB5_13BucketBackendNtNtB9_6symbol11SymbolUsizeENtB7_7Backend6internCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.dk, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19062)
  %.val14.i = load ptr, ptr %i.b, align 8, !alias.scope !19062, !noalias !19065, !nonnull !12, !noundef !12 ; 8 uses
  %.val15.i = load i64, ptr %i.cd, align 8, !alias.scope !19062, !noalias !19065, !noundef !12 ; 4 uses
  %.sroa.0.07.i.i = and i64 %.val15.i, %i.ca      ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.dl, align 1, !noalias !19067
  %i.dm = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.dn = bitcast <16 x i1> %i.dm to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !19070

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.h ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.dn, %bb.h ], [ %i.ee, %.lr.ph.i.i ]
  %i.do = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = add i64 %.sroa.0.0.lcssa.i.i, %i.dp
  %i.dr = and i64 %i.dq, %.val15.i                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !19071, !noundef !12 ; 2 uses
  %i.du = icmp sgt i8 %i.dt, -1
  br i1 %i.du, label %bb.i, label %_RNvMsa_NtCs1y2vtkYNekJ_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !48

bb.i:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %.val14.i, align 16, !noalias !19071
  %i.dv = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.dw, 0
end_hunk_3
begin_hunk_4_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNtNtCs2vKOLqTMYjT_3std6thread9lifecycle15spawn_uncheckedNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtBK_3ffi6os_str8OsStringEINtNtB2k_6cloned6ClonedINtNtNtB4_5slice4iter4IterB3F_EEEEs0_0INtNtB4_6result6ResultuINtNtB2Y_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEs_0ECsl8pJiQOn4hA_9coreutils:bb.a
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1   ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !21731, !noalias !21727 ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21731, !noalias !21727, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.m = load ptr, ptr %.val3.i.i.i.i, align 8, !invariant.load !12, !noalias !21734 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void %i.m(ptr noundef nonnull %.val.i.i.i.i) #51, !noalias !21734, !inline_history !21735
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !63, !invariant.load !12, !noalias !21734 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !267, !invariant.load !12, !noalias !21734
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #45, !noalias !21734
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.e
  %i.s = icmp eq i64 %i.k, %.val1.i.i
  br i1 %i.s, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook10SpawnHooksECsl8pJiQOn4hA_9coreutils.exit.i
  %.val2.i.i = load i64, ptr %i.a, align 8, !range !63, !alias.scope !21730, !noundef !12 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.u = shl nuw i64 %.val2.i.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !21727
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21739)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !21742, !nonnull !12, !noundef !12
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !21742
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtCs6JMX4GRUq9U_4core6result6ResultuINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcINtNtNtCs2vKOLqTMYjT_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std6thread9spawnhook15ChildSpawnHooksECsl8pJiQOn4hA_9coreutils.exit, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1l_6cloned6ClonedINtNtNtB4_5slice4iter4IterB2G_EEEEs0_0ECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21743)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21749)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !63, !alias.scope !21752, !noundef !12 ; 2 uses
  %i.c = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !21752, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21752
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21756)
  %.val.i.i1.i = load i64, ptr %i.e, align 8, !range !63, !alias.scope !21759, !noundef !12 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i1.i, 0
  br i1 %i.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i2.i = load ptr, ptr %i.g, align 8, !alias.scope !21759, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i, i64 noundef %.val.i.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21759
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val = load i64, ptr %i.h, align 8, !range !279, !noundef !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1 = load ptr, ptr %i.i, align 8            ; 27 uses
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.u
    i64 2, label %bb.ak
  ]

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  unreachable

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 520
  %i.k = atomicrmw sub ptr %i.j, i64 1 acq_rel, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 400 ; 4 uses
  %i.n = load i64, ptr %i.m, align 16, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.p = atomicrmw or ptr %i.o, i64 %i.n seq_cst, align 8 ; 2 uses
  %i.q = load i64, ptr %i.m, align 16, !noundef !12 ; 2 uses
  %i.r = and i64 %i.q, %i.p
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.t) #51
  %.pre.i.i.i.i.i.i = load i64, ptr %i.m, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi i64 [ %i.q, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.v = load atomic i64, ptr %.val1 monotonic, align 16
  %i.w = xor i64 %i.u, -1
  %i.x = and i64 %i.p, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 392 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 408 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1, i64 416 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 384
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.g
  %i.ac = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %.sroa.0.08.i.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.sroa.0.19.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 10 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.0.1.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ad ; 3 uses
  %i.af = load i64, ptr %i.y, align 8, !noundef !12
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ag
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %i.aj = load i64, ptr %i.aa, align 16, !noundef !12
  %i.ak = icmp ult i64 %i.ae, %i.aj
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [320 x i8], ptr %i.ai, i64 %i.ae ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 304
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = add i64 %.sroa.0.0.i.i.i.i.i.i.i, 1
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.x, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %i.aq, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ar = add nuw i64 %i.ae, 1
  %i.as = load i64, ptr %i.ab, align 128, !noundef !12
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.au = icmp ult i32 %.sroa.0.08.i.i.i.i.i.i.i, 7
  br i1 %i.au, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.08.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.av = mul nuw i32 %.sroa.0.08.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %xtraiter51 = and i32 %i.av, 7                  ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.08.i.i.i.i.i.i.i, 3
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter55 = and i32 %i.av, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter56 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter56.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter56.next.7 = add i32 %niter56, 8           ; 2 uses
  %niter56.ncmp.7 = icmp eq i32 %niter56.next.7, %unroll_iter55
  br i1 %niter56.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod53.not = icmp eq i32 %xtraiter51, 0
  br i1 %lcmp.mod53.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod54 = icmp ne i32 %xtraiter51, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter52 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter52.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter52.next = add i32 %epil.iter52, 1     ; 2 uses
  %epil.iter52.cmp.not = icmp eq i32 %epil.iter52.next, %xtraiter51
  br i1 %epil.iter52.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !21760

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.l
  %i.ax = add i32 %.sroa.0.08.i.i.i.i.i.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %bb.p, %bb.o, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.19.i.i.i.i.i.i.i = phi i32 [ %i.ax, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.0.08.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.05.0.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.m, align 16
  br label %bb.h

bb.m:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.y, align 8, !noundef !12
  %i.az = add i64 %i.ay, %i.ah
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.sroa.05.0.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.m ], [ %i.an, %bb.j ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21761)
  %i.ba = load i128, ptr %i.al, align 16, !range !13210, !alias.scope !21761, !noundef !12
  %.not.i6.i.i.i.i.i.i.i = icmp eq i128 %i.ba, 2
  br i1 %.not.i6.i.i.i.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 16, !range !63, !alias.scope !21764, !noundef !12 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !21761, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21771
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21778)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !21781, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !12, !noalias !21781 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 16, !alias.scope !21781, !nonnull !12, !noundef !12
  tail call void %i.bh(ptr noundef nonnull %i.bi) #51, !noalias !21781, !inline_history !21782
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !63, !invariant.load !12, !noalias !21781 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 16, !alias.scope !21781, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !267, !invariant.load !12, !noalias !21781
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bn) #45, !noalias !21781
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1, i64 528
  %i.bp = atomicrmw xchg ptr %i.bo, i8 1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.t

bb.t:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21786)
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 16, !alias.scope !21789, !noundef !12 ; 2 uses
  %i.bq = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !21789, !nonnull !12, !noundef !12
  %i.br = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 320
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.br, i64 noundef 16) #45, !noalias !21789
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bs) #45
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bt) #45
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 640, i64 noundef 128) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 392
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1, i64 128 ; 3 uses
  %i.by = atomicrmw or ptr %i.bx, i64 1 seq_cst, align 8
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 62
  %i.cd = icmp eq i64 %i.cc, 62
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.w, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ], [ 0, %bb.w ] ; 4 uses
  %.sroa.0.05153.i.i.i.i.i.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ], [ 0, %bb.w ] ; 4 uses
  %i.ce = shl i32 %.sroa.0.05153.i.i.i.i.i.i.i, 1
  %i.cf = or i32 %i.ce, 1
  %i.cg = icmp ult i32 %.sroa.0.05153.i.i.i.i.i.i.i, 7
  br i1 %i.cg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i14.i.i.i = icmp eq i32 %.sroa.0.05153.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i14.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.preheader

.lr.ph.i.i.i.i.i17.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i
  %i.ch = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.ci = icmp ult i32 %i.ch, 7
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new

.lr.ph.i.i.i.i.i17.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i17.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i.i.i17.i.i.i

.lr.ph.i.i.i.i.i17.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i17.i.i.i ]
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i17.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i17.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i17.i.i.i.preheader
  %lcmp.mod26 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.i.i.i.i17.i.i.i.epil

.lr.ph.i.i.i.i.i17.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i17.i.i.i.epil, %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i17.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.epil, !llvm.loop !21790

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i17.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i, %bb.x
  %i.cj = add i32 %.sroa.0.05153.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ck = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cl = and i64 %i.ck, 62
  %i.cm = icmp eq i64 %i.cl, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.cf
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, %bb.w
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.w ], [ %i.ck, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ]
  %.sroa.0.051.lcssa.i.i.i.i.i.i.i = phi i32 [ 0, %bb.w ], [ %i.cj, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ] ; 4 uses
  %i.cn = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.co = load atomic i64, ptr %.val1 acquire, align 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 2 uses
  %i.cq = atomicrmw xchg ptr %i.cp, ptr null acq_rel, align 8 ; 2 uses
  %i.cr = lshr i64 %i.co, 1                       ; 3 uses
  %i.cs = icmp ne i64 %i.cr, %i.cn
  %i.ct = icmp eq ptr %i.cq, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cu = mul i32 %.sroa.0.051.lcssa.i.i.i.i.i.i.i, %.sroa.0.051.lcssa.i.i.i.i.i.i.i
  %i.cv = shl i32 %.sroa.0.051.lcssa.i.i.i.i.i.i.i, 1
  %i.cw = or disjoint i32 %i.cv, 1
  br label %.preheader.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i = phi ptr [ %i.cq, %._crit_edge.i.i.i.i.i.i.i ], [ %i.dd, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 2 uses
  %.not55.i.i.i.i.i.i.i = icmp eq i64 %i.cr, %i.cn
  br i1 %.not55.i.i.i.i.i.i.i, label %._crit_edge60.i.i.i.i.i.i.i, label %.lr.ph59.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i
  %loop-unroll.iv27 = phi i32 [ %i.cu, %.preheader.i.i.i.i.i.i.i.preheader ], [ %loop-unroll.iv.next28, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i.i10.i.i.i = phi i32 [ %.sroa.0.051.lcssa.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.dc, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 3 uses
  %i.cx = shl i32 %indvar, 1
  %i.cy = add i32 %i.cw, %i.cx
  %i.cz = icmp ult i32 %.sroa.0.1.i.i.i.i10.i.i.i, 7
  br i1 %i.cz, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i10.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i
  %i.da = add i32 %loop-unroll.iv27, -1
  %xtraiter29 = and i32 %loop-unroll.iv27, 7      ; 3 uses
  %i.db = icmp ult i32 %i.da, 7
  br i1 %i.db, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %unroll_iter33 = and i32 %loop-unroll.iv27, -8
  br label %.lr.ph.i26.i.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i26.i.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new
  %niter34 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new ], [ %niter34.next.7, %.lr.ph.i26.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter34.next.7 = add i32 %niter34, 8           ; 2 uses
  %niter34.ncmp.7 = icmp eq i32 %niter34.next.7, %unroll_iter33
  br i1 %niter34.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i.i
  %lcmp.mod31.not = icmp eq i32 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %lcmp.mod32 = icmp ne i32 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i26.i.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader
  %epil.iter30 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter30.next, %.lr.ph.i26.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter30.next = add i32 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i32 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil, !llvm.loop !21791

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, %bb.y
  %i.dc = add i32 %.sroa.0.1.i.i.i.i10.i.i.i, 1
  %i.dd = atomicrmw xchg ptr %i.cp, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next28 = add i32 %loop-unroll.iv27, %i.cy
  br i1 %.old2.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

._crit_edge60.i.i.i.i.i.i.i:                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.co, %.loopexit.i.i.i.i.i.i.i ], [ %i.ev, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ]
  %i.de = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i.i, null
  br i1 %i.de, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.z

.lr.ph59.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i
  %i.df = phi i64 [ %i.ew, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %i.cr, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.05.057.i.i.i.i.i.i.i = phi i64 [ %i.ev, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %i.co, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.011.156.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 8 uses
  %i.dg = and i64 %i.df, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.dg, 31
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %._crit_edge60.i.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i.i, i64 noundef 9936, i64 noundef 16) #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph59.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.011.156.i.i.i.i.i.i.i, i64 9920 ; 3 uses
  %i.di = load atomic ptr, ptr %i.dh acquire, align 8
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i.i:                         ; preds = %bb.aa, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i
  %loop-unroll.iv43 = phi i32 [ %loop-unroll.iv.next44, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi i32 [ %i.dp, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 4 uses
  %i.dk = shl i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 1
  %i.dl = or i32 %i.dk, 1
  %i.dm = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 7
  br i1 %i.dm, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i9.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i9.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i
  %i.dn = add i32 %loop-unroll.iv43, -1
  %xtraiter45 = and i32 %loop-unroll.iv43, 7      ; 3 uses
  %i.do = icmp ult i32 %i.dn, 7
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter49 = and i32 %loop-unroll.iv43, -8
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !21792

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, %bb.ab
  %i.dp = add i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 1
  %i.dq = load atomic ptr, ptr %i.dh acquire, align 8
  %i.dr = icmp eq ptr %i.dq, null
  %loop-unroll.iv.next44 = add i32 %loop-unroll.iv43, %i.dl
  br i1 %i.dr, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, %bb.aa
  %i.ds = load atomic ptr, ptr %i.dh acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.156.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.156.i.i.i.i.i.i.i, i64 noundef 9936, i64 noundef 16) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

bb.ac:                                            ; preds = %.lr.ph59.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw [320 x i8], ptr %.sroa.011.156.i.i.i.i.i.i.i, i64 %i.dg ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 304 ; 2 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8
  %i.dw = and i64 %i.dv, 1
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i.i:                         ; preds = %bb.ac, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i
  %loop-unroll.iv35 = phi i32 [ %loop-unroll.iv.next36, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 4 uses
  %.sroa.0.02.i33.i.i.i.i.i.i.i = phi i32 [ %i.ed, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 4 uses
  %i.dy = shl i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 1
  %i.dz = or i32 %i.dy, 1
  %i.ea = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 7
  br i1 %i.ea, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader:             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i
  %i.eb = add i32 %loop-unroll.iv35, -1
  %xtraiter37 = and i32 %loop-unroll.iv35, 7      ; 3 uses
  %i.ec = icmp ult i32 %i.eb, 7
  br i1 %i.ec, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %unroll_iter41 = and i32 %loop-unroll.iv35, -8
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new
  %niter42 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new ], [ %niter42.next.7, %.lr.ph.i.i40.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter42.next.7 = add i32 %niter42, 8           ; 2 uses
  %niter42.ncmp.7 = icmp eq i32 %niter42.next.7, %unroll_iter41
  br i1 %niter42.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i
  %lcmp.mod39.not = icmp eq i32 %xtraiter37, 0
  br i1 %lcmp.mod39.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %lcmp.mod40 = icmp ne i32 %xtraiter37, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader
  %epil.iter38 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter38.next, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter38.next = add i32 %epil.iter38, 1     ; 2 uses
  %epil.iter38.cmp.not = icmp eq i32 %epil.iter38.next, %xtraiter37
  br i1 %epil.iter38.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, !llvm.loop !21793

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, %bb.ad
  %i.ed = add i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 1
  %i.ee = load atomic i64, ptr %i.du acquire, align 8
  %i.ef = and i64 %i.ee, 1
  %i.eg = icmp eq i64 %i.ef, 0
  %loop-unroll.iv.next36 = add i32 %loop-unroll.iv35, %i.dz
  br i1 %i.eg, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21794)
  %i.eh = load i128, ptr %i.dt, align 16, !range !13210, !alias.scope !21794, !noundef !12
  %.not.i44.i.i.i.i.i.i.i = icmp eq i128 %i.eh, 2
  br i1 %.not.i44.i.i.i.i.i.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %.val.i.i.i.i.i4.i.i.i = load i64, ptr %i.ei, align 16, !range !63, !alias.scope !21797, !noundef !12 ; 2 uses
  %i.ej = icmp eq i64 %.val.i.i.i.i.i4.i.i.i, 0
  br i1 %i.ej, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 248
  %.val1.i.i.i.i.i5.i.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !21794, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i5.i.i.i, i64 noundef %.val.i.i.i.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21804
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21811)
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !21814, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8, !invariant.load !12, !noalias !21814 ; 2 uses
  %.not.i.i45.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i45.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = load ptr, ptr %i.el, align 16, !alias.scope !21814, !nonnull !12, !noundef !12
  tail call void %i.eo(ptr noundef nonnull %i.ep) #51, !noalias !21814, !inline_history !21815
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !range !63, !invariant.load !12, !noalias !21814 ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i: ; preds = %bb.ai
  %.val.i.i.i.i.i.i8.i.i.i = load ptr, ptr %i.el, align 16, !alias.scope !21814, !nonnull !12, !noundef !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !range !267, !invariant.load !12, !noalias !21814
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i8.i.i.i, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) %i.eu) #45, !noalias !21814
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i, %bb.ai, %bb.af, %bb.ae, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i = phi ptr [ %i.ds, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.011.156.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i ] ; 2 uses
  %i.ev = add i64 %.sroa.05.057.i.i.i.i.i.i.i, 2  ; 3 uses
  %i.ew = lshr i64 %i.ev, 1                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ew, %i.cn
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge60.i.i.i.i.i.i.i, label %.lr.ph59.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.z, %._crit_edge60.i.i.i.i.i.i.i
  %i.ex = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, -2
  store atomic i64 %i.ex, ptr %.val1 release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %.val1, i64 400
  %i.ez = atomicrmw xchg ptr %i.ey, i8 1 acq_rel, align 1
  %.not.i3.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i3.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  store ptr %.val1, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %.val1, i64 120
  %i.fb = atomicrmw sub ptr %i.fa, i64 1 acq_rel, align 8
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %bb.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10disconnectCsl8pJiQOn4hA_9coreutils(ptr noundef nonnull align 8 %.val1) #45
  %i.fd = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.fe = atomicrmw xchg ptr %i.fd, i8 1 acq_rel, align 1
  %.not.i21.i.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i21.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.ff) #45
  %i.fg = getelementptr inbounds nuw i8, ptr %.val1, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.fg) #45
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 136, i64 noundef 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.u, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.aj, %bb.ak, %bb.al, %bb.am
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6507, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.b, label %default.unreachable7 [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.i
    i64 3, label %bb.b
  ]

default.unreachable7:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21816)
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !21816, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21816
  %i.d = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable7 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
    i64 1, label %bb.d
  ], !prof !91

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !21819, !noalias !21816
  store i8 3, ptr %i.a, align 8, !alias.scope !21819, !noalias !21816
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #45, !noalias !21816
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21816
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21825)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !63, !alias.scope !21828, !noundef !12 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i, 0
  br i1 %i.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21828, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21828
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21832)
  %.val.i.i1 = load i64, ptr %i.c, align 8, !range !63, !alias.scope !21835, !noundef !12 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i1, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i2 = load ptr, ptr %i.n, align 8, !alias.scope !21835, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2, i64 noundef %.val.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21835
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.i:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_RINvNvCsgDnTRHLCOsi_7uu_join6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
bb.db:                                            ; preds = %bb.cz
  %i.pg = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.pf) #45 ; 2 uses
  %i.ph = extractvalue { ptr, ptr } %i.pg, 0
  %i.pi = extractvalue { ptr, ptr } %i.pg, 1
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ds) #45
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %.sroa.25.10.i = phi ptr [ %i.pi, %bb.db ], [ %i.pd, %bb.cz ]
  %.sroa.03.10.i = phi ptr [ %i.ph, %bb.db ], [ %i.nu, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !28317
  br label %bb.bq

bb.dd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCsgDnTRHLCOsi_7uu_join4ReprNtBE_10OneByteSepEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.ar, %bb.z
  %.sroa.25.11.i = phi ptr [ %.sroa.25.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCsgDnTRHLCOsi_7uu_join4ReprNtBE_10OneByteSepEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.hq, %bb.z ], [ %.sroa.25.0.i, %bb.ar ] ; 2 uses
  %.sroa.03.11.i = phi ptr [ %.sroa.03.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCsgDnTRHLCOsi_7uu_join4ReprNtBE_10OneByteSepEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.ho, %bb.z ], [ %.sroa.03.0.i, %bb.ar ] ; 2 uses
  %.sroa.0104.1.i = phi i1 [ %i.ic, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCsgDnTRHLCOsi_7uu_join4ReprNtBE_10OneByteSepEECsl8pJiQOn4hA_9coreutils.exit.i ], [ true, %bb.z ], [ true, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !28317
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join5StateECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(88) %i.ee) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !28317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !28317
  %.val143.i = load i64, ptr %.sroa.15413.0..sroa_idx, align 8, !range !22663, !alias.scope !28314, !noalias !28320, !noundef !12 ; 3 uses
  %i.pj = icmp ne i64 %.val143.i, -9223372036854775807
  call void @llvm.assume(i1 %i.pj)
  %or.cond.i181.i = icmp slt i64 %.val143.i, 1
  br i1 %or.cond.i181.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %.val144.i = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !alias.scope !28314, !noalias !28320, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val144.i, i64 noundef %.val143.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28394
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i: ; preds = %bb.de, %bb.dd
  br i1 %.sroa.0104.1.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit.i61, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i

bb.df:                                            ; preds = %bb.as, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sink240.i = phi { ptr, ptr } [ %i.it, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.kd, %bb.as ]
  %.sroa.03.12.i = phi ptr [ %i.iu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.ke, %bb.as ]
  %i.pk = extractvalue { ptr, ptr } %.sink240.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pk) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !28317
  %.val151.i = load i64, ptr %i.dy, align 8, !range !63, !noalias !28317, !noundef !12 ; 2 uses
  %i.pl = icmp eq i64 %.val151.i, 0
  br i1 %i.pl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit183.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val152.i = load ptr, ptr %i.ip, align 8, !noalias !28317, !nonnull !12, !noundef !12
  %i.pm = shl nuw i64 %.val151.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val152.i, i64 noundef %i.pm, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit183.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit183.i: ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !28317
  br label %bb.ar

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i: ; preds = %bb.dh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit.i61, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i
  %.sroa.25.14.i = phi ptr [ %.sroa.25.11.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i ], [ %.sroa.25.15.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit.i61 ], [ %.sroa.25.15.i, %bb.dh ] ; 2 uses
  %.sroa.03.14.i = phi ptr [ %.sroa.03.11.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i ], [ %.sroa.03.15.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit.i61 ], [ %.sroa.03.15.i, %bb.dh ] ; 2 uses
  %.val.i184.i = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !range !63, !alias.scope !28397, !noalias !28320, !noundef !12 ; 2 uses
  %i.pn = icmp eq i64 %.val.i184.i, 0
  br i1 %i.pn, label %_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit, label %_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit.i61: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i, %bb.x, %bb.w
  %.sroa.25.15.i = phi ptr [ %.sroa.25.11.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i ], [ %i.hf, %bb.w ], [ %i.hf, %bb.x ] ; 2 uses
  %.sroa.03.15.i = phi ptr [ %.sroa.03.11.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit182.i ], [ %i.hd, %bb.w ], [ %i.hd, %bb.x ] ; 2 uses
  %.val149.i = load i64, ptr %i.eu, align 8, !range !63, !alias.scope !28314, !noalias !28320, !noundef !12 ; 2 uses
  %i.po = icmp eq i64 %.val149.i, 0
  br i1 %i.po, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgDnTRHLCOsi_7uu_join10SepSettingECsl8pJiQOn4hA_9coreutils.exit.i61
  %.val150.i = load ptr, ptr %.sroa.9382.0..sroa_idx, align 8, !alias.scope !28314, !noalias !28320, !nonnull !12, !noundef !12
  %i.pp = shl nuw i64 %.val149.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val150.i, i64 noundef %i.pp, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i

_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit.sink.split: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62
  %.val.i.i63.sink = phi i64 [ %.val.i.i63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62 ], [ %.val.i184.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i ]
  %.sroa.25.4.i.ph = phi ptr [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62 ], [ %.sroa.25.14.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i ]
  %.sroa.03.4.i.ph = phi ptr [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62 ], [ %.sroa.03.14.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i ]
  %.val1.i.i64 = load ptr, ptr %.sroa.14.0..sroa_idx, align 8, !alias.scope !28314, !noalias !28320, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i64, i64 noundef %.val.i.i63.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !12
  br label %_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit

_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit.sink.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i
  %.sroa.25.4.i = phi ptr [ %.sroa.25.14.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62 ], [ %.sroa.25.4.i.ph, %_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit.sink.split ]
  %.sroa.03.4.i = phi ptr [ %.sroa.03.14.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit187.i ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgDnTRHLCOsi_7uu_join4SpecEECsl8pJiQOn4hA_9coreutils.exit.i62 ], [ %.sroa.03.4.i.ph, %_RINvCsgDnTRHLCOsi_7uu_join4execNtB2_10OneByteSepECsl8pJiQOn4hA_9coreutils.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsl8pJiQOn4hA_9coreutils.exit

bb.di:                                            ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.645.sroa.7.0.copyload) ]
  %i.pq = icmp eq i64 %.sroa.645.sroa.8.0.copyload, 0 ; 3 uses
  br i1 %i.pq, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28400
  %i.pr = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.645.sroa.8.0.copyload, i64 noundef range(i64 1, 9) 1) #45, !noalias !28400 ; 3 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.645.sroa.8.0.copyload) #52, !noalias !28408
  unreachable

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pr, ptr nonnull readonly align 1 %.sroa.645.sroa.7.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.645.sroa.8.0.copyload, i1 false), !noalias !28409
  %i.pt = ptrtoint ptr %i.pr to i64
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.di, %bb.dl
  %.sroa.5445.0 = phi i64 [ %i.pt, %bb.dl ], [ 1, %bb.di ]
  %i.pu = inttoptr i64 %.sroa.5445.0 to ptr       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i64 %i.fg, ptr %i.et, align 8
  %.sroa.9382.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  store ptr %i.fj, ptr %.sroa.9382.0..sroa_idx383, align 8
  %.sroa.11.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %i.fl, ptr %.sroa.11.0..sroa_idx389, align 8
  %.sroa.12.0..sroa_idx395 = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 3 uses
  store i64 %.sroa.645.sroa.0.0.copyload, ptr %.sroa.12.0..sroa_idx395, align 8
  %.sroa.14.0..sroa_idx401 = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  store ptr %.sroa.645.sroa.4.0.copyload, ptr %.sroa.14.0..sroa_idx401, align 8
  %.sroa.15.0..sroa_idx407 = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  store i64 %.sroa.645.sroa.5.0.copyload, ptr %.sroa.15.0..sroa_idx407, align 8
  %.sroa.15413.0..sroa_idx414 = getelementptr inbounds nuw i8, ptr %i.et, i64 48 ; 4 uses
  store i64 %.sroa.645.sroa.6.0.copyload, ptr %.sroa.15413.0..sroa_idx414, align 8
  %.sroa.17.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.et, i64 56 ; 4 uses
  store ptr %.sroa.645.sroa.7.0.copyload, ptr %.sroa.17.0..sroa_idx420, align 8
  %.sroa.20.0..sroa_idx426 = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store i64 %.sroa.645.sroa.8.0.copyload, ptr %.sroa.20.0..sroa_idx426, align 8
  %.sroa.21.0..sroa_idx432 = getelementptr inbounds nuw i8, ptr %i.et, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx432, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pu) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !28410
  call void @llvm.experimental.noalias.scope.decl(metadata !28413)
  call void @llvm.experimental.noalias.scope.decl(metadata !28416)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.029.i.i), !noalias !28410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !28410
  %i.pv = getelementptr inbounds nuw i8, ptr %i.cy, i64 73 ; 2 uses
  br i1 %i.pq, label %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.thread.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsl8pJiQOn4hA_9coreutils.exit
  %i.pw = load i8, ptr %i.pu, align 1, !alias.scope !28418, !noalias !28421, !noundef !12 ; 5 uses
  %i.px = zext i8 %i.pw to i32                    ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sroa.645.sroa.8.0.copyload
  %.not.i.not.peel.not.i.i.i = icmp eq i64 %.sroa.645.sroa.8.0.copyload, 1
  br i1 %.not.i.not.peel.not.i.i.i, label %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.thread87.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.dm
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  %.sroa.5.0.peel.i.i.i = load i8, ptr %i.pz, align 1, !alias.scope !28418, !noalias !28421, !noundef !12 ; 4 uses
  %i.qa = shl nuw nsw i32 %i.px, 1
  %i.qb = zext i8 %.sroa.5.0.peel.i.i.i to i32
  %i.qc = add nuw nsw i32 %i.qa, %i.qb            ; 3 uses
  %i.qd = icmp samesign eq i64 %.sroa.645.sroa.8.0.copyload, 2
  br i1 %i.qd, label %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.peel.next.i.i.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pu, i64 2 ; 2 uses
  %i.qf = add i64 %.sroa.645.sroa.8.0.copyload, -2 ; 2 uses
  %i.qg = add i64 %.sroa.645.sroa.8.0.copyload, -3
  %xtraiter = and i64 %i.qf, 3                    ; 3 uses
  %i.qh = icmp ult i64 %i.qg, 3
  br i1 %i.qh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.qf, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.1.i100.i.i = phi i32 [ %i.qc, %.lr.ph.preheader.i.i.new ], [ %i.qy, %.lr.ph.i.i ]
  %.sroa.6.1.i99.i.i = phi i32 [ 2, %.lr.ph.preheader.i.i.new ], [ %i.qk, %.lr.ph.i.i ]
  %.sroa.0.016.i98.i.i = phi ptr [ %i.qe, %.lr.ph.preheader.i.i.new ], [ %i.qt, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i98.i.i, i64 1
  %.sroa.5.0.i.i.i = load i8, ptr %.sroa.0.016.i98.i.i, align 1, !alias.scope !28418, !noalias !28421, !noundef !12
  %i.qj = zext i8 %.sroa.5.0.i.i.i to i32
  %i.qk = shl i32 %.sroa.6.1.i99.i.i, 4           ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i98.i.i, i64 2
  %.sroa.5.0.i.i.i.1 = load i8, ptr %i.qi, align 1, !alias.scope !28418, !noalias !28421, !noundef !12
  %i.qm = shl i32 %.sroa.0.1.i100.i.i, 2
  %i.qn = shl nuw nsw i32 %i.qj, 1
  %i.qo = add i32 %i.qm, %i.qn
  %i.qp = zext i8 %.sroa.5.0.i.i.i.1 to i32
  %i.qq = add i32 %i.qo, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i98.i.i, i64 3
  %.sroa.5.0.i.i.i.2 = load i8, ptr %i.ql, align 1, !alias.scope !28418, !noalias !28421, !noundef !12
  %i.qs = zext i8 %.sroa.5.0.i.i.i.2 to i32
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i98.i.i, i64 4 ; 2 uses
  %.sroa.5.0.i.i.i.3 = load i8, ptr %i.qr, align 1, !alias.scope !28418, !noalias !28421, !noundef !12
  %i.qu = shl i32 %i.qq, 2
  %i.qv = shl nuw nsw i32 %i.qs, 1
  %i.qw = add i32 %i.qu, %i.qv
  %i.qx = zext i8 %.sroa.5.0.i.i.i.3 to i32
  %i.qy = add i32 %i.qw, %i.qx                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !28422

_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.sroa.0.1.i100.i.i.epil.init = phi i32 [ %i.qc, %.lr.ph.preheader.i.i ], [ %i.qy, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.6.1.i99.i.i.epil.init = phi i32 [ 2, %.lr.ph.preheader.i.i ], [ %i.qk, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa ]
  %.sroa.0.016.i98.i.i.epil.init = phi ptr [ %i.qe, %.lr.ph.preheader.i.i ], [ %i.qt, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod728 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod728)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.sroa.0.1.i100.i.i.epil = phi i32 [ %i.rc, %.lr.ph.i.i.epil ], [ %.sroa.0.1.i100.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.6.1.i99.i.i.epil = phi i32 [ %i.rd, %.lr.ph.i.i.epil ], [ %.sroa.6.1.i99.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.0.016.i98.i.i.epil = phi ptr [ %i.qz, %.lr.ph.i.i.epil ], [ %.sroa.0.016.i98.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i98.i.i.epil, i64 1
  %.sroa.5.0.i.i.i.epil = load i8, ptr %.sroa.0.016.i98.i.i.epil, align 1, !alias.scope !28418, !noalias !28421, !noundef !12
  %i.ra = shl i32 %.sroa.0.1.i100.i.i.epil, 1
  %i.rb = zext i8 %.sroa.5.0.i.i.i.epil to i32
  %i.rc = add i32 %i.ra, %i.rb                    ; 2 uses
  %i.rd = shl i32 %.sroa.6.1.i99.i.i.epil, 1      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !28423

_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i: ; preds = %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %.peel.next.i.i.i
  %.sroa.6.1.i.lcssa.i.i = phi i32 [ 2, %.peel.next.i.i.i ], [ %i.qk, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa ], [ %i.rd, %.lr.ph.i.i.epil ] ; 4 uses
  %.sroa.0.1.i.lcssa.i.i = phi i32 [ %i.qc, %.peel.next.i.i.i ], [ %i.qy, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i.loopexit.unr-lcssa ], [ %i.rc, %.lr.ph.i.i.epil ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !28424
  store i8 0, ptr %i.cx, align 1, !noalias !28424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !28424
  store i8 1, ptr %i.cw, align 1, !noalias !28424
  %i.re = zext i8 %.sroa.5.0.peel.i.i.i to i64
  %i.rf = getelementptr inbounds nuw i8, ptr @1015, i64 %i.re
  %i.rg = load i8, ptr %i.rf, align 1, !noalias !28424, !noundef !12
  %i.rh = zext i8 %i.pw to i64
  %i.ri = getelementptr inbounds nuw i8, ptr @1015, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1, !noalias !28424, !noundef !12
  %i.rk = icmp ult i8 %i.rg, %i.rj
  br i1 %i.rk, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i
  store i8 1, ptr %i.cx, align 1, !noalias !28424
  store i8 0, ptr %i.cw, align 1, !noalias !28424
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i
  %i.rl = phi i8 [ 0, %bb.dn ], [ 1, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i ]
  %i.rm = phi i8 [ 1, %bb.dn ], [ 0, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i ]
  %.sroa.06.0.i.i.i = phi i8 [ %i.pw, %bb.dn ], [ %.sroa.5.0.peel.i.i.i, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i ]
  %.sroa.01.0.i.i.i = phi i8 [ %.sroa.5.0.peel.i.i.i, %bb.dn ], [ %i.pw, %_RNvMNtNtNtCs3RYoXg2VPb3_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !28424
  store ptr %i.pu, ptr %i.cv, align 8, !noalias !28424
  %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  store ptr %i.py, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424
  %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !28424
  %.sroa.09.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 3 uses
  store i64 255, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 3 uses
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424
  br label %bb.dp

bb.dp:                                            ; preds = %bb.ee, %bb.do
  %i.rn = phi i64 [ %.pr.i.i.i, %bb.ee ], [ 2, %bb.do ] ; 2 uses
  %i.ro = phi i8 [ %i.st, %bb.ee ], [ %i.rl, %bb.do ] ; 8 uses
  %i.rp = phi i8 [ %i.su, %bb.ee ], [ %i.rm, %bb.do ] ; 12 uses
  %.sroa.06.1.i.i.i = phi i8 [ %.sroa.06.2.i.i.i, %bb.ee ], [ %.sroa.06.0.i.i.i, %bb.do ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i8 [ %.sroa.01.2.i.i.i, %bb.ee ], [ %.sroa.01.0.i.i.i, %bb.do ] ; 6 uses
  %.not.i56.i.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i56.i.i, label %bb.dq, label %bb.dr, !prof !5

bb.dq:                                            ; preds = %bb.dp
  %i.rq = load i64, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424, !noundef !12 ; 2 uses
  %i.rr = icmp eq i64 %i.rq, 0
  br i1 %i.rr, label %bb.du, label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424
  %i.rs = call fastcc { i64, ptr } @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cv, i64 noundef %i.rn) #51, !noalias !28424
  br label %bb.dv

bb.ds:                                            ; preds = %bb.dq
  %i.rt = add i64 %i.rq, -1
  store i64 %i.rt, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424
  %i.ru = load ptr, ptr %i.cv, align 8, !alias.scope !28427, !noalias !28424, !nonnull !12, !noundef !12 ; 3 uses
  %i.rv = load ptr, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !28427, !noalias !28424, !nonnull !12, !noundef !12
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store ptr %i.rx, ptr %i.cv, align 8, !alias.scope !28427, !noalias !28424
  %i.ry = load i64, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !28432, !noalias !28424, !noundef !12 ; 2 uses
  %i.rz = add i64 %i.ry, 1
  store i64 %i.rz, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !28432, !noalias !28424
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.dt, %bb.ds
  %.sroa.2.0.i.i.i.i = phi ptr [ %i.ru, %bb.dt ], [ null, %bb.ds ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ry, %bb.dt ], [ undef, %bb.ds ]
  %i.sa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i, 0
  %i.sb = insertvalue { i64, ptr } %i.sa, ptr %.sroa.2.0.i.i.i.i, 1
  br label %bb.dv

bb.du:                                            ; preds = %bb.dv, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !28424
  %i.sc = icmp eq i8 %i.rp, %i.ro
  br i1 %i.sc, label %bb.dx, label %_RINvMs_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsl8pJiQOn4hA_9coreutils.exit.i.i, !prof !48

bb.dv:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.dr
  %.pn.i.i.i = phi { i64, ptr } [ %i.rs, %bb.dr ], [ %i.sb, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i, 1 ; 2 uses
  %.sroa.014.0.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i, 0 ; 4 uses
  %.not27.i.i.i = icmp eq ptr %.sroa.7.0.i.i.i, null
  br i1 %.not27.i.i.i, label %bb.du, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sd = load i8, ptr %.sroa.7.0.i.i.i, align 1, !noalias !28421, !noundef !12 ; 4 uses
  %i.se = zext i8 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr @1015, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !noalias !28424, !noundef !12 ; 2 uses
  %i.sh = zext i8 %.sroa.01.1.i.i.i to i64
  %i.si = getelementptr inbounds nuw i8, ptr @1015, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !noalias !28424, !noundef !12
  %i.sk = icmp ult i8 %i.sg, %i.sj
  br i1 %i.sk, label %bb.dz, label %bb.dy

bb.dx:                                            ; preds = %bb.du
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedhhECsdAYBYoqr1XX_12aho_corasick(i8 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.cx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.cw, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #50, !noalias !28421
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %.not28.i.i.i = icmp eq i8 %i.sd, %.sroa.01.1.i.i.i
  br i1 %.not28.i.i.i, label %bb.ee, label %bb.eb

bb.dz:                                            ; preds = %bb.dw
  store i8 %i.rp, ptr %i.cw, align 1, !noalias !28424
  %i.sl = icmp ugt i64 %.sroa.014.0.i.i.i, 255
  br i1 %i.sl, label %bb.ea, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !48

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !28433
  store i8 2, ptr %i.cu, align 1, !noalias !28433
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @894, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #50, !noalias !28421
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.dz
  %i.sm = trunc nuw i64 %.sroa.014.0.i.i.i to i8  ; 2 uses
  store i8 %i.sm, ptr %i.cx, align 1, !noalias !28424
  br label %bb.ee

bb.eb:                                            ; preds = %bb.dy
  %i.sn = zext i8 %.sroa.06.1.i.i.i to i64
  %i.so = getelementptr inbounds nuw i8, ptr @1015, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !noalias !28424, !noundef !12
  %i.sq = icmp ult i8 %i.sg, %i.sp
  br i1 %i.sq, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.sr = icmp ugt i64 %.sroa.014.0.i.i.i, 255
  br i1 %i.sr, label %bb.ed, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i, !prof !48

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !28436
  store i8 2, ptr %i.ct, align 1, !noalias !28436
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @894, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #50, !noalias !28421
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i: ; preds = %bb.ec
  %i.ss = trunc nuw i64 %.sroa.014.0.i.i.i to i8  ; 2 uses
  store i8 %i.ss, ptr %i.cw, align 1, !noalias !28424
  br label %bb.ee

bb.ee:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i, %bb.eb, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.dy
  %i.st = phi i8 [ %i.rp, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ss, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i ], [ %i.ro, %bb.eb ], [ %i.ro, %bb.dy ]
  %i.su = phi i8 [ %i.sm, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.rp, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i ], [ %i.rp, %bb.eb ], [ %i.rp, %bb.dy ]
  %.sroa.06.2.i.i.i = phi i8 [ %.sroa.01.1.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.sd, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i ], [ %.sroa.06.1.i.i.i, %bb.eb ], [ %.sroa.06.1.i.i.i, %bb.dy ]
  %.sroa.01.2.i.i.i = phi i8 [ %i.sd, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.sroa.01.1.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsl8pJiQOn4hA_9coreutils.exit29.i.i.i ], [ %.sroa.01.1.i.i.i, %bb.eb ], [ %.sroa.01.1.i.i.i, %bb.dy ]
  %.pr.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !28424
  br label %bb.dp

_RINvMs_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !28424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !28424
  %i.sv = load atomic i64, ptr @_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !28439 ; 2 uses
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %.split.i.i, label %_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache4test.exit.i.i, !prof !48

.split.i.i:                                       ; preds = %_RINvMs_NtNtNtCs3RYoXg2VPb3_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.sx = call noundef i128 @_RNvNtNtCs7cGl3SDxg62_10std_detect6detect5cache21detect_and_initialize() #45, !noalias !28421
  %i.sy = and i128 %i.sx, 32768
  %.not92.i.i = icmp eq i128 %i.sy, 0
  br i1 %.not92.i.i, label %bb.ef, label %bb.ej

end_hunk_5
begin_hunk_6_@_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils:bb.a
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.ls, %.preheader ], [ %i.ls, %bb.bg ], [ %.sroa.8.0.i.i.i.i1581, %.lr.ph1583 ] ; 16 uses
  %i.lz = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.lz, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 192
  %i.mb = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.mb)
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.sroa.4.0.i.ph.i.i.i
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !30956, !nonnull !12, !noundef !12
  %i.me = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader

bb.bj:                                            ; preds = %._crit_edge
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 186 ; 3 uses
  %i.mg = icmp ult i16 %i.lr, 11
  br i1 %i.mg, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mh = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  br i1 %i.mh, label %bb.bq, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.ls
  br i1 %.not.i.i.i.i.i.not.i, label %bb.bm, label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  %i.mi = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i, 1 ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.sroa.4.0.i.ph.i.i.i
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.mi
  %i.ml = sub nuw nsw i64 %i.ls, %.sroa.4.0.i.ph.i.i.i
  %i.mm = shl nuw nsw i64 %i.ml, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mk, ptr nonnull align 8 %i.mj, i64 %i.mm, i1 false), !alias.scope !30962, !noalias !30965
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 96 ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %.sroa.4.0.i.ph.i.i.i
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mp, ptr nonnull align 8 %i.mo, i64 %i.mm, i1 false), !alias.scope !30980, !noalias !30965
  br label %bb.bv

bb.bn:                                            ; preds = %bb.bk
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.bo [
    i64 5, label %bb.bq
    i64 6, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.mq = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bk
  %.sroa.09.0.i.i.i.i.i = phi i1 [ true, %bb.bp ], [ true, %bb.bo ], [ false, %bb.bk ], [ false, %bb.bn ]
  %.sroa.510.0.i.i.i.i.i = phi i64 [ 0, %bb.bp ], [ %i.mq, %bb.bo ], [ %.sroa.4.0.i.ph.i.i.i, %bb.bk ], [ %.sroa.4.0.i.ph.i.i.i, %bb.bn ] ; 11 uses
  %.sroa.013.0.i.i.i.i.i = phi i64 [ 5, %bb.bp ], [ 6, %bb.bo ], [ 4, %bb.bk ], [ %.sroa.4.0.i.ph.i.i.i, %bb.bn ] ; 5 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !30983
  %i.mr = call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30983 ; 8 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.br, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, !prof !48

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #52, !noalias !30983
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.bq
  store ptr null, ptr %i.mr, align 8, !noalias !30983
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 186
  call void @llvm.experimental.noalias.scope.decl(metadata !30987)
  %i.mu = load i16, ptr %i.mf, align 2, !noalias !30990, !noundef !12
  %i.mv = zext i16 %i.mu to i64
  %i.mw = xor i64 %.sroa.013.0.i.i.i.i.i, -1
  %i.mx = add nsw i64 %i.mv, %i.mw                ; 4 uses
  %i.my = trunc i64 %i.mx to i16
  store i16 %i.my, ptr %i.mt, align 2, !alias.scope !30987, !noalias !30983
  %i.mz = icmp ult i64 %i.mx, 12
  br i1 %i.mz, label %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.bs, !prof !10332

bb.bs:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.mx, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @959) #50, !noalias !30990
  unreachable

_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 96 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.sroa.013.0.i.i.i.i.i
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !30990, !noundef !12 ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.sroa.013.0.i.i.i.i.i
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !30990, !noundef !12 ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.013.0.i.i.i.i.i, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.ni = shl nuw nsw i64 %i.mx, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nh, ptr nonnull readonly align 8 %i.ng, i64 %i.ni, i1 false), !alias.scope !30991, !noalias !30983
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.nf
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mr, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nk, ptr nonnull readonly align 8 %i.nj, i64 %i.ni, i1 false), !alias.scope !30995, !noalias !30983
  %i.nl = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i.i to i16
  store i16 %i.nl, ptr %i.mf, align 2, !noalias !30990
  %spec.select37.i.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i.i, ptr %i.mr, ptr %.sroa.0.0.i.i.i ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i, i64 186 ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 2, !noalias !30999, !noundef !12 ; 2 uses
  %i.no = zext i16 %i.nn to i64                   ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i14.not.i.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i.i, %i.no
  br i1 %.not.i14.not.i.i.i.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.nq = add nuw nsw i64 %.sroa.510.0.i.i.i.i.i, 1 ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.sroa.510.0.i.i.i.i.i
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.nq
  %i.nt = sub nuw nsw i64 %i.no, %.sroa.510.0.i.i.i.i.i
  %i.nu = shl nuw nsw i64 %i.nt, 3                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ns, ptr nonnull align 8 %i.nr, i64 %i.nu, i1 false), !alias.scope !31003, !noalias !30999
  %i.nv = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i, i64 96 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %.sroa.510.0.i.i.i.i.i
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nx, ptr nonnull align 8 %i.nw, i64 %i.nu, i1 false), !alias.scope !31006, !noalias !30999
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.sroa.510.0.i.i.i.i.i
  store i64 %i.jk, ptr %i.ny, align 8, !alias.scope !31003, !noalias !30999
  %i.nz = getelementptr inbounds nuw i8, ptr %spec.select37.i.i.i.i.i, i64 96
  %i.oa = add i16 %i.nn, 1
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %.sroa.510.0.i.i.i.i.i
  store i64 0, ptr %i.ob, align 8, !alias.scope !31006, !noalias !30999
  store i16 %i.oa, ptr %i.nm, align 2, !noalias !30999
  %i.oc = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !31009, !noundef !12 ; 2 uses
  %.not.i98.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i98.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i64.i

bb.bv:                                            ; preds = %bb.bm, %bb.bl
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.sroa.4.0.i.ph.i.i.i
  store i64 %i.jk, ptr %i.od, align 8, !alias.scope !30962, !noalias !30965
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 96
  %i.of = add nuw nsw i16 %i.lr, 1
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %.sroa.4.0.i.ph.i.i.i
  store i64 0, ptr %i.og, align 8, !alias.scope !30980, !noalias !30965
  store i16 %i.of, ptr %i.mf, align 2, !noalias !30965
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i

._crit_edge.i.i.i.i:                              ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.bu
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ %i.nc, %bb.bu ], [ %i.ro, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.11.0.lcssa.i.i.i.i = phi i64 [ %i.ne, %bb.bu ], [ %i.rq, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.9.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.bu ], [ %i.ot, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.sroa.7.0.lcssa.i.i.i.i = phi ptr [ %i.mr, %bb.bu ], [ %i.rc, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !31012
  %i.oh = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !31012 ; 10 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.bw, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, !prof !48

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #52, !noalias !31012
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  store ptr null, ptr %i.oh, align 8, !noalias !31012
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 186 ; 2 uses
  store i16 0, ptr %i.oj, align 2, !noalias !31012
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 192
  store ptr %.sroa.0.1.i, ptr %i.ok, align 8, !noalias !31012
  %i.ol = add i64 %.sroa.9.1.i, 1                 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bx, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyjNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, !prof !48

bb.bx:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #50, !noalias !31012
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyjNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.oh, ptr %.sroa.0.1.i, align 8, !noalias !31017
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 184
  store i16 0, ptr %i.om, align 8, !noalias !31022
  %i.on = icmp eq i64 %.sroa.9.0.lcssa.i.i.i.i, %.sroa.9.1.i
  br i1 %i.on, label %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.by, !prof !5

bb.by:                                            ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyjNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @969, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @970) #50, !noalias !31023
  unreachable

_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedyjNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  store i16 1, ptr %i.oj, align 2, !noalias !31023
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i64 %.sroa.11.0.lcssa.i.i.i.i, ptr %i.oo, align 8, !noalias !31023
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 96
  store i64 %.sroa.13.0.lcssa.i.i.i.i, ptr %i.op, align 8, !noalias !31023
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 200
  store ptr %.sroa.7.0.lcssa.i.i.i.i, ptr %i.oq, align 8, !noalias !31023
  store ptr %i.oh, ptr %.sroa.7.0.lcssa.i.i.i.i, align 8, !noalias !31023
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i.i.i, i64 184
  store i16 1, ptr %i.or, align 8, !noalias !31023
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i

.lr.ph.i.i.i64.i:                                 ; preds = %bb.bu, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.os = phi ptr [ %i.vl, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.oc, %bb.bu ] ; 17 uses
  %.sroa.0.0104.i.i.i.i = phi ptr [ %i.os, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.bu ]
  %.sroa.6.0103.i.i.i.i = phi i64 [ %i.ot, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %bb.bu ]
  %.sroa.7.0102.i.i.i.i = phi ptr [ %i.rc, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.mr, %bb.bu ] ; 2 uses
  %.sroa.11.0100.i.i.i.i = phi i64 [ %i.rq, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.ne, %bb.bu ] ; 4 uses
  %.sroa.13.099.i.i.i.i = phi i64 [ %i.ro, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.nc, %bb.bu ] ; 4 uses
  %i.ot = add i64 %.sroa.6.0103.i.i.i.i, 1        ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.0104.i.i.i.i, i64 184
  %i.ov = load i16, ptr %i.ou, align 8, !noalias !31009 ; 4 uses
  %i.ow = zext i16 %i.ov to i64                   ; 10 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 186 ; 4 uses
  %i.oy = load i16, ptr %i.ox, align 2, !noalias !31024, !noundef !12 ; 5 uses
  %i.oz = icmp ult i16 %i.oy, 11
  br i1 %i.oz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i.i.i64.i
  %i.pa = icmp ult i16 %i.ov, 5
  br i1 %i.pa, label %bb.cf, label %bb.cc

bb.ca:                                            ; preds = %.lr.ph.i.i.i64.i
  %i.pb = zext nneg i16 %i.oy to i64              ; 4 uses
  %i.pc = add nuw nsw i16 %i.oy, 1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.pe = add nuw nsw i64 %i.ow, 1                ; 7 uses
  %.not.i.i37.not.i.i.i.i = icmp ult i16 %i.ov, %i.oy
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.ow ; 3 uses
  br i1 %.not.i.i37.not.i.i.i.i, label %bb.cb, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.ca
  store i64 %.sroa.11.0100.i.i.i.i, ptr %i.pf, align 8, !alias.scope !31028, !noalias !31031
  %i.pg = getelementptr inbounds nuw i8, ptr %i.os, i64 96
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.ow
  store i64 %.sroa.13.099.i.i.i.i, ptr %i.ph, align 8, !alias.scope !31034, !noalias !31031
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pe
  %i.pj = sub nsw i64 %i.pb, %i.ow
  %i.pk = shl nuw nsw i64 %i.pj, 3                ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pi, ptr nonnull align 8 %i.pf, i64 %i.pk, i1 false), !alias.scope !31028, !noalias !31031
  %i.pl = getelementptr inbounds nuw i8, ptr %i.os, i64 96 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.ow ; 2 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.pe
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pn, ptr nonnull align 8 %i.pm, i64 %i.pk, i1 false), !alias.scope !31034, !noalias !31031
  store i64 %.sroa.11.0100.i.i.i.i, ptr %i.pf, align 8, !alias.scope !31028, !noalias !31031
  store i64 %.sroa.13.099.i.i.i.i, ptr %i.pm, align 8, !alias.scope !31034, !noalias !31031
  %i.po = getelementptr inbounds nuw i8, ptr %i.os, i64 192 ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pe
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.ow
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pr, ptr nonnull align 8 %i.pp, i64 %i.pk, i1 false), !alias.scope !31037, !noalias !31031
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.cb, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.os, i64 192 ; 6 uses
  %i.pt = add nuw nsw i64 %i.pb, 2                ; 2 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pe
  store ptr %.sroa.7.0102.i.i.i.i, ptr %i.pu, align 8, !alias.scope !31037, !noalias !31031
  store i16 %i.pc, ptr %i.ox, align 2, !noalias !31031
  %i.pv = icmp samesign ult i64 %i.pe, %i.pt
  br i1 %i.pv, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.pw = add nuw nsw i64 %i.pb, 1
  %i.px = sub nsw i64 %i.pw, %i.ow
  %i.py = sub nsw i64 %i.pb, %i.ow
  %xtraiter1980 = and i64 %i.px, 3                ; 2 uses
  %lcmp.mod1981.not = icmp eq i64 %xtraiter1980, 0
  br i1 %lcmp.mod1981.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.pz, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.pe, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter1982 = phi i64 [ %prol.iter1982.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.pz = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.qa = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.qa)
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %.sroa.0.06.i.i.i.i.i.i.i.prol
  %i.qc = load ptr, ptr %i.qb, align 8, !noalias !31031, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.os, ptr %i.qc, align 8, !noalias !31031
  %i.qd = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i.prol to i16
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 184
  store i16 %i.qd, ptr %i.qe, align 8, !noalias !31031
  %prol.iter1982.next = add i64 %prol.iter1982, 1 ; 2 uses
  %prol.iter1982.cmp.not = icmp eq i64 %prol.iter1982.next, %xtraiter1980
  br i1 %prol.iter1982.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !31040

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.pe, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.pz, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.qf = icmp ult i64 %i.py, 3
  br i1 %i.qf, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.qv, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.qg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %.sroa.0.06.i.i.i.i.i.i.i
  %i.qi = load ptr, ptr %i.qh, align 8, !noalias !31031, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.os, ptr %i.qi, align 8, !noalias !31031
  %i.qj = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i to i16
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 184
  store i16 %i.qj, ptr %i.qk, align 8, !noalias !31031
  %i.ql = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.qg
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !31031, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.os, ptr %i.qn, align 8, !noalias !31031
  %i.qo = trunc nuw nsw i64 %i.qg to i16
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 184
  store i16 %i.qo, ptr %i.qp, align 8, !noalias !31031
  %i.qq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.ql
  %i.qs = load ptr, ptr %i.qr, align 8, !noalias !31031, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.os, ptr %i.qs, align 8, !noalias !31031
  %i.qt = trunc nuw nsw i64 %i.ql to i16
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 184
  store i16 %i.qt, ptr %i.qu, align 8, !noalias !31031
  %i.qv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.qw = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.qw)
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.qq
  %i.qy = load ptr, ptr %i.qx, align 8, !noalias !31031, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.os, ptr %i.qy, align 8, !noalias !31031
  %i.qz = trunc nuw nsw i64 %i.qq to i16
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 184
  store i16 %i.qz, ptr %i.ra, align 8, !noalias !31031
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.qv, %i.pt
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.bz
  switch i16 %i.ov, label %bb.cd [
    i16 5, label %bb.cf
    i16 6, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.rb = add nsw i64 %i.ow, -7
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.bz
  %.sroa.06.0.i.i.i.i.i = phi i64 [ 5, %bb.ce ], [ 6, %bb.cd ], [ 4, %bb.bz ], [ 5, %bb.cc ] ; 7 uses
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %bb.ce ], [ %i.rb, %bb.cd ], [ %i.ow, %bb.bz ], [ 5, %bb.cc ] ; 9 uses
  %.sroa.03.0.i.i.i.i.i = phi i1 [ true, %bb.ce ], [ true, %bb.cd ], [ false, %bb.bz ], [ false, %bb.cc ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !31041
  %i.rc = call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !31041 ; 14 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.cg, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, !prof !48

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #52, !noalias !31041
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.cf
  store ptr null, ptr %i.rc, align 8, !noalias !31041
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 186 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31045)
  %i.rf = load i16, ptr %i.ox, align 2, !noalias !31048, !noundef !12
  %i.rg = zext i16 %i.rf to i64
  %i.rh = xor i64 %.sroa.06.0.i.i.i.i.i, -1
  %i.ri = add nsw i64 %i.rg, %i.rh                ; 4 uses
  %i.rj = trunc i64 %i.ri to i16
  store i16 %i.rj, ptr %i.re, align 2, !alias.scope !31045, !noalias !31041
  %i.rk = icmp ult i64 %i.ri, 12
  br i1 %i.rk, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.ch, !prof !10332

bb.ch:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ri, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @959) #50, !noalias !31048
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeyjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.rl = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.os, i64 96 ; 2 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %.sroa.06.0.i.i.i.i.i
  %i.ro = load i64, ptr %i.rn, align 8, !noalias !31048, !noundef !12 ; 2 uses
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %.sroa.06.0.i.i.i.i.i
  %i.rq = load i64, ptr %i.rp, align 8, !noalias !31048, !noundef !12 ; 2 uses
  %i.rr = add nuw nsw i64 %.sroa.06.0.i.i.i.i.i, 1 ; 2 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.ru = shl nuw nsw i64 %i.ri, 3                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rt, ptr nonnull readonly align 8 %i.rs, i64 %i.ru, i1 false), !alias.scope !31049, !noalias !31041
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rr
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rc, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rw, ptr nonnull readonly align 8 %i.rv, i64 %i.ru, i1 false), !alias.scope !31053, !noalias !31041
  %i.rx = trunc nuw nsw i64 %.sroa.06.0.i.i.i.i.i to i16
  store i16 %i.rx, ptr %i.ox, align 2, !noalias !31048
  %i.ry = load i16, ptr %i.re, align 2, !noalias !31041, !noundef !12 ; 3 uses
  %i.rz = zext i16 %i.ry to i64
  %i.sa = add nuw nsw i64 %i.rz, 1                ; 5 uses
  %i.sb = icmp ult i16 %i.ry, 12
  br i1 %i.sb, label %bb.ci, label %bb.cl, !prof !10332

bb.ci:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rc, i64 192 ; 6 uses
  %i.sd = zext i16 %i.oy to i64
  %i.se = sub nuw nsw i64 %i.sd, %.sroa.06.0.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31057)
  call void @llvm.experimental.noalias.scope.decl(metadata !31060)
  %i.sf = icmp eq i64 %i.se, %i.sa
  br i1 %i.sf, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.cj, !prof !5

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #50, !noalias !31062
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.ci
  %i.sg = getelementptr i8, ptr %i.os, i64 200
  %i.sh = getelementptr [8 x i8], ptr %i.sg, i64 %.sroa.06.0.i.i.i.i.i
  %i.si = shl nuw nsw i64 %i.sa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sc, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.sh, i64 %i.si, i1 false), !alias.scope !31063, !noalias !31041
  %3 = icmp ne i64 %i.ot, 0
  call void @llvm.assume(i1 %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !31064)
  %xtraiter = and i64 %i.sa, 3                    ; 3 uses
  %i.sj = icmp ult i16 %i.ry, 3
  br i1 %i.sj, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %unroll_iter = and i64 %i.sa, 28
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.sz, %bb.ck ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %niter.next.3, %bb.ck ]
  %i.sk = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.sroa.0.09.i.i.i.i.i.i.i.i
  %i.sm = load ptr, ptr %i.sl, align 8, !alias.scope !31064, !noalias !31067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.rc, ptr %i.sm, align 8, !noalias !31070
  %i.sn = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i to i16
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 184
  store i16 %i.sn, ptr %i.so, align 8, !noalias !31067
  %i.sp = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.sk
  %i.sr = load ptr, ptr %i.sq, align 8, !alias.scope !31064, !noalias !31067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.rc, ptr %i.sr, align 8, !noalias !31070
  %i.ss = trunc nuw nsw i64 %i.sk to i16
  %i.st = getelementptr inbounds nuw i8, ptr %i.sr, i64 184
  store i16 %i.ss, ptr %i.st, align 8, !noalias !31067
  %i.su = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.sp
  %i.sw = load ptr, ptr %i.sv, align 8, !alias.scope !31064, !noalias !31067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.rc, ptr %i.sw, align 8, !noalias !31070
  %i.sx = trunc nuw nsw i64 %i.sp to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 184
  store i16 %i.sx, ptr %i.sy, align 8, !noalias !31067
  %i.sz = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %i.su
  %i.tb = load ptr, ptr %i.ta, align 8, !alias.scope !31064, !noalias !31067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.rc, ptr %i.tb, align 8, !noalias !31070
  %i.tc = trunc nuw nsw i64 %i.su to i16
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 184
  store i16 %i.tc, ptr %i.td, align 8, !noalias !31067
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.unr-lcssa, label %bb.ck

bb.cl:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutyjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.sa, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #50, !noalias !31041
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.unr-lcssa: ; preds = %bb.ck
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.sz, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod1977 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1977)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.te, %bb.cm ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cm ]
  %i.te = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.epil, 1
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.epil
  %i.tg = load ptr, ptr %i.tf, align 8, !alias.scope !31064, !noalias !31067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.rc, ptr %i.tg, align 8, !noalias !31070
  %i.th = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.epil to i16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 184
  store i16 %i.th, ptr %i.ti, align 8, !noalias !31067
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, label %bb.cm, !llvm.loop !31071

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.cm, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.unr-lcssa
  %spec.select.i36.i.i.i.i = select i1 %.sroa.03.0.i.i.i.i.i, ptr %i.rc, ptr %i.os ; 11 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i.i.i, i64 186 ; 2 uses
  %i.tk = load i16, ptr %i.tj, align 2, !noalias !31072, !noundef !12 ; 2 uses
  %i.tl = zext i16 %i.tk to i64                   ; 5 uses
  %i.tm = add i16 %i.tk, 1
  %i.tn = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i.i.i, i64 8 ; 2 uses
  %i.to = add nuw nsw i64 %.sroa.5.0.i.i.i.i.i, 1 ; 7 uses
  %.not.i8.not.i.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i.i, %i.tl
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %.sroa.5.0.i.i.i.i.i ; 3 uses
  br i1 %.not.i8.not.i.i.i.i.i, label %bb.cn, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i9.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i9.i.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  store i64 %.sroa.11.0100.i.i.i.i, ptr %i.tp, align 8, !alias.scope !31075, !noalias !31072
  %i.tq = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i.i.i, i64 96
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %.sroa.5.0.i.i.i.i.i
  store i64 %.sroa.13.099.i.i.i.i, ptr %i.tr, align 8, !alias.scope !31078, !noalias !31072
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i.i.i

bb.cn:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tn, i64 %i.to
  %i.tt = sub nuw nsw i64 %i.tl, %.sroa.5.0.i.i.i.i.i
  %i.tu = shl nuw nsw i64 %i.tt, 3                ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ts, ptr nonnull align 8 %i.tp, i64 %i.tu, i1 false), !alias.scope !31075, !noalias !31072
  %i.tv = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i.i.i, i64 96 ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %.sroa.5.0.i.i.i.i.i ; 2 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.to
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tx, ptr nonnull align 8 %i.tw, i64 %i.tu, i1 false), !alias.scope !31078, !noalias !31072
  store i64 %.sroa.11.0100.i.i.i.i, ptr %i.tp, align 8, !alias.scope !31075, !noalias !31072
  store i64 %.sroa.13.099.i.i.i.i, ptr %i.tw, align 8, !alias.scope !31078, !noalias !31072
  %i.ty = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i.i.i, i64 192 ; 2 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %i.to
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %.sroa.5.0.i.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ub, ptr nonnull align 8 %i.tz, i64 %i.tu, i1 false), !alias.scope !31081, !noalias !31072
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i.i.i: ; preds = %bb.cn, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i9.i.i.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i.i.i, i64 192 ; 6 uses
  %i.ud = add nuw nsw i64 %i.tl, 2                ; 2 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.to
  store ptr %.sroa.7.0102.i.i.i.i, ptr %i.ue, align 8, !alias.scope !31081, !noalias !31072
  store i16 %i.tm, ptr %i.tj, align 2, !noalias !31072
  %i.uf = icmp samesign ult i64 %i.to, %i.ud
  br i1 %i.uf, label %.lr.ph.i.i11.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

.lr.ph.i.i11.i.i.i.i.i.preheader:                 ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i.i.i
  %i.ug = add nuw nsw i64 %i.tl, 1
  %i.uh = sub nsw i64 %i.ug, %.sroa.5.0.i.i.i.i.i
  %i.ui = sub nsw i64 %i.tl, %.sroa.5.0.i.i.i.i.i
  %xtraiter1978 = and i64 %i.uh, 3                ; 2 uses
  %lcmp.mod1979.not = icmp eq i64 %xtraiter1978, 0
  br i1 %lcmp.mod1979.not, label %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i11.i.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.i.prol = phi i64 [ %i.uj, %.lr.ph.i.i11.i.i.i.i.i.prol ], [ %i.to, %.lr.ph.i.i11.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.i.preheader ]
  %i.uj = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol, 1 ; 2 uses
  %i.uk = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.uk)
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol
  %i.um = load ptr, ptr %i.ul, align 8, !noalias !31072, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i36.i.i.i.i, ptr %i.um, align 8, !noalias !31072
  %i.un = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i.prol to i16
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 184
  store i16 %i.un, ptr %i.uo, align 8, !noalias !31072
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1978
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.i.prol, !llvm.loop !31084

.lr.ph.i.i11.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i11.i.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.i.unr = phi i64 [ %i.to, %.lr.ph.i.i11.i.i.i.i.i.preheader ], [ %i.uj, %.lr.ph.i.i11.i.i.i.i.i.prol ]
  %i.up = icmp ult i64 %i.ui, 3
  br i1 %i.up, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i.i

.lr.ph.i.i11.i.i.i.i.i:                           ; preds = %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i.i = phi i64 [ %i.vf, %.lr.ph.i.i11.i.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.uq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 1 ; 2 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %.sroa.0.06.i.i12.i.i.i.i.i
  %i.us = load ptr, ptr %i.ur, align 8, !noalias !31072, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i36.i.i.i.i, ptr %i.us, align 8, !noalias !31072
  %i.ut = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i to i16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 184
  store i16 %i.ut, ptr %i.uu, align 8, !noalias !31072
  %i.uv = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 2 ; 2 uses
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.uq
  %i.ux = load ptr, ptr %i.uw, align 8, !noalias !31072, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i36.i.i.i.i, ptr %i.ux, align 8, !noalias !31072
  %i.uy = trunc nuw nsw i64 %i.uq to i16
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 184
  store i16 %i.uy, ptr %i.uz, align 8, !noalias !31072
  %i.va = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 3 ; 2 uses
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.uv
  %i.vc = load ptr, ptr %i.vb, align 8, !noalias !31072, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i36.i.i.i.i, ptr %i.vc, align 8, !noalias !31072
  %i.vd = trunc nuw nsw i64 %i.uv to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 184
  store i16 %i.vd, ptr %i.ve, align 8, !noalias !31072
  %i.vf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.i, 4 ; 2 uses
  %i.vg = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.vg)
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.va
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !31072, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i36.i.i.i.i, ptr %i.vi, align 8, !noalias !31072
  %i.vj = trunc nuw nsw i64 %i.va to i16
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 184
  store i16 %i.vj, ptr %i.vk, align 8, !noalias !31072
  %exitcond.not.i.i13.i.i.i.i.i.3 = icmp eq i64 %i.vf, %i.ud
  br i1 %exitcond.not.i.i13.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutyjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i.i.i
  %i.vl = load ptr, ptr %i.os, align 8, !noalias !31009, !noundef !12 ; 2 uses
  %.not.i.i.i.i65.i = icmp eq ptr %i.vl, null
  br i1 %.not.i.i.i.i65.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i64.i

.thread128.i:                                     ; preds = %_RNvXsp_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB7_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3DivRBQ_E3div.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !31085
  %i.vm = call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !31085 ; 7 uses
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %bb.co, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !48

bb.co:                                            ; preds = %.thread128.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #52, !noalias !31085
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %.thread128.i
  store ptr null, ptr %i.vm, align 8, !noalias !31085
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 186
  store i16 1, ptr %i.vo, align 2, !noalias !31086
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store i64 %i.jk, ptr %i.vp, align 8, !noalias !31086
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 96
  store i64 0, ptr %i.vq, align 8, !noalias !31086
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i

_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.bv
  %.sroa.9.2.i = phi i64 [ 0, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.sroa.9.1.i, %bb.bv ], [ %i.ol, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %.sroa.9.1.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %.sroa.9.1.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.9.1.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.2.i = phi ptr [ %i.vm, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.sroa.0.1.i, %bb.bv ], [ %i.oh, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %.sroa.0.1.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.1.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.8.0.i.i.i = phi i64 [ 0, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i, %bb.bv ], [ %.sroa.510.0.i.i.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %.sroa.510.0.i.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %.sroa.510.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.510.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.i.i66.i = phi ptr [ %i.vm, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutyjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.bv ], [ %spec.select37.i.i.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryyjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %spec.select37.i.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeyjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %spec.select37.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %spec.select37.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.vr = add i64 %.sroa.13.1.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i66.i) ]
  br label %_RNvMs2_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_5EntryyjE9or_insertCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMs2_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_5EntryyjE9or_insertCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.lr.ph1583, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.13.2.i = phi i64 [ %i.vr, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.13.1.i, %.lr.ph1583 ]
  %.sroa.9.3.i = phi i64 [ %.sroa.9.2.i, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.9.1.i, %.lr.ph1583 ]
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.i, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.0.1.i, %.lr.ph1583 ]
  %.sroa.0.0.copyload.sink.i.i = phi ptr [ %.sroa.0.0.i.i66.i, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.0.0.i.i.i, %.lr.ph1583 ]
  %.sroa.45.0.copyload.sink.i.i = phi i64 [ %.sroa.8.0.i.i.i, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryyjE12insert_entryCsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.8.0.i.i.i.i1581, %.lr.ph1583 ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.sink.i.i, i64 96
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %.sroa.45.0.copyload.sink.i.i ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !noalias !30762, !noundef !12
  %i.vv = add i64 %i.vu, 1
  store i64 %i.vv, ptr %i.vt, align 8, !noalias !30762
  br label %.critedge.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.thread399.i, %bb.bd, %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !30758
  %i.vw = icmp eq ptr %i.jj, %i.ho
  br i1 %i.vw, label %.thread.i, label %bb.ap

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.thread.i: ; preds = %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !30758
  br label %bb.cp

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit70.i: ; preds = %.lr.ph1580, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd2gtCsl8pJiQOn4hA_9coreutils.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !30758
  br i1 %i.ju, label %bb.cp, label %.critedge252.i
end_hunk_6
begin_hunk_7_@_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtCs2vKOLqTMYjT_3std2fs4FileINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher12ExactMatcherE0Csl8pJiQOn4hA_9coreutils:bb.a

.loopexit.i74:                                    ; preds = %bb.q, %bb.n
  %i.cb = phi i64 [ %.sroa.36.0207, %bb.n ], [ %i.by, %bb.q ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32090
  %i.cc = icmp ugt i64 %i.cb, %3
  br i1 %i.cc, label %bb.t, label %bb.s, !prof !48

bb.s:                                             ; preds = %.loopexit.i74
  %i.cd = sub nuw nsw i64 %3, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd) #45, !noalias !32090
  %i.cf = load i64, ptr %i.a, align 8, !range !46, !noalias !32090, !noundef !12
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.loopexit.i74
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cb, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32090
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ch = load i64, ptr %i.z, align 8, !noalias !32090, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32090
  %i.ci = add i64 %i.ch, %i.cb                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32090
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

bb.w:                                             ; preds = %bb.m
  br i1 %.not.i.i.i70, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.cj = add i64 %i.bo, 1                        ; 2 uses
  %i.ck = sub i64 %i.cj, %i.bm
  br label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.cl = add i64 %i.bq, -1                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %.preheader213

.preheader213:                                    ; preds = %bb.x, %bb.aa
  %i.cm = phi i64 [ %i.ct, %bb.aa ], [ %.sroa.36.0207, %bb.x ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cu, %bb.aa ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32094
  %i.cn = icmp ugt i64 %i.cm, %3
  br i1 %i.cn, label %bb.z, label %bb.y, !prof !48

bb.y:                                             ; preds = %.preheader213
  %i.co = sub nuw nsw i64 %3, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.co) #45, !noalias !32094
  %i.cq = load i64, ptr %i.d, align 8, !range !46, !noalias !32094, !noundef !12
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.preheader213
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32094
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cs = load i64, ptr %i.w, align 8, !noalias !32094, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32094
  %i.ct = add i64 %i.cs, %i.cm                    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i, -1         ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit.i, label %.preheader213

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32094
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.loopexit.i:                                      ; preds = %bb.aa, %bb.x
  %i.cw = phi i64 [ %.sroa.36.0207, %bb.x ], [ %i.ct, %bb.aa ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32107
  %i.cx = icmp ugt i64 %i.cw, %3
  br i1 %i.cx, label %bb.ad, label %bb.ac, !prof !48

bb.ac:                                            ; preds = %.loopexit.i
  %i.cy = sub nuw nsw i64 %3, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cy) #45, !noalias !32107
  %i.da = load i64, ptr %i.c, align 8, !range !46, !noalias !32107, !noundef !12
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.loopexit.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32107
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = load i64, ptr %i.x, align 8, !noalias !32107, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32107
  %i.dd = add i64 %i.dc, %i.cw                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32107
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126: ; preds = %bb.u, %bb.ae, %bb.l
  %.sroa.36.1 = phi i64 [ %.sroa.36.0207, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %.sroa.0.1113 = phi i64 [ %.sroa.0.0112208, %bb.l ], [ 2, %bb.u ], [ 2, %bb.ae ]
  %.sroa.013.1 = phi i64 [ %.sroa.013.0209, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %i.de = add i64 %i.bo, 1                        ; 3 uses
  %i.df = icmp eq i64 %.sroa.0.1113, 2
  %i.dg = sub i64 %i.de, %i.bm                    ; 2 uses
  br i1 %.sroa.03.0211, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  %.val60.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.val61.peel, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !12, !noalias !32111, !nonnull !12
  %i.dj = tail call noundef ptr %i.di(ptr noundef nonnull %.val60.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50.peel = icmp eq ptr %i.dj, null
  br i1 %.not50.peel, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  br i1 %i.df, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.36.1304310 = phi i64 [ %.sroa.36.0207, %.thread ], [ %.sroa.36.1, %bb.ah ] ; 7 uses
  %.sroa.013.1305309 = phi i64 [ %i.o, %.thread ], [ %.sroa.013.1, %bb.ah ] ; 2 uses
  %i.dk = phi i64 [ %i.cj, %.thread ], [ %i.de, %bb.ah ]
  %i.dl = phi i64 [ %i.ck, %.thread ], [ %i.dg, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32114
  %i.dm = icmp ugt i64 %.sroa.36.1304310, %3
  br i1 %i.dm, label %.loopexit256, label %bb.aj, !prof !48

bb.aj:                                            ; preds = %bb.ai
  %i.dn = sub nuw nsw i64 %3, %.sroa.36.1304310
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.1304310
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dn) #45, !noalias !32114
  %i.dp = load i64, ptr %i.e, align 8, !range !46, !noalias !32114, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel: ; preds = %bb.aj
  %i.dr = load i64, ptr %i.ah, align 8, !noalias !32114, !noundef !12
  %i.ds = load i64, ptr %i.ai, align 8, !noalias !32114, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32114
  %i.dt = add i64 %i.dr, %.sroa.36.1304310
  %i.du = add i64 %i.ds, %.sroa.36.1304310        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, %bb.ah
  %.sroa.013.1305308 = phi i64 [ %.sroa.013.1305309, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.013.1, %bb.ah ] ; 4 uses
  %i.dv = phi i64 [ %i.dk, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.de, %bb.ah ] ; 3 uses
  %i.dw = phi i64 [ %i.dl, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.dg, %bb.ah ] ; 2 uses
  %.sroa.36.4142.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.36.1, %bb.ah ] ; 2 uses
  %.sroa.7.0141.peel = phi i64 [ %i.dt, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.m, %bb.ah ] ; 4 uses
  %.sroa.10.0140.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.o, %bb.ah ] ; 2 uses
  %i.dx = icmp ult i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %.not54.peel = icmp ugt i64 %.sroa.7.0141.peel, %3
  %or.cond.peel = or i1 %i.dx, %.not54.peel
  br i1 %or.cond.peel, label %.loopexit257, label %bb.al, !prof !7988

bb.al:                                            ; preds = %bb.ak
  %i.dy = sub nuw i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.1305308
  %.val58.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.ea = getelementptr inbounds nuw i8, ptr %.val59.peel, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !12, !noalias !32118, !nonnull !12
  %i.ec = tail call noundef ptr %i.eb(ptr noundef nonnull %.val58.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, -9223372036854775808) %i.dy) #51, !inline_history !18253 ; 2 uses
  %.not55.peel = icmp eq ptr %i.ec, null
  br i1 %.not55.peel, label %bb.am, label %.loopexit258

bb.am:                                            ; preds = %bb.al
  %exitcond.peel.not = icmp eq i64 %i.dw, 1
  br i1 %exitcond.peel.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, %bb.af, %bb.ab, %bb.v, %bb.r
  %i.ed = phi ptr [ %.pre274, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.am, %bb.r ], [ %i.am, %bb.af ], [ %i.am, %bb.ab ], [ %i.am, %bb.v ], [ %i.am, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ]
  %i.ee = phi ptr [ %.pre272, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.ab, %bb.r ], [ %i.ab, %bb.af ], [ %i.ab, %bb.ab ], [ %i.ab, %bb.v ], [ %i.ab, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ef = load i8, ptr %i.ed, align 1, !noundef !12
  store i8 %i.ef, ptr %i.g, align 1
  %.val62 = load ptr, ptr %i.ee, align 8, !nonnull !12, !noundef !12
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val63 = load ptr, ptr %i.eg, align 8, !nonnull !12, !align !249, !noundef !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val63, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !12, !noalias !32121, !nonnull !12
  %i.ej = call noundef ptr %i.ei(ptr noundef nonnull %.val62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #51, !inline_history !18253 ; 2 uses
  %.not56 = icmp eq ptr %i.ej, null
  br i1 %.not56, label %bb.ba, label %bb.az

_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.ar, %bb.am, %bb.aw
  %.sroa.36.2189 = phi i64 [ %.sroa.36.2202.lcssa223, %bb.aw ], [ %.sroa.36.4142.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.013.2175 = phi i64 [ %.sroa.013.2204.lcssa228, %bb.aw ], [ %.sroa.10.0140.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.0.1164 = phi i64 [ %.sroa.0.1206.lcssa236, %bb.aw ], [ %i.dv, %bb.am ], [ %i.dv, %bb.ar ]
  %i.ek = icmp eq ptr %i.bl, %i.u
  br i1 %i.ek, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.l

.peel.next:                                       ; preds = %bb.am, %bb.ar
  %.sroa.013.2204 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.10.0140.peel, %bb.am ] ; 5 uses
  %.sroa.36.2202 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.36.4142.peel, %bb.am ] ; 7 uses
  %.sroa.0108.0201 = phi i64 [ %i.el, %bb.ar ], [ 1, %bb.am ]
  %i.el = add i64 %.sroa.0108.0201, 1             ; 2 uses
  %.val60 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %.val61, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !invariant.load !12, !noalias !32111, !nonnull !12
  %i.eo = tail call noundef ptr %i.en(ptr noundef nonnull %.val60, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50 = icmp eq ptr %i.eo, null
  br i1 %.not50, label %bb.an, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.peel.next
  %.lcssa221 = phi ptr [ %i.eo, %.peel.next ], [ %i.dj, %bb.ag ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa221, ptr %i.ep, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.an:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32114
  %i.eq = icmp ugt i64 %.sroa.36.2202, %3
  br i1 %i.eq, label %.loopexit256, label %bb.ao, !prof !48

bb.ao:                                            ; preds = %bb.an
  %i.er = sub nuw nsw i64 %3, %.sroa.36.2202
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.2202
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.er) #45, !noalias !32114
  %i.et = load i64, ptr %i.e, align 8, !range !46, !noalias !32114, !noundef !12
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.ap, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

.loopexit256:                                     ; preds = %bb.ai, %bb.an
  %.sroa.36.2202.lcssa222 = phi i64 [ %.sroa.36.2202, %bb.an ], [ %.sroa.36.1304310, %bb.ai ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.36.2202.lcssa222, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32114
  unreachable

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143: ; preds = %bb.ao, %bb.aj
  %.sroa.0.1206.lcssa236 = phi i64 [ %.sroa.0.0212, %bb.aj ], [ %i.dv, %bb.ao ]
  %.sroa.013.2204.lcssa228 = phi i64 [ %.sroa.013.1305309, %bb.aj ], [ %.sroa.013.2204, %bb.ao ] ; 5 uses
  %.sroa.36.2202.lcssa223 = phi i64 [ %.sroa.36.1304310, %bb.aj ], [ %.sroa.36.2202, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32114
  %i.ev = icmp ugt i64 %.sroa.013.2204.lcssa228, %3
  br i1 %i.ev, label %bb.at, label %bb.as, !prof !48

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr %i.ah, align 8, !noalias !32114, !noundef !12
  %i.ex = load i64, ptr %i.ai, align 8, !noalias !32114, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32114
  %i.ey = add i64 %i.ew, %.sroa.36.2202           ; 4 uses
  %i.ez = add i64 %i.ex, %.sroa.36.2202           ; 4 uses
  %i.fa = icmp ult i64 %i.ey, %.sroa.013.2204
  %.not54 = icmp ugt i64 %i.ey, %3
  %or.cond = or i1 %i.fa, %.not54
  br i1 %or.cond, label %.loopexit257, label %bb.aq, !prof !7988

bb.aq:                                            ; preds = %bb.ap
  %i.fb = sub nuw i64 %i.ey, %.sroa.013.2204
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204
  %.val58 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fd = getelementptr inbounds nuw i8, ptr %.val59, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !invariant.load !12, !noalias !32118, !nonnull !12
  %i.ff = tail call noundef ptr %i.fe(ptr noundef nonnull %.val58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef range(i64 0, -9223372036854775808) %i.fb) #51, !inline_history !18253 ; 2 uses
  %.not55 = icmp eq ptr %i.ff, null
  br i1 %.not55, label %bb.ar, label %.loopexit258

.loopexit257:                                     ; preds = %bb.ak, %bb.ap
  %.sroa.7.0141.lcssa = phi i64 [ %i.ey, %bb.ap ], [ %.sroa.7.0141.peel, %bb.ak ]
  %.sroa.013.2204.lcssa229 = phi i64 [ %.sroa.013.2204, %bb.ap ], [ %.sroa.013.1305308, %bb.ak ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa229, i64 noundef %.sroa.7.0141.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @721) #50
  unreachable

.loopexit258:                                     ; preds = %bb.al, %bb.aq
  %.lcssa246 = phi ptr [ %i.ff, %bb.aq ], [ %i.ec, %bb.al ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa246, ptr %i.fg, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %exitcond.not = icmp eq i64 %i.el, %i.dw
  br i1 %exitcond.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next, !llvm.loop !32124

bb.as:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  %i.fh = sub nuw nsw i64 %3, %.sroa.013.2204.lcssa228
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204.lcssa228
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val57 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val57, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !12, !noalias !32125, !nonnull !12
  %i.fl = tail call noundef ptr %i.fk(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.fh) #51, !inline_history !18253 ; 2 uses
  %.not52 = icmp eq ptr %i.fl, null
  br i1 %.not52, label %bb.av, label %bb.au

bb.at:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa228, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @723) #50
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %i.fm, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.av:                                            ; preds = %bb.as
  br i1 %.not53, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i8, ptr %i.ak, align 1, !noundef !12
  %i.fo = load i8, ptr %i.am, align 1, !noundef !12
  %i.fp = icmp eq i8 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @722) #50
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fq, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.az:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ej, ptr %i.fr, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fs, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %.loopexit258, %bb.ay, %bb.au, %bb.az, %bb.f, %bb.j, %bb.e, %bb.ba
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtCs2vKOLqTMYjT_3std2fs4FileINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher17WhitespaceMatcherE0Csl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32128
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #45, !noalias !32128
  %i.j = load i64, ptr %i.f, align 8, !range !46, !noalias !32128, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !32128, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !32128, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32128
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, label %.lr.ph

._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge: ; preds = %bb.b
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre274 = load ptr, ptr %.phi.trans.insert273, align 8
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12, !align !249 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 8      ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aj = add nsw i64 %3, -1                      ; 2 uses
  %.not53 = icmp eq i64 %3, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !12 ; 6 uses
  br label %bb.l

end_hunk_7
begin_hunk_8_@_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtCs2vKOLqTMYjT_3std2fs4FileINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher17WhitespaceMatcherE0Csl8pJiQOn4hA_9coreutils:bb.a

.loopexit.i74:                                    ; preds = %bb.q, %bb.n
  %i.cb = phi i64 [ %.sroa.36.0207, %bb.n ], [ %i.by, %bb.q ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32157
  %i.cc = icmp ugt i64 %i.cb, %3
  br i1 %i.cc, label %bb.t, label %bb.s, !prof !48

bb.s:                                             ; preds = %.loopexit.i74
  %i.cd = sub nuw nsw i64 %3, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd) #45, !noalias !32157
  %i.cf = load i64, ptr %i.a, align 8, !range !46, !noalias !32157, !noundef !12
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.loopexit.i74
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cb, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32157
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ch = load i64, ptr %i.z, align 8, !noalias !32157, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32157
  %i.ci = add i64 %i.ch, %i.cb                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32157
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

bb.w:                                             ; preds = %bb.m
  br i1 %.not.i.i.i70, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.cj = add i64 %i.bo, 1                        ; 2 uses
  %i.ck = sub i64 %i.cj, %i.bm
  br label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.cl = add i64 %i.bq, -1                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %.preheader213

.preheader213:                                    ; preds = %bb.x, %bb.aa
  %i.cm = phi i64 [ %i.ct, %bb.aa ], [ %.sroa.36.0207, %bb.x ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cu, %bb.aa ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32161
  %i.cn = icmp ugt i64 %i.cm, %3
  br i1 %i.cn, label %bb.z, label %bb.y, !prof !48

bb.y:                                             ; preds = %.preheader213
  %i.co = sub nuw nsw i64 %3, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.co) #45, !noalias !32161
  %i.cq = load i64, ptr %i.d, align 8, !range !46, !noalias !32161, !noundef !12
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.preheader213
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32161
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cs = load i64, ptr %i.w, align 8, !noalias !32161, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32161
  %i.ct = add i64 %i.cs, %i.cm                    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i, -1         ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit.i, label %.preheader213

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32161
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.loopexit.i:                                      ; preds = %bb.aa, %bb.x
  %i.cw = phi i64 [ %.sroa.36.0207, %bb.x ], [ %i.ct, %bb.aa ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32174
  %i.cx = icmp ugt i64 %i.cw, %3
  br i1 %i.cx, label %bb.ad, label %bb.ac, !prof !48

bb.ac:                                            ; preds = %.loopexit.i
  %i.cy = sub nuw nsw i64 %3, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cy) #45, !noalias !32174
  %i.da = load i64, ptr %i.c, align 8, !range !46, !noalias !32174, !noundef !12
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.loopexit.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32174
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = load i64, ptr %i.x, align 8, !noalias !32174, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32174
  %i.dd = add i64 %i.dc, %i.cw                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32174
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126: ; preds = %bb.u, %bb.ae, %bb.l
  %.sroa.36.1 = phi i64 [ %.sroa.36.0207, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %.sroa.0.1113 = phi i64 [ %.sroa.0.0112208, %bb.l ], [ 2, %bb.u ], [ 2, %bb.ae ]
  %.sroa.013.1 = phi i64 [ %.sroa.013.0209, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %i.de = add i64 %i.bo, 1                        ; 3 uses
  %i.df = icmp eq i64 %.sroa.0.1113, 2
  %i.dg = sub i64 %i.de, %i.bm                    ; 2 uses
  br i1 %.sroa.03.0211, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  %.val60.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.val61.peel, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !12, !noalias !32178, !nonnull !12
  %i.dj = tail call noundef ptr %i.di(ptr noundef nonnull %.val60.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50.peel = icmp eq ptr %i.dj, null
  br i1 %.not50.peel, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  br i1 %i.df, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.36.1304310 = phi i64 [ %.sroa.36.0207, %.thread ], [ %.sroa.36.1, %bb.ah ] ; 7 uses
  %.sroa.013.1305309 = phi i64 [ %i.o, %.thread ], [ %.sroa.013.1, %bb.ah ] ; 2 uses
  %i.dk = phi i64 [ %i.cj, %.thread ], [ %i.de, %bb.ah ]
  %i.dl = phi i64 [ %i.ck, %.thread ], [ %i.dg, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32181
  %i.dm = icmp ugt i64 %.sroa.36.1304310, %3
  br i1 %i.dm, label %.loopexit256, label %bb.aj, !prof !48

bb.aj:                                            ; preds = %bb.ai
  %i.dn = sub nuw nsw i64 %3, %.sroa.36.1304310
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.1304310
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dn) #45, !noalias !32181
  %i.dp = load i64, ptr %i.e, align 8, !range !46, !noalias !32181, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel: ; preds = %bb.aj
  %i.dr = load i64, ptr %i.ah, align 8, !noalias !32181, !noundef !12
  %i.ds = load i64, ptr %i.ai, align 8, !noalias !32181, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32181
  %i.dt = add i64 %i.dr, %.sroa.36.1304310
  %i.du = add i64 %i.ds, %.sroa.36.1304310        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, %bb.ah
  %.sroa.013.1305308 = phi i64 [ %.sroa.013.1305309, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.013.1, %bb.ah ] ; 4 uses
  %i.dv = phi i64 [ %i.dk, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.de, %bb.ah ] ; 3 uses
  %i.dw = phi i64 [ %i.dl, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.dg, %bb.ah ] ; 2 uses
  %.sroa.36.4142.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.36.1, %bb.ah ] ; 2 uses
  %.sroa.7.0141.peel = phi i64 [ %i.dt, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.m, %bb.ah ] ; 4 uses
  %.sroa.10.0140.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.o, %bb.ah ] ; 2 uses
  %i.dx = icmp ult i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %.not54.peel = icmp ugt i64 %.sroa.7.0141.peel, %3
  %or.cond.peel = or i1 %i.dx, %.not54.peel
  br i1 %or.cond.peel, label %.loopexit257, label %bb.al, !prof !7988

bb.al:                                            ; preds = %bb.ak
  %i.dy = sub nuw i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.1305308
  %.val58.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.ea = getelementptr inbounds nuw i8, ptr %.val59.peel, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !12, !noalias !32185, !nonnull !12
  %i.ec = tail call noundef ptr %i.eb(ptr noundef nonnull %.val58.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, -9223372036854775808) %i.dy) #51, !inline_history !18253 ; 2 uses
  %.not55.peel = icmp eq ptr %i.ec, null
  br i1 %.not55.peel, label %bb.am, label %.loopexit258

bb.am:                                            ; preds = %bb.al
  %exitcond.peel.not = icmp eq i64 %i.dw, 1
  br i1 %exitcond.peel.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, %bb.af, %bb.ab, %bb.v, %bb.r
  %i.ed = phi ptr [ %.pre274, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.am, %bb.r ], [ %i.am, %bb.af ], [ %i.am, %bb.ab ], [ %i.am, %bb.v ], [ %i.am, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ]
  %i.ee = phi ptr [ %.pre272, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.ab, %bb.r ], [ %i.ab, %bb.af ], [ %i.ab, %bb.ab ], [ %i.ab, %bb.v ], [ %i.ab, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ef = load i8, ptr %i.ed, align 1, !noundef !12
  store i8 %i.ef, ptr %i.g, align 1
  %.val62 = load ptr, ptr %i.ee, align 8, !nonnull !12, !noundef !12
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val63 = load ptr, ptr %i.eg, align 8, !nonnull !12, !align !249, !noundef !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val63, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !12, !noalias !32188, !nonnull !12
  %i.ej = call noundef ptr %i.ei(ptr noundef nonnull %.val62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #51, !inline_history !18253 ; 2 uses
  %.not56 = icmp eq ptr %i.ej, null
  br i1 %.not56, label %bb.ba, label %bb.az

_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.ar, %bb.am, %bb.aw
  %.sroa.36.2189 = phi i64 [ %.sroa.36.2202.lcssa223, %bb.aw ], [ %.sroa.36.4142.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.013.2175 = phi i64 [ %.sroa.013.2204.lcssa228, %bb.aw ], [ %.sroa.10.0140.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.0.1164 = phi i64 [ %.sroa.0.1206.lcssa236, %bb.aw ], [ %i.dv, %bb.am ], [ %i.dv, %bb.ar ]
  %i.ek = icmp eq ptr %i.bl, %i.u
  br i1 %i.ek, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.l

.peel.next:                                       ; preds = %bb.am, %bb.ar
  %.sroa.013.2204 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.10.0140.peel, %bb.am ] ; 5 uses
  %.sroa.36.2202 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.36.4142.peel, %bb.am ] ; 7 uses
  %.sroa.0108.0201 = phi i64 [ %i.el, %bb.ar ], [ 1, %bb.am ]
  %i.el = add i64 %.sroa.0108.0201, 1             ; 2 uses
  %.val60 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %.val61, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !invariant.load !12, !noalias !32178, !nonnull !12
  %i.eo = tail call noundef ptr %i.en(ptr noundef nonnull %.val60, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50 = icmp eq ptr %i.eo, null
  br i1 %.not50, label %bb.an, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.peel.next
  %.lcssa221 = phi ptr [ %i.eo, %.peel.next ], [ %i.dj, %bb.ag ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa221, ptr %i.ep, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.an:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32181
  %i.eq = icmp ugt i64 %.sroa.36.2202, %3
  br i1 %i.eq, label %.loopexit256, label %bb.ao, !prof !48

bb.ao:                                            ; preds = %bb.an
  %i.er = sub nuw nsw i64 %3, %.sroa.36.2202
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.2202
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.er) #45, !noalias !32181
  %i.et = load i64, ptr %i.e, align 8, !range !46, !noalias !32181, !noundef !12
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.ap, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

.loopexit256:                                     ; preds = %bb.ai, %bb.an
  %.sroa.36.2202.lcssa222 = phi i64 [ %.sroa.36.2202, %bb.an ], [ %.sroa.36.1304310, %bb.ai ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.36.2202.lcssa222, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32181
  unreachable

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143: ; preds = %bb.ao, %bb.aj
  %.sroa.0.1206.lcssa236 = phi i64 [ %.sroa.0.0212, %bb.aj ], [ %i.dv, %bb.ao ]
  %.sroa.013.2204.lcssa228 = phi i64 [ %.sroa.013.1305309, %bb.aj ], [ %.sroa.013.2204, %bb.ao ] ; 5 uses
  %.sroa.36.2202.lcssa223 = phi i64 [ %.sroa.36.1304310, %bb.aj ], [ %.sroa.36.2202, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32181
  %i.ev = icmp ugt i64 %.sroa.013.2204.lcssa228, %3
  br i1 %i.ev, label %bb.at, label %bb.as, !prof !48

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr %i.ah, align 8, !noalias !32181, !noundef !12
  %i.ex = load i64, ptr %i.ai, align 8, !noalias !32181, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32181
  %i.ey = add i64 %i.ew, %.sroa.36.2202           ; 4 uses
  %i.ez = add i64 %i.ex, %.sroa.36.2202           ; 4 uses
  %i.fa = icmp ult i64 %i.ey, %.sroa.013.2204
  %.not54 = icmp ugt i64 %i.ey, %3
  %or.cond = or i1 %i.fa, %.not54
  br i1 %or.cond, label %.loopexit257, label %bb.aq, !prof !7988

bb.aq:                                            ; preds = %bb.ap
  %i.fb = sub nuw i64 %i.ey, %.sroa.013.2204
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204
  %.val58 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fd = getelementptr inbounds nuw i8, ptr %.val59, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !invariant.load !12, !noalias !32185, !nonnull !12
  %i.ff = tail call noundef ptr %i.fe(ptr noundef nonnull %.val58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef range(i64 0, -9223372036854775808) %i.fb) #51, !inline_history !18253 ; 2 uses
  %.not55 = icmp eq ptr %i.ff, null
  br i1 %.not55, label %bb.ar, label %.loopexit258

.loopexit257:                                     ; preds = %bb.ak, %bb.ap
  %.sroa.7.0141.lcssa = phi i64 [ %i.ey, %bb.ap ], [ %.sroa.7.0141.peel, %bb.ak ]
  %.sroa.013.2204.lcssa229 = phi i64 [ %.sroa.013.2204, %bb.ap ], [ %.sroa.013.1305308, %bb.ak ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa229, i64 noundef %.sroa.7.0141.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @721) #50
  unreachable

.loopexit258:                                     ; preds = %bb.al, %bb.aq
  %.lcssa246 = phi ptr [ %i.ff, %bb.aq ], [ %i.ec, %bb.al ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa246, ptr %i.fg, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %exitcond.not = icmp eq i64 %i.el, %i.dw
  br i1 %exitcond.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next, !llvm.loop !32191

bb.as:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  %i.fh = sub nuw nsw i64 %3, %.sroa.013.2204.lcssa228
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204.lcssa228
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val57 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val57, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !12, !noalias !32192, !nonnull !12
  %i.fl = tail call noundef ptr %i.fk(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.fh) #51, !inline_history !18253 ; 2 uses
  %.not52 = icmp eq ptr %i.fl, null
  br i1 %.not52, label %bb.av, label %bb.au

bb.at:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa228, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @723) #50
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %i.fm, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.av:                                            ; preds = %bb.as
  br i1 %.not53, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i8, ptr %i.ak, align 1, !noundef !12
  %i.fo = load i8, ptr %i.am, align 1, !noundef !12
  %i.fp = icmp eq i8 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @722) #50
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fq, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.az:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ej, ptr %i.fr, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fs, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %.loopexit258, %bb.ay, %bb.au, %bb.az, %bb.f, %bb.j, %bb.e, %bb.ba
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher12ExactMatcherE0Csl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !12, !align !249, !noundef !12 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32195
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #45, !noalias !32195
  %i.j = load i64, ptr %i.f, align 8, !range !46, !noalias !32195, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !32195, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !32195, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32195
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, label %.lr.ph

._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge: ; preds = %bb.b
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre274 = load ptr, ptr %.phi.trans.insert273, align 8
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12, !align !249 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 8      ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aj = add nsw i64 %3, -1                      ; 2 uses
  %.not53 = icmp eq i64 %3, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !12 ; 6 uses
  br label %bb.l

end_hunk_8
begin_hunk_9_@_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher12ExactMatcherE0Csl8pJiQOn4hA_9coreutils:bb.a

.loopexit.i74:                                    ; preds = %bb.q, %bb.n
  %i.cb = phi i64 [ %.sroa.36.0207, %bb.n ], [ %i.by, %bb.q ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32224
  %i.cc = icmp ugt i64 %i.cb, %3
  br i1 %i.cc, label %bb.t, label %bb.s, !prof !48

bb.s:                                             ; preds = %.loopexit.i74
  %i.cd = sub nuw nsw i64 %3, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd) #45, !noalias !32224
  %i.cf = load i64, ptr %i.a, align 8, !range !46, !noalias !32224, !noundef !12
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.loopexit.i74
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cb, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32224
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ch = load i64, ptr %i.z, align 8, !noalias !32224, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32224
  %i.ci = add i64 %i.ch, %i.cb                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32224
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

bb.w:                                             ; preds = %bb.m
  br i1 %.not.i.i.i70, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.cj = add i64 %i.bo, 1                        ; 2 uses
  %i.ck = sub i64 %i.cj, %i.bm
  br label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.cl = add i64 %i.bq, -1                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %.preheader213

.preheader213:                                    ; preds = %bb.x, %bb.aa
  %i.cm = phi i64 [ %i.ct, %bb.aa ], [ %.sroa.36.0207, %bb.x ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cu, %bb.aa ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32228
  %i.cn = icmp ugt i64 %i.cm, %3
  br i1 %i.cn, label %bb.z, label %bb.y, !prof !48

bb.y:                                             ; preds = %.preheader213
  %i.co = sub nuw nsw i64 %3, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.co) #45, !noalias !32228
  %i.cq = load i64, ptr %i.d, align 8, !range !46, !noalias !32228, !noundef !12
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.preheader213
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32228
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cs = load i64, ptr %i.w, align 8, !noalias !32228, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32228
  %i.ct = add i64 %i.cs, %i.cm                    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i, -1         ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit.i, label %.preheader213

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32228
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.loopexit.i:                                      ; preds = %bb.aa, %bb.x
  %i.cw = phi i64 [ %.sroa.36.0207, %bb.x ], [ %i.ct, %bb.aa ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32241
  %i.cx = icmp ugt i64 %i.cw, %3
  br i1 %i.cx, label %bb.ad, label %bb.ac, !prof !48

bb.ac:                                            ; preds = %.loopexit.i
  %i.cy = sub nuw nsw i64 %3, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cy) #45, !noalias !32241
  %i.da = load i64, ptr %i.c, align 8, !range !46, !noalias !32241, !noundef !12
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.loopexit.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32241
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = load i64, ptr %i.x, align 8, !noalias !32241, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32241
  %i.dd = add i64 %i.dc, %i.cw                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32241
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126: ; preds = %bb.u, %bb.ae, %bb.l
  %.sroa.36.1 = phi i64 [ %.sroa.36.0207, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %.sroa.0.1113 = phi i64 [ %.sroa.0.0112208, %bb.l ], [ 2, %bb.u ], [ 2, %bb.ae ]
  %.sroa.013.1 = phi i64 [ %.sroa.013.0209, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %i.de = add i64 %i.bo, 1                        ; 3 uses
  %i.df = icmp eq i64 %.sroa.0.1113, 2
  %i.dg = sub i64 %i.de, %i.bm                    ; 2 uses
  br i1 %.sroa.03.0211, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  %.val60.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.val61.peel, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !12, !noalias !32245, !nonnull !12
  %i.dj = tail call noundef ptr %i.di(ptr noundef nonnull %.val60.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50.peel = icmp eq ptr %i.dj, null
  br i1 %.not50.peel, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  br i1 %i.df, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.36.1304310 = phi i64 [ %.sroa.36.0207, %.thread ], [ %.sroa.36.1, %bb.ah ] ; 7 uses
  %.sroa.013.1305309 = phi i64 [ %i.o, %.thread ], [ %.sroa.013.1, %bb.ah ] ; 2 uses
  %i.dk = phi i64 [ %i.cj, %.thread ], [ %i.de, %bb.ah ]
  %i.dl = phi i64 [ %i.ck, %.thread ], [ %i.dg, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32248
  %i.dm = icmp ugt i64 %.sroa.36.1304310, %3
  br i1 %i.dm, label %.loopexit256, label %bb.aj, !prof !48

bb.aj:                                            ; preds = %bb.ai
  %i.dn = sub nuw nsw i64 %3, %.sroa.36.1304310
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.1304310
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dn) #45, !noalias !32248
  %i.dp = load i64, ptr %i.e, align 8, !range !46, !noalias !32248, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel: ; preds = %bb.aj
  %i.dr = load i64, ptr %i.ah, align 8, !noalias !32248, !noundef !12
  %i.ds = load i64, ptr %i.ai, align 8, !noalias !32248, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32248
  %i.dt = add i64 %i.dr, %.sroa.36.1304310
  %i.du = add i64 %i.ds, %.sroa.36.1304310        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, %bb.ah
  %.sroa.013.1305308 = phi i64 [ %.sroa.013.1305309, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.013.1, %bb.ah ] ; 4 uses
  %i.dv = phi i64 [ %i.dk, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.de, %bb.ah ] ; 3 uses
  %i.dw = phi i64 [ %i.dl, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.dg, %bb.ah ] ; 2 uses
  %.sroa.36.4142.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.36.1, %bb.ah ] ; 2 uses
  %.sroa.7.0141.peel = phi i64 [ %i.dt, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.m, %bb.ah ] ; 4 uses
  %.sroa.10.0140.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.o, %bb.ah ] ; 2 uses
  %i.dx = icmp ult i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %.not54.peel = icmp ugt i64 %.sroa.7.0141.peel, %3
  %or.cond.peel = or i1 %i.dx, %.not54.peel
  br i1 %or.cond.peel, label %.loopexit257, label %bb.al, !prof !7988

bb.al:                                            ; preds = %bb.ak
  %i.dy = sub nuw i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.1305308
  %.val58.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.ea = getelementptr inbounds nuw i8, ptr %.val59.peel, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !12, !noalias !32252, !nonnull !12
  %i.ec = tail call noundef ptr %i.eb(ptr noundef nonnull %.val58.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, -9223372036854775808) %i.dy) #51, !inline_history !18253 ; 2 uses
  %.not55.peel = icmp eq ptr %i.ec, null
  br i1 %.not55.peel, label %bb.am, label %.loopexit258

bb.am:                                            ; preds = %bb.al
  %exitcond.peel.not = icmp eq i64 %i.dw, 1
  br i1 %exitcond.peel.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, %bb.af, %bb.ab, %bb.v, %bb.r
  %i.ed = phi ptr [ %.pre274, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.am, %bb.r ], [ %i.am, %bb.af ], [ %i.am, %bb.ab ], [ %i.am, %bb.v ], [ %i.am, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ]
  %i.ee = phi ptr [ %.pre272, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.ab, %bb.r ], [ %i.ab, %bb.af ], [ %i.ab, %bb.ab ], [ %i.ab, %bb.v ], [ %i.ab, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ef = load i8, ptr %i.ed, align 1, !noundef !12
  store i8 %i.ef, ptr %i.g, align 1
  %.val62 = load ptr, ptr %i.ee, align 8, !nonnull !12, !noundef !12
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val63 = load ptr, ptr %i.eg, align 8, !nonnull !12, !align !249, !noundef !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val63, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !12, !noalias !32255, !nonnull !12
  %i.ej = call noundef ptr %i.ei(ptr noundef nonnull %.val62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #51, !inline_history !18253 ; 2 uses
  %.not56 = icmp eq ptr %i.ej, null
  br i1 %.not56, label %bb.ba, label %bb.az

_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.ar, %bb.am, %bb.aw
  %.sroa.36.2189 = phi i64 [ %.sroa.36.2202.lcssa223, %bb.aw ], [ %.sroa.36.4142.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.013.2175 = phi i64 [ %.sroa.013.2204.lcssa228, %bb.aw ], [ %.sroa.10.0140.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.0.1164 = phi i64 [ %.sroa.0.1206.lcssa236, %bb.aw ], [ %i.dv, %bb.am ], [ %i.dv, %bb.ar ]
  %i.ek = icmp eq ptr %i.bl, %i.u
  br i1 %i.ek, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.l

.peel.next:                                       ; preds = %bb.am, %bb.ar
  %.sroa.013.2204 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.10.0140.peel, %bb.am ] ; 5 uses
  %.sroa.36.2202 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.36.4142.peel, %bb.am ] ; 7 uses
  %.sroa.0108.0201 = phi i64 [ %i.el, %bb.ar ], [ 1, %bb.am ]
  %i.el = add i64 %.sroa.0108.0201, 1             ; 2 uses
  %.val60 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %.val61, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !invariant.load !12, !noalias !32245, !nonnull !12
  %i.eo = tail call noundef ptr %i.en(ptr noundef nonnull %.val60, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50 = icmp eq ptr %i.eo, null
  br i1 %.not50, label %bb.an, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.peel.next
  %.lcssa221 = phi ptr [ %i.eo, %.peel.next ], [ %i.dj, %bb.ag ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa221, ptr %i.ep, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.an:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32248
  %i.eq = icmp ugt i64 %.sroa.36.2202, %3
  br i1 %i.eq, label %.loopexit256, label %bb.ao, !prof !48

bb.ao:                                            ; preds = %bb.an
  %i.er = sub nuw nsw i64 %3, %.sroa.36.2202
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.2202
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.er) #45, !noalias !32248
  %i.et = load i64, ptr %i.e, align 8, !range !46, !noalias !32248, !noundef !12
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.ap, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

.loopexit256:                                     ; preds = %bb.ai, %bb.an
  %.sroa.36.2202.lcssa222 = phi i64 [ %.sroa.36.2202, %bb.an ], [ %.sroa.36.1304310, %bb.ai ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.36.2202.lcssa222, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32248
  unreachable

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143: ; preds = %bb.ao, %bb.aj
  %.sroa.0.1206.lcssa236 = phi i64 [ %.sroa.0.0212, %bb.aj ], [ %i.dv, %bb.ao ]
  %.sroa.013.2204.lcssa228 = phi i64 [ %.sroa.013.1305309, %bb.aj ], [ %.sroa.013.2204, %bb.ao ] ; 5 uses
  %.sroa.36.2202.lcssa223 = phi i64 [ %.sroa.36.1304310, %bb.aj ], [ %.sroa.36.2202, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32248
  %i.ev = icmp ugt i64 %.sroa.013.2204.lcssa228, %3
  br i1 %i.ev, label %bb.at, label %bb.as, !prof !48

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr %i.ah, align 8, !noalias !32248, !noundef !12
  %i.ex = load i64, ptr %i.ai, align 8, !noalias !32248, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32248
  %i.ey = add i64 %i.ew, %.sroa.36.2202           ; 4 uses
  %i.ez = add i64 %i.ex, %.sroa.36.2202           ; 4 uses
  %i.fa = icmp ult i64 %i.ey, %.sroa.013.2204
  %.not54 = icmp ugt i64 %i.ey, %3
  %or.cond = or i1 %i.fa, %.not54
  br i1 %or.cond, label %.loopexit257, label %bb.aq, !prof !7988

bb.aq:                                            ; preds = %bb.ap
  %i.fb = sub nuw i64 %i.ey, %.sroa.013.2204
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204
  %.val58 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fd = getelementptr inbounds nuw i8, ptr %.val59, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !invariant.load !12, !noalias !32252, !nonnull !12
  %i.ff = tail call noundef ptr %i.fe(ptr noundef nonnull %.val58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef range(i64 0, -9223372036854775808) %i.fb) #51, !inline_history !18253 ; 2 uses
  %.not55 = icmp eq ptr %i.ff, null
  br i1 %.not55, label %bb.ar, label %.loopexit258

.loopexit257:                                     ; preds = %bb.ak, %bb.ap
  %.sroa.7.0141.lcssa = phi i64 [ %i.ey, %bb.ap ], [ %.sroa.7.0141.peel, %bb.ak ]
  %.sroa.013.2204.lcssa229 = phi i64 [ %.sroa.013.2204, %bb.ap ], [ %.sroa.013.1305308, %bb.ak ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa229, i64 noundef %.sroa.7.0141.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @721) #50
  unreachable

.loopexit258:                                     ; preds = %bb.al, %bb.aq
  %.lcssa246 = phi ptr [ %i.ff, %bb.aq ], [ %i.ec, %bb.al ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa246, ptr %i.fg, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %exitcond.not = icmp eq i64 %i.el, %i.dw
  br i1 %exitcond.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next, !llvm.loop !32258

bb.as:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  %i.fh = sub nuw nsw i64 %3, %.sroa.013.2204.lcssa228
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204.lcssa228
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val57 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val57, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !12, !noalias !32259, !nonnull !12
  %i.fl = tail call noundef ptr %i.fk(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.fh) #51, !inline_history !18253 ; 2 uses
  %.not52 = icmp eq ptr %i.fl, null
  br i1 %.not52, label %bb.av, label %bb.au

bb.at:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher12ExactMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa228, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @723) #50
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %i.fm, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.av:                                            ; preds = %bb.as
  br i1 %.not53, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i8, ptr %i.ak, align 1, !noundef !12
  %i.fo = load i8, ptr %i.am, align 1, !noundef !12
  %i.fp = icmp eq i8 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @722) #50
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fq, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.az:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ej, ptr %i.fr, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fs, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %.loopexit258, %bb.ay, %bb.au, %bb.az, %bb.f, %bb.j, %bb.e, %bb.ba
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher17WhitespaceMatcherE0Csl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 5 uses
  %i.i = load ptr, ptr %1, align 8, !nonnull !12, !noundef !12 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32262
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #45, !noalias !32262
  %i.j = load i64, ptr %i.f, align 8, !range !46, !noalias !32262, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !32262, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !32262, !noundef !12 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32262
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, label %.lr.ph

._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge: ; preds = %bb.b
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre272 = load ptr, ptr %.phi.trans.insert271, align 8
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre274 = load ptr, ptr %.phi.trans.insert273, align 8
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !12, !align !249 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 8      ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aj = add nsw i64 %3, -1                      ; 2 uses
  %.not53 = icmp eq i64 %3, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !12 ; 6 uses
  br label %bb.l

end_hunk_9
begin_hunk_10_@_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_explicit_out_delimNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher17WhitespaceMatcherE0Csl8pJiQOn4hA_9coreutils:bb.a

.loopexit.i74:                                    ; preds = %bb.q, %bb.n
  %i.cb = phi i64 [ %.sroa.36.0207, %bb.n ], [ %i.by, %bb.q ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32291
  %i.cc = icmp ugt i64 %i.cb, %3
  br i1 %i.cc, label %bb.t, label %bb.s, !prof !48

bb.s:                                             ; preds = %.loopexit.i74
  %i.cd = sub nuw nsw i64 %3, %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cd) #45, !noalias !32291
  %i.cf = load i64, ptr %i.a, align 8, !range !46, !noalias !32291, !noundef !12
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.loopexit.i74
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cb, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32291
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ch = load i64, ptr %i.z, align 8, !noalias !32291, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32291
  %i.ci = add i64 %i.ch, %i.cb                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32291
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

bb.w:                                             ; preds = %bb.m
  br i1 %.not.i.i.i70, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.cj = add i64 %i.bo, 1                        ; 2 uses
  %i.ck = sub i64 %i.cj, %i.bm
  br label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.cl = add i64 %i.bq, -1                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i, label %.loopexit.i, label %.preheader213

.preheader213:                                    ; preds = %bb.x, %bb.aa
  %i.cm = phi i64 [ %i.ct, %bb.aa ], [ %.sroa.36.0207, %bb.x ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.cu, %bb.aa ], [ %i.cl, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32295
  %i.cn = icmp ugt i64 %i.cm, %3
  br i1 %i.cn, label %bb.z, label %bb.y, !prof !48

bb.y:                                             ; preds = %.preheader213
  %i.co = sub nuw nsw i64 %3, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cp, i64 noundef %i.co) #45, !noalias !32295
  %i.cq = load i64, ptr %i.d, align 8, !range !46, !noalias !32295, !noundef !12
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %.preheader213
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32295
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cs = load i64, ptr %i.w, align 8, !noalias !32295, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32295
  %i.ct = add i64 %i.cs, %i.cm                    ; 2 uses
  %i.cu = add i64 %.sroa.01.0.i.i.i.i, -1         ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit.i, label %.preheader213

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32295
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.loopexit.i:                                      ; preds = %bb.aa, %bb.x
  %i.cw = phi i64 [ %.sroa.36.0207, %bb.x ], [ %i.ct, %bb.aa ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32308
  %i.cx = icmp ugt i64 %i.cw, %3
  br i1 %i.cx, label %bb.ad, label %bb.ac, !prof !48

bb.ac:                                            ; preds = %.loopexit.i
  %i.cy = sub nuw nsw i64 %3, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cy) #45, !noalias !32308
  %i.da = load i64, ptr %i.c, align 8, !range !46, !noalias !32308, !noundef !12
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %.loopexit.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32308
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = load i64, ptr %i.x, align 8, !noalias !32308, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32308
  %i.dd = add i64 %i.dc, %i.cw                    ; 2 uses
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32308
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126: ; preds = %bb.u, %bb.ae, %bb.l
  %.sroa.36.1 = phi i64 [ %.sroa.36.0207, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %.sroa.0.1113 = phi i64 [ %.sroa.0.0112208, %bb.l ], [ 2, %bb.u ], [ 2, %bb.ae ]
  %.sroa.013.1 = phi i64 [ %.sroa.013.0209, %bb.l ], [ %i.ci, %bb.u ], [ %i.dd, %bb.ae ] ; 2 uses
  %i.de = add i64 %i.bo, 1                        ; 3 uses
  %i.df = icmp eq i64 %.sroa.0.1113, 2
  %i.dg = sub i64 %i.de, %i.bm                    ; 2 uses
  br i1 %.sroa.03.0211, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  %.val60.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.val61.peel, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !12, !noalias !32312, !nonnull !12
  %i.dj = tail call noundef ptr %i.di(ptr noundef nonnull %.val60.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50.peel = icmp eq ptr %i.dj, null
  br i1 %.not50.peel, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread126
  br i1 %i.df, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.thread, %bb.ah
  %.sroa.36.1304310 = phi i64 [ %.sroa.36.0207, %.thread ], [ %.sroa.36.1, %bb.ah ] ; 7 uses
  %.sroa.013.1305309 = phi i64 [ %i.o, %.thread ], [ %.sroa.013.1, %bb.ah ] ; 2 uses
  %i.dk = phi i64 [ %i.cj, %.thread ], [ %i.de, %bb.ah ]
  %i.dl = phi i64 [ %i.ck, %.thread ], [ %i.dg, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32315
  %i.dm = icmp ugt i64 %.sroa.36.1304310, %3
  br i1 %i.dm, label %.loopexit256, label %bb.aj, !prof !48

bb.aj:                                            ; preds = %bb.ai
  %i.dn = sub nuw nsw i64 %3, %.sroa.36.1304310
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.1304310
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dn) #45, !noalias !32315
  %i.dp = load i64, ptr %i.e, align 8, !range !46, !noalias !32315, !noundef !12
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel: ; preds = %bb.aj
  %i.dr = load i64, ptr %i.ah, align 8, !noalias !32315, !noundef !12
  %i.ds = load i64, ptr %i.ai, align 8, !noalias !32315, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32315
  %i.dt = add i64 %i.dr, %.sroa.36.1304310
  %i.du = add i64 %i.ds, %.sroa.36.1304310        ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel, %bb.ah
  %.sroa.013.1305308 = phi i64 [ %.sroa.013.1305309, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.013.1, %bb.ah ] ; 4 uses
  %i.dv = phi i64 [ %i.dk, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.de, %bb.ah ] ; 3 uses
  %i.dw = phi i64 [ %i.dl, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.dg, %bb.ah ] ; 2 uses
  %.sroa.36.4142.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %.sroa.36.1, %bb.ah ] ; 2 uses
  %.sroa.7.0141.peel = phi i64 [ %i.dt, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.m, %bb.ah ] ; 4 uses
  %.sroa.10.0140.peel = phi i64 [ %i.du, %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread.peel ], [ %i.o, %bb.ah ] ; 2 uses
  %i.dx = icmp ult i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %.not54.peel = icmp ugt i64 %.sroa.7.0141.peel, %3
  %or.cond.peel = or i1 %i.dx, %.not54.peel
  br i1 %or.cond.peel, label %.loopexit257, label %bb.al, !prof !7988

bb.al:                                            ; preds = %bb.ak
  %i.dy = sub nuw i64 %.sroa.7.0141.peel, %.sroa.013.1305308
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.1305308
  %.val58.peel = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59.peel = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.ea = getelementptr inbounds nuw i8, ptr %.val59.peel, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !12, !noalias !32319, !nonnull !12
  %i.ec = tail call noundef ptr %i.eb(ptr noundef nonnull %.val58.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef range(i64 0, -9223372036854775808) %i.dy) #51, !inline_history !18253 ; 2 uses
  %.not55.peel = icmp eq ptr %i.ec, null
  br i1 %.not55.peel, label %bb.am, label %.loopexit258

bb.am:                                            ; preds = %bb.al
  %exitcond.peel.not = icmp eq i64 %i.dw, 1
  br i1 %exitcond.peel.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, %bb.af, %bb.ab, %bb.v, %bb.r
  %i.ed = phi ptr [ %.pre274, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.am, %bb.r ], [ %i.am, %bb.af ], [ %i.am, %bb.ab ], [ %i.am, %bb.v ], [ %i.am, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ]
  %i.ee = phi ptr [ %.pre272, %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge ], [ %i.ab, %bb.r ], [ %i.ab, %bb.af ], [ %i.ab, %bb.ab ], [ %i.ab, %bb.v ], [ %i.ab, %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ef = load i8, ptr %i.ed, align 1, !noundef !12
  store i8 %i.ef, ptr %i.g, align 1
  %.val62 = load ptr, ptr %i.ee, align 8, !nonnull !12, !noundef !12
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val63 = load ptr, ptr %i.eg, align 8, !nonnull !12, !align !249, !noundef !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.val63, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !invariant.load !12, !noalias !32322, !nonnull !12
  %i.ej = call noundef ptr %i.ei(ptr noundef nonnull %.val62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1) #51, !inline_history !18253 ; 2 uses
  %.not56 = icmp eq ptr %i.ej, null
  br i1 %.not56, label %bb.ba, label %bb.az

_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.ar, %bb.am, %bb.aw
  %.sroa.36.2189 = phi i64 [ %.sroa.36.2202.lcssa223, %bb.aw ], [ %.sroa.36.4142.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.013.2175 = phi i64 [ %.sroa.013.2204.lcssa228, %bb.aw ], [ %.sroa.10.0140.peel, %bb.am ], [ %i.ez, %bb.ar ]
  %.sroa.0.1164 = phi i64 [ %.sroa.0.1206.lcssa236, %bb.aw ], [ %i.dv, %bb.am ], [ %i.dv, %bb.ar ]
  %i.ek = icmp eq ptr %i.bl, %i.u
  br i1 %i.ek, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread, label %bb.l

.peel.next:                                       ; preds = %bb.am, %bb.ar
  %.sroa.013.2204 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.10.0140.peel, %bb.am ] ; 5 uses
  %.sroa.36.2202 = phi i64 [ %i.ez, %bb.ar ], [ %.sroa.36.4142.peel, %bb.am ] ; 7 uses
  %.sroa.0108.0201 = phi i64 [ %i.el, %bb.ar ], [ 1, %bb.am ]
  %i.el = add i64 %.sroa.0108.0201, 1             ; 2 uses
  %.val60 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val61 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.em = getelementptr inbounds nuw i8, ptr %.val61, i64 56
  %i.en = load ptr, ptr %i.em, align 8, !invariant.load !12, !noalias !32312, !nonnull !12
  %i.eo = tail call noundef ptr %i.en(ptr noundef nonnull %.val60, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.af) #51, !inline_history !18253 ; 2 uses
  %.not50 = icmp eq ptr %i.eo, null
  br i1 %.not50, label %bb.an, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %.peel.next
  %.lcssa221 = phi ptr [ %i.eo, %.peel.next ], [ %i.dj, %bb.ag ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa221, ptr %i.ep, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.an:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32315
  %i.eq = icmp ugt i64 %.sroa.36.2202, %3
  br i1 %i.eq, label %.loopexit256, label %bb.ao, !prof !48

bb.ao:                                            ; preds = %bb.an
  %i.er = sub nuw nsw i64 %3, %.sroa.36.2202
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.36.2202
  call void @_RNvXs0_NtCscQbPaDjPaLt_6uu_cut7matcherNtB5_17WhitespaceMatcherNtB5_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.es, i64 noundef %i.er) #45, !noalias !32315
  %i.et = load i64, ptr %i.e, align 8, !range !46, !noalias !32315, !noundef !12
  %i.eu = trunc nuw i64 %i.et to i1
  br i1 %i.eu, label %bb.ap, label %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143

.loopexit256:                                     ; preds = %bb.ai, %bb.an
  %.sroa.36.2202.lcssa222 = phi i64 [ %.sroa.36.2202, %bb.an ], [ %.sroa.36.1304310, %bb.ai ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.36.2202.lcssa222, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1343) #50, !noalias !32315
  unreachable

_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143: ; preds = %bb.ao, %bb.aj
  %.sroa.0.1206.lcssa236 = phi i64 [ %.sroa.0.0212, %bb.aj ], [ %i.dv, %bb.ao ]
  %.sroa.013.2204.lcssa228 = phi i64 [ %.sroa.013.1305309, %bb.aj ], [ %.sroa.013.2204, %bb.ao ] ; 5 uses
  %.sroa.36.2202.lcssa223 = phi i64 [ %.sroa.36.1304310, %bb.aj ], [ %.sroa.36.2202, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32315
  %i.ev = icmp ugt i64 %.sroa.013.2204.lcssa228, %3
  br i1 %i.ev, label %bb.at, label %bb.as, !prof !48

bb.ap:                                            ; preds = %bb.ao
  %i.ew = load i64, ptr %i.ah, align 8, !noalias !32315, !noundef !12
  %i.ex = load i64, ptr %i.ai, align 8, !noalias !32315, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32315
  %i.ey = add i64 %i.ew, %.sroa.36.2202           ; 4 uses
  %i.ez = add i64 %i.ex, %.sroa.36.2202           ; 4 uses
  %i.fa = icmp ult i64 %i.ey, %.sroa.013.2204
  %.not54 = icmp ugt i64 %i.ey, %3
  %or.cond = or i1 %i.fa, %.not54
  br i1 %or.cond, label %.loopexit257, label %bb.aq, !prof !7988

bb.aq:                                            ; preds = %bb.ap
  %i.fb = sub nuw i64 %i.ey, %.sroa.013.2204
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204
  %.val58 = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val59 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fd = getelementptr inbounds nuw i8, ptr %.val59, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !invariant.load !12, !noalias !32319, !nonnull !12
  %i.ff = tail call noundef ptr %i.fe(ptr noundef nonnull %.val58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fc, i64 noundef range(i64 0, -9223372036854775808) %i.fb) #51, !inline_history !18253 ; 2 uses
  %.not55 = icmp eq ptr %i.ff, null
  br i1 %.not55, label %bb.ar, label %.loopexit258

.loopexit257:                                     ; preds = %bb.ak, %bb.ap
  %.sroa.7.0141.lcssa = phi i64 [ %i.ey, %bb.ap ], [ %.sroa.7.0141.peel, %bb.ak ]
  %.sroa.013.2204.lcssa229 = phi i64 [ %.sroa.013.2204, %bb.ap ], [ %.sroa.013.1305308, %bb.ak ]
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa229, i64 noundef %.sroa.7.0141.lcssa, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @721) #50
  unreachable

.loopexit258:                                     ; preds = %bb.al, %bb.aq
  %.lcssa246 = phi ptr [ %i.ff, %bb.aq ], [ %i.ec, %bb.al ]
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa246, ptr %i.fg, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.ar:                                            ; preds = %bb.aq
  %exitcond.not = icmp eq i64 %i.el, %i.dw
  br i1 %exitcond.not, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.peel.next, !llvm.loop !32325

bb.as:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  %i.fh = sub nuw nsw i64 %3, %.sroa.013.2204.lcssa228
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.013.2204.lcssa228
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !12, !noundef !12
  %.val57 = load ptr, ptr %i.ag, align 8, !nonnull !12, !align !249, !noundef !12
  %i.fj = getelementptr inbounds nuw i8, ptr %.val57, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !invariant.load !12, !noalias !32326, !nonnull !12
  %i.fl = tail call noundef ptr %i.fk(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.fh) #51, !inline_history !18253 ; 2 uses
  %.not52 = icmp eq ptr %i.fl, null
  br i1 %.not52, label %bb.av, label %bb.au

bb.at:                                            ; preds = %_RNvXs_NtCscQbPaDjPaLt_6uu_cut8searcherINtB4_8SearcherNtNtB6_7matcher17WhitespaceMatcherENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread143
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.013.2204.lcssa228, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @723) #50
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fl, ptr %i.fm, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bb

bb.av:                                            ; preds = %bb.as
  br i1 %.not53, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i8, ptr %i.ak, align 1, !noundef !12
  %i.fo = load i8, ptr %i.am, align 1, !noundef !12
  %i.fp = icmp eq i8 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvXsd_NtNtCs6JMX4GRUq9U_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread

bb.ax:                                            ; preds = %bb.av
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @722) #50
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fq, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.az:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ej, ptr %i.fr, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bb

bb.ba:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher17WhitespaceMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fs, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit, %.loopexit258, %bb.ay, %bb.au, %bb.az, %bb.f, %bb.j, %bb.e, %bb.ba
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvCscQbPaDjPaLt_6uu_cut29cut_fields_implicit_out_delimNtNtCs2vKOLqTMYjT_3std2fs4FileINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_ENtNtB4_7matcher12ExactMatcherE0Csl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [1 x i8], align 1                 ; 5 uses
  %i.k = alloca [1 x i8], align 1                 ; 5 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !12, !align !249, !noundef !12 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32329
  call void @_RNvXs_NtCscQbPaDjPaLt_6uu_cut7matcherNtB4_12ExactMatcherNtB4_7Matcher10next_match(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #45, !noalias !32329
  %i.m = load i64, ptr %i.i, align 8, !range !46, !noalias !32329, !noundef !12
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !32329, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noalias !32329, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32329
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge, label %.lr.ph

._RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread_crit_edge: ; preds = %bb.b
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre281 = load ptr, ptr %.phi.trans.insert280, align 8
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtCscQbPaDjPaLt_6uu_cut8searcher8SearcherNtNtB1a_7matcher12ExactMatcherEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils.exit.thread

.lr.ph:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !12, !align !249 ; 9 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32329
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_10
begin_hunk_11_@_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once9call_onceNCINvNtCs3ewIIPtxFMv_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0Csl8pJiQOn4hA_9coreutils:bb.a

bb.s:                                             ; preds = %thread-pre-split.i.i54.i.i.i.i, %bb.r
  %i.bs = phi i8 [ %.pr.i.i55.i.i.i.i, %thread-pre-split.i.i54.i.i.i.i ], [ %i.br, %bb.r ]
  %cond.i.i37.i.i.i.i = icmp eq i8 %i.bs, 43      ; 2 uses
  %i.bt = sext i1 %cond.i.i37.i.i.i.i to i64
  %.sroa.15.0.i.i38.i.i.i.i = add nsw i64 %.sroa.520.0.copyload.i.i.i.i, %i.bt ; 4 uses
  %.sroa.0.0.idx.i.i39.i.i.i.i = zext i1 %cond.i.i37.i.i.i.i to i64
  %.sroa.0.0.i.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i.i.i.i, i64 %.sroa.0.0.idx.i.i39.i.i.i.i ; 2 uses
  %i.bu = icmp samesign ult i64 %.sroa.15.0.i.i38.i.i.i.i, 17
  br i1 %i.bu, label %.preheader.i.i47.i.i.i.i, label %.preheader56.i.i41.i.i.i.i.preheader

.preheader.i.i47.i.i.i.i:                         ; preds = %bb.s
  %.not5366.i.i48.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i38.i.i.i.i, 0
  br i1 %.not5366.i.i48.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i

.preheader56.i.i41.i.i.i.i:                       ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i.i.i.i251, i64 1
  %i.bw = add nsw i64 %.sroa.15.1.i.i43.i.i.i.i250, -1 ; 2 uses
  %.not52.i.not.i45.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.bw, 0
  br i1 %.not52.i.not.i45.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.preheader56.i.i41.i.i.i.i.preheader

.preheader56.i.i41.i.i.i.i.preheader:             ; preds = %bb.s, %.preheader56.i.i41.i.i.i.i
  %.sroa.0.1.i.i44.i.i.i.i251 = phi ptr [ %i.bv, %.preheader56.i.i41.i.i.i.i ], [ %.sroa.0.0.i.i40.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.15.1.i.i43.i.i.i.i250 = phi i64 [ %i.bw, %.preheader56.i.i41.i.i.i.i ], [ %.sroa.15.0.i.i38.i.i.i.i, %bb.s ]
  %.sroa.042.0.i.i42.i.i.i.i249 = phi i64 [ %i.cf, %.preheader56.i.i41.i.i.i.i ], [ 0, %bb.s ]
  %i.bx = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i.i.i.i249, i64 10) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  br i1 %i.by, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %bb.t, !prof !48

bb.t:                                             ; preds = %.preheader56.i.i41.i.i.i.i.preheader
  %i.bz = extractvalue { i64, i1 } %i.bx, 0       ; 2 uses
  %i.ca = load i8, ptr %.sroa.0.1.i.i44.i.i.i.i251, align 1, !alias.scope !32687, !noalias !32690, !noundef !12
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 9
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = add i64 %i.bz, %i.ce                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  %or.cond.i46.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.cg, !prof !328
  br i1 %or.cond.i46.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.preheader56.i.i41.i.i.i.i, !prof !328

.lr.ph.i.i49.i.i.i.i:                             ; preds = %.preheader.i.i47.i.i.i.i, %bb.u
  %.sroa.0.269.i.i50.i.i.i.i = phi ptr [ %i.cn, %bb.u ], [ %.sroa.0.0.i.i40.i.i.i.i, %.preheader.i.i47.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i51.i.i.i.i = phi i64 [ %i.cm, %bb.u ], [ %.sroa.15.0.i.i38.i.i.i.i, %.preheader.i.i47.i.i.i.i ]
  %.sroa.042.267.i.i52.i.i.i.i = phi i64 [ %i.cp, %bb.u ], [ 0, %.preheader.i.i47.i.i.i.i ]
  %i.ch = load i8, ptr %.sroa.0.269.i.i50.i.i.i.i, align 1, !alias.scope !32687, !noalias !32690, !noundef !12
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 9                   ; 3 uses
  br i1 %i.ck, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i49.i.i.i.i
  %i.cl = mul i64 %.sroa.042.267.i.i52.i.i.i.i, 10
  %i.cm = add nsw i64 %.sroa.15.268.i.i51.i.i.i.i, -1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i.i.i.i, i64 1
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = add i64 %i.cl, %i.co                    ; 2 uses
  %.not53.i.i53.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i53.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i: ; preds = %bb.t, %.preheader56.i.i41.i.i.i.i.preheader, %.preheader56.i.i41.i.i.i.i, %bb.u, %.lr.ph.i.i49.i.i.i.i, %.preheader.i.i47.i.i.i.i, %bb.r, %bb.r, %bb.q
  %.sroa.101.0.i31.i.i.i.i = phi i64 [ undef, %bb.r ], [ 0, %.preheader.i.i47.i.i.i.i ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %.lr.ph.i.i49.i.i.i.i ], [ %i.cp, %bb.u ], [ undef, %bb.t ], [ undef, %.preheader56.i.i41.i.i.i.i.preheader ], [ %i.cf, %.preheader56.i.i41.i.i.i.i ]
  %.sink.i.i32.i.i.i.i = phi i1 [ true, %bb.r ], [ false, %.preheader.i.i47.i.i.i.i ], [ true, %bb.q ], [ true, %bb.r ], [ %i.ck, %bb.u ], [ %i.ck, %.lr.ph.i.i49.i.i.i.i ], [ true, %bb.t ], [ true, %.preheader56.i.i41.i.i.i.i.preheader ], [ false, %.preheader56.i.i41.i.i.i.i ] ; 2 uses
  %i.cq = icmp eq i64 %.sroa.018.0.copyload.i.i.i.i, 0
  br i1 %i.cq, label %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.419.0.copyload.i.i.i.i, i64 noundef %.sroa.018.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32694
  br label %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.v, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  %.sroa.3.0.i36.i.i.i.i = select i1 %.sink.i.i32.i.i.i.i, i64 undef, i64 %.sroa.101.0.i31.i.i.i.i ; 2 uses
  %i.cr = icmp eq i64 %.sroa.3.0.i36.i.i.i.i, 0
  %or.cond.not.i.i.i.i = select i1 %.sink.i.i32.i.i.i.i, i1 true, i1 %i.cr
  br i1 %or.cond.not.i.i.i.i, label %bb.w, label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.cs = tail call { i64, ptr } @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions21available_parallelism() #45, !noalias !32661 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1      ; 4 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  br i1 %i.cv, label %bb.x, label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32699
  %i.cx = and i64 %i.cw, 3
  switch i64 %i.cx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i
    i64 1, label %bb.z
  ], !prof !91

bb.y:                                             ; preds = %bb.x
  %i.cy = icmp ult ptr %i.cu, inttoptr (i64 188978561024 to ptr)
  %i.cz = and i64 %i.cw, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  tail call void @llvm.assume(i1 %i.cy)
  tail call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.db = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !alias.scope !32702, !noalias !32699
  store i8 3, ptr %i.h, align 8, !alias.scope !32702, !noalias !32699
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc) #45, !noalias !32705
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32699
  br label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32706)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i60.i.i.i.i = load i64, ptr %i.dd, align 8, !range !13, !alias.scope !32706, !noalias !32663, !noundef !12 ; 2 uses
  %i.de = icmp sgt i64 %.val.i60.i.i.i.i, 0
  br i1 %i.de, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i: ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i63.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !32706, !noalias !32663, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i63.i.i.i.i, i64 noundef %.val.i60.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32709
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32663
  br label %bb.w

_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i, %bb.w, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.l, %bb.j, %bb.b
  %.sroa.0.1.i.i.i.i = phi i64 [ %.val.i.i.i, %bb.b ], [ %.sroa.101.0.i.i.i.i.i, %bb.j ], [ %.sroa.3.0.i36.i.i.i.i, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.bg, %bb.l ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i ], [ %i.cw, %bb.w ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.i.i.i.i, i64 65535) ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.u, i64 89
  %i.dh = load i8, ptr %i.dg, align 1, !range !80, !alias.scope !32658, !noalias !32661, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32710
  store i64 0, ptr %i.g, align 8, !alias.scope !32714, !noalias !32710
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32714, !noalias !32710
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32714, !noalias !32710
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32714, !noalias !32710
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32714, !noalias !32710
  call void @llvm.experimental.noalias.scope.decl(metadata !32717)
  %.not.not.i.i.not.i.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.not.i.i.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.thread.i.i, label %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32) #45, !noalias !32720
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.dj = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32722, !noalias !32729, !noundef !12 ; 3 uses
  %i.dk = load i64, ptr %i.di, align 8, !range !63, !alias.scope !32722, !noalias !32729, !noundef !12
  %i.dl = sub i64 %i.dk, %i.dj
  %i.dm = icmp ugt i64 %..i.i.i.i, %i.dl
  br i1 %i.dm, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.i, !prof !48

bb.ab:                                            ; preds = %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di, i64 noundef %i.dj, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16) #45, !noalias !32720
  %.promoted9.i.i.i.i.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.thread.i.i:             ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32741)
  call void @llvm.experimental.noalias.scope.decl(metadata !32742)
  call void @llvm.experimental.noalias.scope.decl(metadata !32743)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32744
  store i64 0, ptr %i.e, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.42.0..sroa_idx.i.i41266.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i41266.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.53.0..sroa_idx.i.i42267.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i42267.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32747, !noalias !32744
  call void @llvm.experimental.noalias.scope.decl(metadata !32750)
  call void @llvm.experimental.noalias.scope.decl(metadata !32753)
  call void @llvm.experimental.noalias.scope.decl(metadata !32756)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32663
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ab, %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.promoted9.i.i.i.i.i.i.i.i = phi i64 [ %.promoted9.i.i.i.i.pre.i.i.i.i, %bb.ab ], [ %i.dj, %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737, !nonnull !12 ; 3 uses
  %i.do = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737, !nonnull !12 ; 4 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32730, !noalias !32737
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ds = trunc nuw i8 %i.dh to i1
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i64 [ %.promoted9.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eo, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 6 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ek, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.08.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.dv = add i64 %.sroa.0.08.i.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32710
  br i1 %i.ds, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !32759), !noalias !32762
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32763
  %i.dw = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, 9) 8) #45, !noalias !32763 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ae, label %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1024) #52, !noalias !32776
  unreachable

_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.ad
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32777
  %i.dy = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32777 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.af, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i, !prof !28

bb.af:                                            ; preds = %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #52, !noalias !32777
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i: ; preds = %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  store ptr %i.dw, ptr %i.dy, align 8, !noalias !32777
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 64, ptr %i.ea, align 8, !noalias !32777
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32778
  %i.eb = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32778 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ag, label %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, !prof !28

bb.ag:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #52, !noalias !32778
  unreachable

_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  %i.ed = ptrtoint ptr %i.dy to i64
  store i64 1, ptr %i.eb, align 128, !noalias !32777
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32777
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 128
  store i64 %i.ed, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 128, !noalias !32777
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.616.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !32777
  store ptr %i.eb, ptr %i.f, align 8, !alias.scope !32759, !noalias !32781
  store ptr %i.dw, ptr %i.dp, align 8, !alias.scope !32759, !noalias !32781
  store i64 64, ptr %i.dq, align 8, !alias.scope !32759, !noalias !32781
  store i8 1, ptr %i.dr, align 8, !alias.scope !32759, !noalias !32781
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f) #45, !noalias !32782
  %.pre.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !32781
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.ee = phi ptr [ %.pre.i.i.i.i.i, %bb.ah ], [ %i.eb, %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 3 uses
  %i.ef = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !32782
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.aj, label %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap(), !noalias !32762
  unreachable

_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ai
  %i.eh = load i8, ptr %i.dr, align 8, !range !80, !noalias !32781, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !32783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32710
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ei = icmp ult i64 %i.du, 288230376151711744
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i.i.i.i, i64 32, i1 false), !noalias !32784
  %i.ek = add nuw nsw i64 %i.du, 1                ; 3 uses
  %i.el = icmp ult i64 %i.dt, 576460752303423488
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dt ; 2 uses
  store ptr %i.ee, ptr %i.em, align 8, !noalias !32785
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %i.eh, ptr %i.en, align 8, !noalias !32785
  %i.eo = add nuw nsw i64 %i.dt, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ac

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i.i = load i64, ptr %i.g, align 8, !noalias !32795 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i.i = load i64, ptr %i.di, align 8, !noalias !32795 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32744
  store i64 0, ptr %i.e, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.42.0..sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i41.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.53.0..sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i42.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32747, !noalias !32744
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i43.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  %.sroa.3.0..sroa_idx.i.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32747, !noalias !32744
  call void @llvm.experimental.noalias.scope.decl(metadata !32796)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32) #45, !noalias !32799
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.eq = load i64, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32800, !noalias !32744, !noundef !12 ; 3 uses
  %i.er = load i64, ptr %i.ep, align 8, !range !63, !alias.scope !32800, !noalias !32744, !noundef !12
  %i.es = sub i64 %i.er, %i.eq
  %i.et = icmp ugt i64 %..i.i.i.i, %i.es
  br i1 %i.et, label %bb.ak, label %.lr.ph.i.i.i.i.i46.i.i.i, !prof !48

bb.ak:                                            ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep, i64 noundef %i.eq, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16) #45, !noalias !32799
  %.promoted8.i.i.i.pre.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32807, !noalias !32744
  br label %.lr.ph.i.i.i.i.i46.i.i.i

.lr.ph.i.i.i.i.i46.i.i.i:                         ; preds = %bb.ak, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i = phi i64 [ %.promoted8.i.i.i.pre.i.i.i.i.i, %bb.ak ], [ %i.eq, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ev = load ptr, ptr %.sroa.42.0..sroa_idx.i.i41.i.i.i, align 8, !alias.scope !32807, !noalias !32744, !nonnull !12
  %i.ew = load ptr, ptr %.sroa.2.0..sroa_idx.i.i43.i.i.i, align 8, !alias.scope !32807, !noalias !32744 ; 3 uses
  %.promoted.i.i.i.i.i47.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i42.i.i.i, align 8, !alias.scope !32807, !noalias !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32808
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d) #45, !noalias !32811
  %i.ex = load ptr, ptr %i.d, align 8, !noalias !32808, !nonnull !12, !noundef !12 ; 2 uses
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !32811
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %._crit_edge.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32808
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d) #45, !noalias !32811
  %i.fa = load ptr, ptr %i.d, align 8, !noalias !32808, !nonnull !12, !noundef !12 ; 2 uses
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !noalias !32811
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %._crit_edge.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %.lr.ph.i.i.i.i.i46.i.i.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i46.i.i.i, %bb.al
  %i.fd = phi ptr [ %i.fa, %bb.al ], [ %i.ex, %.lr.ph.i.i.i.i.i46.i.i.i ]
  %.sroa.0.07.i.i.i.i4.i.i.i.i = phi i64 [ %i.fg, %bb.al ], [ 0, %.lr.ph.i.i.i.i.i46.i.i.i ]
  %i.fe = phi i64 [ %i.fk, %bb.al ], [ %.promoted.i.i.i.i.i47.i.i.i, %.lr.ph.i.i.i.i.i46.i.i.i ] ; 3 uses
  %i.ff = phi i64 [ %i.fo, %bb.al ], [ %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i, %.lr.ph.i.i.i.i.i46.i.i.i ] ; 3 uses
  %i.fg = add nuw i64 %.sroa.0.07.i.i.i.i4.i.i.i.i, 1 ; 2 uses
  %i.fh = load i8, ptr %i.eu, align 8, !range !80, !noalias !32808, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !32812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32808
  %i.fi = icmp ult i64 %i.fe, 288230376151711744
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !32813
  %i.fk = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fl = icmp ult i64 %i.ff, 576460752303423488
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ff ; 2 uses
  store ptr %i.fd, ptr %i.fm, align 8, !noalias !32818
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 %i.fh, ptr %i.fn, align 8, !noalias !32818
  %i.fo = add nuw nsw i64 %i.ff, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i48.i.i.i = icmp eq i64 %i.fg, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i48.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.al

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  store i64 %i.fk, ptr %.sroa.53.0..sroa_idx.i.i42.i.i.i, align 8, !noalias !32744
  %.sroa.469.0.copyload.pre.i.i.i = load i64, ptr %i.ep, align 8, !noalias !32663 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32663
  %i.fp = icmp ne i64 %i.dt, 576460752303423487
  call void @llvm.assume(i1 %i.fp)
  %i.fq = mul i64 %i.eo, 48                       ; 3 uses
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %i.dt, 192153584101141161
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ao, label %bb.am, !prof !1397

bb.am:                                            ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32826
  %i.fs = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fq, i64 noundef range(i64 1, 9) 8) #45, !noalias !32826 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.ao, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.an ], [ 0, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.fq) #52, !noalias !32832
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.am ], [ %i.fs, %bb.an ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %bb.am ], [ %i.eo, %bb.an ] ; 3 uses
  %i.fu = icmp samesign ult i64 %i.dt, %.sroa.4.0.i.i.i.i.i
  call void @llvm.assume(i1 %i.fu)
  %i.fv = add i64 %.promoted9.i.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i.i ; 2 uses
  %i.fw = and i64 %i.fv, 1152921504606846975      ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %unroll_iter = and i64 %i.fx, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new
  %i.fz = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ga = phi ptr [ %i.do, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !32833, !nonnull !12, !noundef !12
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load i8, ptr %i.gc, align 8, !range !80, !noalias !32833, !noundef !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.fz ; 5 uses
  store ptr %i.gb, ptr %i.gf, align 8, !noalias !32849
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i8 %i.gd, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32849
  %i.gg = getelementptr i8, ptr %i.gf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gg, i8 0, i64 14, i1 false), !noalias !32856
  %i.gh = getelementptr i8, ptr %i.gf, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gh, i8 0, i64 10, i1 false), !noalias !32856
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !32849
  %i.gi = load ptr, ptr %i.ge, align 8, !noalias !32833, !nonnull !12, !noundef !12
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gk = load i8, ptr %i.gj, align 8, !range !80, !noalias !32833, !noundef !12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 2 uses
  %i.gm = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %i.fz ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  store ptr %i.gi, ptr %i.gn, align 8, !noalias !32849
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  store i8 %i.gk, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !32849
  %i.go = getelementptr i8, ptr %i.gm, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.go, i8 0, i64 14, i1 false), !noalias !32856
  %i.gp = getelementptr i8, ptr %i.gm, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gp, i8 0, i64 10, i1 false), !noalias !32856
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gm, i64 92
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !32849
  %i.gq = add nuw nsw i64 %i.fz, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.gr = and i64 %i.fv, 1
  %lcmp.mod.not.not = icmp eq i64 %i.gr, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.epil.init = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.gq, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %.epil.init312 = phi ptr [ %i.do, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.gl, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod314 = trunc i64 %i.fx to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.gs = load ptr, ptr %.epil.init312, align 8, !noalias !32833, !nonnull !12, !noundef !12
  %i.gt = getelementptr inbounds nuw i8, ptr %.epil.init312, i64 8
  %i.gu = load i8, ptr %i.gt, align 8, !range !80, !noalias !32833, !noundef !12
  %i.gv = getelementptr inbounds nuw [48 x i8], ptr %.sroa.10.0.i.i.i.i.i, i64 %.epil.init ; 5 uses
  store ptr %i.gs, ptr %i.gv, align 8, !noalias !32849
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i8 %i.gu, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !32849
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gw, i8 0, i64 14, i1 false), !noalias !32856
  %i.gx = getelementptr i8, ptr %i.gv, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gx, i8 0, i64 10, i1 false), !noalias !32856
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gv, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 4, !noalias !32849
  %i.gy = add nuw nsw i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa289 = phi i64 [ %i.gq, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.gy, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.gz = icmp eq i64 %.sroa.6.0.copyload.pre.i.i.i, 0
  br i1 %i.gz, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ha = shl nuw i64 %.sroa.6.0.copyload.pre.i.i.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32833
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.ap, %._crit_edge.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.thread.i.i
  %.sroa.42.0.i.i.i.i.i.i80.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.lcssa289, %bb.ap ], [ %.lcssa289, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload280.i12385179.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.0.0.copyload.pre.i.i.i, %bb.ap ], [ %.sroa.0.0.copyload.pre.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.copyload278.i13375278.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.dn, %bb.ap ], [ %i.dn, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.5.0.copyload276.i14365377.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.ek, %bb.ap ], [ %i.ek, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.671.0.copyload.i18325676.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.fo, %bb.ap ], [ %i.fo, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.570.0.copyload.i19315775.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.ew, %bb.ap ], [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.469.0.copyload.i20305874.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.469.0.copyload.pre.i.i.i, %bb.ap ], [ %.sroa.469.0.copyload.pre.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.0.i.i.i5973.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.ap ], [ %.sroa.10.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.4.0.i.i.i6072.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.4.0.i.i.i.i.i, %bb.ap ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !32663
  call void @_RNvMNtCs3ewIIPtxFMv_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, i64 noundef %..i.i.i.i) #45, !noalias !32661
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32661
  %i.hb = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #45, !noalias !32661 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.aq, label %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !48

bb.aq:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #52, !noalias !32661
  unreachable

_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i.i.i)
  %.sroa.532.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.532.i.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.532.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !32663
  %i.hd = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.hd, align 8, !alias.scope !32658, !noalias !32661
  store ptr null, ptr %i.hd, align 8, !alias.scope !32658, !noalias !32661
  %i.hf = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.hg = load <2 x ptr>, ptr %i.hf, align 8, !alias.scope !32658, !noalias !32661
  store ptr null, ptr %i.hf, align 8, !alias.scope !32658, !noalias !32661
  %i.hh = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.hi = load <2 x ptr>, ptr %i.hh, align 8, !alias.scope !32658, !noalias !32661
  store ptr null, ptr %i.hh, align 8, !alias.scope !32658, !noalias !32661
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !32663
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.532.i.i.i, i64 27, i1 false), !noalias !32663
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !32663
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32857
  %i.hj = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32857 ; 19 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ar, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !28

bb.ar:                                            ; preds = %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #52, !noalias !32857
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  store i64 1, ptr %i.hj, align 128, !noalias !32661
  %.sroa.496.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 1, ptr %.sroa.496.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.598.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 128
  store i64 0, ptr %.sroa.598.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.699.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 136
  store ptr %i.hb, ptr %.sroa.699.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.7101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 256
  store i64 0, ptr %.sroa.7101.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.8102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 264
  store ptr %i.hb, ptr %.sroa.8102.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.9104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 384
  store i32 0, ptr %.sroa.9104.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.10.0..sroa_idx105.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 388
  store i8 0, ptr %.sroa.10.0..sroa_idx105.i.i.i, align 4, !noalias !32661
  %.sroa.11.0..sroa_idx106.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.0..sroa_idx106.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.i.i.i, i64 27, i1 false), !noalias !32661
  %.sroa.12107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 416
  store <2 x ptr> %i.he, ptr %.sroa.12107.0..sroa_idx.i.i.i, align 32, !noalias !32661
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 432
  store <2 x ptr> %i.hg, ptr %.sroa.14.0..sroa_idx.i.i.i, align 16, !noalias !32661
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 448
  store <2 x ptr> %i.hi, ptr %.sroa.16.0..sroa_idx.i.i.i, align 64, !noalias !32661
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 464
  store i64 1, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !noalias !32661
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i.i, i64 32, i1 false), !noalias !32661
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 504
  store i64 %.sroa.4.0.i.i.i6072.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i, align 8, !noalias !32661
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 512
  store ptr %.sroa.10.0.i.i.i5973.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i, align 128, !noalias !32661
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 520
  store i64 %.sroa.42.0.i.i.i.i.i.i80.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !32661
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i.i)
  store ptr %i.hj, ptr %i.t, align 8, !noalias !32663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !32663
  store ptr %i.t, ptr %i.r, align 8, !noalias !32663
  %i.hl = icmp ult i64 %.sroa.5.0.copyload276.i14365377.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.hl)
  %.idx180.i.i.i = shl nuw nsw i64 %.sroa.5.0.copyload276.i14365377.i.i, 5
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload278.i13375278.i.i, i64 %.idx180.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.570.0.copyload.i19315775.i.i) ]
  %i.hn = icmp samesign ult i64 %.sroa.671.0.copyload.i18325676.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %.sroa.570.0.copyload.i19315775.i.i, i64 %.sroa.671.0.copyload.i18325676.i.i ; 2 uses
  %.sroa.08.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32663
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !32663
  store ptr %.sroa.4.0.copyload278.i13375278.i.i, ptr %i.q, align 8, !noalias !32663
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.0.0.copyload280.i12385179.i.i, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.hm, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sroa.570.0.copyload.i19315775.i.i, ptr %.sroa.08.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.469.0.copyload.i20305874.i.i, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.ho, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !32663
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32860
  %i.hp = icmp eq i64 %.sroa.5.0.copyload276.i14365377.i.i, 0
  br i1 %i.hp, label %.loopexit.i.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.sroa.693.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.794.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  %i.hu = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.hy = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.hz = getelementptr inbounds nuw i8, ptr %i.u, i64 90
  %i.ia = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3ewIIPtxFMv_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i
  %i.ib = phi ptr [ %.sroa.4.0.copyload278.i13375278.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.if, %.backedge.i.i.i ] ; 5 uses
  %i.ic = phi ptr [ %.sroa.570.0.copyload.i19315775.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.ik, %.backedge.i.i.i ] ; 6 uses
  %i.id = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %.be.i.i.i, %.backedge.i.i.i ] ; 4 uses
  %i.ie = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.io, %.backedge.i.i.i ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 32 ; 7 uses
  %.sroa.5.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %.sroa.5.0.copyload9.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx8.i.i.i.i.i.i, align 8, !noalias !32870 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !noalias !32876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.518.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx10.i.i.i.i.i.i, i64 7, i1 false), !noalias !32876
  store i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32877
  %i.ig = icmp eq ptr %i.ic, %i.ho
  br i1 %i.ig, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store ptr %i.if, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32663
  store ptr %i.ic, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32663
  store i64 %i.ie, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32663
  call void @llvm.experimental.noalias.scope.decl(metadata !32878)
  call void @llvm.experimental.noalias.scope.decl(metadata !32881)
  call void @llvm.experimental.noalias.scope.decl(metadata !32884)
end_hunk_11
begin_hunk_12_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils:bb.a
  store ptr %i.bz, ptr %i.b, align 8, !noalias !33864
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ck, align 8, !noalias !33864
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @778) #50, !noalias !33868
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit
  %i.cl = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33869)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !33869, !noalias !33872, !nonnull !12, !noundef !12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !33869, !noalias !33872, !noundef !12 ; 7 uses
  %.idx76 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx76
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %._crit_edge75, label %.lr.ph74

bb.x:                                             ; preds = %.lr.ph74
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26, %bb.x
  %i.cv = phi ptr [ %i.cs, %bb.x ], [ %i.cn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26 ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26 ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !33874, !noalias !33879, !noundef !12
  %.not.i.i35 = icmp eq i64 %i.cy, %i.i
  br i1 %.not.i.i35, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph74
  call void @llvm.experimental.noalias.scope.decl(metadata !33884)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !33887)
  %i.cz = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i = icmp samesign ult i64 %i.cw, %i.cp
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.da, align 8, !noalias !33890 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !33890
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = xor i64 %i.cw, -1
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = mul nuw nsw i64 %i.dd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false), !noalias !33893
  %i.df = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.df, ptr %i.co, align 8, !alias.scope !33895, !noalias !33896
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %bb.ah, !prof !4546

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.y
  %i.dg = phi i64 [ %i.cp, %bb.y ], [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cw, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #50, !noalias !33897
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !12, !align !249, !noundef !12 ; 8 uses
  %i.dk = cmpxchg ptr %i.dj, i32 0, i32 1 acquire monotonic, align 4, !noalias !33898
  %i.dl = extractvalue { i32, i1 } %i.dk, 1
  br i1 %i.dl, label %bb.ab, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dj) #45, !noalias !33898
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !33898
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !33898
  %i.dq = xor i1 %i.dp, true
  %i.dr = zext i1 %i.dq to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i36 = phi i8 [ %i.dr, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dt = load atomic i8, ptr %i.ds monotonic, align 4, !noalias !33898
  %.not.i.i37.not = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i37.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33901
  store ptr %i.dj, ptr %i.c, align 8, !noalias !33901
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i36, ptr %i.du, align 8, !noalias !33901
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781) #50, !noalias !33905
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39
  %i.dv = trunc nuw i8 %.sroa.01.0.i.i36 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33906)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !33906, !noalias !33909, !nonnull !12, !noundef !12 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !33906, !noalias !33909, !noundef !12 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dz, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ed = add nuw nsw i64 %i.eg, 1
  %i.ee = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ee, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit, %bb.ae
  %i.ef = phi ptr [ %i.ec, %bb.ae ], [ %i.dx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  %i.eg = phi i64 [ %i.ed, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !33911, !noalias !33916, !noundef !12
  %.not.i.i41 = icmp eq i64 %i.ei, %i.i
  br i1 %.not.i.i41, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !33921)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i40)
  call void @llvm.experimental.noalias.scope.decl(metadata !33924)
  %i.ej = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ej)
  %.not.i.i.i42 = icmp samesign ult i64 %i.eg, %i.dz
  br i1 %.not.i.i.i42, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44: ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.eg ; 4 uses
  %.sroa.0.0.copyload1.i.i45 = load ptr, ptr %i.ek, align 8, !noalias !33927 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i46 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i46, i64 16, i1 false), !noalias !33927
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = xor i64 %i.eg, -1
  %i.en = add nsw i64 %i.dz, %i.em
  %i.eo = mul nuw nsw i64 %i.en, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.el, i64 %i.eo, i1 false), !noalias !33930
  %i.ep = add nsw i64 %i.dz, -1                   ; 2 uses
  store i64 %i.ep, ptr %i.dy, align 8, !alias.scope !33932, !noalias !33933
  %.not.i4.i47 = icmp eq ptr %.sroa.0.0.copyload1.i.i45, null
  br i1 %.not.i4.i47, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43, label %bb.au, !prof !4546

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44, %bb.af
  %i.eq = phi i64 [ %i.dz, %bb.af ], [ %i.ep, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44 ] ; 2 uses
  %i.er = icmp samesign ult i64 %i.eq, 384307168202282326
  call void @llvm.assume(i1 %i.er)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eg, i64 noundef %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #50, !noalias !33934
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.es = load atomic i8, ptr %i.k acquire, align 16
  %.not2.i = icmp eq i8 %i.es, 0
  br i1 %.not2.i, label %.lr.ph.i52, label %.loopexit

.lr.ph.i52:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 4 uses
  %.sroa.0.03.i = phi i32 [ %i.ey, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 4 uses
  %i.et = shl i32 %.sroa.0.03.i, 1
  %i.eu = or i32 %i.et, 1
  %i.ev = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.ev, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i52
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i52
  %.not.i.i54 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i54, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %i.ew = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.ex = icmp ult i32 %i.ew, 7
  br i1 %i.ex, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !33935

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ey = add i32 %.sroa.0.03.i, 1
  %i.ez = load atomic i8, ptr %i.k acquire, align 16
  %.not.i53 = icmp eq i8 %i.ez, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.eu
  br i1 %.not.i53, label %.lr.ph.i52, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.fa = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !33936
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit
  %i.fc = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fd = and i64 %i.fc, 9223372036854775807
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.ak, !prof !5

bb.ak:                                            ; preds = %bb.aj
  %i.ff = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.ff, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit
  %i.fg = atomicrmw xchg ptr %i.bz, i32 0 release, align 4
  %i.fh = icmp eq i32 %i.fg, 2
  br i1 %i.fh, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56, !prof !48

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bz) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not25 = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not25, label %bb.an, label %.thread, !prof !48

._crit_edge75:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @779) #50
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @780) #50
  unreachable

.thread:                                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59
  %.sink = phi i128 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56 ]
  %.sroa.09.0.copyload.sink = phi i128 [ %.sroa.09.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59 ], [ %.sroa.0.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56 ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.511.0..sroa_idx, i64 288, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.09.0.copyload.sink, ptr %.sroa.418.0..sroa_idx, align 16
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i128 2, ptr %0, align 16
  %.pre = load i128, ptr %i.f, align 16, !range !13306, !alias.scope !33945 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33952)
  call void @llvm.experimental.noalias.scope.decl(metadata !33953)
  call void @llvm.experimental.noalias.scope.decl(metadata !33954)
  %i.fi = icmp eq i128 %.pre, -1
  br i1 %i.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !33955)
  %.not.i.i.i.i = icmp eq i128 %.pre, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fj, align 16, !range !63, !alias.scope !33958, !noundef !12 ; 2 uses
  %i.fk = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fl, align 8, !alias.scope !33965, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !33966
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.ar:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33973)
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !33976, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !invariant.load !12, !noalias !33976 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = load ptr, ptr %i.fm, align 16, !alias.scope !33976, !nonnull !12, !noundef !12
  call void %i.fp(ptr noundef nonnull %i.fq) #51, !noalias !33976, !inline_history !33977
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !63, !invariant.load !12, !noalias !33976 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %i.fm, align 16, !alias.scope !33976, !nonnull !12, !noundef !12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !range !267, !invariant.load !12, !noalias !33976
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) %i.fv) #45, !noalias !33976
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.thread, %.loopexit, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i40)
  store ptr %.sroa.0.0.copyload1.i.i45, ptr %i.d, align 8
  %i.fw = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i45, i64 1 release, align 8, !noalias !33978
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57: ; preds = %bb.au, %bb.av
  br i1 %i.dv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57
  %i.fy = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fz = and i64 %i.fy, 9223372036854775807
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ax, !prof !5

bb.ax:                                            ; preds = %bb.aw
  %i.gb = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.gb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.ds monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57
  %i.gc = atomicrmw xchg ptr %i.dj, i32 0 release, align 4
  %i.gd = icmp eq i32 %i.gc, 2
  br i1 %i.gd, label %bb.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59, !prof !48

bb.az:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dj) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.09.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not23 = icmp eq i128 %.sroa.09.0.copyload, -1
  br i1 %.not23, label %bb.ba, label %.thread, !prof !48

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @782) #50
  unreachable

end_hunk_12
begin_hunk_13_@_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneNtNtBN_5error5ErrorE9unwrap_orCsl8pJiQOn4hA_9coreutils:_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit
  store i64 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = trunc nuw i64 %0 to i1
  br i1 %i.c, label %bb.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneNtNtB13_5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit

bb.a:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneNtNtB13_5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !34332
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneNtNtB13_5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneNtNtB13_5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneNtNtB13_5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.c, %bb.b, %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit
  %spec.select = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ], [ %1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneECsl8pJiQOn4hA_9coreutils.exit ]
  ret ptr %spec.select
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 0         ; 9 uses
  %i.g = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.g, label %bb.j, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.k, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i = icmp slt i64 %i.f, 0
  br i1 %.not.i.i, label %bb.h, label %bb.f, !prof !328

bb.f:                                             ; preds = %bb.e
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34343
  %i.i = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, 9) 1) #45, !noalias !34343 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.g ], [ 0, %bb.e ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.f) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.g, %bb.f
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.f ], [ %i.i, %bb.g ] ; 3 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34349)
  %i.m = icmp samesign ugt i64 %2, %i.f
  br i1 %i.m, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, !prof !48

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %2, i64 noundef 1, i64 noundef 1) #45
  %i.n = load i64, ptr %i.l, align 8, !alias.scope !34352, !noundef !12 ; 2 uses
  %i.o = icmp sgt i64 %i.n, -1
  tail call void @llvm.assume(i1 %i.o)
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !34352
  br label %bb.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %.not.i.i6 = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i6, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i
  %i.p = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i ], [ %.sroa.10.0.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %i.q = phi i64 [ %i.n, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !34352
  br label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.i
  %i.s = phi ptr [ %i.p, %bb.i ], [ %.sroa.10.0.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 4 uses
  %i.t = phi i64 [ %i.q, %bb.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %i.u = add nuw i64 %i.t, %2                     ; 2 uses
  %.sroa.01.07 = lshr i64 %3, 1                   ; 2 uses
  %.not8 = icmp eq i64 %.sroa.01.07, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @285, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @897) #50
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit
  %storemerge.lcssa = phi i64 [ %i.u, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit ], [ %i.x, %.lr.ph ] ; 5 uses
  store i64 %storemerge.lcssa, ptr %i.l, align 8
  %i.v = icmp sgt i64 %storemerge.lcssa, -1
  tail call void @llvm.assume(i1 %i.v)
  %.not5 = icmp eq i64 %i.f, %storemerge.lcssa
  br i1 %.not5, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, %.lr.ph
  %.sroa.01.010 = phi i64 [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.07, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit ]
  %storemerge9 = phi i64 [ %i.x, %.lr.ph ], [ %i.u, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %storemerge9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.s, i64 %storemerge9, i1 false)
  %i.x = shl nuw i64 %storemerge9, 1              ; 2 uses
  %.sroa.01.0 = lshr i64 %.sroa.01.010, 1         ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.l:                                             ; preds = %._crit_edge
  %i.y = sub nsw i64 %i.f, %storemerge.lcssa
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %storemerge.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.s, i64 %i.y, i1 false)
  store i64 %i.f, ptr %i.l, align 8
  br label %bb.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error6formatCsl8pJiQOn4hA_9coreutils(ptr noalias noundef nonnull returned align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @_RNvMs3_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command11__build_self(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %1, i1 noundef zeroext false) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command13render_usage_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %1) #45
  %i.c = load i64, ptr %0, align 8, !range !279, !noundef !12
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_RNvMs4_NtCsgNwXemyrBWj_12clap_builder5errorNtB5_7Message6format(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error8with_cmdCsl8pJiQOn4hA_9coreutils(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #45 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsl8pJiQOn4hA_9coreutils.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error8with_cmdCsl8pJiQOn4hA_9coreutils(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #45 ; 0 uses
  %.val = load i64, ptr %i.b, align 8, !range !13, !noundef !12 ; 2 uses
  %i.f = icmp sgt i64 %.val, 0
  br i1 %i.f, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsl8pJiQOn4hA_9coreutils.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4 = load ptr, ptr %i.g, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !34353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsgNwXemyrBWj_12clap_builder5errorNtB2_5Error8with_cmdCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [126 x i8], align 2               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34361)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !34364, !nonnull !12, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !34364, !noundef !12 ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i26, i64 16 ; 2 uses
  %i.k = add i64 %.sroa.8.0.i.i25, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i26 = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i25 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.01.i.i26, align 8, !noalias !34364
  %i.m = icmp eq i128 %.val.i.i, -159004430768447808090885082428108441544
  br i1 %i.m, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !34364, !noundef !12 ; 2 uses
  %i.p = icmp ult i64 %.sroa.8.0.i.i25, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i25, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #50, !noalias !34364
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !34364, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.sroa.8.0.i.i25 ; 2 uses
  %.val5.i = load ptr, ptr %i.s, align 8, !noalias !34358, !nonnull !12, !noundef !12
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val6.i = load ptr, ptr %i.t, align 8, !noalias !34358, !nonnull !12, !align !249, !noundef !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !267, !invariant.load !12, !noalias !34358
  %i.w = add nsw i64 %i.v, -1
  %i.x = and i64 %i.w, -16
  %i.y = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34358
  %i.aa = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !12, !noalias !34358, !nonnull !12
  call void %i.ab(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.z) #51, !noalias !34358, !inline_history !34365
  %i.ac = load i128, ptr %i.a, align 16, !noalias !34358, !noundef !12
  %.not.i = icmp eq i128 %i.ac, -159004430768447808090885082428108441544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34358
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #50, !noalias !34358
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @898, ptr %.sroa.0.0.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.c, ptr noundef nonnull align 2 dereferenceable(14) %., i64 14, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %., i64 14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ae, ptr noundef nonnull align 2 dereferenceable(14) %i.ad, i64 14, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %., i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ag, ptr noundef nonnull align 2 dereferenceable(14) %i.af, i64 14, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %., i64 42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ai, ptr noundef nonnull align 2 dereferenceable(14) %i.ah, i64 14, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %., i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ak, ptr noundef nonnull align 2 dereferenceable(14) %i.aj, i64 14, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %., i64 70
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.am, ptr noundef nonnull align 2 dereferenceable(14) %i.al, i64 14, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %., i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ao, ptr noundef nonnull align 2 dereferenceable(14) %i.an, i64 14, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %., i64 98
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aq, ptr noundef nonnull align 2 dereferenceable(14) %i.ap, i64 14, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.as, ptr noundef nonnull align 2 dereferenceable(14) %i.ar, i64 14, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.at, ptr noundef nonnull align 2 dereferenceable(126) %i.c, i64 126, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.av = load i32, ptr %i.au, align 4, !noundef !12 ; 4 uses
  %i.aw = and i32 %i.av, 536870912
  %.not12 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ay = load i32, ptr %i.ax, align 8            ; 4 uses
  %i.az = and i32 %i.ay, 536870912
  %.not13 = icmp eq i32 %i.az, 0
  %or.cond = select i1 %.not12, i1 %.not13, i1 false
  %i.ba = or i32 %i.ay, %i.av
  %i.bb = lshr i32 %i.ba, 28
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %spec.select = and i8 %i.bc, 1
  %.sroa.09.0 = select i1 %or.cond, i8 %spec.select, i8 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %.sroa.09.0, ptr %i.bd, align 1
  %i.be = and i32 %i.av, 262144
  %.not.i17 = icmp eq i32 %i.be, 0
  %i.bf = and i32 %i.ay, 262144
  %.not1.i = icmp eq i32 %i.bf, 0
  %or.cond1.i = select i1 %.not.i17, i1 %.not1.i, i1 false
  br i1 %or.cond1.i, label %bb.g, label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.g:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit
  %i.bg = or i32 %i.ay, %i.av                     ; 2 uses
  %i.bh = and i32 %i.bg, 536870912
  %or.cond.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.i, label %bb.h, label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.h:                                             ; preds = %bb.g
  %i.bi = lshr i32 %i.bg, 28
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %spec.select.i = and i8 %i.bj, 1
  br label %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit

_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit, %bb.g, %bb.h
  %.sroa.0.0.i18 = phi i8 [ 2, %bb.g ], [ 2, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECsl8pJiQOn4hA_9coreutils.exit ], [ %spec.select.i, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.0.0.i18, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsgNwXemyrBWj_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) #45
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34366)
  %i.bm = load i64, ptr %i.bl, align 8, !range !72, !alias.scope !34366, !noundef !12 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECsl8pJiQOn4hA_9coreutils.exit

bb.i:                                             ; preds = %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load ptr, ptr %i.bo, align 8, !alias.scope !34366, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !34369
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CoweEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB5_7Command10color_help.exit, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtCs3JjgEOiFeOI_4jiff2tz8timezoneNtB2_8TimeZone9to_offset(ptr %.0.val, i64 noundef %0, i32 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.b = and i64 %i.a, 7
  switch i64 %i.b, label %bb.b [
    i64 1, label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit
    i64 2, label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit
    i64 3, label %bb.c
    i64 0, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32
  %i.d = ashr i32 %i.c, 4                         ; 2 uses
  %i.e = add nsw i32 %i.d, 93599
  %or.cond.i = icmp ult i32 %i.e, 187199
  br i1 %or.cond.i, label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit, label %bb.d, !prof !10332

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @930, ptr noundef nonnull inttoptr (i64 25 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @932) #50
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %.0.val, i64 noundef %0, i32 noundef %1) #45
  br label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -4
  %i.h = tail call noundef i32 @_RNvMNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.g, i64 noundef %0, i32 noundef %1) #45
  br label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0.val, i64 -5
  %i.j = tail call noundef i32 @_RNvMs0_NtNtCscxuc9kp9KZq_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i, i64 noundef %0, i32 noundef %1) #45
  br label %_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit

_RNvMs1_NtNtCs3JjgEOiFeOI_4jiff2tz6offsetNtB5_6Offset22from_seconds_unchecked.exit: ; preds = %bb.c, %bb.a, %bb.a, %bb.g, %bb.f, %bb.e
  %.sroa.0.0 = phi i32 [ %i.j, %bb.g ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.f, %bb.e ], [ %i.h, %bb.f ], [ %i.d, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs3JjgEOiFeOI_4jiff5civil8datetimeNtB2_8DateTime8to_zoned(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [12 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 4                ; 5 uses
  %i.h = alloca [12 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 4                ; 5 uses
  %i.j = alloca [12 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 4                ; 5 uses
  %i.l = alloca [12 x i8], align 8                ; 5 uses
  %i.m = alloca [12 x i8], align 8                ; 5 uses
end_hunk_13
begin_hunk_14_@_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10disconnectCsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34608
  %i.ck = icmp eq ptr %i.bx, %i.bu
  br i1 %i.ck, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.cl = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ce) #45, !noalias !34608 ; 0 uses
  br label %bb.q

bb.t:                                             ; preds = %.lr.ph.i3
  %i.cm = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !34597, !nonnull !12, !noundef !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !34597, !nonnull !12, !noundef !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  %i.cq = atomicrmw xchg ptr %i.cp, i32 1 release, align 4, !noalias !34597
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %.lr.ph.i3
  %i.cs = icmp eq ptr %i.bm, %i.bk
  br i1 %i.cs, label %._crit_edge.i7, label %.lr.ph.i3

bb.v:                                             ; preds = %bb.t
  %i.ct = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cp) #45, !noalias !34597 ; 0 uses
  br label %bb.u

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13, %._crit_edge.i7, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit
  br i1 %i.o, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cu = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cv = and i64 %i.cu, 9223372036854775807
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  %i.cx = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.cx, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cy = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit, !prof !48

bb.z:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.z
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(304) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [352 x i8], align 16              ; 15 uses
  %i.c = alloca [352 x i8], align 16              ; 15 uses
  %i.d = alloca [320 x i8], align 16              ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [352 x i8], align 16              ; 18 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [288 x i8], align 16        ; 10 uses
  %.sroa.6.i = alloca [288 x i8], align 16        ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [320 x i8], align 16              ; 18 uses
  %.sroa.6 = alloca [288 x i8], align 16          ; 6 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i128, ptr %1, align 16 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !34623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !34623
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !34623
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !34627 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !34627, !noundef !12 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

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

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cu, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.ct, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34630)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.ai = phi i64 [ %i.bp, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ %i.ag, %.lr.ph.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.bo, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ %i.ah, %.lr.ph.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ], [ 0, %.lr.ph.i.i ] ; 10 uses
  %umin167 = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin167, %umin167      ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.ak = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.al = shl i32 %.sroa.0.03842.i.i, 1
  %i.am = or i32 %i.al, 1
  %i.an = add i64 %i.ai, -1
  %i.ao = and i64 %i.an, %.sroa.02.043.i.i        ; 3 uses
  %i.ap = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.aq = sub i64 0, %i.ap
  %i.ar = and i64 %.sroa.02.043.i.i, %i.aq
  %i.as = load ptr, ptr %i.ab, align 8, !noalias !34632, !nonnull !12, !noundef !12
  %i.at = load i64, ptr %i.ac, align 16, !noalias !34632, !noundef !12
  %i.au = icmp ult i64 %i.ao, %i.at
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [320 x i8], ptr %i.as, i64 %i.ao ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 304
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8, !noalias !34632 ; 2 uses
  %i.ay = icmp eq i64 %.sroa.02.043.i.i, %i.ax
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.ba = add i64 %i.az, %i.ax
  %i.bb = add i64 %.sroa.02.043.i.i, 1
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bd = add nuw i64 %i.ao, 1
  %i.be = load i64, ptr %i.ad, align 128, !noalias !34632, !noundef !12
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bg = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45, !noalias !34632
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %i.bh = add i32 %loop-unroll.iv, -1
  %xtraiter155 = and i32 %loop-unroll.iv, 7       ; 3 uses
  %i.bi = icmp ult i32 %i.bh, 7
  br i1 %i.bi, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter159 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bj = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !34632
  %i.bk = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = icmp eq i64 %i.bl, %.sroa.02.043.i.i
  br i1 %i.bm, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter161 = and i32 %i.ak, 7                 ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bn, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter165 = and i32 %i.ak, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter169 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !34633

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !34634

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34635

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bo = load atomic i64, ptr %i.u monotonic, align 16, !noalias !34632 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bp = load i64, ptr %i.v, align 16, !noalias !34632, !noundef !12 ; 2 uses
  %i.bq = and i64 %i.bp, %i.bo
  %i.br = icmp eq i64 %i.bq, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.am
  br i1 %i.br, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bs = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.bt = add i64 %i.bs, %i.ar
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bu = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bu, %bb.j ], [ %i.bt, %bb.i ]
  %i.bv = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !34632
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bv, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter168 = and i32 %i.aj, 7                 ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bw, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter172 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.h
  %i.bx = load i32, ptr %i.s, align 8, !range !30286, !noalias !34623, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.bx, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 304
  store ptr %i.av, ptr %i.p, align 8, !alias.scope !34630, !noalias !34623
  %i.bz = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bz, ptr %i.t, align 8, !alias.scope !34630, !noalias !34623
  store i128 %.sroa.0.0.copyload, ptr %i.av, align 16, !noalias !34636
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false), !noalias !34639
  store atomic i64 %i.bz, ptr %i.by release, align 16, !noalias !34640
  %i.ca = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ca) #51, !noalias !34640
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i
  %i.cb = load i64, ptr %i.q, align 8, !noalias !34623, !noundef !12 ; 2 uses
  %i.cc = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #45, !noalias !34623 ; 2 uses
  %i.cd = extractvalue { i64, i32 } %i.cc, 0      ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.cb
  br i1 %i.ce, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !34642
  store ptr %i.p, ptr %i.o, align 8, !noalias !34623
  store ptr %.8.val, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !34623
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !34623
  %i.cf = load i8, ptr %i.af, align 8, !range !1480, !noalias !34645, !noundef !12
  %i.cg = icmp eq i8 %i.cf, 1
  br i1 %i.cg, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !5

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.m
  %i.ch = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsl8pJiQOn4hA_9coreutils(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #45, !noalias !34642 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.ch, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642, !noundef !12 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !48

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !34642
  %i.ck = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #45, !noalias !34642 ; 3 uses
  store ptr %i.ck, ptr %i.n, align 8, !noalias !34642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !34642
  store ptr %i.p, ptr %i.m, align 8, !noalias !34642
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !34623
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !34623
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.ck) #51, !noalias !34642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !34642
  %i.cl = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !34652
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #53, !noalias !34642
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !34642
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store atomic i64 0, ptr %i.cn release, align 8, !noalias !34642
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store atomic ptr null, ptr %i.co release, align 8, !noalias !34642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !34642
  store ptr %i.p, ptr %i.l, align 8, !noalias !34642
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !34623
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !34623
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cj) #51, !noalias !34642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !34642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !34642
  %i.cp = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642, !noundef !12 ; 3 uses
  store ptr %i.cp, ptr %i.k, align 8, !noalias !34642
  store ptr %i.cj, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !34659
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #53, !noalias !34642
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !34642
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs0_0Csl8pJiQOn4hA_9coreutils(ptr nonnull %i.o) #51, !noalias !34642
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !34642
  %i.ct = load atomic i64, ptr %i.u monotonic, align 16, !noalias !34668 ; 2 uses
  %i.cu = load i64, ptr %i.v, align 16, !noalias !34668, !noundef !12 ; 2 uses
  %i.cv = and i64 %i.cu, %i.ct
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cx = extractvalue { i64, i32 } %i.cc, 1      ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 1000000000
  call void @llvm.assume(i1 %i.cy)
  %.not30.i = icmp samesign ult i32 %i.cx, %i.bx
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.cd, %i.cb
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 16
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i, %bb.u, %bb.t
  %i.cz = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !34623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ck

bb.v:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8, !noalias !34670 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.dd = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !34670
  %i.de = and i64 %i.db, 1
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.db, %.lr.ph.i.i3 ], [ %i.dp, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.dd, %.lr.ph.i.i3 ], [ %i.dq, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dh = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.di = and i64 %i.dh, 31                       ; 3 uses
  %i.dj = icmp eq i64 %i.di, 31
  br i1 %i.dj, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dk = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dk, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45, !noalias !34670
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dl = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter149 = and i32 %i.dl, 7                 ; 3 uses
  %i.dm = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dm, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter153 = and i32 %i.dl, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter154 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter154.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter150 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !34676

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dn = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.do = icmp eq i64 %i.di, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.do, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dw, %bb.ag ], [ %i.dw, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ef, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dn, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dp = load atomic i64, ptr %i.da acquire, align 8, !noalias !34670 ; 2 uses
  %i.dq = load atomic ptr, ptr %i.dc acquire, align 8, !noalias !34670
  %i.dr = and i64 %i.dp, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.du, %bb.aa ] ; 7 uses
  %i.dt = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dt, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34670
  %i.du = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !34670 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i, !prof !48

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #52, !noalias !34670
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !34670
  %i.dw = tail call noalias noundef align 16 dereferenceable_or_null(9936) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 9936, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !34670 ; 6 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i, !prof !48

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 9936) #52, !noalias !34670
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i: ; preds = %bb.ac
  %i.dy = cmpxchg ptr %i.dc, ptr null, ptr %i.dw release monotonic, align 8, !noalias !34670
  %i.dz = extractvalue { ptr, i1 } %i.dy, 1
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dw, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBY_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %i.ea = add i64 %.sroa.03.049.i.i, 2
  %i.eb = cmpxchg weak ptr %i.da, i64 %.sroa.03.049.i.i, i64 %i.ea seq_cst acquire, align 8, !noalias !34670
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.eb, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i
  store atomic ptr %i.dw, ptr %i.dg release, align 8, !noalias !34670
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBx_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEE13new_zeroed_inCsl8pJiQOn4hA_9coreutils.exit16.i.i
  %i.ec = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ec, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 9936, i64 noundef 16) #45, !noalias !34670
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %i.ed = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %i.ed, 5                    ; 3 uses
  %i.ee = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ee, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %i.ed, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !34670
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !34677

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ef = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.do, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i, !prof !48

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.dc release, align 8, !noalias !34670
  %i.eg = atomicrmw add ptr %i.da, i64 2 release, align 8, !noalias !34670 ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 9920
  store atomic ptr %.sroa.035.2.i.i, ptr %i.eh release, align 8, !noalias !34670
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @934) #50, !noalias !34670
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.di, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ei = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ei, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 9936, i64 noundef 16) #45, !noalias !34670
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34681)
  %i.ej = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.ej, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i ]
  %i.ek = getelementptr inbounds nuw [320 x i8], ptr %.sroa.43.126.i, i64 %.sroa.9.125.i ; 3 uses
  store i128 %.sroa.02.0.copyload, ptr %i.ek, align 16, !noalias !34683
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..sroa_idx9.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, i64 288, i1 false), !noalias !34683
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 304
  %i.em = atomicrmw or ptr %i.el, i64 1 release, align 8, !noalias !34684 ; 0 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.en) #51, !noalias !34684
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, i64 288, i1 false), !alias.scope !34685, !noalias !34686
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.i1 = icmp eq i128 %.sroa.02.0.copyload, -1
  br i1 %.not.i1, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.i, i64 288, i1 false)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.02.0.copyload, ptr %.sroa.4.0..sroa_idx.i2, align 16
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i, %bb.am
  %i.eo = phi i128 [ 1, %bb.am ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ck

bb.an:                                            ; preds = %bb.a
  %.sroa.04.0.copyload = load i128, ptr %1, align 16 ; 8 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.67.0.copyload = load ptr, ptr %.sroa.67.0..sroa_idx, align 16 ; 9 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 9 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 16 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 7 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.ep, align 8, !noalias !34687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !34687
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !34687
  %i.er = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !34691
  %i.es = extractvalue { i32, i1 } %i.er, 1
  br i1 %i.es, label %bb.ap, label %bb.ao, !prof !5

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #45, !noalias !34691
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.et = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !34691
  %i.eu = and i64 %i.et, 9223372036854775807
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %bb.ap
  %i.ew = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !34691
  %i.ex = xor i1 %i.ew, true
  %i.ey = zext i1 %i.ex to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.01.0.i.i.i = phi i8 [ %i.ey, %bb.aq ], [ 0, %bb.ap ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.fa = load atomic i8, ptr %i.ez monotonic, align 1, !noalias !34691
  %.not.i.i.not.i = icmp eq i8 %i.fa, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.ar, !prof !5

bb.ar:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34694
  store ptr %.8.val, ptr %i.g, align 8, !noalias !34694
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.fb, align 8, !noalias !34694
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @936) #50, !noalias !34698
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit.i
  %i.fc = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34699)
  %i.fd = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !34699, !noalias !34702, !noundef !12 ; 6 uses
  %i.ff = icmp ult i64 %i.fe, 384307168202282326
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp eq i64 %i.fe, 0
  br i1 %i.fg, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i
  %i.fh = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !34699, !noalias !34702, !nonnull !12, !noundef !12 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fe, 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx.i.i
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.as
  %.sroa.02.010.i.i.i = phi i64 [ %i.gf, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ 0, %bb.as ] ; 5 uses
  %i.fm = phi ptr [ %i.fn, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.fk, %bb.as ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34704)
  %i.fo = load ptr, ptr %i.fm, align 8, !alias.scope !34704, !noalias !34707, !nonnull !12, !noundef !12 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !34711, !noundef !12
  %.not.i.i.i.i17 = icmp eq i64 %i.fq, %i.fi
  br i1 %.not.i.i.i.i17, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !34704, !noalias !34707, !noundef !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fu = cmpxchg ptr %i.ft, i64 0, i64 %i.fs acq_rel acquire, align 8, !noalias !34711
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fu, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.au, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !34704, !noalias !34707, !noundef !12 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store atomic ptr %i.fw, ptr %i.fy release, align 8, !noalias !34711
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
end_hunk_14
begin_hunk_15_@_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12insert_entryCsl8pJiQOn4hA_9coreutils:bb.a
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ck
  store ptr %.sroa.10.0124.i, ptr %i.db, align 8, !alias.scope !35071, !noalias !35067
  store i16 %i.ci, ptr %i.cd, align 2, !noalias !35067
  %i.dc = icmp samesign ult i64 %i.ck, %i.da
  br i1 %i.dc, label %.lr.ph.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.thread.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.dd = add nuw nsw i64 %i.ch, 1
  %i.de = sub nsw i64 %i.dd, %i.cc
  %i.df = sub nsw i64 %i.ch, %i.cc
  %xtraiter481 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod482.not = icmp eq i64 %xtraiter481, 0
  br i1 %lcmp.mod482.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.prol ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %prol.iter483 = phi i64 [ %prol.iter483.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.prol, 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.0.06.i.i.i.i.prol
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !35067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.by, ptr %i.dj, align 8, !noalias !35067
  %i.dk = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.prol to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 360
  store i16 %i.dk, ptr %i.dl, align 8, !noalias !35067
  %prol.iter483.next = add i64 %prol.iter483, 1   ; 2 uses
  %prol.iter483.cmp.not = icmp eq i64 %prol.iter483.next, %xtraiter481
  br i1 %prol.iter483.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !35074

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.prol ]
  %i.dm = icmp ult i64 %i.df, 3
  br i1 %i.dm, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.dn = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 1  ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.0.06.i.i.i.i
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !35067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.by, ptr %i.dp, align 8, !noalias !35067
  %i.dq = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 360
  store i16 %i.dq, ptr %i.dr, align 8, !noalias !35067
  %i.ds = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 2  ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dn
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !35067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.by, ptr %i.du, align 8, !noalias !35067
  %i.dv = trunc nuw nsw i64 %i.dn to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 360
  store i16 %i.dv, ptr %i.dw, align 8, !noalias !35067
  %i.dx = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 3  ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ds
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !35067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.by, ptr %i.dz, align 8, !noalias !35067
  %i.ea = trunc nuw nsw i64 %i.ds to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 360
  store i16 %i.ea, ptr %i.eb, align 8, !noalias !35067
  %i.ec = add nuw nsw i64 %.sroa.0.06.i.i.i.i, 4  ; 2 uses
  %i.ed = icmp ult i64 %.sroa.0.06.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dx
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !35067, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.by, ptr %i.ef, align 8, !noalias !35067
  %i.eg = trunc nuw nsw i64 %i.dx to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 360
  store i16 %i.eg, ptr %i.eh, align 8, !noalias !35067
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ec, %i.da
  br i1 %exitcond.not.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %.lr.ph.i.i.i.i

bb.y:                                             ; preds = %bb.v
  switch i16 %i.cb, label %bb.z [
    i16 5, label %bb.ab
    i16 6, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ei = add nsw i64 %i.cc, -7
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.v
  %.sroa.06.0.i.i = phi i64 [ 5, %bb.aa ], [ 6, %bb.z ], [ 4, %bb.v ], [ 5, %bb.y ] ; 7 uses
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.aa ], [ %i.ei, %bb.z ], [ %i.cc, %bb.v ], [ 5, %bb.y ] ; 9 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.aa ], [ true, %bb.z ], [ false, %bb.v ], [ false, %bb.y ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35075
  %i.ej = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 464, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35075 ; 14 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !48

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #52, !noalias !35075
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.ab
  store ptr null, ptr %i.ej, align 8, !noalias !35075
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 362 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.4.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35079)
  %i.em = load i16, ptr %i.cd, align 2, !noalias !35082, !noundef !12
  %i.en = zext i16 %i.em to i64
  %i.eo = xor i64 %.sroa.06.0.i.i, -1
  %i.ep = add nsw i64 %i.en, %i.eo                ; 5 uses
  %i.eq = trunc i64 %i.ep to i16
  store i16 %i.eq, ptr %i.el, align 2, !alias.scope !35079, !noalias !35084
  %i.er = icmp ult i64 %i.ep, 12
  br i1 %i.er, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ad, !prof !10332

bb.ad:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ep, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @959) #50, !noalias !35082
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %.sroa.06.0.i.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.by, i64 272 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.06.0.i.i
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !35082, !noundef !12 ; 2 uses
  %i.ex = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fa = mul nuw nsw i64 %i.ep, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull readonly align 8 %i.ey, i64 %i.fa, i1 false), !alias.scope !35085, !noalias !35084
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ex
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 272
  %i.fd = shl nuw nsw i64 %i.ep, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr nonnull readonly align 8 %i.fb, i64 %i.fd, i1 false), !alias.scope !35089, !noalias !35084
  %i.fe = trunc nuw nsw i64 %.sroa.06.0.i.i to i16
  store i16 %i.fe, ptr %i.cd, align 2, !noalias !35082
  %.sroa.0.i.i.sroa.0.0.copyload.i = load i64, ptr %i.et, align 8, !noalias !35051 ; 3 uses
  %.sroa.0.i.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.4.0..sroa_idx.i, i64 16, i1 false), !noalias !35051
  %i.ff = load i16, ptr %i.el, align 2, !noalias !35075, !noundef !12 ; 3 uses
  %i.fg = zext i16 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 5 uses
  %i.fi = icmp ult i16 %i.ff, 12
  br i1 %i.fi, label %bb.ae, label %bb.ah, !prof !10332

bb.ae:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 368 ; 6 uses
  %i.fk = zext i16 %i.ce to i64
  %i.fl = sub nuw nsw i64 %i.fk, %.sroa.06.0.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35096)
  %i.fm = icmp eq i64 %i.fl, %i.fh
  br i1 %i.fm, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.af, !prof !5

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #50, !noalias !35098
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.ae
  %i.fn = getelementptr i8, ptr %i.by, i64 376
  %i.fo = getelementptr [8 x i8], ptr %i.fn, i64 %.sroa.06.0.i.i
  %i.fp = shl nuw nsw i64 %i.fh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fo, i64 %i.fp, i1 false), !alias.scope !35099, !noalias !35075
  %i.fq = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %i.fq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35100)
  %xtraiter = and i64 %i.fh, 3                    ; 3 uses
  %i.fr = icmp ult i16 %i.ff, 3
  br i1 %i.fr, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %unroll_iter = and i64 %i.fh, 28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.new
  %.sroa.0.09.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.new ], [ %i.gh, %bb.ag ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.new ], [ %niter.next.3, %bb.ag ]
  %i.fs = or disjoint i64 %.sroa.0.09.i.i.i.i.i, 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.0.09.i.i.i.i.i
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !35100, !noalias !35103, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.ej, ptr %i.fu, align 8, !noalias !35106
  %i.fv = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 360
  store i16 %i.fv, ptr %i.fw, align 8, !noalias !35103
  %i.fx = or disjoint i64 %.sroa.0.09.i.i.i.i.i, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fs
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !35100, !noalias !35103, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.ej, ptr %i.fz, align 8, !noalias !35106
  %i.ga = trunc nuw nsw i64 %i.fs to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 360
  store i16 %i.ga, ptr %i.gb, align 8, !noalias !35103
  %i.gc = or disjoint i64 %.sroa.0.09.i.i.i.i.i, 3 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fx
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !35100, !noalias !35103, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.ej, ptr %i.ge, align 8, !noalias !35106
  %i.gf = trunc nuw nsw i64 %i.fx to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 360
  store i16 %i.gf, ptr %i.gg, align 8, !noalias !35103
  %i.gh = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i, 4 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.gc
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !35100, !noalias !35103, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.ej, ptr %i.gj, align 8, !noalias !35106
  %i.gk = trunc nuw nsw i64 %i.gc to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 360
  store i16 %i.gk, ptr %i.gl, align 8, !noalias !35103
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.unr-lcssa, label %bb.ag

bb.ah:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fh, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #50, !noalias !35075
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.unr-lcssa: ; preds = %bb.ag
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.0.09.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.gh, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.unr-lcssa ]
  %lcmp.mod478 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod478)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.gm, %bb.ai ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ai ]
  %i.gm = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.epil, 1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.0.09.i.i.i.i.i.epil
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !35100, !noalias !35103, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %i.ej, ptr %i.go, align 8, !noalias !35106
  %i.gp = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.epil to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 360
  store i16 %i.gp, ptr %i.gq, align 8, !noalias !35103
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.ai, !llvm.loop !35107

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.ai, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.4.i, i64 16, i1 false), !noalias !35051
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.4.i)
  %spec.select.i39.i = select i1 %.sroa.03.0.i.i, ptr %i.ej, ptr %i.by ; 11 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %spec.select.i39.i, i64 362 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !noalias !35108, !noundef !12 ; 2 uses
  %i.gt = zext i16 %i.gs to i64                   ; 5 uses
  %i.gu = add i16 %i.gs, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %spec.select.i39.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35112)
  %i.gw = add nuw nsw i64 %.sroa.5.0.i.i, 1       ; 7 uses
  %.not.i8.not.i.i = icmp samesign ult i64 %.sroa.5.0.i.i, %i.gt
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.sroa.5.0.i.i ; 5 uses
  br i1 %.not.i8.not.i.i, label %bb.aj, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i9.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i9.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i
  store i64 %.sroa.0.sroa.0.0122.i, ptr %i.gx, align 8, !alias.scope !35115, !noalias !35117
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.729.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.7.i, i64 16, i1 false), !noalias !35031
  %i.gy = getelementptr inbounds nuw i8, ptr %spec.select.i39.i, i64 272
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.5.0.i.i
  store i64 %.sroa.7.0127.i, ptr %i.gz, align 8, !alias.scope !35118, !noalias !35108
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i

bb.aj:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %i.gw
  %i.hb = sub nuw nsw i64 %i.gt, %.sroa.5.0.i.i   ; 2 uses
  %i.hc = mul nuw nsw i64 %i.hb, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull align 8 %i.gx, i64 %i.hc, i1 false), !alias.scope !35121, !noalias !35122
  store i64 %.sroa.0.sroa.0.0122.i, ptr %i.gx, align 8, !alias.scope !35115, !noalias !35117
  %.sroa.729.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.729.0..sroa_idx30.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.7.i, i64 16, i1 false), !noalias !35031
  %i.hd = getelementptr inbounds nuw i8, ptr %spec.select.i39.i, i64 272 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.sroa.5.0.i.i ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %i.gw
  %i.hg = shl nuw nsw i64 %i.hb, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %i.he, i64 %i.hg, i1 false), !alias.scope !35118, !noalias !35108
  store i64 %.sroa.7.0127.i, ptr %i.he, align 8, !alias.scope !35118, !noalias !35108
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select.i39.i, i64 368 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gw
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.sroa.5.0.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hk, ptr nonnull align 8 %i.hi, i64 %i.hg, i1 false), !alias.scope !35123, !noalias !35108
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i: ; preds = %bb.aj, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertjECsl8pJiQOn4hA_9coreutils.exit.i9.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %spec.select.i39.i, i64 368 ; 6 uses
  %i.hm = add nuw nsw i64 %i.gt, 2                ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.gw
  store ptr %.sroa.10.0124.i, ptr %i.hn, align 8, !alias.scope !35123, !noalias !35108
  store i16 %i.gu, ptr %i.gr, align 2, !noalias !35108
  %i.ho = icmp samesign ult i64 %i.gw, %i.hm
  br i1 %i.ho, label %.lr.ph.i.i11.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.i11.i.i.preheader:                       ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i
  %i.hp = add nuw nsw i64 %i.gt, 1
  %i.hq = sub nsw i64 %i.hp, %.sroa.5.0.i.i
  %i.hr = sub nsw i64 %i.gt, %.sroa.5.0.i.i
  %xtraiter479 = and i64 %i.hq, 3                 ; 2 uses
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol

.lr.ph.i.i11.i.i.prol:                            ; preds = %.lr.ph.i.i11.i.i.preheader, %.lr.ph.i.i11.i.i.prol
  %.sroa.0.06.i.i12.i.i.prol = phi i64 [ %i.hs, %.lr.ph.i.i11.i.i.prol ], [ %i.gw, %.lr.ph.i.i11.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.preheader ]
  %i.hs = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.prol, 1 ; 2 uses
  %i.ht = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %.sroa.0.06.i.i12.i.i.prol
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !35108, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i39.i, ptr %i.hv, align 8, !noalias !35108
  %i.hw = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.prol to i16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 360
  store i16 %i.hw, ptr %i.hx, align 8, !noalias !35108
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter479
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol, !llvm.loop !35126

.lr.ph.i.i11.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i11.i.i.prol, %.lr.ph.i.i11.i.i.preheader
  %.sroa.0.06.i.i12.i.i.unr = phi i64 [ %i.gw, %.lr.ph.i.i11.i.i.preheader ], [ %i.hs, %.lr.ph.i.i11.i.i.prol ]
  %i.hy = icmp ult i64 %i.hr, 3
  br i1 %i.hy, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i
  %.sroa.0.06.i.i12.i.i = phi i64 [ %i.io, %.lr.ph.i.i11.i.i ], [ %.sroa.0.06.i.i12.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 7 uses
  %i.hz = add nuw nsw i64 %.sroa.0.06.i.i12.i.i, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %.sroa.0.06.i.i12.i.i
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !35108, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i39.i, ptr %i.ib, align 8, !noalias !35108
  %i.ic = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i to i16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 360
  store i16 %i.ic, ptr %i.id, align 8, !noalias !35108
  %i.ie = add nuw nsw i64 %.sroa.0.06.i.i12.i.i, 2 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hz
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !35108, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i39.i, ptr %i.ig, align 8, !noalias !35108
  %i.ih = trunc nuw nsw i64 %i.hz to i16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 360
  store i16 %i.ih, ptr %i.ii, align 8, !noalias !35108
  %i.ij = add nuw nsw i64 %.sroa.0.06.i.i12.i.i, 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.ie
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !35108, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i39.i, ptr %i.il, align 8, !noalias !35108
  %i.im = trunc nuw nsw i64 %i.ie to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 360
  store i16 %i.im, ptr %i.in, align 8, !noalias !35108
  %i.io = add nuw nsw i64 %.sroa.0.06.i.i12.i.i, 4 ; 2 uses
  %i.ip = icmp ult i64 %.sroa.0.06.i.i12.i.i, 9
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.ij
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !35108, !nonnull !12, !noundef !12 ; 2 uses
  store ptr %spec.select.i39.i, ptr %i.ir, align 8, !noalias !35108
  %i.is = trunc nuw nsw i64 %i.ij to i16
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 360
  store i16 %i.is, ptr %i.it, align 8, !noalias !35108
  %exitcond.not.i.i13.i.i.3 = icmp eq i64 %i.io, %i.hm
  br i1 %exitcond.not.i.i13.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.i.i11.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i.sroa.4.i)
  br label %.loopexit.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.016.i.sroa.4.i, i64 16, i1 false), !noalias !35127
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016.i.sroa.4.i)
  %.not37.i = icmp eq i64 %.sroa.0.i.i.sroa.0.0.copyload.i, -2
  br i1 %.not37.i, label %.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.715.i, i64 16, i1 false), !noalias !35031
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  %i.iu = load ptr, ptr %i.by, align 8, !noalias !35032, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i, label %._crit_edge.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3w_11VacantEntryB1D_jE12insert_entry0ECsl8pJiQOn4hA_9coreutils.exit

_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3w_11VacantEntryB1D_jE12insert_entry0ECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.n, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i, %.loopexit.i
  %.sroa.12.1 = phi i64 [ %.sink.i44.i, %bb.n ], [ %.sroa.510.0.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.510.0.i.i, %.loopexit.i ]
  %.sroa.7.1 = phi i64 [ %.sink47.i43.i, %bb.n ], [ %spec.select.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %spec.select.i.i, %.loopexit.i ]
  %.sroa.0.1 = phi ptr [ %.sink48.i42.i, %bb.n ], [ %spec.select39.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %spec.select39.i.i, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.7.i)
  br label %bb.ao

bb.al:                                            ; preds = %bb.a
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !12, !noundef !12 ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.ix = tail call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 7 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.am, label %_RINvMs8_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit, !prof !48

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 368) #52
  unreachable

_RINvMs8_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.al
  store ptr null, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 362 ; 3 uses
  store i16 0, ptr %i.iz, align 2
  store ptr %i.ix, ptr %i.iw, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i64 0, ptr %i.ja, align 8
  %i.jb = load i16, ptr %i.iz, align 2, !noalias !35128, !noundef !12 ; 3 uses
  %i.jc = icmp ult i16 %i.jb, 11
  br i1 %i.jc, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjNtB19_4LeafE16push_with_handleCsl8pJiQOn4hA_9coreutils.exit, label %bb.an, !prof !5

end_hunk_15
begin_hunk_16_@_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapReNtNtB7_7set_val9SetValZSTE6insertCsl8pJiQOn4hA_9coreutils:bb.a
  %spec.select.i.i.i.i.i = select i1 %i.o, i64 %i.p, i64 %i.n
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  switch i8 %i.q, label %bb.e [
    i8 -1, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.d
  ]

bb.e:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i._crit_edge: ; preds = %bb.d, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.c
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.8.0.i.i.i77, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 12 uses
  %i.r = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 192
  %i.t = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.sroa.4.0.i.ph.i.i
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35244, !nonnull !12, !noundef !12
  %i.w = add i64 %.sroa.3.0.i.i, -1
  br label %bb.c

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 186 ; 3 uses
  %i.y = icmp ult i16 %i.e, 11
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 5
  br i1 %i.z, label %bb.n, label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i.i.not = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.f
  br i1 %.not.i.i.i.i.not, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = sub nuw nsw i64 %i.f, %.sroa.4.0.i.ph.i.i
  %i.ad = shl nuw nsw i64 %i.ac, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !35252, !noalias !35255
  br label %bb.s

bb.k:                                             ; preds = %bb.h
  switch i64 %.sroa.4.0.i.ph.i.i, label %bb.l [
    i64 5, label %bb.n
    i64 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ae = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.m ], [ true, %bb.l ], [ false, %bb.h ], [ false, %bb.k ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.m ], [ %i.ae, %bb.l ], [ %.sroa.4.0.i.ph.i.i, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 4 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.m ], [ 6, %bb.l ], [ 4, %bb.h ], [ %.sroa.4.0.i.ph.i.i, %bb.k ] ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35271
  %i.af = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35271 ; 7 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.o, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, !prof !48

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #52, !noalias !35271
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  store ptr null, ptr %i.ah, align 8, !noalias !35271
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 186
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35275)
  %i.aj = load i16, ptr %i.x, align 2, !noalias !35278, !noundef !12
  %i.ak = zext i16 %i.aj to i64
  %i.al = xor i64 %.sroa.013.0.i.i.i, -1
  %i.am = add nsw i64 %i.ak, %i.al                ; 4 uses
  %i.an = trunc i64 %i.am to i16
  store i16 %i.an, ptr %i.ai, align 2, !alias.scope !35275, !noalias !35271
  %i.ao = icmp ult i64 %i.am, 12
  br i1 %i.ao, label %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.p, !prof !10332

bb.p:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @959) #50, !noalias !35278
  unreachable

_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.013.0.i.i.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !35278, !noundef !12 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !noalias !35278, !nonnull !12, !noundef !12 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ap, i64 16
  %i.au = shl nuw nsw i64 %i.am, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(192) %i.af, ptr nonnull readonly align 8 %i.at, i64 %i.au, i1 false), !alias.scope !35279, !noalias !35271
  %i.av = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.av, ptr %i.x, align 2, !noalias !35278
  %spec.select38.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.af, ptr %.sroa.0.0.i.i ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select38.i.i.i, i64 186 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !35283, !noundef !12 ; 2 uses
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %.not.i14.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.ay
  br i1 %.not.i14.not.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %spec.select38.i.i.i, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = sub nuw nsw i64 %i.ay, %.sroa.510.0.i.i.i
  %i.bc = shl nuw nsw i64 %i.bb, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.az, i64 %i.bc, i1 false), !alias.scope !35288, !noalias !35291
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.bd = add i16 %i.ax, 1
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %spec.select38.i.i.i, i64 %.sroa.510.0.i.i.i ; 2 uses
  store ptr %1, ptr %i.be, align 8, !alias.scope !35288, !noalias !35293
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %2, ptr %i.bf, align 8, !alias.scope !35288, !noalias !35295
  store i16 %i.bd, ptr %i.aw, align 2, !noalias !35296
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !35297, !noundef !12 ; 2 uses
  %.not.i98.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i98.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %bb.j, %bb.i
  %i.bi = add nuw nsw i16 %i.e, 1
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  store ptr %1, ptr %i.bj, align 8, !alias.scope !35252, !noalias !35255
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %2, ptr %i.bk, align 8, !alias.scope !35252, !noalias !35300
  store i16 %i.bi, ptr %i.x, align 2, !noalias !35301
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.r
  %.sroa.13.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.bz, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.11.0.lcssa.i.i = phi ptr [ %i.af, %bb.r ], [ %i.ek, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 3 uses
  %.sroa.9.0.lcssa.i.i = phi i64 [ %i.ar, %bb.r ], [ %i.ew, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.as, %bb.r ], [ %i.ex, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35302)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35305
  %i.bl = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35305 ; 10 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.t, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, !prof !48

bb.t:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #52, !noalias !35305
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  store ptr null, ptr %i.bn, align 8, !noalias !35305
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 186 ; 2 uses
  store i16 0, ptr %i.bo, align 2, !noalias !35305
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 192
  store ptr %i.a, ptr %i.bp, align 8, !noalias !35305
  %i.bq = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !48

bb.u:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #50, !noalias !35305
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.bl, ptr %i.br, align 8, !noalias !35308
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i16 0, ptr %i.bs, align 8, !noalias !35313
  store ptr %i.bl, ptr %0, align 8, !alias.scope !35302, !noalias !35314
  store i64 %i.bq, ptr %i.b, align 8, !alias.scope !35302, !noalias !35314
  %i.bt = icmp eq i64 %.sroa.13.0.lcssa.i.i, %i.c
  br i1 %i.bt, label %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryReNtNtBb_7set_val9SetValZSTE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.v, !prof !5

bb.v:                                             ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @969, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @970) #50, !noalias !35315
  unreachable

_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryReNtNtBb_7set_val9SetValZSTE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  store i16 1, ptr %i.bo, align 2, !noalias !35315
  store ptr %.sroa.7.0.lcssa.i.i, ptr %i.bl, align 8, !noalias !35315
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.9.0.lcssa.i.i, ptr %i.bu, align 8, !noalias !35315
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 200
  store ptr %.sroa.11.0.lcssa.i.i, ptr %i.bv, align 8, !noalias !35315
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.11.0.lcssa.i.i, i64 176
  store ptr %i.bl, ptr %i.bw, align 8, !noalias !35315
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.lcssa.i.i, i64 184
  store i16 1, ptr %i.bx, align 8, !noalias !35315
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit

.lr.ph.i.i:                                       ; preds = %bb.r, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.by = phi ptr [ %i.iw, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.bh, %bb.r ] ; 15 uses
  %.sroa.0.0104.i.i = phi ptr [ %i.by, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %.sroa.0.0.i.i, %bb.r ]
  %.sroa.6.0103.i.i = phi i64 [ %i.bz, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ 0, %bb.r ]
  %.sroa.7.0102.i.i = phi ptr [ %i.ex, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.as, %bb.r ] ; 4 uses
  %.sroa.9.0101.i.i = phi i64 [ %i.ew, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.ar, %bb.r ] ; 4 uses
  %.sroa.11.0100.i.i = phi ptr [ %i.ek, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i ], [ %i.af, %bb.r ] ; 2 uses
  %i.bz = add i64 %.sroa.6.0103.i.i, 1            ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0104.i.i, i64 184
  %i.cb = load i16, ptr %i.ca, align 8, !noalias !35297 ; 4 uses
  %i.cc = zext i16 %i.cb to i64                   ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 186 ; 4 uses
  %i.ce = load i16, ptr %i.cd, align 2, !noalias !35318, !noundef !12 ; 5 uses
  %i.cf = icmp ult i16 %i.ce, 11
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cg = icmp ult i16 %i.cb, 5
  br i1 %i.cg, label %bb.ac, label %bb.z

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ch = zext nneg i16 %i.ce to i64              ; 4 uses
  %i.ci = add nuw nsw i16 %i.ce, 1
  %i.cj = add nuw nsw i64 %i.cc, 1                ; 6 uses
  %.not.i.i37.not.i.i = icmp ult i16 %i.cb, %i.ce
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.cc ; 5 uses
  br i1 %.not.i.i37.not.i.i, label %bb.y, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertReECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertReECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.x
  store ptr %.sroa.7.0102.i.i, ptr %i.ck, align 8, !alias.scope !35323, !noalias !35326
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.9.0101.i.i, ptr %i.cl, align 8, !alias.scope !35323, !noalias !35331
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.cj
  %i.cn = sub nsw i64 %i.ch, %i.cc                ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr nonnull align 8 %i.ck, i64 %i.co, i1 false), !alias.scope !35323, !noalias !35326
  store ptr %.sroa.7.0102.i.i, ptr %i.ck, align 8, !alias.scope !35323, !noalias !35326
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %.sroa.9.0101.i.i, ptr %i.cp, align 8, !alias.scope !35323, !noalias !35331
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 192 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cj
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = shl nuw nsw i64 %i.cn, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull align 8 %i.cr, i64 %i.cu, i1 false), !alias.scope !35332, !noalias !35335
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.y, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertReECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 192 ; 6 uses
  %i.cw = add nuw nsw i64 %i.ch, 2                ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cj
  store ptr %.sroa.11.0100.i.i, ptr %i.cx, align 8, !alias.scope !35332, !noalias !35335
  store i16 %i.ci, ptr %i.cd, align 2, !noalias !35335
  %i.cy = icmp samesign ult i64 %i.cj, %i.cw
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.preheader, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.cz = add nuw nsw i64 %i.ch, 1
  %i.da = sub nsw i64 %i.cz, %i.cc
  %i.db = sub nsw i64 %i.ch, %i.cc
  %xtraiter159 = and i64 %i.da, 3                 ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %i.cj, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter161 = phi i64 [ %prol.iter161.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.dd = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.df = load ptr, ptr %i.de, align 8, !noalias !35335, !nonnull !12, !noundef !12 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 176
  store ptr %i.by, ptr %i.dg, align 8, !noalias !35335
  %i.dh = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 184
  store i16 %i.dh, ptr %i.di, align 8, !noalias !35335
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !35336

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %i.dj = icmp ult i64 %i.db, 3
  br i1 %i.dj, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.dk = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.sroa.0.06.i.i.i.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !35335, !nonnull !12, !noundef !12 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 176
  store ptr %i.by, ptr %i.dn, align 8, !noalias !35335
  %i.do = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 184
  store i16 %i.do, ptr %i.dp, align 8, !noalias !35335
  %i.dq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dk
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !35335, !nonnull !12, !noundef !12 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  store ptr %i.by, ptr %i.dt, align 8, !noalias !35335
  %i.du = trunc nuw nsw i64 %i.dk to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 184
  store i16 %i.du, ptr %i.dv, align 8, !noalias !35335
  %i.dw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dq
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !35335, !nonnull !12, !noundef !12 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  store ptr %i.by, ptr %i.dz, align 8, !noalias !35335
  %i.ea = trunc nuw nsw i64 %i.dq to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 184
  store i16 %i.ea, ptr %i.eb, align 8, !noalias !35335
  %i.ec = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.ed = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dw
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !35335, !nonnull !12, !noundef !12 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 176
  store ptr %i.by, ptr %i.eg, align 8, !noalias !35335
  %i.eh = trunc nuw nsw i64 %i.dw to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 184
  store i16 %i.eh, ptr %i.ei, align 8, !noalias !35335
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.ec, %i.cw
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph.i.i.i.i.i

bb.z:                                             ; preds = %bb.w
  switch i16 %i.cb, label %bb.aa [
    i16 5, label %bb.ac
    i16 6, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ej = add nsw i64 %i.cc, -7
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.ab ], [ 6, %bb.aa ], [ 4, %bb.w ], [ 5, %bb.z ] ; 5 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.ej, %bb.aa ], [ %i.cc, %bb.w ], [ 5, %bb.z ] ; 7 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.ab ], [ true, %bb.aa ], [ false, %bb.w ], [ false, %bb.z ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35337
  %i.ek = tail call noalias noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35337 ; 13 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, !prof !48

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #52, !noalias !35337
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 176
  store ptr null, ptr %i.em, align 8, !noalias !35337
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 186 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35341)
  %i.eo = load i16, ptr %i.cd, align 2, !noalias !35344, !noundef !12
  %i.ep = zext i16 %i.eo to i64
  %i.eq = xor i64 %.sroa.06.0.i.i.i, -1
  %i.er = add nsw i64 %i.ep, %i.eq                ; 4 uses
  %i.es = trunc i64 %i.er to i16
  store i16 %i.es, ptr %i.en, align 2, !alias.scope !35341, !noalias !35337
  %i.et = icmp ult i64 %i.er, 12
  br i1 %i.et, label %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutReNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.ae, !prof !10332

bb.ae:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.er, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @959) #50, !noalias !35344
  unreachable

_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutReNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %.sroa.06.0.i.i.i ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !35344, !noundef !12 ; 2 uses
  %i.ex = load ptr, ptr %i.eu, align 8, !noalias !35344, !nonnull !12, !noundef !12 ; 2 uses
  %i.ey = getelementptr i8, ptr %i.eu, i64 16
  %i.ez = shl nuw nsw i64 %i.er, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(192) %i.ek, ptr nonnull readonly align 8 %i.ey, i64 %i.ez, i1 false), !alias.scope !35345, !noalias !35337
  %i.fa = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.fa, ptr %i.cd, align 2, !noalias !35344
  %i.fb = load i16, ptr %i.en, align 2, !noalias !35337, !noundef !12 ; 3 uses
  %i.fc = zext i16 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 5 uses
  %i.fe = icmp ult i16 %i.fb, 12
  br i1 %i.fe, label %bb.af, label %bb.ai, !prof !10332

bb.af:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutReNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 192 ; 6 uses
  %i.fg = zext i16 %i.ce to i64
  %i.fh = sub nuw nsw i64 %i.fg, %.sroa.06.0.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35352)
  %i.fi = icmp eq i64 %i.fh, %i.fd
  br i1 %i.fi, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #50, !noalias !35354
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.af
  %i.fj = getelementptr i8, ptr %i.by, i64 200
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %.sroa.06.0.i.i.i
  %i.fl = shl nuw nsw i64 %i.fd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ff, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fk, i64 %i.fl, i1 false), !alias.scope !35355, !noalias !35337
  %3 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35356)
  %xtraiter = and i64 %i.fd, 3                    ; 3 uses
  %i.fm = icmp ult i16 %i.fb, 3
  br i1 %i.fm, label %.epil.preheader, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.new

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.new: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %unroll_iter = and i64 %i.fd, 28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.new
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.new ], [ %i.gf, %bb.ah ] ; 6 uses
  %niter = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.new ], [ %niter.next.3, %bb.ah ]
  %i.fn = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.sroa.0.09.i.i.i.i.i.i
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !35356, !noalias !35359, !nonnull !12, !noundef !12 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 176
  store ptr %i.ek, ptr %i.fq, align 8, !noalias !35362
  %i.fr = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 184
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !35359
  %i.ft = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !35356, !noalias !35359, !nonnull !12, !noundef !12 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 176
  store ptr %i.ek, ptr %i.fw, align 8, !noalias !35362
  %i.fx = trunc nuw nsw i64 %i.fn to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 184
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !35359
  %i.fz = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ft
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !35356, !noalias !35359, !nonnull !12, !noundef !12 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 176
  store ptr %i.ek, ptr %i.gc, align 8, !noalias !35362
  %i.gd = trunc nuw nsw i64 %i.ft to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 184
  store i16 %i.gd, ptr %i.ge, align 8, !noalias !35359
  %i.gf = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fz
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !35356, !noalias !35359, !nonnull !12, !noundef !12 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 176
  store ptr %i.ek, ptr %i.gi, align 8, !noalias !35362
  %i.gj = trunc nuw nsw i64 %i.fz to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 184
  store i16 %i.gj, ptr %i.gk, align 8, !noalias !35359
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.unr-lcssa, label %bb.ah

bb.ai:                                            ; preds = %_RNvMsU_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutReNtNtB7_7set_val9SetValZSTNtB1m_8InternalENtB1m_2KVE15split_leaf_dataCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fd, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #50, !noalias !35337
  unreachable

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.gf, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.gl, %bb.aj ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.aj ]
  %i.gl = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !35356, !noalias !35359, !nonnull !12, !noundef !12 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  store ptr %i.ek, ptr %i.go, align 8, !noalias !35362
  %i.gp = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 184
  store i16 %i.gp, ptr %i.gq, align 8, !noalias !35359
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.aj, !llvm.loop !35363

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.aj, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i.unr-lcssa
  %spec.select.i36.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.ek, ptr %i.by ; 10 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 186 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !noalias !35364, !noundef !12 ; 2 uses
  %i.gt = zext i16 %i.gs to i64                   ; 5 uses
  %i.gu = add i16 %i.gs, 1
  %i.gv = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 6 uses
  %.not.i8.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.gt
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i36.i.i, i64 %.sroa.5.0.i.i.i ; 5 uses
  br i1 %.not.i8.not.i.i.i, label %bb.ak, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertReECsl8pJiQOn4hA_9coreutils.exit.i9.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertReECsl8pJiQOn4hA_9coreutils.exit.i9.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  store ptr %.sroa.7.0102.i.i, ptr %i.gw, align 8, !alias.scope !35368, !noalias !35371
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %.sroa.9.0101.i.i, ptr %i.gx, align 8, !alias.scope !35368, !noalias !35373
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i

bb.ak:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i36.i.i, i64 %i.gv
  %i.gz = sub nuw nsw i64 %i.gt, %.sroa.5.0.i.i.i ; 2 uses
  %i.ha = shl nuw nsw i64 %i.gz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gy, ptr nonnull align 8 %i.gw, i64 %i.ha, i1 false), !alias.scope !35368, !noalias !35371
  store ptr %.sroa.7.0102.i.i, ptr %i.gw, align 8, !alias.scope !35368, !noalias !35371
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %.sroa.9.0101.i.i, ptr %i.hb, align 8, !alias.scope !35368, !noalias !35373
  %i.hc = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 192 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gv
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.sroa.5.0.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = shl nuw nsw i64 %i.gz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %i.hd, i64 %i.hg, i1 false), !alias.scope !35374, !noalias !35377
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i: ; preds = %bb.ak, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertReECsl8pJiQOn4hA_9coreutils.exit.i9.i.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %spec.select.i36.i.i, i64 192 ; 6 uses
  %i.hi = add nuw nsw i64 %i.gt, 2                ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.gv
  store ptr %.sroa.11.0100.i.i, ptr %i.hj, align 8, !alias.scope !35374, !noalias !35377
  store i16 %i.gu, ptr %i.gr, align 2, !noalias !35377
  %i.hk = icmp samesign ult i64 %i.gv, %i.hi
  br i1 %i.hk, label %.lr.ph.i.i11.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i
  %i.hl = add nuw nsw i64 %i.gt, 1
  %i.hm = sub nsw i64 %i.hl, %.sroa.5.0.i.i.i
  %i.hn = sub nsw i64 %i.gt, %.sroa.5.0.i.i.i
  %xtraiter157 = and i64 %i.hm, 3                 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.ho, %.lr.ph.i.i11.i.i.i.prol ], [ %i.gv, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.ho = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.hp = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !35377, !nonnull !12, !noundef !12 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 176
  store ptr %spec.select.i36.i.i, ptr %i.hs, align 8, !noalias !35377
  %i.ht = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 184
  store i16 %i.ht, ptr %i.hu, align 8, !noalias !35377
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter157
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !35378

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.gv, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.ho, %.lr.ph.i.i11.i.i.i.prol ]
  %i.hv = icmp ult i64 %i.hn, 3
  br i1 %i.hv, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.io, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.hw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %.sroa.0.06.i.i12.i.i.i
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !35377, !nonnull !12, !noundef !12 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 176
  store ptr %spec.select.i36.i.i, ptr %i.hz, align 8, !noalias !35377
  %i.ia = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 184
  store i16 %i.ia, ptr %i.ib, align 8, !noalias !35377
  %i.ic = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hw
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !35377, !nonnull !12, !noundef !12 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 176
  store ptr %spec.select.i36.i.i, ptr %i.if, align 8, !noalias !35377
  %i.ig = trunc nuw nsw i64 %i.hw to i16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 184
  store i16 %i.ig, ptr %i.ih, align 8, !noalias !35377
  %i.ii = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.ic
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !35377, !nonnull !12, !noundef !12 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  store ptr %spec.select.i36.i.i, ptr %i.il, align 8, !noalias !35377
  %i.im = trunc nuw nsw i64 %i.ic to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 184
  store i16 %i.im, ptr %i.in, align 8, !noalias !35377
  %i.io = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.ip = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.ii
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !35377, !nonnull !12, !noundef !12 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 176
  store ptr %spec.select.i36.i.i, ptr %i.is, align 8, !noalias !35377
  %i.it = trunc nuw nsw i64 %i.ii to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 184
  store i16 %i.it, ptr %i.iu, align 8, !noalias !35377
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.io, %i.hi
  br i1 %exitcond.not.i.i13.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i11.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i10.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !35297, !noundef !12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35379
  %i.ix = tail call noalias noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35379 ; 6 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.al, label %_RINvMs8_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i, !prof !48

bb.al:                                            ; preds = %.thread
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 192) #52, !noalias !35379
  unreachable

_RINvMs8_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.thread
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 176
  store ptr null, ptr %i.iz, align 8, !noalias !35379
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 186
  store ptr %i.ix, ptr %0, align 8, !noalias !35379
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jb, align 8, !noalias !35379
  store i16 1, ptr %i.ja, align 2, !noalias !35380
  store ptr %1, ptr %i.ix, align 8, !noalias !35380
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i64 %2, ptr %i.jc, align 8, !noalias !35380
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit

_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.s, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryReNtNtBb_7set_val9SetValZSTE12insert_entry0Csl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeReNtNtB4_7set_val9SetValZSTEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvMs8_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !noalias !35379, !noundef !12
  %i.jf = add i64 %i.je, 1
  store i64 %i.jf, ptr %i.jd, align 8, !noalias !35379
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryReNtNtB9_7set_val9SetValZSTE12insert_entryCsl8pJiQOn4hA_9coreutils.exit
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #17 {
bb.a:
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %.loopexit113, %bb.v, %bb.w, %bb.p, %bb.y, %bb.n, %bb.m, %.loopexit118, %bb.e, %.loopexit, %bb.b
  %.sink = phi i8 [ 1, %.loopexit113 ], [ 1, %bb.v ], [ 1, %bb.w ], [ 1, %bb.p ], [ 1, %bb.y ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %.loopexit118 ], [ 1, %bb.e ], [ 0, %.loopexit ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void
end_hunk_16
begin_hunk_17_@_RNvXNtNtCs6JMX4GRUq9U_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_4skip4SkipINtNtB2_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2_6cloned6ClonedINtNtNtB6_5slice4iter4IterB2D_EEEENvCsh036I4OHgIr_6uucore16os_string_to_vecEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleINtNtB1W_5boxed3BoxDNtNtNtB4i_4mods5error6UErrorEL_EEENtNtNtB4_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !35676, !noalias !35677, !noundef !12 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not4.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.k

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35708)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !35711, !noalias !35677, !noundef !12 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.x = mul nuw i64 %i.v, 24
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !35712
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.j, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !35676, !noalias !35677
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35716)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !35719, !noalias !35722, !nonnull !12, !noundef !12
  br label %_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i, %bb.k
  %i.aa = phi ptr [ %i.ac, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i ], [ %i.t, %bb.k ] ; 4 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  store ptr %i.ac, ptr %i.s, align 8, !alias.scope !35719, !noalias !35722
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !35726, !nonnull !12, !noundef !12
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %.val5.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !35726, !noundef !12 ; 7 uses
  %i.af = icmp eq i64 %.val5.i.i.i.i.i.i, 0
  br i1 %i.af, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35727
  %i.ag = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !35727 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.n, label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val5.i.i.i.i.i.i) #52, !noalias !35739
  unreachable

_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %.val4.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val5.i.i.i.i.i.i, i1 false), !noalias !35740
  switch i64 %.val5.i.i.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i [
    i64 -1, label %bb.o
    i64 -2, label %_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  ]

bb.o:                                             ; preds = %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i
  %.val.i.i.i.i.i7.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !35663, !noalias !35741, !noundef !12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.val1.i.i.i.i.i8.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !35663, !noalias !35741 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i.i.i7.i.i.i.i, null
  br i1 %i.aj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i8.i.i.i.i) ]
  %i.ak = load ptr, ptr %.val1.i.i.i.i.i8.i.i.i.i, align 8, !invariant.load !12, !noalias !35748 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.ak(ptr noundef nonnull %.val.i.i.i.i.i7.i.i.i.i) #51, !noalias !35748, !inline_history !35751
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i8.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !63, !invariant.load !12, !noalias !35748 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i8.i.i.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !range !267, !invariant.load !12, !noalias !35748
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i7.i.i.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ap) #45, !noalias !35748
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.r, %bb.o
  store ptr %i.ag, ptr %i.c, align 8, !alias.scope !35663, !noalias !35741
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ai, align 8, !alias.scope !35663, !noalias !35741
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i: ; preds = %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.i.i.i.i
  %i.aq = inttoptr i64 %.val5.i.i.i.i.i.i to ptr
  br label %.loopexit

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35752
  %i.ar = add i64 %i.e, -1
  call fastcc void @_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chainINtB4_5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB1N_EEENtNtNtB8_6traits8iterator8Iterator3nthCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef %i.ar) #51, !noalias !35669
  %i.as = load i64, ptr %i.a, align 8, !range !13, !noalias !35752, !noundef !12 ; 2 uses
  switch i64 %i.as, label %bb.t [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit8.i.i.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  ]

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val5.i.i.i = load ptr, ptr %i.at, align 8, !noalias !35752, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !35753
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35752
  br label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit8.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35752
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit

.loopexit:                                        ; preds = %bb.d, %bb.l, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i
  %.sroa.10.0 = phi ptr [ null, %bb.l ], [ %i.aq, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i ], [ %.sroa.610.0.copyload.i.i.i.i.i, %bb.d ]
  %.sroa.8.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.ag, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i, %bb.d ]
  %.sroa.0.0 = phi i64 [ 0, %bb.l ], [ %.val5.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned14clone_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringuINtNtNtBa_3ops12control_flow11ControlFlowIB1O_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENCINvNtB6_3map12map_try_foldB14_INtNtBa_6result6ResultB2x_INtNtB2C_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuB1N_NvB4u_16os_string_to_vecNCINvXB6_INtB6_12GenericShuntINtB3d_3MapINtNtB6_4skip4SkipINtNtB6_5chain5ChainINtNtB2A_9into_iter8IntoIterB14_EINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEB5h_EIB3F_NtNtBa_7convert10InfallibleB44_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8U_12try_for_each4callB2x_B2s_NcNtB2s_5Break0E0B2s_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.thread.loopexit.split.loop.exit28.i.i.i.i.i.i ], [ %.sroa.08.0.copyload.i.i.i.i.i, %bb.d ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit
  ret void

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCs7tKScEop1B6_5alloc3vec3VechEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvXNtNtCs6JMX4GRUq9U_4core3ops12control_flowINtB2_11ControlFlowIBI_INtNtCs7tKScEop1B6_5alloc3vec3VechEEENtNtB4_9try_trait3Try6branchCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringINtNtBb_6result6ResultINtNtCs7tKScEop1B6_5alloc3vec3VechEINtNtB2H_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEuINtNtB9_12control_flow11ControlFlowIB4l_B2C_EENvB3B_16os_string_to_vecNCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_4skip4SkipINtNtBV_5chain5ChainINtNtB2F_9into_iter8IntoIterB1y_EINtNtBV_6cloned6ClonedINtNtNtBb_5slice4iter4IterB1y_EEEEB54_EIB2h_NtNtBb_7convert10InfallibleB3b_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4callB2C_B4T_NcNtB4T_5Break0E0B4T_E0E0INtB7_5FnMutTuB1y_EE8call_mutCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit8.i.i.i, %bb.i
  store i64 -1, ptr %0, align 8
  br label %bb.u
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBU_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3q_7RawArgsINtNtB29_7convert4FromB2O_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35758)
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = udiv exact i64 %i.c, 24                  ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %.not.i.i.i, label %bb.d, label %bb.b, !prof !328

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %2, %1
  br i1 %i.e, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterB13_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3H_7RawArgsINtNtB2p_7convert4FromB34_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35761
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.c, i64 noundef range(i64 1, 9) 8) #45, !noalias !35761 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %.preheader.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c) #52, !noalias !35758
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.c, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %i.h = phi i64 [ %i.p, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !35764, !noalias !35767, !nonnull !12, !noundef !12
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !35764, !noalias !35767, !noundef !12 ; 6 uses
  %i.l = icmp eq i64 %.val12.i.i.i.i.i.i, 0
  br i1 %i.l, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35781
  %i.m = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !35781 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i) #52, !noalias !35798
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %.val11.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val12.i.i.i.i.i.i, i1 false), !noalias !35799
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.g, %.preheader.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %bb.g ], [ inttoptr (i64 1 to ptr), %.preheader.i.i.i ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 3 uses
  store i64 %.val12.i.i.i.i.i.i, ptr %i.o, align 8, !noalias !35800
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !35800
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !35800
  %i.p = add i64 %i.h, 1                          ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.d
  br i1 %i.q, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterB13_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3H_7RawArgsINtNtB2p_7convert4FromB34_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2p_5slice4iter4IterB13_ENCNvXs_CsczSSEuChxEj_8clap_lexNtB3H_7RawArgsINtNtB2p_7convert4FromB34_E4from0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.b
  %.sroa.4.0.i13.i = phi i64 [ 0, %bb.b ], [ %i.d, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i12.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.b ], [ %i.f, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringBV_uNCNvXs_CsczSSEuChxEj_8clap_lexNtB1O_7RawArgsINtNtBa_7convert4FromINtNtNtBa_5slice4iter4IterBV_EE4from0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB4q_3VecBV_E14extend_trustedINtB4_3MapB2K_B1H_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  store i64 %.sroa.4.0.i13.i, ptr %0, align 8, !alias.scope !35758
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i12.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !35758
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i13.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35758
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtB15_3ffi6os_str8OsStringENvYB11_INtNtB2e_7convert4FromRB46_E4fromEE9from_iterCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35808)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35811)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !35814, !noalias !35815
  %.promoted19.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !35814, !noalias !35815
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !35814, !noalias !35815 ; 3 uses
  %.promoted20.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !35814, !noalias !35815
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.716.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i.i, %bb.a ] ; 2 uses
  %.sroa.413.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i18.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i.i, %.sroa.716.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !35817, !noalias !35815
  br i1 %i.g, label %select.unfold.i.i.i, label %.loopexit.i

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  %.not.i5.i.i.i = icmp eq ptr %.sroa.413.0.copyload, null
  %i.i = icmp eq ptr %.sroa.413.0.copyload, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !35820, !noalias !35815
  %i.k = getelementptr i8, ptr %.sroa.413.0.copyload, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !35825, !nonnull !12, !noundef !12 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.413.0.copyload, i64 16
  %.val4.i.i.i = load i64, ptr %i.l, align 8, !noalias !35825, !noundef !12
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val4.i.i.i ; 2 uses
  store ptr %.val.i.i.i, ptr %i.c, align 8, !alias.scope !35814, !noalias !35815
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !35814, !noalias !35815
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !35826, !noalias !35815, !noundef !12 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i.i, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !35829, !noalias !35815, !nonnull !12, !noundef !12
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i.i, ptr %i.n, align 8, !alias.scope !35826, !noalias !35815
  br i1 %i.r, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %.loopexit.i

.loopexit.i:                                      ; preds = %.sink.split.i.i.i.i, %.sink.split.i8.i.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.h, %.sink.split.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i, %.sink.split.i.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !35834, !noalias !35815, !nonnull !12, !noundef !12 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #45, !noalias !35835, !inline_history !35836 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !35834, !noalias !35815, !noundef !12
  %i.x = add i64 %i.w, -1                         ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !35834, !noalias !35815
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !35837, !nonnull !12, !noundef !12
  %i.z = getelementptr i8, ptr %i.u, i64 16
  %.val2.i = load i64, ptr %i.z, align 8, !noalias !35837, !noundef !12 ; 7 uses
  %i.aa = icmp eq i64 %.val2.i, 0
  br i1 %i.aa, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22, label %bb.e

bb.e:                                             ; preds = %.loopexit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35838
  %i.ab = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !35838 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i) #52, !noalias !35848
  unreachable

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !35849
  %.not = icmp eq i64 %.val2.i, -1
  br i1 %.not, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22: ; preds = %.loopexit.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit
  %.sroa.7.028 = phi ptr [ %i.ab, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit ], [ inttoptr (i64 1 to ptr), %.loopexit.i ]
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1) ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 4) ; 3 uses
  %i.ae = mul i64 %..i, 24                        ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.ad, 384307168202282325
  br i1 %or.cond.i.i, label %bb.i, label %bb.g, !prof !328

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !35850
  %i.ag = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 9) 8) #45, !noalias !35850 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit

bb.i:                                             ; preds = %bb.h, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.h ], [ 0, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENvYNtNtB2f_4path7PathBufINtNtBb_7convert4FromRB29_E4fromENtNtNtB9_6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.thread22 ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ae) #52
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.h, %bb.g
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.g ], [ %i.ag, %bb.h ] ; 5 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.g ], [ %..i, %bb.h ] ; 2 uses
  %i.ai = icmp ule i64 %..i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %.val2.i, ptr %.sroa.10.0.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 8
  store ptr %.sroa.7.028, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i, i64 16
  store i64 %.val2.i, ptr %.sroa.511.0..sroa_idx, align 8
  store i64 %.sroa.4.0.i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.817.0.copyload = load ptr, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35856)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit
  %i.aj = phi ptr [ %i.bo, %bb.m ], [ %.sroa.10.0.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %i.ak = phi i64 [ %i.bq, %bb.m ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.al = phi i64 [ %i.be, %bb.m ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ]
  %spec.select.i9.i.i.i32.i.i = phi ptr [ %spec.select.i9.i.i.i31.i.i, %bb.m ], [ %.sroa.817.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.am = phi ptr [ %i.bb, %bb.m ], [ %.sroa.716.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.an = phi ptr [ %i.bc, %bb.m ], [ %.sroa.413.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %.val.i.i.i24.i.i = phi ptr [ %.val.i.i.i21.i.i, %bb.m ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %.not.i.i.i.i.i5.i = icmp eq ptr %.val.i.i.i24.i.i, null
  %i.ao = icmp eq ptr %.val.i.i.i24.i.i, %i.am
  %or.cond.i6.i = select i1 %.not.i.i.i.i.i5.i, i1 true, i1 %i.ao
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.i.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.j
  %.not.i5.i.i.i.i.i36 = icmp eq ptr %i.an, null
  %i.ap = icmp eq ptr %i.an, %i.f
  %or.cond.i.i.i.i.i.i37 = select i1 %.not.i5.i.i.i.i.i36, i1 true, i1 %i.ap
  br i1 %or.cond.i.i.i.i.i.i37, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.aq = icmp eq ptr %i.as, %i.f
  br i1 %i.aq, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ar = phi ptr [ %i.as, %select.unfold.i.i.i.i.i ], [ %i.an, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !35859, !noundef !12 ; 2 uses
  %i.au = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.au, label %select.unfold.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i.i.i.le73 = load ptr, ptr %i.av, align 8, !noalias !35859, !nonnull !12, !noundef !12
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa31 = phi ptr [ %i.an, %select.unfold.i.i.i.i.i.preheader ], [ %i.as, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.am, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le73, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i32.i.i, null
  %i.aw = icmp eq ptr %spec.select.i9.i.i.i32.i.i, %.sroa.9.0.copyload
  %i.ax = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i32.i.i, i64 32
  %or.cond47.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.aw
  br i1 %or.cond47.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtBV_3ffi6os_str8OsStringENvYBR_INtNtB1V_7convert4FromRB3N_E4fromEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit, label %.loopexit.i.i.i
end_hunk_17
