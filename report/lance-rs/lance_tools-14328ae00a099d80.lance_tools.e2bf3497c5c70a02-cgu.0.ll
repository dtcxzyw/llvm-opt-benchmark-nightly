Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
  %.sroa.17.1.us.i = phi i64 [ %i.la, %bb.aq ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.ld, %bb.aq ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.lc, %bb.aq ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ] ; 2 uses
  %i.le = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !379 ; 5 uses
  %i.lf = and i64 %i.le, 1
  %i.lg = icmp eq i64 %i.lf, 0
  br i1 %i.lg, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %._crit_edge.i.us.i
  %i.lh = and i64 %i.le, -8                       ; 2 uses
  %i.li = inttoptr i64 %i.lh to ptr
  %.not20.us.i = icmp eq i64 %i.lh, 0
  br i1 %.not20.us.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lj = icmp eq i64 %i.le, %i.bn
  br i1 %i.lj, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val.us.i = load ptr, ptr %i.li, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %.val22.us.i = load ptr, ptr %i.cd, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.lk = icmp eq ptr %.val.us.i, %.val22.us.i
  br i1 %i.lk, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 32
  %i.lm = load i64, ptr %i.ll, align 8, !alias.scope !384, !noalias !385, !noundef !24 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 32
  %i.lo = load i64, ptr %i.ln, align 8, !alias.scope !385, !noalias !384, !noundef !24
  %i.lp = icmp eq i64 %i.lm, %i.lo
  br i1 %i.lp, label %bb.av, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

bb.av:                                            ; preds = %bb.au
  %i.lq = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !alias.scope !385, !noalias !384, !nonnull !24, !noundef !24
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !alias.scope !384, !noalias !385, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull %i.lt, ptr nonnull %i.lr, i64 %i.lm), !noalias !386
  %i.lu = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %i.lu, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i: ; preds = %bb.av
  %i.lv = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 40
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !384, !noalias !385, !noundef !24
  %i.lx = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 40
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !385, !noalias !384, !noundef !24
  %.not53.us.i = icmp eq i64 %i.lw, %i.ly
  br i1 %.not53.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, %bb.at
  %i.lz = and i64 %i.le, 4
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, %bb.ar
  %i.mb = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.le, i64 %i.bn acq_rel monotonic, align 8, !noalias !387
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.mb, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge: ; preds = %bb.aw, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, %bb.av, %bb.au
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.au ], [ true, %bb.aw ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i ], [ false, %bb.av ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ %i.ky, %bb.ao ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ %i.kw, %bb.ao ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.kv
  br i1 %.not.i.i, label %bb.ay, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ay, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i
  %.sroa.17.1.i = phi i64 [ %i.mf, %bb.ay ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.mi, %bb.ay ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.mh, %bb.ay ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ] ; 2 uses
  %i.mc = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !379 ; 5 uses
  %i.md = and i64 %i.mc, 1
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %bb.az, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.mf = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.mg = add i64 %i.mf, %i.kw
  %i.mh = and i64 %i.mg, %i.kv                    ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.mh
  br label %._crit_edge.i.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.mj = and i64 %i.mc, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.mj, 0
  %i.mk = icmp eq i64 %i.mc, %i.bn
  %or.cond.i = or i1 %i.mk, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ml = inttoptr i64 %i.mj to ptr
  %.val.i = load ptr, ptr %i.ml, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %.val22.i = load ptr, ptr %i.cd, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.mm = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.mm, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.mn = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.mo = load i64, ptr %i.mn, align 8, !alias.scope !384, !noalias !385, !noundef !24 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val22.i, i64 32
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !385, !noalias !384, !noundef !24
  %i.mr = icmp eq i64 %i.mo, %i.mq
  br i1 %i.mr, label %bb.bc, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.ms = getelementptr inbounds nuw i8, ptr %.val22.i, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !alias.scope !385, !noalias !384, !nonnull !24, !noundef !24
  %i.mu = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !alias.scope !384, !noalias !385, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.mv, ptr nonnull %i.mt, i64 %i.mo), !noalias !386
  %i.mw = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.mw, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.bc
  %i.mx = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !384, !noalias !385, !noundef !24
  %i.mz = getelementptr inbounds nuw i8, ptr %.val22.i, i64 40
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !385, !noalias !384, !noundef !24
  %.not53.i = icmp eq i64 %i.my, %i.na
  br i1 %.not53.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, %bb.ba
  %i.nb = and i64 %i.mc, 4
  %.not66.i = icmp eq i64 %i.nb, 0
  br i1 %.not66.i, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i
  %i.nc = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.mc, i64 %i.bn acq_rel monotonic, align 8, !noalias !387
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.nc, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge: ; preds = %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, %bb.bc, %bb.bb
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i ], [ true, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bb ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i

bb.be:                                            ; preds = %.loopexit
  %i.nd = icmp eq i64 %i.bm, 0
  %i.ne = icmp eq i64 %i.bl, 0
  %or.cond41 = or i1 %i.nd, %i.ne
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit253, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2v_10ValueEntryB1A_NtB1C_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bi)
          to label %.loopexit253 unwind label %.body.thread220.loopexit

