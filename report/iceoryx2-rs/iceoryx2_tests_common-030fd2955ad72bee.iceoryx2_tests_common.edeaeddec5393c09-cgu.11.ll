Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_tests_common-030fd2955ad72bee.iceoryx2_tests_common.edeaeddec5393c09-cgu.11?download=true
inline.NumInlined: 523
inline.NumDeleted: 297
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  %i.an = icmp ult i64 %.sroa.15.1, 8
  br i1 %i.an, label %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i, label %.lr.ph.i.i2.i.i.i

.lr.ph.i.i2.i.i.i:                                ; preds = %.lr.ph.i.i2.i.i.i.prol.loopexit, %.lr.ph.i.i2.i.i.i
  %.sroa.013.017.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.7, %.lr.ph.i.i2.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.unr, %.lr.ph.i.i2.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i2.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.unr, %.lr.ph.i.i2.i.i.i.prol.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i, i64 1248
  %.sroa.013.0.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i, i64 1248
  %.sroa.013.0.i.i.i.i.i.1 = load ptr, ptr %i.ap, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.1, i64 1248
  %.sroa.013.0.i.i.i.i.i.2 = load ptr, ptr %i.aq, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.2, i64 1248
  %.sroa.013.0.i.i.i.i.i.3 = load ptr, ptr %i.ar, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.3, i64 1248
  %.sroa.013.0.i.i.i.i.i.4 = load ptr, ptr %i.as, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.4, i64 1248
  %.sroa.013.0.i.i.i.i.i.5 = load ptr, ptr %i.at, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.5, i64 1248
  %.sroa.013.0.i.i.i.i.i.6 = load ptr, ptr %i.au, align 8, !noalias !945, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.6, i64 1248
  %i.aw = add i64 %.sroa.011.016.i.i.i.i.i, -8    ; 2 uses
  %.sroa.013.0.i.i.i.i.i.7 = load ptr, ptr %i.av, align 8, !noalias !945, !nonnull !4, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i, label %.lr.ph.i.i2.i.i.i

