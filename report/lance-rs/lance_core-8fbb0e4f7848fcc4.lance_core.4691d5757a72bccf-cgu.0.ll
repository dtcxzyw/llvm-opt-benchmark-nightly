Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2F_10ValueEntryB1B_NtNtB1F_4moka14MokaCacheEntryEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1H_:bb.a
  %i.fs = tail call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 17)
  %i.ft = xor i64 %i.fs, %i.fn                    ; 3 uses
  %i.fu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 13)
  %i.fv = add i64 %i.ft, %i.fi
  %i.fw = xor i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = tail call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 17)
  %i.fy = xor i64 %i.fr, %i.fx
  %i.fz = add i64 %i.fw, %i.fp                    ; 3 uses
  %i.ga = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 32)
  %i.gb = xor i64 %i.fy, %i.ga
  %i.gc = xor i64 %i.gb, %i.fz
  %i.gd = load i64, ptr %i.br, align 8, !noundef !24 ; 2 uses
  %i.ge = add i64 %i.gd, -1                       ; 5 uses
  %i.gf = and i64 %i.ge, %i.gc                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.gd, 0
  br i1 %.not.i64, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf ; 2 uses
  %i.gi = icmp eq i64 %i.cb, 0
  br i1 %i.gi, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.gh, %bb.w ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.gf, %bb.w ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.x

bb.x:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.ge
  br i1 %.not.i.us.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.gj = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.gk = add i64 %i.gj, %i.gf
  %i.gl = and i64 %i.gk, %i.ge                    ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gl
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.y, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.gj, %bb.y ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.gm, %bb.y ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.gl, %bb.y ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 2 uses
  %i.gn = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !462 ; 5 uses
  %i.go = and i64 %i.gn, 1
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge.i.us.i
  %i.gq = and i64 %i.gn, -8                       ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  %.not20.us.i = icmp eq i64 %i.gq, 0
  br i1 %.not20.us.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gs = icmp eq i64 %i.gn, %i.cd
  br i1 %i.gs, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val23.us.i = load ptr, ptr %i.gr, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val24.us.i = load ptr, ptr %i.ct, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.gt = icmp eq ptr %.val23.us.i, %.val24.us.i
  br i1 %i.gt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i: ; preds = %bb.ab
  %i.gu = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 16
  %.val.i.i.us.i = load i128, ptr %i.gu, align 1, !noundef !24
  %.val2.i.i.us.i = load i128, ptr %i.gv, align 1, !noundef !24
  %.not51.us.i = icmp eq i128 %.val.i.i.us.i, %.val2.i.i.us.i
  br i1 %.not51.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i, %bb.ab
  %i.gw = and i64 %i.gn, 4
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, %bb.z
  %i.gy = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.gn, i64 %i.cd acq_rel monotonic, align 8, !noalias !463
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.gy, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge: ; preds = %bb.ac, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i
  %.sroa.20.0.us.i.be = phi i1 [ true, %bb.ac ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.gh, %bb.w ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.gf, %bb.w ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ge
  br i1 %.not.i.i, label %bb.ae, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hc, %bb.ae ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.hf, %bb.ae ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.he, %bb.ae ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 2 uses
  %i.gz = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !462 ; 5 uses
  %i.ha = and i64 %i.gz, 1
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.hc = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.hd = add i64 %i.hc, %i.gf
  %i.he = and i64 %i.hd, %i.ge                    ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.he
  br label %._crit_edge.i.i

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.hg = and i64 %i.gz, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.hg, 0
  %i.hh = icmp eq i64 %i.gz, %i.cd
  %or.cond.i = or i1 %i.hh, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = inttoptr i64 %i.hg to ptr
  %.val23.i = load ptr, ptr %i.hi, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val24.i = load ptr, ptr %i.ct, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.hj = icmp eq ptr %.val23.i, %.val24.i
  br i1 %i.hj, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i: ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16
  %.val.i.i.i = load i128, ptr %i.hk, align 1, !noundef !24
  %.val2.i.i.i = load i128, ptr %i.hl, align 1, !noundef !24
  %.not51.i = icmp eq i128 %.val.i.i.i, %.val2.i.i.i
  br i1 %.not51.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i, %bb.ag
  %i.hm = and i64 %i.gz, 4
  %.not62.i = icmp eq i64 %i.hm, 0
  br i1 %.not62.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i
  %i.hn = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.gz, i64 %i.cd acq_rel monotonic, align 8, !noalias !463
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.hn, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge: ; preds = %bb.ah, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i
  %.sroa.20.0.i.be = phi i1 [ true, %bb.ah ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

bb.ai:                                            ; preds = %.loopexit
  %i.ho = icmp eq i64 %i.cc, 0
  %i.hp = icmp eq i64 %i.cb, 0
  %or.cond41 = or i1 %i.ho, %i.hp
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit205, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2E_10ValueEntryB1A_NtNtB1E_4moka14MokaCacheEntryEEEB1G_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.by)
          to label %.loopexit205 unwind label %.body.thread178.loopexit

.loopexit205:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63, %bb.aj, %bb.ai
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ai ], [ %.sroa.6.2, %bb.aj ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ai ], [ %.sroa.412.2, %bb.aj ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %i.hq = icmp eq ptr %i.bx, %i.av
  br i1 %i.hq, label %._crit_edge, label %bb.n

bb.ak:                                            ; preds = %._crit_edge
  %i.hr = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.hr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hs = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !29

.noexc68:                                         ; preds = %bb.al
  %i.hv = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.hv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.am, %.noexc68, %bb.al, %bb.ak
  %i.hw = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.an:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.an, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.an ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.ar, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body176, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.ip, %bb.ax ], [ %eh.lpad-body176, %bb.ar ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread178.loopexit, %.body.thread178.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body176 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit, %.body.thread178.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread178.loopexit.split-lp ] ; 2 uses
  %i.hy = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.hy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ao

bb.ao:                                            ; preds = %.body.thread
  %i.hz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ia = and i64 %i.hz, 9223372036854775807
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ap, !prof !29

bb.ap:                                            ; preds = %bb.ao
  %i.ic = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.as

.noexc71:                                         ; preds = %bb.ap
  br i1 %i.ic, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.aq, %.noexc71, %bb.ao, %.body.thread
  %i.id = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ie = icmp eq i32 %i.id, 2
  br i1 %i.ie, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73, !prof !27