.loopexit253:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63, %bb.bf, %bb.be
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.be ], [ %.sroa.6.2, %bb.bf ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.be ], [ %.sroa.412.2, %bb.bf ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %i.nf = icmp eq ptr %i.bh, %i.az
  br i1 %i.nf, label %._crit_edge, label %bb.q

bb.bg:                                            ; preds = %._crit_edge
  %i.ng = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ng, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nh = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ni = and i64 %i.nh, 9223372036854775807
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !26

.noexc68:                                         ; preds = %bb.bh
  %i.nk = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.nk, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bi, %.noexc68, %bb.bh, %bb.bg
  %i.nl = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.nm = icmp eq i32 %i.nl, 2
  br i1 %i.nm, label %bb.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bj:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bj, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.bj ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73: ; preds = %bb.bt, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bn, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %i.oe, %bb.bt ], [ %eh.lpad-body218, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %eh.lpad-body218, %bb.bn ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread220.loopexit, %.body.thread220.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.as, %bb.l ], [ %lpad.loopexit, %.body.thread220.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread220.loopexit.split-lp ] ; 2 uses
  %i.nn = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.nn, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bk

bb.bk:                                            ; preds = %.body.thread
  %i.no = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.np = and i64 %i.no, 9223372036854775807
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bl, !prof !26

bb.bl:                                            ; preds = %bb.bk
  %i.nr = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.bo

.noexc71:                                         ; preds = %bb.bl
  br i1 %i.nr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bm

bb.bm:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.bm, %.noexc71, %bb.bk, %.body.thread
  %i.ns = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.nt = icmp eq i32 %i.ns, 2
  br i1 %i.nt, label %bb.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73, !prof !29

bb.bn:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl, %bb.bt, %4
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.bp:                                            ; preds = %bb.a
  %i.nv = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 5 uses
  %i.nx = cmpxchg ptr %i.nw, i32 0, i32 1 acquire monotonic, align 4, !noalias !388
  %i.ny = extractvalue { i32, i1 } %i.nx, 1
  br i1 %i.ny, label %.noexc76, label %bb.bq, !prof !26

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.nw)
          to label %.noexc76 unwind label %4

.noexc76:                                         ; preds = %bb.bq, %bb.bp
  %i.nz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !388
  %i.oa = and i64 %i.nz, 9223372036854775807
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %.thread370, label %bb.br, !prof !26

bb.br:                                            ; preds = %.noexc76
  %i.oc = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bu unwind label %4         ; 2 uses

bb.bs:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.od, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
          to label %bb.v unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oe = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.d, align 8
  %.val53 = load i8, ptr %i.od, align 8, !range !30, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val52, i8 %.val53) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bo

4:                                                ; preds = %bb.bq, %bb.br, %bb.bw, %bb.bz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.g, i8 2) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bo

bb.bu:                                            ; preds = %bb.br
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 20 ; 3 uses
  %i.og = load atomic i8, ptr %i.of monotonic, align 1, !noalias !388
  %.not245 = icmp eq i8 %i.og, 0
  br i1 %.not245, label %bb.bv, label %bb.by

.thread370:                                       ; preds = %.noexc76
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nv, i64 20 ; 3 uses
  %i.oi = load atomic i8, ptr %i.oh monotonic, align 1, !noalias !388
  %.not245372 = icmp eq i8 %i.oi, 0
  br i1 %.not245372, label %.thread375, label %.thread377

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.oc, label %.thread375, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread375:                                       ; preds = %.thread370, %bb.bv
  %i.oj = phi ptr [ %i.of, %bb.bv ], [ %i.oh, %.thread370 ]
  %i.ok = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !389
  %i.ol = and i64 %i.ok, 9223372036854775807
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bw, !prof !26

bb.bw:                                            ; preds = %.thread375
  %i.on = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %4

.noexc79:                                         ; preds = %bb.bw
  br i1 %i.on, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.oj monotonic, align 1, !noalias !389
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bx, %.noexc79, %.thread375, %bb.bv
  %i.oo = atomicrmw xchg ptr %i.nw, i32 0 release, align 4, !noalias !389
  %i.op = icmp eq i32 %i.oo, 2
  br i1 %i.op, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.by:                                            ; preds = %bb.bu
  br i1 %i.oc, label %.thread377, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread377:                                       ; preds = %.thread370, %bb.by
  %i.oq = phi ptr [ %i.of, %bb.by ], [ %i.oh, %.thread370 ]
  %i.or = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !389
  %i.os = and i64 %i.or, 9223372036854775807
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bz, !prof !26

bb.bz:                                            ; preds = %.thread377
  %i.ou = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc80 unwind label %4

