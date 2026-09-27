Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvMsz_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8IntoIteryjE10dying_nextCsl8pJiQOn4hA_9coreutils:bb.a
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 192
  %i.aq = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !35547, !nonnull !12, !noundef !12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !35519

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !35543, !noalias !35544
  br label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 192
  %.sroa.013.0.i.i = load ptr, ptr %i.as, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 192
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 192
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 192
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 192
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 192
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 192
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !35547, !nonnull !12, !noundef !12
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 192
  %i.ba = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !35547, !nonnull !12, !noundef !12 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %._crit_edge.i.i, %._RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit_crit_edge.i
  %.sroa.59.0.copyload.i.i = phi i64 [ %.sroa.59.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.48.0.copyload.i.i = phi i64 [ %.sroa.48.0.copyload.i.pre.i, %._RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit_crit_edge.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.sroa.07.0.copyload.i.i = phi ptr [ %i.ak, %._RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit_crit_edge.i ], [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35548)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 186
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !35549, !noundef !12
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i, %bb.j
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.by, %bb.j ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.039.i.i.i.i, align 8, !noalias !35550, !noundef !12 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingyjE10init_frontCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 200
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.i, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.i ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.i ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !35551, !nonnull !12, !noundef !12 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 192 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !35533

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.i
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.i ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.i ], [ %i.bn, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.i ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %_RINvMsb_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 192
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 192
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 192
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 192
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 192
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 192
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !35551, !nonnull !12, !noundef !12
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 192
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !35551, !nonnull !12, !noundef !12 ; 2 uses
  %i.bw = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 192
  br i1 %i.bw, label %_RINvMsb_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit, label %.new

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.038.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 184
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !35550 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 192, i64 288
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #45, !noalias !35552
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 186
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !35549, !noundef !12
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i33.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i, 0
  %..i34.i.i.i.i = select i1 %.not.i33.i.i.i.i, i64 192, i64 288
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i, i64 noundef %..i34.i.i.i.i, i64 noundef 8) #45, !noalias !35552
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @739) #50, !noalias !35553
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #50, !noalias !35554
  unreachable

_RINvMsb_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.prol.loopexit, %.new, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %bb.h ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %bb.h ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ]
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !35545, !noalias !35546
  store i64 0, ptr %i.al, align 8, !alias.scope !35545, !noalias !35546
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !35545, !noalias !35546
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvMsb_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyjE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit, %_RINvMsb_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingyjE16deallocating_endNtNtBc_5alloc6GlobalECsl8pJiQOn4hA_9coreutils.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 129) %0, i64 noundef range(i64 0, 1401) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, label %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit

_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  br label %bb.c

_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.c = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #45 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #52
  unreachable