bb.ar:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ax, %4
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.at:                                            ; preds = %bb.a
  %i.ig = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 5 uses
  %i.ii = cmpxchg ptr %i.ih, i32 0, i32 1 acquire monotonic, align 4, !noalias !464
  %i.ij = extractvalue { i32, i1 } %i.ii, 1
  br i1 %i.ij, label %.noexc76, label %bb.au, !prof !29

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ih)
          to label %.noexc76 unwind label %4

.noexc76:                                         ; preds = %bb.au, %bb.at
  %i.ik = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !464
  %i.il = and i64 %i.ik, 9223372036854775807
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %.thread, label %bb.av, !prof !29

bb.av:                                            ; preds = %.noexc76
  %i.in = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ay unwind label %4         ; 2 uses

bb.aw:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.io, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %.val53 = load ptr, ptr %i.c, align 8
  %.val54 = load i8, ptr %i.io, align 8, !range !33, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val53, i8 %.val54) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.ay:                                            ; preds = %bb.av
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 20 ; 3 uses
  %i.ir = load atomic i8, ptr %i.iq monotonic, align 1, !noalias !464
  %.not200 = icmp eq i8 %i.ir, 0
  br i1 %.not200, label %bb.az, label %bb.bc

.thread:                                          ; preds = %.noexc76
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 20 ; 3 uses
  %i.it = load atomic i8, ptr %i.is monotonic, align 1, !noalias !464
  %.not200302 = icmp eq i8 %i.it, 0
  br i1 %.not200302, label %.thread305, label %.thread307

bb.az:                                            ; preds = %bb.ay
  br i1 %i.in, label %.thread305, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread305:                                       ; preds = %.thread, %bb.az
  %i.iu = phi ptr [ %i.iq, %bb.az ], [ %i.is, %.thread ]
  %i.iv = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !465
  %i.iw = and i64 %i.iv, 9223372036854775807
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba, !prof !29

bb.ba:                                            ; preds = %.thread305
  %i.iy = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %4

.noexc78:                                         ; preds = %bb.ba
  br i1 %i.iy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.iu monotonic, align 1, !noalias !465
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bb, %.noexc78, %.thread305, %bb.az
  %i.iz = atomicrmw xchg ptr %i.ih, i32 0 release, align 4, !noalias !465
  %i.ja = icmp eq i32 %i.iz, 2
  br i1 %i.ja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.bc:                                            ; preds = %bb.ay
  br i1 %i.in, label %.thread307, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread307:                                       ; preds = %.thread, %bb.bc
  %i.jb = phi ptr [ %i.iq, %bb.bc ], [ %i.is, %.thread ]
  %i.jc = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !465
  %i.jd = and i64 %i.jc, 9223372036854775807
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bd, !prof !29

bb.bd:                                            ; preds = %.thread307
  %i.jf = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %4

.noexc79:                                         ; preds = %bb.bd
  br i1 %i.jf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.jb monotonic, align 1, !noalias !465
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.be, %.noexc79, %.thread307, %bb.bc
  %i.jg = atomicrmw xchg ptr %i.ih, i32 0 release, align 4, !noalias !465
  %i.jh = icmp eq i32 %i.jg, 2
  br i1 %i.jh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ih)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %4

4:                                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bd, %bb.ba, %bb.av, %bb.au
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.f, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1H_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  %i.g = cmpxchg ptr %i.f, i32 0, i32 1 acquire monotonic, align 4, !noalias !499
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !499
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !499
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !499
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.aw

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit207

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
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE11with_lengthB1F_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread179.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !500
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !500 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.f, !prof !40

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !501
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit207, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !472

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !502, !noundef !24 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !502, !nonnull !24, !noundef !24
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #65, !noalias !502
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !505, !nonnull !24, !noundef !24
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !505
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit207

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ao = load i64, ptr %i.t, align 8, !noundef !24
  %i.ap = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ao)
          to label %bb.l unwind label %.loopexit.i ; 0 uses

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #68
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEB29_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #69
  br label %.body.thread

bb.l:                                             ; preds = %.peel.next.i
  %i.ar = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !501
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit207, label %bb.h

.loopexit.i:                                      ; preds = %.peel.next.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.0934.lcssa.i = phi i64 [ 1, %.loopexit.i ], [ 0, %.loopexit.split-lp.i ]
  %.sroa.7.033.lcssa.i = phi i64 [ %i.ab, %.loopexit.i ], [ undef, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3i_(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #69
  br label %.body.thread

.body.thread179.loopexit:                         ; preds = %bb.aj
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread179.loopexit.split-lp:                ; preds = %.invoke, %bb.e, %bb.q, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit207:                                     ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i ], [ %i.ab, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.as = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %._crit_edge, label %.lr.ph245

.lr.ph245:                                        ; preds = %.loopexit207
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load i64, ptr %i.ax, align 8          ; 2 uses
  %i.ay = xor i64 %.val, 8317987319222330741
  %i.az = xor i64 %.val43, 7237128888997146477    ; 3 uses
  %i.ba = xor i64 %.val, 7816392313619706465
  %i.bb = xor i64 %.val43, 8387220255154660707    ; 3 uses
  %i.bc = add i64 %i.az, %i.ay                    ; 3 uses
  %i.bd = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 13)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 16)
  %i.bh = xor i64 %i.bd, %i.bg                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 17)
  %i.bm = xor i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 21)
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = xor i64 %i.bk, 16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.bs = add i64 %i.bq, %i.bm                    ; 3 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 32)
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1H_:bb.a
  %i.fs = tail call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 17)
  %i.ft = xor i64 %i.fs, %i.fn                    ; 3 uses
  %i.fu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 13)
  %i.fv = add i64 %i.ft, %i.fi
  %i.fw = xor i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = tail call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 17)
  %i.fy = xor i64 %i.fr, %i.fx
  %i.fz = add i64 %i.fw, %i.fp                    ; 3 uses
  %i.ga = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 32)
  %i.gb = xor i64 %i.fy, %i.ga
  %i.gc = xor i64 %i.gb, %i.fz
  %i.gd = load i64, ptr %i.br, align 8, !noundef !24 ; 2 uses
  %i.ge = add i64 %i.gd, -1                       ; 5 uses
  %i.gf = and i64 %i.ge, %i.gc                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.gd, 0
  br i1 %.not.i64, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gf ; 2 uses
  %i.gi = icmp eq i64 %i.cb, 0
  br i1 %i.gi, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.gh, %bb.w ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.gf, %bb.w ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.x