.noexc80:                                         ; preds = %bb.bz
  br i1 %i.ou, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc80
  store atomic i8 1, ptr %i.oq monotonic, align 1, !noalias !389
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ca, %.noexc80, %.thread377, %bb.by
  %i.ov = atomicrmw xchg ptr %i.nw, i32 0 release, align 4, !noalias !389
  %i.ow = icmp eq i32 %i.ov, 2
  br i1 %i.ow, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.nw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit unwind label %4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 11 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.i = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4, !noalias !451
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.br

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !451
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !451
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.q, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.r = load atomic i8, ptr %i.k monotonic, align 1, !noalias !451
  %.not.i.not = icmp eq i8 %i.r, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bu

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = and i64 %i.t, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.u, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit255

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !24
  %i.x = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.w)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load i64, ptr %i.y, align 8, !noundef !24
  %i.aa = add i64 %i.z, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE11with_lengthCsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.aa, i64 noundef %i.x)
          to label %.noexc unwind label %.body.thread222.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !452
  %i.ab = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !452 ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.f, !prof !36

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ad = ptrtoint ptr %i.ab to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = cmpxchg weak ptr %i.s, i64 0, i64 %i.ad acq_rel monotonic, align 8, !noalias !453
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit255, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load atomic i64, ptr %i.s acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ag, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.n
  %i.ah = load atomic i64, ptr %i.s acquire, align 8
  %i.ai = and i64 %i.ah, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ai, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !396

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !454, !noundef !24 ; 2 uses
  %i.ak = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !454, !nonnull !24, !noundef !24
  %i.al = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.al, i64 noundef 8) #36, !noalias !454
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !457, !nonnull !24, !noundef !24
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !457
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 48, i64 noundef 8) #36
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 48, i64 noundef 8) #36
  br label %.loopexit255

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ar = load i64, ptr %i.v, align 8, !noundef !24
  %i.as = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ar)
          to label %bb.n unwind label %.loopexit.i ; 0 uses

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #40
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #41
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.n:                                             ; preds = %.peel.next.i
  %i.av = cmpxchg weak ptr %i.s, i64 0, i64 %i.ad acq_rel monotonic, align 8, !noalias !453
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit255, label %bb.h