_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i: ; preds = %.lr.ph.i.i2.i.i.i.prol.loopexit, %.lr.ph.i.i2.i.i.i, %bb.d, %bb.e
  %.sroa.59.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.15.1, %bb.d ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i2.i.i.i ], [ 0, %.lr.ph.i.i2.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i = phi i64 [ %.sroa.10.1, %bb.d ], [ 0, %bb.e ], [ 0, %.lr.ph.i.i2.i.i.i ], [ 0, %.lr.ph.i.i2.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.6.1, %bb.d ], [ %i.aj, %bb.e ], [ %.sroa.013.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i2.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.7, %.lr.ph.i.i2.i.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i, i64 1242
  %i.az = load i16, ptr %i.ay, align 2, !noalias !946, !noundef !4
  %i.ba = zext i16 %i.az to i64
  %i.bb = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i, %i.ba
  br i1 %i.bb, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i, %bb.h
  %.sroa.0.039.i.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.h ], [ %.sroa.07.0.copyload.i.i.i.i.i, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i ] ; 4 uses
  %.sroa.5.038.i.i.i.i.i.i.i = phi i64 [ %i.bv, %bb.h ], [ %.sroa.48.0.copyload.i.i.i.i.i, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i.i.i.i, i64 1232
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !947, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.h
  %i.be = zext i16 %i.bx to i64
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i
  %.sroa.8.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i.i.i.i, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i ], [ %i.be, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i.i.i.i, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i ], [ %i.bv, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i.i, %_RNvMsc_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE10init_frontCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i ], [ %i.bd, %._crit_edge.loopexit.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i.i.i.i, 0
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bh = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i, i64 1256
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %.sroa.8.0.lcssa.i.i.i.i.i.i.i ; 2 uses
  %xtraiter106 = and i64 %.sroa.5.0.lcssa.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bk, %.prol.preheader ], [ %i.bj, %bb.g ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i.i.i.i, %bb.g ]
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !948, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 1248 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !941

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bj, %bb.g ], [ %i.bk, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i.i.i.i, %bb.g ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bl = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i.i.i.i, 8
  br i1 %i.bl, label %.loopexit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 1248
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bm, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 1248
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bn, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 1248
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bo, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 1248
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bp, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 1248
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bq, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 1248
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.br, align 8, !noalias !948, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 1248
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bs, align 8, !noalias !948, !nonnull !4, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 1248
  br i1 %i.bt, label %.loopexit.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bv = add i64 %.sroa.5.038.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i.i.i.i, i64 1240
  %i.bx = load i16, ptr %i.bw, align 8, !noalias !947 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 1248, i64 1344
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i.i.i.i, i64 noundef %..i.i.i.i.i.i.i.i, i64 noundef 8) #17, !noalias !949
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 1242
  %i.bz = load i16, ptr %i.by, align 2, !noalias !946, !noundef !4
  %i.ca = icmp ult i16 %i.bx, %i.bz
  br i1 %i.ca, label %._crit_edge.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i33.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.038.i.i.i.i.i.i.i, 0
  %..i34.i.i.i.i.i.i.i = select i1 %.not.i33.i.i.i.i.i.i.i, i64 1248, i64 1344
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039.i.i.i.i.i.i.i, i64 noundef %..i34.i.i.i.i.i.i.i, i64 noundef 8) #17, !noalias !949
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #18, !noalias !950
  unreachable

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.ph.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i.i, %bb.f ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.lcssa.i.i.i.i.i.i.i) ]
  %i.cb = icmp eq i64 %i.ai, 0
  br i1 %i.cb, label %.loopexit.i.i.i.i, label %bb.d

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8IntoIterNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEEECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a, %_RINvMsj_NtNtNtCsbqH9stoieM8_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECskqqG2IB5b71_21iceoryx2_tests_common.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNvMsT_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4 ; 6 uses
  %i.b = load i8, ptr %i.a, align 8, !range !12, !alias.scope !965, !noundef !4
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit
    i8 4, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs7PFeJTloU4p_4toml3map3MapINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedINtNtCsbqH9stoieM8_5alloc6borrow3CoweEEIB18_NtNtNtNtBG_2de6parser7devalue7DeValueEEECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #17, !inline_history !966
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !11, !alias.scope !967, !noundef !4
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #17
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !11, !alias.scope !968, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g) #17
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !11, !alias.scope !969, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #17
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7dearray7DeArrayECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #17, !inline_history !966
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.a, %bb.b, %bb.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(4104) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !974, !noundef !4 ; 4 uses
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.first_iter.i = icmp ult i64 %.val.i, 129
  br i1 %.first_iter.i, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %.lr.ph.i.us
  %.sroa.0.06.i.us = phi i64 [ %i.b, %.lr.ph.i.us ], [ %.val.i, %.lr.ph.preheader.i ]
  %i.b = add nsw i64 %.sroa.0.06.i.us, -1         ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.b
  tail call void @_RNvXs5_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB5_6ThreadNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #17
  %.not.i.us = icmp eq i64 %i.b, 0
  br i1 %.not.i.us, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.d = add i64 %.val.i, -1
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #18, !noalias !974
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %.lr.ph.i.us, %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !975
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2824) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !980, !noundef !4 ; 2 uses
  %.first_iter.i = icmp ult i64 %.val.i, 9
  br i1 %.first_iter.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i64 %.val.i, -1
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #18, !noalias !980
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !981
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute3key11FixedStringKj8_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(648) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !986, !noundef !4 ; 2 uses
  %.first_iter.i = icmp ult i64 %.val.i, 9
  br i1 %.first_iter.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute3key11FixedStringKj8_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.b = add i64 %.val.i, -1
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #18, !noalias !986
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute3key11FixedStringKj8_EINtB7_6VectorB1d_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !alias.scope !987
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1J_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_15UniqueServiceIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicbENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomicbENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #17
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomichENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsz_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomichENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #17
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs15_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB6_6AtomicjENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #17
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtB8_4sync6atomic6AtomicyENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsX_NtNtCs8Chj7Szqq0n_4core4sync6atomicINtB5_6AtomicyENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #17
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @97, ptr %i.d, align 8, !captures !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 33, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 4096     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.47.0..sroa_idx.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr @98, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.j, align 8
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsd_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.415.0..sroa_idx.i, align 8
  %i.k = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @99, ptr noundef nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.k, label %_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB2_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.l, 129
  br i1 %i.n, label %bb.f, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #18
  unreachable

bb.e:                                             ; preds = %bb.f
  %.pre.i = load i64, ptr %i.h, align 8           ; 5 uses
  %i.o = icmp ugt i64 %.pre.i, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = icmp ult i64 %.pre.i, 129
  br i1 %i.p, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit75.i, label %._crit_edge, !prof !989

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB5_6ThreadNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.430.0..sroa_idx.i, align 8
  %i.q = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @55, ptr noundef nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.q, label %_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB2_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.e