bb.x:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.ge
  br i1 %.not.i.us.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.gj = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.gk = add i64 %i.gj, %i.gf
  %i.gl = and i64 %i.gk, %i.ge                    ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gl
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.y, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.gj, %bb.y ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.gm, %bb.y ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.gl, %bb.y ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 2 uses
  %i.gn = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !512 ; 5 uses
  %i.go = and i64 %i.gn, 1
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge.i.us.i
  %i.gq = and i64 %i.gn, -8                       ; 2 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  %.not20.us.i = icmp eq i64 %i.gq, 0
  br i1 %.not20.us.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gs = icmp eq i64 %i.gn, %i.cd
  br i1 %i.gs, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.us.i = load ptr, ptr %i.gr, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val22.us.i = load ptr, ptr %i.ct, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.gt = icmp eq ptr %.val.us.i, %.val22.us.i
  br i1 %i.gt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i: ; preds = %bb.ab
  %i.gu = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 16
  %.val.i.i.us.i = load i128, ptr %i.gu, align 1, !noundef !24
  %.val2.i.i.us.i = load i128, ptr %i.gv, align 1, !noundef !24
  %.not51.us.i = icmp eq i128 %.val.i.i.us.i, %.val2.i.i.us.i
  br i1 %.not51.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i, %bb.ab
  %i.gw = and i64 %i.gn, 4
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, %bb.z
  %i.gy = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.gn, i64 %i.cd acq_rel monotonic, align 8, !noalias !513
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.gy, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge: ; preds = %bb.ac, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i
  %.sroa.20.0.us.i.be = phi i1 [ true, %bb.ac ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.gh, %bb.w ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.gf, %bb.w ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ge
  br i1 %.not.i.i, label %bb.ae, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hc, %bb.ae ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.hf, %bb.ae ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.he, %bb.ae ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 2 uses
  %i.gz = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !512 ; 5 uses
  %i.ha = and i64 %i.gz, 1
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.hc = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.hd = add i64 %i.hc, %i.gf
  %i.he = and i64 %i.hd, %i.ge                    ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.he
  br label %._crit_edge.i.i

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.hg = and i64 %i.gz, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.hg, 0
  %i.hh = icmp eq i64 %i.gz, %i.cd
  %or.cond.i = or i1 %i.hh, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = inttoptr i64 %i.hg to ptr
  %.val.i = load ptr, ptr %i.hi, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val22.i = load ptr, ptr %i.ct, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.hj = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.hj, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i: ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %.val.i.i.i = load i128, ptr %i.hk, align 1, !noundef !24
  %.val2.i.i.i = load i128, ptr %i.hl, align 1, !noundef !24
  %.not51.i = icmp eq i128 %.val.i.i.i, %.val2.i.i.i
  br i1 %.not51.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i, %bb.ag
  %i.hm = and i64 %i.gz, 4
  %.not62.i = icmp eq i64 %i.hm, 0
  br i1 %.not62.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i
  %i.hn = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.gz, i64 %i.cd acq_rel monotonic, align 8, !noalias !513
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.hn, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge: ; preds = %bb.ah, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i
  %.sroa.20.0.i.be = phi i1 [ true, %bb.ah ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

bb.ai:                                            ; preds = %.loopexit
  %i.ho = icmp eq i64 %i.cc, 0
  %i.hp = icmp eq i64 %i.cb, 0
  %or.cond41 = or i1 %i.ho, %i.hp
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit206, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEB1G_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.by)
          to label %.loopexit206 unwind label %.body.thread179.loopexit

.loopexit206:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63, %bb.aj, %bb.ai
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ai ], [ %.sroa.6.2, %bb.aj ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ai ], [ %.sroa.412.2, %bb.aj ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %i.hq = icmp eq ptr %i.bx, %i.av
  br i1 %i.hq, label %._crit_edge, label %bb.n

bb.ak:                                            ; preds = %._crit_edge
  %i.hr = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.hr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hs = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !29

.noexc68:                                         ; preds = %bb.al
  %i.hv = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.hv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.am, %.noexc68, %bb.al, %bb.ak
  %i.hw = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.an:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.an, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.an ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.ar, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body177, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.ip, %bb.ax ], [ %eh.lpad-body177, %bb.ar ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread179.loopexit, %.body.thread179.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body177 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit, %.body.thread179.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread179.loopexit.split-lp ] ; 2 uses
  %i.hy = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.hy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ao

bb.ao:                                            ; preds = %.body.thread
  %i.hz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ia = and i64 %i.hz, 9223372036854775807
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ap, !prof !29

bb.ap:                                            ; preds = %bb.ao
  %i.ic = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.as

.noexc71:                                         ; preds = %bb.ap
  br i1 %i.ic, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.aq, %.noexc71, %bb.ao, %.body.thread
  %i.id = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ie = icmp eq i32 %i.id, 2
  br i1 %i.ie, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73, !prof !27

bb.ar:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ax, %4
  %i.if = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.at:                                            ; preds = %bb.a
  %i.ig = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 5 uses
  %i.ii = cmpxchg ptr %i.ih, i32 0, i32 1 acquire monotonic, align 4, !noalias !514
  %i.ij = extractvalue { i32, i1 } %i.ii, 1
  br i1 %i.ij, label %.noexc76, label %bb.au, !prof !29

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ih)
          to label %.noexc76 unwind label %4

.noexc76:                                         ; preds = %bb.au, %bb.at
  %i.ik = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !514
  %i.il = and i64 %i.ik, 9223372036854775807
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %.thread, label %bb.av, !prof !29

bb.av:                                            ; preds = %.noexc76
  %i.in = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ay unwind label %4         ; 2 uses

bb.aw:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.io, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.c, align 8
  %.val53 = load i8, ptr %i.io, align 8, !range !33, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val52, i8 %.val53) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.ay:                                            ; preds = %bb.av
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 20 ; 3 uses
  %i.ir = load atomic i8, ptr %i.iq monotonic, align 1, !noalias !514
  %.not201 = icmp eq i8 %i.ir, 0
  br i1 %.not201, label %bb.az, label %bb.bc