.loopexit.i:                                      ; preds = %.peel.next.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.0934.lcssa.i = phi i64 [ 1, %.loopexit.i ], [ 0, %.loopexit.split-lp.i ]
  %.sroa.7.033.lcssa.i = phi i64 [ %i.ad, %.loopexit.i ], [ undef, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsjsY2yM364a4_11lance_tools(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #41
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

.body.thread222.loopexit:                         ; preds = %bb.bg, %bb.bh
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread222.loopexit.split-lp:                ; preds = %.invoke, %bb.e, %bb.t, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit255:                                     ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ad, %bb.f ], [ %i.u, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.ad, %bb.n ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.ax = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph294

.lr.ph294:                                        ; preds = %.loopexit255
  %.val43 = load i64, ptr %2, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val44 = load i64, ptr %i.bc, align 8          ; 2 uses
  %i.bd = xor i64 %.val43, 8317987319222330741    ; 2 uses
  %i.be = xor i64 %.val44, 7237128888997146477    ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
bb.as:                                            ; preds = %bb.ar
  %i.ln = icmp eq i64 %i.li, %i.br
  br i1 %i.ln, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val23.us.i = load ptr, ptr %i.lm, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %.val24.us.i = load ptr, ptr %i.ch, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.lo = icmp eq ptr %.val23.us.i, %.val24.us.i
  br i1 %i.lo, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.lp = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 32
  %i.lq = load i64, ptr %i.lp, align 8, !alias.scope !478, !noalias !479, !noundef !24 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 32
  %i.ls = load i64, ptr %i.lr, align 8, !alias.scope !479, !noalias !478, !noundef !24
  %i.lt = icmp eq i64 %i.lq, %i.ls
  br i1 %i.lt, label %bb.av, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

bb.av:                                            ; preds = %bb.au
  %i.lu = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !alias.scope !479, !noalias !478, !nonnull !24, !noundef !24
  %i.lw = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !478, !noalias !479, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull %i.lx, ptr nonnull %i.lv, i64 %i.lq), !noalias !480
  %i.ly = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %i.ly, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i: ; preds = %bb.av
  %i.lz = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 40
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !478, !noalias !479, !noundef !24
  %i.mb = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 40
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !479, !noalias !478, !noundef !24
  %.not53.us.i = icmp eq i64 %i.ma, %i.mc
  br i1 %.not53.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, %bb.at
  %i.md = and i64 %i.li, 4
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, %bb.ar
  %i.mf = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.li, i64 %i.br acq_rel monotonic, align 8, !noalias !481
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.mf, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge: ; preds = %bb.aw, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, %bb.av, %bb.au
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.au ], [ true, %bb.aw ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i ], [ false, %bb.av ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ %i.lc, %bb.ao ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ %i.la, %bb.ao ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.kz
  br i1 %.not.i.i, label %bb.ay, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ay, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i
  %.sroa.17.1.i = phi i64 [ %i.mj, %bb.ay ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.mm, %bb.ay ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.ml, %bb.ay ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ] ; 2 uses
  %i.mg = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !473 ; 5 uses
  %i.mh = and i64 %i.mg, 1
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %bb.az, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.mj = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.mk = add i64 %i.mj, %i.la
  %i.ml = and i64 %i.mk, %i.kz                    ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ml
  br label %._crit_edge.i.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.mn = and i64 %i.mg, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.mn, 0
  %i.mo = icmp eq i64 %i.mg, %i.br
  %or.cond.i = or i1 %i.mo, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mp = inttoptr i64 %i.mn to ptr
  %.val23.i = load ptr, ptr %i.mp, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %.val24.i = load ptr, ptr %i.ch, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.mq = icmp eq ptr %.val23.i, %.val24.i
  br i1 %i.mq, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.mr = getelementptr inbounds nuw i8, ptr %.val23.i, i64 32
  %i.ms = load i64, ptr %i.mr, align 8, !alias.scope !478, !noalias !479, !noundef !24 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.val24.i, i64 32
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !479, !noalias !478, !noundef !24
  %i.mv = icmp eq i64 %i.ms, %i.mu
  br i1 %i.mv, label %bb.bc, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.mw = getelementptr inbounds nuw i8, ptr %.val24.i, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !alias.scope !479, !noalias !478, !nonnull !24, !noundef !24
  %i.my = getelementptr inbounds nuw i8, ptr %.val23.i, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !alias.scope !478, !noalias !479, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.mz, ptr nonnull %i.mx, i64 %i.ms), !noalias !480
  %i.na = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.na, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.bc
  %i.nb = getelementptr inbounds nuw i8, ptr %.val23.i, i64 40
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !478, !noalias !479, !noundef !24
  %i.nd = getelementptr inbounds nuw i8, ptr %.val24.i, i64 40
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !479, !noalias !478, !noundef !24
  %.not53.i = icmp eq i64 %i.nc, %i.ne
  br i1 %.not53.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, %bb.ba
  %i.nf = and i64 %i.mg, 4
  %.not66.i = icmp eq i64 %i.nf, 0
  br i1 %.not66.i, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i
  %i.ng = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.mg, i64 %i.br acq_rel monotonic, align 8, !noalias !481
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.ng, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge: ; preds = %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, %bb.bc, %bb.bb
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i ], [ true, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bb ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i

bb.be:                                            ; preds = %.loopexit
  %i.nh = icmp eq i64 %i.bq, 0
  %i.ni = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.nh, %i.ni
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.bj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE0CsjsY2yM364a4_11lance_tools(i64 noundef %i.bm)
          to label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit unwind label %.body.thread222.loopexit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !482
  store ptr @_RINvNvMs_NtCskfeRsqx2rfd_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE0uE0ECsjsY2yM364a4_11lance_tools, ptr %i.a, align 8, !alias.scope !483, !noalias !482
  store i64 %i.bm, ptr %i.bk, align 8, !alias.scope !483, !noalias !482
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128 %i.bi, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc70 unwind label %.body.thread222.loopexit

.noexc70:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !482
  br label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit

_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63, %.noexc70, %bb.bg, %bb.be
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.be ], [ %.sroa.6.2, %.noexc70 ], [ %.sroa.6.2, %bb.bg ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.be ], [ %.sroa.412.2, %.noexc70 ], [ %.sroa.412.2, %bb.bg ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %i.nj = icmp eq ptr %i.bl, %i.ba
  br i1 %i.nj, label %._crit_edge, label %bb.q

bb.bi:                                            ; preds = %._crit_edge
  %i.nk = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.nk, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nl = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.nm = and i64 %i.nl, 9223372036854775807
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc71, !prof !26

.noexc71:                                         ; preds = %bb.bj
  %i.no = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.no, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bk, %.noexc71, %bb.bj, %bb.bi
  %i.np = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.nq = icmp eq i32 %i.np, 2
  br i1 %i.nq, label %bb.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bl:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bl, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.bl ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76: ; preds = %bb.bv, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, %bb.bp, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %i.oi, %bb.bv ], [ %eh.lpad-body220, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73 ], [ %eh.lpad-body220, %bb.bp ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread222.loopexit, %.body.thread222.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body220 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.at, %bb.l ], [ %lpad.loopexit, %.body.thread222.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread222.loopexit.split-lp ] ; 2 uses
  %i.nr = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.nr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bm

bb.bm:                                            ; preds = %.body.thread
  %i.ns = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.nt = and i64 %i.ns, 9223372036854775807
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bn, !prof !26

bb.bn:                                            ; preds = %bb.bm
  %i.nv = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc74 unwind label %bb.bq

.noexc74:                                         ; preds = %bb.bn
  br i1 %i.nv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bo

bb.bo:                                            ; preds = %.noexc74
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73: ; preds = %bb.bo, %.noexc74, %bb.bm, %.body.thread
  %i.nw = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.nx = icmp eq i32 %i.nw, 2
  br i1 %i.nx, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76, !prof !29