thread-pre-split.i:                               ; preds = %bb.i
  %.val.i74.pr.i = load i64, ptr %i.h, align 8    ; 3 uses
  %i.r = add nuw nsw i64 %i.t, 1
  %i.s = icmp ult i64 %.val.i74.pr.i, 129
  br i1 %i.s, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit75.i, label %._crit_edge, !prof !990

._crit_edge:                                      ; preds = %thread-pre-split.i, %.lr.ph.i
  %.val.i74.i.lcssa = phi i64 [ %.pre.i, %.lr.ph.i ], [ %.val.i74.pr.i, %thread-pre-split.i ]
  call void @_RNvNtNtCs8Chj7Szqq0n_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.val.i74.i.lcssa, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #18
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit75.i: ; preds = %.lr.ph.i, %thread-pre-split.i
  %i.t = phi i64 [ %i.r, %thread-pre-split.i ], [ 2, %.lr.ph.i ] ; 3 uses
  %.sroa.043.06.i9 = phi i64 [ %i.t, %thread-pre-split.i ], [ 1, %.lr.ph.i ] ; 3 uses
  %.val.i74.i8 = phi i64 [ %.val.i74.pr.i, %thread-pre-split.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.043.06.i9, %.val.i74.i8
  br i1 %i.u, label %bb.g, label %bb.h

._crit_edge.i:                                    ; preds = %bb.i, %bb.e, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !4, !nonnull !4
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 4) #20, !inline_history !988
  br label %_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB2_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.g:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit75.i
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.043.06.i9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.y, ptr %i.a, align 8
  store ptr @_RNvXs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6threadNtB5_6ThreadNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8
  %i.z = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @103, ptr noundef nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.z, label %_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB2_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.i

bb.h:                                             ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_EINtB7_6VectorB1d_E8as_sliceCskqqG2IB5b71_21iceoryx2_tests_common.exit75.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.043.06.i9, i64 noundef %.val.i74.i8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %exitcond.not.i = icmp eq i64 %i.t, %.pre.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %thread-pre-split.i

_RNvXNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB2_9StaticVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread6ThreadKj80_ENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.g, %bb.a, %bb.f, %._crit_edge.i
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ %i.x, %._crit_edge.i ], [ true, %bb.g ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB5_12StaticConfigNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.0.ptr15.4.i, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.m, i64 352, i1 false)
  %i.n = icmp eq i64 %i.c, 5
  br i1 %i.n, label %_RNvXsb_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.ptr15.5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.0.ptr15.5.i, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.o, i64 352, i1 false)
  %i.p = icmp eq i64 %i.c, 6
  br i1 %i.p, label %_RNvXsb_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.ptr15.6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.0.ptr15.6.i, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.q, i64 352, i1 false)
  %i.r = icmp eq i64 %i.c, 7
  br i1 %i.r, label %_RNvXsb_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.ptr15.7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2464
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.0.0.ptr15.7.i, ptr noundef nonnull readonly align 8 dereferenceable(352) %i.s, i64 352, i1 false)
  br label %_RNvXsb_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit

_RNvXsb_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1848) %i.w, ptr noundef nonnull align 8 dereferenceable(1848) %i.v, i64 1848, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.x, ptr noundef nonnull align 8 dereferenceable(264) %i.u, i64 264, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.z, ptr noundef nonnull align 8 dereferenceable(2816) %i.a, i64 2816, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3176
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocatorNtB5_15AllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs4_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocatorNtB5_15AllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs4_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocatorNtB5_15AllocationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.77, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #17
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storageNtB5_25DynamicStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !27, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs4_NtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storageNtB5_25DynamicStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs4_NtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storageNtB5_25DynamicStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.78, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #17
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !8, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.79, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #17
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsA_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB18_NtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMsz_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB18_NtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEE10dying_nextCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #17
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %.sroa.42.0.copyload
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.sroa.42.0.copyload
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs8Chj7Szqq0n_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 5) #17
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsN_NtNtCsg6ZEkMtNi4J_8iceoryx27service7builderINtB5_22BuilderWithServiceTypeNtNtB7_14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5040) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5040
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 14, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @143) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_CsfYvvZIldtH5_9inventoryNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseNtB4_10ErasedNode6submitCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_CsfYvvZIldtH5_9inventoryNtB5_8Registry6submit(ptr noundef nonnull align 8 @_RNvNvXCslCQgxiHprg6_19iceoryx2_bb_testingNtB4_8TestCaseNtCsfYvvZIldtH5_9inventory7Collect8registry8REGISTRY, ptr noundef nonnull align 8 %1) #17
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsePUspIjoSTD_10serde_core2deINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vec16StaticVecVisitorNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtB4_8Expected3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1024
  store ptr @104, ptr %i.b, align 8, !noalias !1024, !captures !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 39, ptr %i.d, align 8, !noalias !1024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1024
  store ptr @24, ptr %i.a, align 8, !noalias !1024
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1024
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8, !noalias !1024
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1024
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @112, ptr noundef nonnull %i.a) #17, !noalias !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1024
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1024, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !1024, !noundef !4
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i) #17
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1024
  ret i1 %i.j
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsePUspIjoSTD_10serde_core2deNtNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_ids_1__NtBG_14UniqueSystemIdNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix16unique_system_ids_1__NtBa_14UniqueSystemIdNtNtCsePUspIjoSTD_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1t_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #17
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB4_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB8_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtNtB2x_3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1029, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i = load i64, ptr %i.c, align 8, !alias.scope !1029, !noundef !4 ; 4 uses
  %i.d = add i64 %.val.i, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.d, %.val6.i
  %.not.i = icmp eq i64 %.val.i, 0
  %or.cond = or i1 %.not.i, %.first_iter.i
  br i1 %or.cond, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %.val6.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #18, !noalias !1029
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !1030
  %i.e = icmp ugt i64 %.val6.i, 576460752303423487
  br i1 %i.e, label %.split2, label %.split