.thread:                                          ; preds = %.noexc76
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 20 ; 3 uses
  %i.it = load atomic i8, ptr %i.is monotonic, align 1, !noalias !514
  %.not201303 = icmp eq i8 %i.it, 0
  br i1 %.not201303, label %.thread306, label %.thread308

bb.az:                                            ; preds = %bb.ay
  br i1 %i.in, label %.thread306, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread306:                                       ; preds = %.thread, %bb.az
  %i.iu = phi ptr [ %i.iq, %bb.az ], [ %i.is, %.thread ]
  %i.iv = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !515
  %i.iw = and i64 %i.iv, 9223372036854775807
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba, !prof !29

bb.ba:                                            ; preds = %.thread306
  %i.iy = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %4

.noexc79:                                         ; preds = %bb.ba
  br i1 %i.iy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.iu monotonic, align 1, !noalias !515
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bb, %.noexc79, %.thread306, %bb.az
  %i.iz = atomicrmw xchg ptr %i.ih, i32 0 release, align 4, !noalias !515
  %i.ja = icmp eq i32 %i.iz, 2
  br i1 %i.ja, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.bc:                                            ; preds = %bb.ay
  br i1 %i.in, label %.thread308, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread308:                                       ; preds = %.thread, %bb.bc
  %i.jb = phi ptr [ %i.iq, %bb.bc ], [ %i.is, %.thread ]
  %i.jc = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !515
  %i.jd = and i64 %i.jc, 9223372036854775807
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bd, !prof !29

bb.bd:                                            ; preds = %.thread308
  %i.jf = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc80 unwind label %4

.noexc80:                                         ; preds = %bb.bd
  br i1 %i.jf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc80
  store atomic i8 1, ptr %i.jb monotonic, align 1, !noalias !515
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.be, %.noexc80, %.thread308, %bb.bc
  %i.jg = atomicrmw xchg ptr %i.ih, i32 0 release, align 4, !noalias !515
  %i.jh = icmp eq i32 %i.jg, 2
  br i1 %i.jh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ih)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %4

4:                                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bd, %bb.ba, %bb.av, %bb.au
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.f, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2n_4moka14MokaCacheEntryEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB2p_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 acquire monotonic, align 4, !noalias !561
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !561
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !561
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.q = load atomic i8, ptr %i.j monotonic, align 1, !noalias !561
  %.not.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bf

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8
  %i.t = and i64 %i.s, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.t, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit200

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !24
  %i.w = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.v)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = load i64, ptr %i.x, align 8, !noundef !24
  %i.z = add i64 %i.y, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2l_4moka14MokaCacheEntryEE11with_lengthB2n_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %i.z, i64 noundef %i.w)
          to label %.noexc unwind label %.body.thread179.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !562
  %i.aa = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !562 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.f, !prof !40

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ac = ptrtoint ptr %i.aa to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !563
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit200, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load atomic i64, ptr %i.r acquire, align 8
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.af, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.ag = load atomic i64, ptr %i.r acquire, align 8
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ah, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !522

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !564, !noundef !24 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !564, !nonnull !24, !noundef !24
  %i.ak = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef 8) #65, !noalias !564
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !567, !nonnull !24, !noundef !24
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !567
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit200

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ap = load i64, ptr %i.u, align 8, !noundef !24
  %i.aq = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ap)
          to label %bb.l unwind label %.loopexit.i ; 0 uses

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #68
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBK_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2P_4moka14MokaCacheEntryEEEB2R_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #69
  br label %.body.thread

bb.l:                                             ; preds = %.peel.next.i
  %i.as = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !563
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit200, label %bb.h