bb.bp:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bv, %4
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.br:                                            ; preds = %bb.a
  %i.nz = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16 ; 5 uses
  %i.ob = cmpxchg ptr %i.oa, i32 0, i32 1 acquire monotonic, align 4, !noalias !484
  %i.oc = extractvalue { i32, i1 } %i.ob, 1
  br i1 %i.oc, label %.noexc79, label %bb.bs, !prof !26

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.oa)
          to label %.noexc79 unwind label %4

.noexc79:                                         ; preds = %bb.bs, %bb.br
  %i.od = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !484
  %i.oe = and i64 %i.od, 9223372036854775807
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %.thread372, label %bb.bt, !prof !26

bb.bt:                                            ; preds = %.noexc79
  %i.og = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bw unwind label %4         ; 2 uses

bb.bu:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.oh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
          to label %bb.v unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oi = landingpad { ptr, i32 }
          cleanup
  %.val53 = load ptr, ptr %i.e, align 8
  %.val54 = load i8, ptr %i.oh, align 8, !range !30, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val53, i8 %.val54) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76 unwind label %bb.bq

4:                                                ; preds = %bb.bs, %bb.bt, %bb.by, %bb.cb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.h, i8 2) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76 unwind label %bb.bq

bb.bw:                                            ; preds = %bb.bt
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nz, i64 20 ; 3 uses
  %i.ok = load atomic i8, ptr %i.oj monotonic, align 1, !noalias !484
  %.not247 = icmp eq i8 %i.ok, 0
  br i1 %.not247, label %bb.bx, label %bb.ca

.thread372:                                       ; preds = %.noexc79
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nz, i64 20 ; 3 uses
  %i.om = load atomic i8, ptr %i.ol monotonic, align 1, !noalias !484
  %.not247374 = icmp eq i8 %i.om, 0
  br i1 %.not247374, label %.thread377, label %.thread379

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.og, label %.thread377, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread377:                                       ; preds = %.thread372, %bb.bx
  %i.on = phi ptr [ %i.oj, %bb.bx ], [ %i.ol, %.thread372 ]
  %i.oo = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !485
  %i.op = and i64 %i.oo, 9223372036854775807
  %i.oq = icmp eq i64 %i.op, 0
  br i1 %i.oq, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.by, !prof !26

bb.by:                                            ; preds = %.thread377
  %i.or = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc81 unwind label %4

.noexc81:                                         ; preds = %bb.by
  br i1 %i.or, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc81
  store atomic i8 1, ptr %i.on monotonic, align 1, !noalias !485
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bz, %.noexc81, %.thread377, %bb.bx
  %i.os = atomicrmw xchg ptr %i.oa, i32 0 release, align 4, !noalias !485
  %i.ot = icmp eq i32 %i.os, 2
  br i1 %i.ot, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.ca:                                            ; preds = %bb.bw
  br i1 %i.og, label %.thread379, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread379:                                       ; preds = %.thread372, %bb.ca
  %i.ou = phi ptr [ %i.oj, %bb.ca ], [ %i.ol, %.thread372 ]
  %i.ov = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !485
  %i.ow = and i64 %i.ov, 9223372036854775807
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cb, !prof !26

bb.cb:                                            ; preds = %.thread379
  %i.oy = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc82 unwind label %4

.noexc82:                                         ; preds = %bb.cb
  br i1 %i.oy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.noexc82
  store atomic i8 1, ptr %i.ou monotonic, align 1, !noalias !485
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.cc, %.noexc82, %.thread379, %bb.ca
  %i.oz = atomicrmw xchg ptr %i.oa, i32 0 release, align 4, !noalias !485
  %i.pa = icmp eq i32 %i.oz, 2
  br i1 %i.pa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.oa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit unwind label %4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2l_16CachedReaderDataEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  %i.g = cmpxchg ptr %i.f, i32 0, i32 1 acquire monotonic, align 4, !noalias !521
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.bd

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !521
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !521
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !521
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit196

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !24
  %i.v = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.u)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr %i.w, align 8, !noundef !24
  %i.y = add i64 %i.x, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2j_16CachedReaderDataEE11with_lengthCsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread174.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !522
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !522 ; 8 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %bb.f, !prof !36

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !523
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit196, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.n
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !492

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !524, !noundef !24 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !524, !nonnull !24, !noundef !24
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #36, !noalias !524
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !527, !nonnull !24, !noundef !24
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !527
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #36
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #36
  br label %.loopexit196

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ap = load i64, ptr %i.t, align 8, !noundef !24
  %i.aq = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ap)
          to label %bb.n unwind label %.loopexit.i ; 0 uses

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #40
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBK_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2N_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #41
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.n:                                             ; preds = %.peel.next.i
  %i.at = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !523
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit196, label %bb.h