bb.c:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit
  %.sroa.0.0.i4 = phi ptr [ %i.b, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit.thread ], [ %i.c, %_RNvMNtCs7tKScEop1B6_5alloc5allocNtB2_6Global18alloc_impl_runtime.exit ]
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvNtNtCs3RYoXg2VPb3_6memchr6memmem8searcher19searcher_kind_empty(ptr noalias nofree readonly align 32 captures(none) %0, ptr noalias nofree readnone align 4 captures(none) %1, ptr noalias nofree nonnull readonly captures(none) %2, i64 range(i64 0, -9223372036854775808) %3, ptr noalias nofree nonnull readonly captures(none) %4, i64 range(i64 0, -9223372036854775808) %5) unnamed_addr #18 {
bb.a:
  ret { i64, i64 } { i64 1, i64 0 }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #18 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXCs2zCsf9UsIrc_7uu_exprNtB2_9ExprErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXCs6EuPS8vUgp3_9uu_mktempNtB2_11MkTempErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usage(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !84, !noundef !12
  %i.b = icmp eq i64 %i.a, -9223372036854775802
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXCsgDnTRHLCOsi_7uu_joinNtB2_9JoinErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 1, 3) i32 @_RNvXCsgcf5BHVXlUt_7uu_sortNtB2_9SortErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4code(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !85, !noundef !12
  %i.b = icmp sgt i64 %i.a, -1
  %. = select i1 %i.b, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXCsgzkSwV7OBv7_7uu_headNtB2_9HeadErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXCsju1p4ygkx3l_5uu_lnNtB2_7LnErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvXNtCs2szWGFz6wmN_7uu_test5errorNtB2_10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4code(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtCs6BhVcHPqRq6_9num_prime9primalityNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB2_10LucasUtils6lucasmCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 -2305843009213693952, 2305843009213693952) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 14 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 13 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 9 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 -1, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  call fastcc void @_RNvXs1b_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB8_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemRBR_E3rem(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.am = icmp sgt i64 %2, -1
  br i1 %i.am, label %bb.c, label %_RNvXsa_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_15ModularUnaryOpsRBV_E4negm.exit

_RNvXsa_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_15ModularUnaryOpsRBV_E4negm.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.an = sub nsw i64 0, %2
  store i64 -1, ptr %i.ah, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %i.an, ptr %.sroa.6113.0..sroa_idx, align 8
  call fastcc void @_RNvXs_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB8_15ModularUnaryOps4negm(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_RNvXsa_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_15ModularUnaryOpsRBV_E4negm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) @899, i64 24, i1 false)
  call fastcc void @_RNvXs1b_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB8_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemRBR_E3rem(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false)
  call fastcc void @_RNvXs1b_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB8_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemRBR_E3rem(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ao = call noundef i64 @_RNvXNtCs6BhVcHPqRq6_9num_prime7integerNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtB4_6traits7BitTest4bits(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #45 ; 2 uses
  %.not6114 = icmp eq i64 %i.ao, 0
  br i1 %.not6114, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.bg = icmp ne i64 %2, 0
  %..i.i33 = zext i1 %i.bg to i64
  store i64 -1, ptr %i.ai, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %..i.i33, ptr %.sroa.5109.0..sroa_idx, align 8
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %2, ptr %.sroa.6110.0..sroa_idx, align 8
  call fastcc void @_RNvXs1b_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB8_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemRBR_E3rem(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ae, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_0
begin_hunk_1_@_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCsl8pJiQOn4hA_9coreutils:bb.a
  store i8 3, ptr %i.a, align 8, !alias.scope !39267, !noalias !39266
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #45, !noalias !39268
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39266
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !39264, !noalias !39265
  br label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils.exit

_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtB4_12SpecWriteFmt14spec_write_fmtCsl8pJiQOn4hA_9coreutils.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull %1, ptr noundef nonnull %2) #45, !inline_history !39269
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtBb_3fmt5Write10write_charCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !39279
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !39279
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !39279
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !39279
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !39279
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !39279
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !39279
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !39279
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !39279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !39279
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39280)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !39280, !noalias !39281, !nonnull !12, !align !23, !noundef !12
  %i.ad = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #45, !noalias !39280 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils.exit

bb.h:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !39280, !noalias !39281, !noundef !12 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39282
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 1, label %bb.k
  ], !prof !22

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !39283, !noalias !39282
  store i8 3, ptr %i.a, align 8, !alias.scope !39283, !noalias !39282
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #45, !noalias !39284
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39282
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !39280, !noalias !39281
  br label %_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils.exit

_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB8_3fmt5Write9write_strCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtBb_3fmt5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtB4_12SpecWriteFmt14spec_write_fmtCsl8pJiQOn4hA_9coreutils.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @325, ptr noundef nonnull %1, ptr noundef nonnull %2) #45, !inline_history !39285
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0INtNtNtBK_3ops8function6FnOnceTlQNtNtBK_3fmt9FormatterEE9call_onceCsl8pJiQOn4hA_9coreutils(i32 noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39292
  call void @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix12error_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %0) #45, !noalias !39292
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noalias !39292, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noalias !39292, !noundef !12
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !39293)
  call void @llvm.experimental.noalias.scope.decl(metadata !39294)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !range !19, !alias.scope !39295, !noalias !39292, !noundef !12 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Csl8pJiQOn4hA_9coreutils.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !39295
  br label %_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Csl8pJiQOn4hA_9coreutils.exit