.loopexit.i:                                      ; preds = %.peel.next.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.0934.lcssa.i = phi i64 [ 1, %.loopexit.i ], [ 0, %.loopexit.split-lp.i ]
  %.sroa.7.033.lcssa.i = phi i64 [ %i.ac, %.loopexit.i ], [ undef, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1T_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3Z_4moka14MokaCacheEntryEEEEEB41_(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #69
  br label %.body.thread

.body.thread179.loopexit:                         ; preds = %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread179.loopexit.split-lp:                ; preds = %.invoke, %bb.e, %bb.q, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit200:                                     ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ac, %bb.f ], [ %i.t, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i ], [ %i.ac, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.at = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %._crit_edge, label %.lr.ph239

.lr.ph239:                                        ; preds = %.loopexit200
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load i64, ptr %i.ay, align 8          ; 2 uses
  %i.az = xor i64 %.val, 8317987319222330741      ; 2 uses
  %i.ba = xor i64 %.val43, 7237128888997146477    ; 2 uses
  %i.bb = xor i64 %.val, 7816392313619706465      ; 2 uses
  %i.bc = xor i64 %.val43, 8387220255154660723    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.be = load ptr, ptr %1, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph239, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit
  %.sroa.02.0238 = phi ptr [ %i.at, %.lr.ph239 ], [ %i.bh, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit ] ; 3 uses
  %.sroa.412.0237 = phi i64 [ undef, %.lr.ph239 ], [ %.sroa.412.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit ]
  %.sroa.6.0236 = phi i64 [ undef, %.lr.ph239 ], [ %.sroa.6.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0238, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63

._crit_edge:                                      ; preds = %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit, %.loopexit200
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.at unwind label %.body.thread179.loopexit.split-lp

end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2n_4moka14MokaCacheEntryEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB2p_:bb.a

bb.ac:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.hi
  br i1 %.not.i.us.i, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.hn = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.ho = add i64 %i.hn, %i.hj
  %i.hp = and i64 %i.ho, %i.hi                    ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hp
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.ad, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.hn, %bb.ad ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.hq, %bb.ad ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.hp, %bb.ad ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ] ; 2 uses
  %i.hr = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !575 ; 5 uses
  %i.hs = and i64 %i.hr, 1
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %._crit_edge.i.us.i
  %i.hu = and i64 %i.hr, -8                       ; 2 uses
  %i.hv = inttoptr i64 %i.hu to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.hu, 0
  br i1 %.not20.us.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hw = icmp eq i64 %i.hr, %i.bn
  br i1 %i.hw, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hx = getelementptr i8, ptr %i.hv, i64 16
  %.val24.us.i = load i64, ptr %i.hx, align 8, !noundef !24 ; 2 uses
  %.val26.us.i = load i64, ptr %i.cf, align 8, !noundef !24
  %i.hy = icmp eq i64 %.val24.us.i, %.val26.us.i
  br i1 %i.hy, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i: ; preds = %bb.ag
  %.val25.us.i = load ptr, ptr %i.ce, align 8, !nonnull !24, !noundef !24
  %i.hz = getelementptr i8, ptr %i.hv, i64 8
  %.val23.us.i = load ptr, ptr %i.hz, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.us.i, ptr nonnull readonly %.val25.us.i, i64 %.val24.us.i)
  %.not53.us.i = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %.not53.us.i, label %bb.ah, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

bb.ah:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i
  %i.ia = and i64 %i.hr, 4
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.ic = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.hr, i64 %i.bn acq_rel monotonic, align 8, !noalias !576
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.ic, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge: ; preds = %bb.ai, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i, %bb.ag
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.ag ], [ true, %bb.ai ], [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i: ; preds = %bb.ab, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ true, %bb.ab ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ %i.hl, %bb.ab ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ %i.hj, %bb.ab ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.hi
  br i1 %.not.i.i, label %bb.ak, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ak, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.ig, %bb.ak ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.ij, %bb.ak ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.ii, %bb.ak ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ] ; 2 uses
  %i.id = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !575 ; 5 uses
  %i.ie = and i64 %i.id, 1
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ig = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ih = add i64 %i.ig, %i.hj
  %i.ii = and i64 %i.ih, %i.hi                    ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.ii
  br label %._crit_edge.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.ik = and i64 %i.id, -8                       ; 2 uses
  %i.il = inttoptr i64 %i.ik to ptr               ; 2 uses
  %.not20.i = icmp eq i64 %i.ik, 0
  %i.im = icmp eq i64 %i.id, %i.bn
  %or.cond.i = or i1 %i.im, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = getelementptr i8, ptr %i.il, i64 16
  %.val24.i = load i64, ptr %i.in, align 8, !noundef !24 ; 2 uses
  %.val26.i = load i64, ptr %i.cf, align 8, !noundef !24
  %i.io = icmp eq i64 %.val24.i, %.val26.i
  br i1 %i.io, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.am
  %.val25.i = load ptr, ptr %i.ce, align 8, !nonnull !24, !noundef !24
  %i.ip = getelementptr i8, ptr %i.il, i64 8
  %.val23.i = load ptr, ptr %i.ip, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.val25.i, i64 %.val24.i)
  %.not53.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not53.i, label %bb.an, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

bb.an:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i
  %i.iq = and i64 %i.id, 4
  %.not64.i = icmp eq i64 %i.iq, 0
  br i1 %.not64.i, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ir = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.id, i64 %i.bn acq_rel monotonic, align 8, !noalias !576
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.ir, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge: ; preds = %bb.ao, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i, %bb.am
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i ], [ true, %bb.ao ], [ false, %bb.am ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i

bb.ap:                                            ; preds = %.loopexit
  %i.is = icmp eq i64 %i.bm, 0
  %i.it = icmp eq i64 %i.bl, 0
  %or.cond41 = or i1 %i.is, %i.it
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i, label %bb.as

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i: ; preds = %bb.aq
  fence acquire
  %i.iu = inttoptr i64 %i.bm to ptr               ; 3 uses
  %.val.i.i.i.i.i.i.i68 = load i64, ptr %i.iu, align 8, !alias.scope !577, !noalias !578 ; 2 uses
  %i.iv = icmp eq i64 %.val.i.i.i.i.i.i.i68, 0
  br i1 %i.iv, label %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i
  %i.iw = getelementptr i8, ptr %i.iu, i64 8
  %.val1.i.i.i.i.i.i.i69 = load ptr, ptr %i.iw, align 8, !noalias !578, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i69, i64 noundef %.val.i.i.i.i.i.i.i68, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !579
  br label %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i

_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i: ; preds = %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iu, i64 noundef 72, i64 noundef 8) #65, !noalias !578
  br label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !578
  store ptr @_RINvNvMs_NtCskfeRsqx2rfd_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB25_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB4k_4moka14MokaCacheEntryEE0uE0EB4m_, ptr %i.a, align 8, !alias.scope !580, !noalias !578
  store i64 %i.bi, ptr %i.bg, align 8, !alias.scope !580, !noalias !578
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128 %i.be, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc72 unwind label %.body.thread179.loopexit

.noexc72:                                         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !578
  br label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit

_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit: ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63, %.noexc72, %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i, %bb.ap
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ap ], [ %.sroa.6.2, %.noexc72 ], [ %.sroa.6.2, %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ap ], [ %.sroa.412.2, %.noexc72 ], [ %.sroa.412.2, %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63 ]
  %i.ix = icmp eq ptr %i.bh, %i.aw
  br i1 %i.ix, label %._crit_edge, label %bb.n

bb.at:                                            ; preds = %._crit_edge
  %i.iy = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.iy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ja = and i64 %i.iz, 9223372036854775807
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc73, !prof !29

.noexc73:                                         ; preds = %bb.au
  %i.jc = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.jc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.av, %.noexc73, %bb.au, %bb.at
  %i.jd = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.je = icmp eq i32 %i.jd, 2
  br i1 %i.je, label %bb.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.aw:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.aw, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.aw ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78: ; preds = %bb.bg, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, %bb.ba, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body177, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75 ], [ %i.jw, %bb.bg ], [ %eh.lpad-body177, %bb.ba ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread179.loopexit, %.body.thread179.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body177 = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit, %.body.thread179.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread179.loopexit.split-lp ] ; 2 uses
  %i.jf = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.jf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, label %bb.ax

bb.ax:                                            ; preds = %.body.thread
  %i.jg = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.jh = and i64 %i.jg, 9223372036854775807
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, label %bb.ay, !prof !29

bb.ay:                                            ; preds = %bb.ax
  %i.jj = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc76 unwind label %bb.bb

.noexc76:                                         ; preds = %bb.ay
  br i1 %i.jj, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, label %bb.az