.loopexit.i:                                      ; preds = %.peel.next.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.0934.lcssa.i = phi i64 [ 1, %.loopexit.i ], [ 0, %.loopexit.split-lp.i ]
  %.sroa.7.033.lcssa.i = phi i64 [ %i.ab, %.loopexit.i ], [ undef, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1T_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3X_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #41
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

.body.thread174.loopexit:                         ; preds = %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread174.loopexit.split-lp:                ; preds = %.invoke, %bb.e, %bb.t, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit196:                                     ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.ab, %bb.n ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.av = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %._crit_edge, label %.lr.ph235

.lr.ph235:                                        ; preds = %.loopexit196
  %.val52 = load i64, ptr %2, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val53 = load i64, ptr %i.ba, align 8          ; 2 uses
  %i.bb = xor i64 %.val52, 8317987319222330741    ; 2 uses
  %i.bc = xor i64 %.val53, 7237128888997146477    ; 2 uses
  %i.bd = xor i64 %.val52, 7816392313619706465    ; 2 uses
  %i.be = xor i64 %.val53, 8387220255154660723    ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2l_16CachedReaderDataEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
  %i.gx = tail call noundef i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 13)
  %i.gy = add i64 %i.gw, %i.gl
  %i.gz = xor i64 %i.gx, %i.gy                    ; 3 uses
  %i.ha = tail call noundef i64 @llvm.fshl.i64(i64 %i.gz, i64 %i.gz, i64 17)
  %i.hb = xor i64 %i.gu, %i.ha
  %i.hc = add i64 %i.gz, %i.gs                    ; 3 uses
  %i.hd = tail call noundef i64 @llvm.fshl.i64(i64 %i.hc, i64 %i.hc, i64 32)
  %i.he = xor i64 %i.hb, %i.hd
  %i.hf = xor i64 %i.he, %i.hc
  %i.hg = load i64, ptr %i.bf, align 8, !noundef !24 ; 2 uses
  %i.hh = add i64 %i.hg, -1                       ; 5 uses
  %i.hi = and i64 %i.hh, %i.hf                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.hg, 0
  br i1 %.not.i64, label %.invoke, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hj = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hi ; 2 uses
  %i.hl = icmp eq i64 %i.bk, 0
  br i1 %i.hl, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i: ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ true, %bb.ae ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ %i.hk, %bb.ae ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ %i.hi, %bb.ae ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.af

bb.af:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.hh
  br i1 %.not.i.us.i, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.hm = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.hn = add i64 %i.hm, %i.hi
  %i.ho = and i64 %i.hn, %i.hh                    ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.ho
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.ag, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.hm, %bb.ag ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.hp, %bb.ag ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.ho, %bb.ag ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ] ; 2 uses
  %i.hq = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !535 ; 5 uses
  %i.hr = and i64 %i.hq, 1
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %._crit_edge.i.us.i
  %i.ht = and i64 %i.hq, -8                       ; 2 uses
  %i.hu = inttoptr i64 %i.ht to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.ht, 0
  br i1 %.not20.us.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hv = icmp eq i64 %i.hq, %i.bm
  br i1 %i.hv, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hw = getelementptr i8, ptr %i.hu, i64 16
  %.val24.us.i = load i64, ptr %i.hw, align 8, !noundef !24 ; 2 uses
  %.val26.us.i = load i64, ptr %i.ce, align 8, !noundef !24
  %i.hx = icmp eq i64 %.val24.us.i, %.val26.us.i
  br i1 %i.hx, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i: ; preds = %bb.aj
  %.val25.us.i = load ptr, ptr %i.cd, align 8, !nonnull !24, !noundef !24
  %i.hy = getelementptr i8, ptr %i.hu, i64 8
  %.val23.us.i = load ptr, ptr %i.hy, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.us.i, ptr nonnull readonly %.val25.us.i, i64 %.val24.us.i)
  %.not53.us.i = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %.not53.us.i, label %bb.ak, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

bb.ak:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i
  %i.hz = and i64 %i.hq, 4
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.ib = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.hq, i64 %i.bm acq_rel monotonic, align 8, !noalias !536
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.ib, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge: ; preds = %bb.al, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i, %bb.aj
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.aj ], [ true, %bb.al ], [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ true, %bb.ae ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ %i.hk, %bb.ae ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge ], [ %i.hi, %bb.ae ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.am

bb.am:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.hh
  br i1 %.not.i.i, label %bb.an, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.an, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i
  %.sroa.17.1.i = phi i64 [ %i.if, %bb.an ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.ii, %bb.an ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.ih, %bb.an ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i ] ; 2 uses
  %i.ic = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !535 ; 5 uses
  %i.id = and i64 %i.ic, 1
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.ao, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.if = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ig = add i64 %i.if, %i.hi
  %i.ih = and i64 %i.ig, %i.hh                    ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.ih
  br label %._crit_edge.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i
  %i.ij = and i64 %i.ic, -8                       ; 2 uses
  %i.ik = inttoptr i64 %i.ij to ptr               ; 2 uses
  %.not20.i = icmp eq i64 %i.ij, 0
  %i.il = icmp eq i64 %i.ic, %i.bm
  %or.cond.i = or i1 %i.il, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.im = getelementptr i8, ptr %i.ik, i64 16
  %.val24.i = load i64, ptr %i.im, align 8, !noundef !24 ; 2 uses
  %.val26.i = load i64, ptr %i.ce, align 8, !noundef !24
  %i.in = icmp eq i64 %.val24.i, %.val26.i
  br i1 %i.in, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.ap
  %.val25.i = load ptr, ptr %i.cd, align 8, !nonnull !24, !noundef !24
  %i.io = getelementptr i8, ptr %i.ik, i64 8
  %.val23.i = load ptr, ptr %i.io, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.val25.i, i64 %.val24.i)
  %.not53.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not53.i, label %bb.aq, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