_RNCNvNvMNtNtCs2vKOLqTMYjT_3std2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error17from_raw_os_error9FUNCTIONS0Csl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39292
  ret i1 %i.f
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal noalias noundef nonnull align 8 ptr @_RNvYNCNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtBa_9ValuesRefNtNtCs7tKScEop1B6_5alloc6string6StringENtNtCs6JMX4GRUq9U_4core7default7Default7default0INtNtNtB27_3ops8function6FnOnceTRNtNtNtBg_4util9any_value8AnyValueEE9call_onceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810) #50
  unreachable
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal noalias noundef nonnull align 8 ptr @_RNvYNCNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtBa_9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core7default7Default7default0INtNtNtB2d_3ops8function6FnOnceTRNtNtNtBg_4util9any_value8AnyValueEE9call_onceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810) #50
  unreachable
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal noalias noundef nonnull align 8 ptr @_RNvYNCNvXsc_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesINtBa_9ValuesRefyENtNtCs6JMX4GRUq9U_4core7default7Default7default0INtNtNtB1w_3ops8function6FnOnceTRNtNtNtBg_4util9any_value8AnyValueEE9call_onceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #11 {
bb.a:
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @810) #50
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !53, !alias.scope !39298, !noundef !12
  %i.b = icmp eq i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @1043, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1480, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1481, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCs2eSwMnb0Awh_11uu_unexpand10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs2zCsf9UsIrc_7uu_expr9ExprErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs2zCsf9UsIrc_7uu_expr9ExprErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs2zCsf9UsIrc_7uu_expr9ExprErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs2zCsf9UsIrc_7uu_expr9ExprErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs2zCsf9UsIrc_7uu_expr9ExprErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1482, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1483, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCs58W9blM4WiW_5uu_rm7RmErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1484, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1485, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCs7ggdWxGWrR_9uu_expand10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsgDnTRHLCOsi_7uu_join9JoinErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtCsgDnTRHLCOsi_7uu_join9JoinErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !39301, !noundef !12
  %.not.i = icmp eq i64 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.b, ptr null
  %i.c = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @1043, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgDnTRHLCOsi_7uu_join9JoinErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgDnTRHLCOsi_7uu_join9JoinErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1486, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCsgDnTRHLCOsi_7uu_join9JoinErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsgcf5BHVXlUt_7uu_sort9SortErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsgcf5BHVXlUt_7uu_sort9SortErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsgcf5BHVXlUt_7uu_sort9SortErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgcf5BHVXlUt_7uu_sort9SortErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgcf5BHVXlUt_7uu_sort9SortErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1487, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCsgcf5BHVXlUt_7uu_sort9SortErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsgn1j6LDYpaP_5uu_cp7CpErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtCsgn1j6LDYpaP_5uu_cp7CpErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsj_Csgn1j6LDYpaP_5uu_cpNtB5_7CpErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) #45
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgn1j6LDYpaP_5uu_cp7CpErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgn1j6LDYpaP_5uu_cp7CpErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1488, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCsgn1j6LDYpaP_5uu_cp7CpErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsgzkSwV7OBv7_7uu_head9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtCsgzkSwV7OBv7_7uu_head9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !86, !alias.scope !39304, !noundef !12 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RNvXs2_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source.exit
    i64 1, label %_RNvXs2_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source.exit
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %_RNvXs2_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs2_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs2_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source.exit

_RNvXs2_CsgzkSwV7OBv7_7uu_headNtB5_9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d
  %.sroa.6.0.i = phi ptr [ undef, %bb.a ], [ undef, %bb.a ], [ @1089, %bb.c ], [ @1091, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.6.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsgzkSwV7OBv7_7uu_head9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsgzkSwV7OBv7_7uu_head9HeadErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1489, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCsgzkSwV7OBv7_7uu_head9HeadErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsju1p4ygkx3l_5uu_ln7LnErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtCsju1p4ygkx3l_5uu_ln7LnErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #28 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !88, !alias.scope !39307, !noundef !12 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775806
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775807
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.c, ptr %i.d, ptr null
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @1264, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsju1p4ygkx3l_5uu_ln7LnErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsju1p4ygkx3l_5uu_ln7LnErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1490, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtCsju1p4ygkx3l_5uu_ln7LnErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2szWGFz6wmN_7uu_test5error10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2szWGFz6wmN_7uu_test5error10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2szWGFz6wmN_7uu_test5error10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2szWGFz6wmN_7uu_test5error10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2szWGFz6wmN_7uu_test5error10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1491, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs2szWGFz6wmN_7uu_test5error10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read10read_exactCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RINvNtNtCs7tKScEop1B6_5alloc2io4read18default_read_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2) #45
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read14read_buf_exactCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39318)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !alias.scope !39318, !noalias !39319, !noundef !12
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !39318, !noalias !39319, !noundef !12 ; 2 uses
  %.not8.i = icmp eq i64 %i.d, %i.e
  br i1 %.not8.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #45 ; 10 uses
  %.not2.i = icmp eq ptr %i.h, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split6.i
    i64 1, label %.split5.i
  ], !prof !22

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !12, !noundef !12
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #45, !inline_history !39311
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit

.split6.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !32, !noundef !12
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit

.split5.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !32, !noundef !12
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !alias.scope !39318, !noalias !39319, !noundef !12 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split6.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39320
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39321
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i

bb.f:                                             ; preds = %.split5.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !39323, !noalias !39322
  store i8 3, ptr %i.a, align 8, !alias.scope !39323, !noalias !39322
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #45, !noalias !39324
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39322
  %.pre.i = load i64, ptr %i.c, align 8, !alias.scope !39318, !noalias !39319
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !39318, !noalias !39319, !noundef !12
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactNtNtCs2vKOLqTMYjT_3std2fs4FileECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.split.i, %.split6.i, %.split5.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split5.i ], [ @334, %bb.d ], [ %i.h, %.split6.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !89, !alias.scope !39327, !noundef !12
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @1043, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1492, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs44SRMMtlaHN_9uu_csplit12csplit_error11CsplitErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsl8pJiQOn4hA_9coreutils.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @113, ptr noundef nonnull %1, ptr noundef nonnull %2) #45, !inline_history !39328
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsbMXVmEvvZJf_5uu_dd9parseargs10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbMXVmEvvZJf_5uu_dd9parseargs10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbMXVmEvvZJf_5uu_dd9parseargs10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbMXVmEvvZJf_5uu_dd9parseargs10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbMXVmEvvZJf_5uu_dd9parseargs10ParseErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1493, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsbMXVmEvvZJf_5uu_dd9parseargs10ParseErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsbyqtxyC5WYI_9uu_numfmt6errors11NumfmtErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbyqtxyC5WYI_9uu_numfmt6errors11NumfmtErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsbyqtxyC5WYI_9uu_numfmt6errors11NumfmtErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsbyqtxyC5WYI_9uu_numfmt6errors11NumfmtErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsbyqtxyC5WYI_9uu_numfmt6errors11NumfmtErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1494, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsbyqtxyC5WYI_9uu_numfmt6errors11NumfmtErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1495, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsdTU8hOCbdCr_8uu_touch5error10TouchErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1496, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCseE7g6nXQLt3_5uu_mv5error7MvErrorNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #30 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39331)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !39331, !nonnull !12, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !noalias !39331, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_RNvXs2_NtCsgNwXemyrBWj_12clap_builder5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !noalias !39331, !nonnull !12, !align !23, !noundef !12
  br label %_RNvXs2_NtCsgNwXemyrBWj_12clap_builder5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils.exit

_RNvXs2_NtCsgNwXemyrBWj_12clap_builder5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgNwXemyrBWj_12clap_builder5error5ErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1497, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCskTxFPE6q5z6_6uu_seq5error8SeqErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskTxFPE6q5z6_6uu_seq5error8SeqErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskTxFPE6q5z6_6uu_seq5error8SeqErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCskTxFPE6q5z6_6uu_seq5error8SeqErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCskTxFPE6q5z6_6uu_seq5error8SeqErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1501, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1502, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCslbrwWrVtb7E_5uu_tr9operation11BadSequenceNtNtNtCsh036I4OHgIr_6uucore4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39338
  store ptr %0, ptr %i.b, align 8, !noalias !39338
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !39338
  %i.d = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull %1, ptr noundef nonnull %2) #45
  %i.e = load ptr, ptr %i.c, align 8, !noalias !39338, !noundef !12 ; 5 uses
  %.not.i5 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i5, label %bb.g, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i5, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39339
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 1, label %bb.f
  ], !prof !22

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !39340, !noalias !39339
  store i8 3, ptr %i.a, align 8, !alias.scope !39340, !noalias !39339
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #45, !noalias !39341
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39339
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit

bb.g:                                             ; preds = %bb.b
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39338
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmtCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39348
  store ptr %0, ptr %i.b, align 8, !noalias !39348
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8, !noalias !39348
  %i.d = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @325, ptr noundef nonnull %1, ptr noundef nonnull %2) #45
  %i.e = load ptr, ptr %i.c, align 8, !noalias !39348, !noundef !12 ; 5 uses
  %.not.i5 = icmp eq ptr %i.e, null               ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i5, label %bb.g, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit, !prof !18

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i5, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39349
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 1, label %bb.f
  ], !prof !22

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ult ptr %i.e, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !39350, !noalias !39349
  store i8 3, ptr %i.a, align 8, !alias.scope !39350, !noalias !39349
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #45, !noalias !39351
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39349
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit

bb.g:                                             ; preds = %bb.b
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.0.0.i6 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39348
  ret ptr %.sroa.0.0.i6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs6JMX4GRUq9U_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs6JMX4GRUq9U_4core2io5error5ErrorNtNtB8_5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs6JMX4GRUq9U_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1503, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs6JMX4GRUq9U_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs6JMX4GRUq9U_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs6JMX4GRUq9U_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs6JMX4GRUq9U_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs6JMX4GRUq9U_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1504, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error11UUsageErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1505, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtB4_6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1506, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtB4_6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1507, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1508, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i32 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtNtB8_4mods5error6UError4codeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features6format11FormatErrorNtNtNtB8_4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8checksum13ChecksumErrorNtNtCs6JMX4GRUq9U_4core5error5Error11descriptionCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @1479, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8checksum13ChecksumErrorNtNtCs6JMX4GRUq9U_4core5error5Error5causeCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8checksum13ChecksumErrorNtNtCs6JMX4GRUq9U_4core5error5Error6sourceCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8checksum13ChecksumErrorNtNtCs6JMX4GRUq9U_4core5error5Error7provideCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #18 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8checksum13ChecksumErrorNtNtCs6JMX4GRUq9U_4core5error5Error7type_idCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #21 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1509, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtNtCsh036I4OHgIr_6uucore8features8checksum13ChecksumErrorNtNtNtB8_4mods5error6UError5usageCsl8pJiQOn4hA_9coreutils(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals19sigpipe_was_ignored() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 -1, 134) i32 @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals18enable_pipe_errors() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 -1, 134) i32 @_RNvCsh036I4OHgIr_6uucore28disable_rust_signal_handlers() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #31

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13get_exit_code() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #31

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph4name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs1_Cs2AkyTgTLZ1a_8uu_tsortNtB5_5Graph8add_edge(ptr noalias nofree noundef align 8 dereferenceable(144), i64 noundef range(i64 1, 0), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns12get_patterns(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter10new_writer(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter7writeln(ptr noalias nofree noundef align 8 dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter12finish_split(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs2_Cs44SRMMtlaHN_9uu_csplitNtB5_11SplitWriter17delete_all_splits(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvCs4dRV7rdzHEF_18uu_checksum_common13checksum_main(i8 noundef range(i8 -1, 17), i64 noundef range(i64 0, 2), i64, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), i16) unnamed_addr #0

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #34

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_Cs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrENtB4_8Shufable15partial_shuffle(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvCs84qwSrTN5pO_7uu_shuf18handle_write_error(ptr noundef nonnull) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_Cs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrENtB4_8Shufable6choose(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXCs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRShENtB2_8Shufable15partial_shuffle(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXCs84qwSrTN5pO_7uu_shufINtNtCs7tKScEop1B6_5alloc3vec3VecRShENtB2_8Shufable6choose(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_Cs84qwSrTN5pO_7uu_shufINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyENtB5_8Shufable15partial_shuffle(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs0_Cs84qwSrTN5pO_7uu_shufINtNtNtCs6JMX4GRUq9U_4core3ops5range14RangeInclusiveyENtB5_8Shufable6choose(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs8skwaAV2P9V_7uu_true6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command10print_help(ptr noalias nofree noundef align 8 dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvMs3_Cs9i6ZclbYTs9_5uu_nlNtB5_16SectionDelimiter5parse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #35

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #36

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvCsbJaOQWopTg7_7uu_echo7is_flag(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef dereferenceable(2)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXs8_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_9StdinLockNtNtNtCs7tKScEop1B6_5alloc2io8buf_read7BufRead10read_until(ptr noalias nofree noundef align 8 dereferenceable(16), i8 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #35

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsbyqtxyC5WYI_9uu_numfmt6errorsNtB5_11NumfmtErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, ptr } @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write18write_all_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvCsbyqtxyC5WYI_9uu_numfmt13is_scientific(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

end_hunk_1