bb.az:                                            ; preds = %.noexc76
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75: ; preds = %bb.az, %.noexc76, %bb.ax, %.body.thread
  %i.jk = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.jl = icmp eq i32 %i.jk, 2
  br i1 %i.jl, label %bb.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78, !prof !27

bb.ba:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %bb.bg, %4
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.bc:                                            ; preds = %bb.a
  %i.jn = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 5 uses
  %i.jp = cmpxchg ptr %i.jo, i32 0, i32 1 acquire monotonic, align 4, !noalias !581
  %i.jq = extractvalue { i32, i1 } %i.jp, 1
  br i1 %i.jq, label %.noexc81, label %bb.bd, !prof !29

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.jo)
          to label %.noexc81 unwind label %4

.noexc81:                                         ; preds = %bb.bd, %bb.bc
  %i.jr = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !581
  %i.js = and i64 %i.jr, 9223372036854775807
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %.thread310, label %bb.be, !prof !29

bb.be:                                            ; preds = %.noexc81
  %i.ju = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bh unwind label %4         ; 2 uses

bb.bf:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.jv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jw = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.d, align 8
  %.val53 = load i8, ptr %i.jv, align 8, !range !33, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val52, i8 %.val53) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78 unwind label %bb.bb

bb.bh:                                            ; preds = %bb.be
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 20 ; 3 uses
  %i.jy = load atomic i8, ptr %i.jx monotonic, align 1, !noalias !581
  %.not192 = icmp eq i8 %i.jy, 0
  br i1 %.not192, label %bb.bi, label %bb.bl

.thread310:                                       ; preds = %.noexc81
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jn, i64 20 ; 3 uses
  %i.ka = load atomic i8, ptr %i.jz monotonic, align 1, !noalias !581
  %.not192312 = icmp eq i8 %i.ka, 0
  br i1 %.not192312, label %.thread315, label %.thread317

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.ju, label %.thread315, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread315:                                       ; preds = %.thread310, %bb.bi
  %i.kb = phi ptr [ %i.jx, %bb.bi ], [ %i.jz, %.thread310 ]
  %i.kc = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !582
  %i.kd = and i64 %i.kc, 9223372036854775807
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bj, !prof !29

bb.bj:                                            ; preds = %.thread315
  %i.kf = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc83 unwind label %4

.noexc83:                                         ; preds = %bb.bj
  br i1 %i.kf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc83
  store atomic i8 1, ptr %i.kb monotonic, align 1, !noalias !582
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bk, %.noexc83, %.thread315, %bb.bi
  %i.kg = atomicrmw xchg ptr %i.jo, i32 0 release, align 4, !noalias !582
  %i.kh = icmp eq i32 %i.kg, 2
  br i1 %i.kh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.bl:                                            ; preds = %bb.bh
  br i1 %i.ju, label %.thread317, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread317:                                       ; preds = %.thread310, %bb.bl
  %i.ki = phi ptr [ %i.jx, %bb.bl ], [ %i.jz, %.thread310 ]
  %i.kj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !582
  %i.kk = and i64 %i.kj, 9223372036854775807
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bm, !prof !29

bb.bm:                                            ; preds = %.thread317
  %i.km = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc84 unwind label %4

.noexc84:                                         ; preds = %bb.bm
  br i1 %i.km, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc84
  store atomic i8 1, ptr %i.ki monotonic, align 1, !noalias !582
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bn, %.noexc84, %.thread317, %bb.bl
  %i.kn = atomicrmw xchg ptr %i.jo, i32 0 release, align 4, !noalias !582
  %i.ko = icmp eq i32 %i.kn, 2
  br i1 %i.ko, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.jo)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %4

4:                                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bm, %bb.bj, %bb.be, %bb.bd
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.g, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78 unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1I_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 7 uses
  %i.g = cmpxchg ptr %i.f, i32 0, i32 1 acquire monotonic, align 4, !noalias !616
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !616
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !616
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !616
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.ay

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit259

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
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtB1E_4moka14MokaCacheEntryEEEE11with_lengthB1G_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread220.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !617
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !617 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.f, !prof !40

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !618
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit259, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !589

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !619, !noundef !24 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !619, !nonnull !24, !noundef !24
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #65, !noalias !619
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !622, !nonnull !24, !noundef !24
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !622
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit259

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ao = load i64, ptr %i.t, align 8, !noundef !24
  %i.ap = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ao)
          to label %bb.l unwind label %.loopexit.i ; 0 uses

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #68
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBK_6future17value_initializer11WaiterValueNtNtB28_4moka14MokaCacheEntryEEEEEB2a_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #69
  br label %.body.thread

bb.l:                                             ; preds = %.peel.next.i
  %i.ar = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !618
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit259, label %bb.h

.loopexit.i:                                      ; preds = %.peel.next.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.0934.lcssa.i = phi i64 [ 1, %.loopexit.i ], [ 0, %.loopexit.split-lp.i ]
  %.sroa.7.033.lcssa.i = phi i64 [ %i.ab, %.loopexit.i ], [ undef, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1T_6future17value_initializer11WaiterValueNtNtB3h_4moka14MokaCacheEntryEEEEEEEB3j_(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #69
  br label %.body.thread

.body.thread220.loopexit:                         ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread220.loopexit.split-lp:                ; preds = %.invoke, %bb.e, %bb.q, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit259:                                     ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i ], [ %i.ab, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.as = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %._crit_edge, label %.lr.ph297

.lr.ph297:                                        ; preds = %.loopexit259
  %.val53 = load i64, ptr %2, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val54 = load i64, ptr %i.ax, align 8          ; 2 uses
  %i.ay = xor i64 %.val53, 8317987319222330741
  %i.az = xor i64 %.val54, 7237128888997146477    ; 3 uses
  %i.ba = xor i64 %.val53, 7816392313619706465
  %i.bb = xor i64 %.val54, 8387220255154660707    ; 3 uses
  %i.bc = add i64 %i.az, %i.ay                    ; 3 uses
  %i.bd = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 13)
  %i.bf = xor i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 16)
  %i.bh = xor i64 %i.bd, %i.bg                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 17)
  %i.bm = xor i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 21)
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = xor i64 %i.bk, 16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.bs = add i64 %i.bq, %i.bm                    ; 3 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 32)
end_hunk_2
begin_hunk_3_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1I_:bb.a
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.ha = icmp eq i64 %i.cb, 0
  br i1 %i.ha, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ %i.gy, %bb.w ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ %i.gw, %bb.w ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.x