bb.aq:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i
  %i.ip = and i64 %i.ic, 4
  %.not64.i = icmp eq i64 %i.ip, 0
  br i1 %.not64.i, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iq = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.ic, i64 %i.bm acq_rel monotonic, align 8, !noalias !536
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.iq, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i.backedge: ; preds = %bb.ar, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i, %bb.ap
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.i ], [ true, %bb.ar ], [ false, %bb.ap ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i

bb.as:                                            ; preds = %.loopexit
  %i.ir = icmp eq i64 %i.bl, 0
  %i.is = icmp eq i64 %i.bk, 0
  %or.cond41 = or i1 %i.ir, %i.is
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit195, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2k_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bh)
          to label %.loopexit195 unwind label %.body.thread174.loopexit

.loopexit195:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63, %bb.at, %bb.as
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.as ], [ %.sroa.6.2, %bb.at ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.as ], [ %.sroa.412.2, %bb.at ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %i.it = icmp eq ptr %i.bg, %i.ay
  br i1 %i.it, label %._crit_edge, label %bb.q

bb.au:                                            ; preds = %._crit_edge
  %i.iu = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.iu, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iv = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.iw = and i64 %i.iv, 9223372036854775807
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !26

.noexc68:                                         ; preds = %bb.av
  %i.iy = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.iy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.aw, %.noexc68, %bb.av, %bb.au
  %i.iz = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ja = icmp eq i32 %i.iz, 2
  br i1 %i.ja, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.ax:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.ax ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73: ; preds = %bb.bh, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bb, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %i.js, %bb.bh ], [ %eh.lpad-body172, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %eh.lpad-body172, %bb.bb ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread174.loopexit, %.body.thread174.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body172 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.ar, %bb.l ], [ %lpad.loopexit, %.body.thread174.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread174.loopexit.split-lp ] ; 2 uses
  %i.jb = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.jb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ay

bb.ay:                                            ; preds = %.body.thread
  %i.jc = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.jd = and i64 %i.jc, 9223372036854775807
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.az, !prof !26

bb.az:                                            ; preds = %bb.ay
  %i.jf = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.bc

.noexc71:                                         ; preds = %bb.az
  br i1 %i.jf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ba

bb.ba:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.ba, %.noexc71, %bb.ay, %.body.thread
  %i.jg = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.jh = icmp eq i32 %i.jg, 2
  br i1 %i.jh, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73, !prof !29

bb.bb:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.bh, %4
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.bd:                                            ; preds = %bb.a
  %i.jj = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 5 uses
  %i.jl = cmpxchg ptr %i.jk, i32 0, i32 1 acquire monotonic, align 4, !noalias !537
  %i.jm = extractvalue { i32, i1 } %i.jl, 1
  br i1 %i.jm, label %.noexc76, label %bb.be, !prof !26

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.jk)
          to label %.noexc76 unwind label %4

.noexc76:                                         ; preds = %bb.be, %bb.bd
  %i.jn = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !537
  %i.jo = and i64 %i.jn, 9223372036854775807
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %.thread304, label %bb.bf, !prof !26

bb.bf:                                            ; preds = %.noexc76
  %i.jq = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bi unwind label %4         ; 2 uses

bb.bg:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.jr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
          to label %bb.v unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.js = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.c, align 8
  %.val51 = load i8, ptr %i.jr, align 8, !range !30, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val50, i8 %.val51) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bc

4:                                                ; preds = %bb.be, %bb.bf, %bb.bk, %bb.bn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.f, i8 2) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bc

bb.bi:                                            ; preds = %bb.bf
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 20 ; 3 uses
  %i.ju = load atomic i8, ptr %i.jt monotonic, align 1, !noalias !537
  %.not187 = icmp eq i8 %i.ju, 0
  br i1 %.not187, label %bb.bj, label %bb.bm

.thread304:                                       ; preds = %.noexc76
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jj, i64 20 ; 3 uses
  %i.jw = load atomic i8, ptr %i.jv monotonic, align 1, !noalias !537
  %.not187306 = icmp eq i8 %i.jw, 0
  br i1 %.not187306, label %.thread309, label %.thread311

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.jq, label %.thread309, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread309:                                       ; preds = %.thread304, %bb.bj
  %i.jx = phi ptr [ %i.jt, %bb.bj ], [ %i.jv, %.thread304 ]
  %i.jy = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !538
  %i.jz = and i64 %i.jy, 9223372036854775807
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bk, !prof !26

bb.bk:                                            ; preds = %.thread309
  %i.kb = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %4