.split2:                                          ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #18
  unreachable

.split:                                           ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtB9_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.i = shl nuw nsw i64 %.val6.i, 4
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noundef nonnull %i.g, i64 noundef 8, i64 noundef %i.i) #17
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB4_14PolymorphicVecNtNtB8_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1035, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i = load i64, ptr %i.c, align 8, !alias.scope !1035, !noundef !4 ; 4 uses
  %i.d = add i64 %.val.i, -1                      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.d, %.val6.i
  %.not.i = icmp eq i64 %.val.i, 0
  %or.cond = or i1 %.not.i, %.first_iter.i
  br i1 %or.cond, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %.val6.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #18, !noalias !1035
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !1036
  %i.e = icmp ugt i64 %.val6.i, 1152921504606846975
  br i1 %i.e, label %.split2, label %.split

.split2:                                          ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #18
  unreachable

.split:                                           ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorEINtB7_6VectorB1o_E5clearCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.i = shl nuw nsw i64 %.val6.i, 3
  tail call void @_RNvXs0_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB5_13HeapAllocatorNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator13BaseAllocator10deallocate(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noundef nonnull %i.g, i64 noundef 8, i64 noundef %i.i) #17
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hashNtB4_11ServiceHashNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB4_12StaticConfigNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(5032) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3184
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 12, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @152, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @155) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs5kzjBmDVxDj_21iceoryx2_bb_container18relocatable_optionINtB5_17RelocatableOptionNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config5event8DeadlineENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !19, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 4) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs5kzjBmDVxDj_21iceoryx2_bb_container18relocatable_optionINtB5_17RelocatableOptionjENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !19, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @165) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 4) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cellINtB5_10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmap10SlotMapKeyEENtNtB1c_3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @166) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1041
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 384307168202282326) %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24) #17, !noalias !1041
  %i.g = load i64, ptr %i.a, align 8, !range !14, !noalias !1041, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !30, !noalias !1041, !noundef !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !1041
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #25, !noalias !1041
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1041, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1041
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f
  %i.p = icmp eq i64 %i.j, 0
  br i1 %i.p, label %_RINvXNvMNtCsbqH9stoieM8_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, %bb.c
  %.sroa.0.021.i = phi ptr [ %i.t, %bb.c ], [ %i.e, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ] ; 3 uses
  %.sroa.7.020.i = phi i64 [ %i.s, %bb.c ], [ 0, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ] ; 2 uses
  %.sroa.10.019.i = phi i64 [ %i.r, %bb.c ], [ %i.j, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ]
  %i.q = icmp eq ptr %.sroa.0.021.i, %i.o
  br i1 %i.q, label %_RINvXNvMNtCsbqH9stoieM8_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = add i64 %.sroa.10.019.i, -1              ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.7.020.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 24
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.sroa.7.020.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1041
  call void @_RNvXs4_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.021.i) #17, !noalias !1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1041
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_RINvXNvMNtCsbqH9stoieM8_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %.lr.ph.i

_RINvXNvMNtCsbqH9stoieM8_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  store i64 %i.j, ptr %0, align 8, !alias.scope !1040
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1040
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1040
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsb_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1046
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #17, !noalias !1046
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !1046, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !30, !noalias !1046, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1046
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #25, !noalias !1046
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1046, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1046
end_hunk_1