bb.x:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.gv
  br i1 %.not.i.us.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.hb = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.hc = add i64 %i.hb, %i.gw
  %i.hd = and i64 %i.hc, %i.gv                    ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hd
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.y, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.hb, %bb.y ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.he, %bb.y ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.hd, %bb.y ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i ] ; 2 uses
  %i.hf = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !629 ; 5 uses
  %i.hg = and i64 %i.hf, 1
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge.i.us.i
  %i.hi = and i64 %i.hf, -8                       ; 2 uses
  %i.hj = inttoptr i64 %i.hi to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.hi, 0
  br i1 %.not20.us.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hk = icmp eq i64 %i.hf, %i.cd
  br i1 %i.hk, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val23.us.i = load ptr, ptr %i.hj, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hj, i64 8
  %.val24.us.i = load i128, ptr %i.hl, align 8    ; 2 uses
  %.val25.us.i = load ptr, ptr %i.ct, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val26.us.i = load i128, ptr %i.gz, align 8    ; 2 uses
  %i.hm = icmp eq ptr %.val23.us.i, %.val25.us.i
  br i1 %i.hm, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i: ; preds = %bb.ab
  %i.hn = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %.val25.us.i, i64 16
  %.val.i.i.i.us.i = load i128, ptr %i.hn, align 1, !noundef !24
  %.val2.i.i.i.us.i = load i128, ptr %i.ho, align 1, !noundef !24
  %.not.i27.us.i = icmp ne i128 %.val.i.i.i.us.i, %.val2.i.i.i.us.i
  %i.hp = icmp ne i128 %.val24.us.i, %.val26.us.i
  %or.cond54.us.i = select i1 %.not.i27.us.i, i1 true, i1 %i.hp
  br i1 %or.cond54.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge, label %bb.ac

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i: ; preds = %bb.ab
  %.old.not.us.i = icmp eq i128 %.val24.us.i, %.val26.us.i
  br i1 %.old.not.us.i, label %bb.ac, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge

bb.ac:                                            ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i
  %i.hq = and i64 %i.hf, 4
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.hs = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.hf, i64 %i.cd acq_rel monotonic, align 8, !noalias !630
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.hs, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge: ; preds = %bb.ad, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i
  %.sroa.20.0.us.i.be = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i ], [ true, %bb.ad ], [ false, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ %i.gy, %bb.w ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ %i.gw, %bb.w ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.gv
  br i1 %.not.i.i, label %bb.af, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.af, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hw, %bb.af ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.hz, %bb.af ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.hy, %bb.af ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i ] ; 2 uses
  %i.ht = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !629 ; 5 uses
  %i.hu = and i64 %i.ht, 1
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %bb.ag, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.hw = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.hx = add i64 %i.hw, %i.gw
  %i.hy = and i64 %i.hx, %i.gv                    ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hy
  br label %._crit_edge.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.ia = and i64 %i.ht, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.ia, 0
  %i.ib = icmp eq i64 %i.ht, %i.cd
  %or.cond.i = or i1 %i.ib, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = inttoptr i64 %i.ia to ptr               ; 2 uses
  %.val23.i = load ptr, ptr %i.ic, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  %.val24.i = load i128, ptr %i.id, align 8       ; 2 uses
  %.val25.i = load ptr, ptr %i.ct, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val26.i = load i128, ptr %i.gz, align 8       ; 2 uses
  %i.ie = icmp eq ptr %.val23.i, %.val25.i
  br i1 %i.ie, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i: ; preds = %bb.ah
  %i.if = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %.val.i.i.i.i = load i128, ptr %i.if, align 1, !noundef !24
  %.val2.i.i.i.i = load i128, ptr %i.ig, align 1, !noundef !24
  %.not.i27.i = icmp ne i128 %.val.i.i.i.i, %.val2.i.i.i.i
  %i.ih = icmp ne i128 %.val24.i, %.val26.i
  %or.cond54.i = select i1 %.not.i27.i, i1 true, i1 %i.ih
  br i1 %or.cond54.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge, label %bb.ai

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i: ; preds = %bb.ah
  %.old.not.i = icmp eq i128 %.val24.i, %.val26.i
  br i1 %.old.not.i, label %bb.ai, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge

bb.ai:                                            ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i
  %i.ii = and i64 %i.ht, 4
  %.not65.i = icmp eq i64 %i.ii, 0
  br i1 %.not65.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ij = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.ht, i64 %i.cd acq_rel monotonic, align 8, !noalias !630
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.ij, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge: ; preds = %bb.aj, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i ], [ true, %bb.aj ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i

bb.ak:                                            ; preds = %.loopexit
  %i.ik = icmp eq i64 %i.cc, 0
  %i.il = icmp eq i64 %i.cb, 0
  %or.cond41 = or i1 %i.ik, %i.il
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit258, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtB1F_4moka14MokaCacheEntryEEEEB1H_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.by)
          to label %.loopexit258 unwind label %.body.thread220.loopexit

.loopexit258:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63, %bb.al, %bb.ak
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ak ], [ %.sroa.6.2, %bb.al ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ak ], [ %.sroa.412.2, %bb.al ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63 ]
  %i.im = icmp eq ptr %i.bx, %i.av
  br i1 %i.im, label %._crit_edge, label %bb.n

bb.am:                                            ; preds = %._crit_edge
  %i.in = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.in, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.io = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ip = and i64 %i.io, 9223372036854775807
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !29

.noexc68:                                         ; preds = %bb.an
  %i.ir = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ir, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ao, %.noexc68, %bb.an, %bb.am
  %i.is = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.it = icmp eq i32 %i.is, 2
  br i1 %i.it, label %bb.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.ap:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.ap, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.ap ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73: ; preds = %bb.az, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.at, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body218, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.jl, %bb.az ], [ %eh.lpad-body218, %bb.at ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread220.loopexit, %.body.thread220.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit, %.body.thread220.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread220.loopexit.split-lp ] ; 2 uses
  %i.iu = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.iu, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.body.thread
  %i.iv = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.iw = and i64 %i.iv, 9223372036854775807
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ar, !prof !29