.noexc78:                                         ; preds = %bb.bk
  br i1 %i.kb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.jx monotonic, align 1, !noalias !538
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bl, %.noexc78, %.thread309, %bb.bj
  %i.kc = atomicrmw xchg ptr %i.jk, i32 0 release, align 4, !noalias !538
  %i.kd = icmp eq i32 %i.kc, 2
  br i1 %i.kd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bm:                                            ; preds = %bb.bi
  br i1 %i.jq, label %.thread311, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread311:                                       ; preds = %.thread304, %bb.bm
  %i.ke = phi ptr [ %i.jt, %bb.bm ], [ %i.jv, %.thread304 ]
  %i.kf = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !538
  %i.kg = and i64 %i.kf, 9223372036854775807
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bn, !prof !26

bb.bn:                                            ; preds = %.thread311
  %i.ki = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %4

.noexc79:                                         ; preds = %bb.bn
  br i1 %i.ki, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.ke monotonic, align 1, !noalias !538
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bo, %.noexc79, %.thread311, %bb.bm
  %i.kj = atomicrmw xchg ptr %i.jk, i32 0 release, align 4, !noalias !538
  %i.kk = icmp eq i32 %i.kj, 2
  br i1 %i.kk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.jk)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit unwind label %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_Cs9ZJqkc64Jh8_14event_listenerNtB6_5Event6notifylECsjsY2yM364a4_11lance_tools(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvXsF_NtCs9ZJqkc64Jh8_14event_listener6notifylNtB5_16IntoNotification17into_notification(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void asm sideeffect inteldialect "lock not qword ptr [${0:q}]", "r,~{memory}"(ptr nonnull %i.b) #36, !srcloc !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMs5_Cs9ZJqkc64Jh8_14event_listenerNtB5_5Event5innerCsjsY2yM364a4_11lance_tools.exit

bb.b:                                             ; preds = %bb.a
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !545
  %i.f = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !545 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, !prof !36

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #40, !noalias !545
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx.i, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.h = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx.i acq_rel acquire, align 8 ; 2 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 0
  %i.j = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.j, label %_RNvMs5_Cs9ZJqkc64Jh8_14event_listenerNtB5_5Event5innerCsjsY2yM364a4_11lance_tools.exit, label %bb.d

bb.d:                                             ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.k = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !546
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEE9drop_slowCsjMQ83FLvXnF_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs5_Cs9ZJqkc64Jh8_14event_listenerNtB5_5Event5innerCsjsY2yM364a4_11lance_tools.exit

_RNvMs5_Cs9ZJqkc64Jh8_14event_listenerNtB5_5Event5innerCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i
  %.sroa.026.1.i = phi ptr [ %i.d, %bb.a ], [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcINtCs9ZJqkc64Jh8_14event_listener5InneruEEECsjsY2yM364a4_11lance_tools.exit.i ], [ %.sroa.5.0..sroa_idx.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i ]
  call fastcc void @_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %.sroa.026.1.i, i64 noundef %i.c)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsjsY2yM364a4_11lance_tools(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = cmpxchg ptr %0, i32 0, i32 1 acquire monotonic, align 4, !noalias !553
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %0), !noalias !553
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !553
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsjsY2yM364a4_11lance_tools.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !553
  %i.h = xor i1 %i.g, true
  %i.i = zext i1 %i.h to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsjsY2yM364a4_11lance_tools.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !553 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n, i64 noundef %1)
          to label %_RNCINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsjsY2yM364a4_11lance_tools.exit unwind label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsjsY2yM364a4_11lance_tools.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(24) %i.a) #41
          to label %bb.k unwind label %bb.j

_RNCINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCsjsY2yM364a4_11lance_tools.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noalias !554, !noundef !24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !554, !noundef !24
  %i.t = icmp ult i64 %i.q, %i.s
  %spec.store.select.i.i = select i1 %i.t, i64 %i.q, i64 -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 %spec.store.select.i.i, ptr %i.u release, align 8, !noalias !554
  %i.v = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.v, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNCINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsjsY2yM364a4_11lance_tools.exit
  %i.w = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !555
  %i.x = and i64 %i.w, 9223372036854775807
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g, !prof !26

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !555
  br i1 %i.z, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i8 1, ptr %i.j monotonic, align 4, !noalias !555
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %_RNCINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsjsY2yM364a4_11lance_tools.exit
  %i.aa = atomicrmw xchg ptr %0, i32 0 release, align 4, !noalias !555
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.i:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0), !noalias !555
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsjsY2yM364a4_11lance_tools.exit: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.k:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add nsw i64 %5, -1                       ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !24
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
  %.promoted35 = load i64, ptr %i.h, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  store i64 %3, ptr %i.a, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi i64 [ %.promoted35, %.lr.ph ], [ %i.w, %bb.f ] ; 5 uses
  %i.m = phi i64 [ %i.c, %.lr.ph ], [ %i.y, %bb.f ]
  %i.n = phi i64 [ %.promoted, %.lr.ph ], [ %i.x, %bb.f ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !noundef !24
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, %i.f
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.j, %._crit_edge
  %storemerge = phi i64 [ 0, %._crit_edge ], [ 1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void
end_hunk_2