bb.ar:                                            ; preds = %bb.aq
  %i.iy = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.au

.noexc71:                                         ; preds = %bb.ar
  br i1 %i.iy, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.as

bb.as:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.as, %.noexc71, %bb.aq, %.body.thread
  %i.iz = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ja = icmp eq i32 %i.iz, 2
  br i1 %i.ja, label %bb.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73, !prof !27

bb.at:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar, %bb.az, %4
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.av:                                            ; preds = %bb.a
  %i.jc = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 5 uses
  %i.je = cmpxchg ptr %i.jd, i32 0, i32 1 acquire monotonic, align 4, !noalias !631
  %i.jf = extractvalue { i32, i1 } %i.je, 1
  br i1 %i.jf, label %.noexc76, label %bb.aw, !prof !29

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.jd)
          to label %.noexc76 unwind label %4

.noexc76:                                         ; preds = %bb.aw, %bb.av
  %i.jg = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !631
  %i.jh = and i64 %i.jg, 9223372036854775807
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %.thread, label %bb.ax, !prof !29

bb.ax:                                            ; preds = %.noexc76
  %i.jj = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ba unwind label %4         ; 2 uses

bb.ay:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.jk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.c, align 8
  %.val51 = load i8, ptr %i.jk, align 8, !range !33, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val50, i8 %.val51) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.au

bb.ba:                                            ; preds = %bb.ax
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 20 ; 3 uses
  %i.jn = load atomic i8, ptr %i.jm monotonic, align 1, !noalias !631
  %.not253 = icmp eq i8 %i.jn, 0
  br i1 %.not253, label %bb.bb, label %bb.be

.thread:                                          ; preds = %.noexc76
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 20 ; 3 uses
  %i.jp = load atomic i8, ptr %i.jo monotonic, align 1, !noalias !631
  %.not253355 = icmp eq i8 %i.jp, 0
  br i1 %.not253355, label %.thread358, label %.thread360

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.jj, label %.thread358, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread358:                                       ; preds = %.thread, %bb.bb
  %i.jq = phi ptr [ %i.jm, %bb.bb ], [ %i.jo, %.thread ]
  %i.jr = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !632
  %i.js = and i64 %i.jr, 9223372036854775807
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bc, !prof !29

bb.bc:                                            ; preds = %.thread358
  %i.ju = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %4

.noexc78:                                         ; preds = %bb.bc
  br i1 %i.ju, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.jq monotonic, align 1, !noalias !632
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bd, %.noexc78, %.thread358, %bb.bb
  %i.jv = atomicrmw xchg ptr %i.jd, i32 0 release, align 4, !noalias !632
  %i.jw = icmp eq i32 %i.jv, 2
  br i1 %i.jw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

bb.be:                                            ; preds = %bb.ba
  br i1 %i.jj, label %.thread360, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread360:                                       ; preds = %.thread, %bb.be
  %i.jx = phi ptr [ %i.jm, %bb.be ], [ %i.jo, %.thread ]
  %i.jy = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !632
  %i.jz = and i64 %i.jy, 9223372036854775807
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bf, !prof !29

bb.bf:                                            ; preds = %.thread360
  %i.kb = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %4

.noexc79:                                         ; preds = %bb.bf
  br i1 %i.kb, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.jx monotonic, align 1, !noalias !632
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bg, %.noexc79, %.thread360, %bb.be
  %i.kc = atomicrmw xchg ptr %i.jd, i32 0 release, align 4, !noalias !632
  %i.kd = icmp eq i32 %i.kc, 2
  br i1 %i.kd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !27

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.jd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %4

4:                                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bf, %bb.bc, %bb.ax, %bb.aw
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.f, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.au
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.06.0.copyload = load i64, ptr %1, align 8, !alias.scope !645 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !645 ; 3 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.57.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !645
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !646
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !646 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs63DIHKhvmTb_10lance_core.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs63DIHKhvmTb_10lance_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !647
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.a
  store i64 %.sroa.06.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.57.0.copyload, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.g, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputReEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 32, 71) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !665
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 1) #65, !noalias !665 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs63DIHKhvmTb_10lance_core.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %2) #68, !noalias !666
  unreachable

_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !667
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !668
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !668 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs63DIHKhvmTb_10lance_core.exit, !prof !40

bb.c:                                             ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs63DIHKhvmTb_10lance_core.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !669
  resume { ptr, i32 } %i.e

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvXs1_NtCscI6d9CVNmLh_4core7convertReINtB5_4IntoNtNtCs40k4W9msRzi_5alloc6string6StringE4intoCs63DIHKhvmTb_10lance_core.exit
  store i64 %2, ptr %i.c, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.h, align 8
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB6_6Schema17project_by_schemaRNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [192 x i8], align 8               ; 5 uses
  %i.g = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.617 = alloca [56 x i8], align 8          ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.k = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs7_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE8try_from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.l = load i64, ptr %i.j, align 8, !range !26, !noundef !24 ; 10 uses
  %i.m = icmp eq i64 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 56, i1 false)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.529.0.copyload = load i64, ptr %.sroa.529.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.l, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %.sroa.529.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 0, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !24, !noundef !24 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !24 ; 9 uses
  %.idx = mul nuw nsw i64 %i.t, 192
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not5098 = icmp eq i64 %i.t, 0
  br i1 %.not5098, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.617.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.819.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.q
  %i.v = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.ax, %bb.q ] ; 6 uses
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.q ] ; 8 uses
  %.sroa.06.099 = phi ptr [ %i.r, %.lr.ph ], [ %i.x, %bb.q ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.06.099, i64 192 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.099, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.06.099, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !24 ; 5 uses
  %i.ac = icmp samesign ult i64 %i.ab, 16
  br i1 %i.ac, label %.preheader.i.i, label %bb.e

.preheader.i.i:                                   ; preds = %bb.d
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.ab)
          to label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit unwind label %.loopexit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.f
  %.sroa.01.05.i.i = phi i64 [ %i.ah, %bb.f ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.05.i.i
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !682, !noundef !24
  %i.ag = icmp eq i8 %i.af, 46
  br i1 %i.ag, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread85, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.ab
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

._crit_edge:                                      ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_3
