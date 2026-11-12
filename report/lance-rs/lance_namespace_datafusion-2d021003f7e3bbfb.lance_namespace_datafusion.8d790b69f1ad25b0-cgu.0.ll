Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15008
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  br i1 %i.i, label %bb.b, label %bb.bp

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !598
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !598
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.q = load atomic i8, ptr %i.j monotonic, align 1, !noalias !598
  %.not.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bs

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8
  %i.t = and i64 %i.s, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.t, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit250.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !110
  %i.w = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.v)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = load i64, ptr %i.x, align 8, !noundef !110
  %i.z = add i64 %i.y, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2u_10ValueEntryB1z_NtB1B_16CachedReaderDataEEE11with_lengthCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %i.z, i64 noundef %i.w)
          to label %.noexc unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !599
  %i.aa = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !599 ; 8 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.f, !prof !113

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ac = ptrtoint ptr %i.aa to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !600
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit250.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load atomic i64, ptr %i.r acquire, align 8
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.af, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.n
  %i.ag = load atomic i64, ptr %i.r acquire, align 8
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ah, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !550

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !601, !noundef !110 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !601, !nonnull !110, !noundef !110
  %i.ak = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef 8) #44, !noalias !601
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !604, !nonnull !110, !noundef !110
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !604
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 48, i64 noundef 8) #44
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 48, i64 noundef 8) #44
  br label %.loopexit250.a

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.aq = load i64, ptr %i.u, align 8, !noundef !110
  %i.ar = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.aq)
          to label %bb.n unwind label %.loopexit.i ; 0 uses

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #48
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtB2Y_10ValueEntryB23_NtB25_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #49
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.n:                                             ; preds = %.peel.next.i
  %i.au = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !600
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit250.a, label %bb.h

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
  %.sroa.7.033.lcssa.i = phi i64 [ %i.ac, %.loopexit.i ], [ undef, %.loopexit.split-lp.i ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtB47_10ValueEntryB3c_NtB3e_16CachedReaderDataEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #49
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bf, %.invoke, %._crit_edge, %bb.t, %bb.e
  %lpad.loopexit.split-lp441 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit250.a:                                   ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ac, %bb.f ], [ %i.t, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.ac, %bb.n ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.aw = load ptr, ptr %0, align 8, !nonnull !110, !noundef !110 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !110 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %._crit_edge, label %.lr.ph289

.lr.ph289:                                        ; preds = %.loopexit250.a
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load i64, ptr %i.bb, align 8          ; 2 uses
  %i.bc = xor i64 %.val, 8317987319222330741      ; 2 uses
  %i.bd = xor i64 %.val43, 7237128888997146477    ; 2 uses
  %i.be = xor i64 %.val, 7816392313619706465      ; 2 uses
  %i.bf = xor i64 %.val43, 8387220255154660723    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph289, %.loopexit249
  %.sroa.02.0288 = phi ptr [ %i.aw, %.lr.ph289 ], [ %i.bh, %.loopexit249 ] ; 3 uses
  %.sroa.412.0287 = phi i64 [ undef, %.lr.ph289 ], [ %.sroa.412.5, %.loopexit249 ]
  %.sroa.6.0286 = phi i64 [ undef, %.lr.ph289 ], [ %.sroa.6.5, %.loopexit249 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0288, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63

._crit_edge:                                      ; preds = %.loopexit249, %.loopexit250.a
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.bg unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63: ; preds = %.loopexit, %bb.q
  %.sroa.6.1 = phi i64 [ %.sroa.6.0286, %bb.q ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0287, %bb.q ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.q ], [ %.not37, %.loopexit ]
  %i.bi = load atomic i64, ptr %.sroa.02.0288 acquire, align 8 ; 7 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %.loopexit249

bb.r:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63
  %i.bl = and i64 %i.bi, -8                       ; 3 uses
  %i.bm = or i64 %i.bi, 4                         ; 7 uses
  %4 = icmp eq i64 %i.bl, 0                       ; 2 uses
  br i1 %.sroa.010.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  br i1 %4, label %bb.t, label %bb.u, !prof !113

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #48
          to label %bb.v unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.bn = load i64, ptr %i.bg, align 8, !noundef !110 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.412.1, %i.bn
  br i1 %i.bo, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.bs, %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !110, !noundef !110
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.412.1 ; 2 uses
  %i.br = and i64 %.sroa.6.1, 4
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.04.0284 = phi i64 [ %i.bu, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.6.1, %bb.w ]
  %i.bt = cmpxchg weak ptr %i.bq, i64 %.sroa.04.0284, i64 %i.bm acq_rel monotonic, align 8, !noalias !605
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.lr.ph
  %i.bu = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bv = and i64 %i.bu, 4
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ax, %bb.az, %._crit_edge.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i, %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, %bb.ap, %bb.as, %._crit_edge.i.us.i, %bb.aw, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.lr.ph, %bb.w, %bb.x
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.w ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bm, %bb.aw ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.as ], [ %.sroa.6.1, %bb.ap ], [ %.sroa.6.1, %bb.az ], [ %.sroa.6.1, %bb.ax ], [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i ], [ %i.bm, %bb.bd ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.w ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.aw ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.as ], [ %.sroa.412.1, %bb.ap ], [ %.sroa.412.1, %bb.az ], [ %.sroa.412.1, %bb.ax ], [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i ], [ %.sroa.8.1.i, %bb.bd ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i ], [ false, %bb.x ], [ true, %bb.w ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ true, %.lr.ph ], [ true, %bb.aw ], [ false, %._crit_edge.i.us.i ], [ false, %bb.as ], [ false, %bb.ap ], [ false, %bb.az ], [ false, %bb.ax ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i ], [ true, %bb.bd ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.bx = cmpxchg weak ptr %.sroa.02.0288, i64 %i.bi, i64 1 acq_rel monotonic, align 8, !noalias !606
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.bx, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.be, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63

bb.x:                                             ; preds = %bb.r
  br i1 %4, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %5 = inttoptr i64 %i.bl to ptr                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !607, !noalias !608, !nonnull !110, !noundef !110 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !609, !noalias !610, !nonnull !110, !noundef !110 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !609, !noalias !610, !noundef !110 ; 6 uses
  %i.cc = and i64 %i.cb, 7                        ; 8 uses
  %i.cd = and i64 %i.cb, -8                       ; 2 uses
  %.not242.a = icmp eq i64 %i.cd, 0
  br i1 %.not242.a, label %._crit_edge.i142, label %.lr.ph.i135

._crit_edge.i142.loopexit:                        ; preds = %.lr.ph.i135
  %i.ce = and i64 %i.cb, -8
  br label %._crit_edge.i142

._crit_edge.i142:                                 ; preds = %._crit_edge.i142.loopexit, %bb.y
  %.sroa.44.7 = phi i64 [ %i.bf, %bb.y ], [ %i.dk, %._crit_edge.i142.loopexit ] ; 2 uses
  %.sroa.30.7 = phi i64 [ %i.bd, %bb.y ], [ %i.di, %._crit_edge.i142.loopexit ] ; 6 uses
  %.sroa.16.7 = phi i64 [ %i.be, %bb.y ], [ %i.dl, %._crit_edge.i142.loopexit ] ; 2 uses
  %.sroa.0166.7 = phi i64 [ %i.bc, %bb.y ], [ %i.dm, %._crit_edge.i142.loopexit ] ; 2 uses
  %.sroa.0.1.lcssa.i125 = phi i64 [ 0, %bb.y ], [ %i.ce, %._crit_edge.i142.loopexit ] ; 3 uses
  %i.cf = icmp samesign ugt i64 %i.cc, 3
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i142
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.0.1.lcssa.i125
  %.sroa.014.0.copyload.i17.i134 = load i32, ptr %i.cg, align 1, !alias.scope !611, !noalias !612
  %i.ch = zext i32 %.sroa.014.0.copyload.i17.i134 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i142
  %.sroa.03.0.i11.i126 = phi i64 [ 4, %bb.z ], [ 0, %._crit_edge.i142 ] ; 5 uses
  %.sroa.0.0.i12.i127 = phi i64 [ %i.ch, %bb.z ], [ 0, %._crit_edge.i142 ] ; 2 uses
  %i.ci = or disjoint i64 %.sroa.03.0.i11.i126, 1
  %i.cj = icmp samesign ult i64 %i.ci, %i.cc
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr i8, ptr %i.bz, i64 %.sroa.0.1.lcssa.i125
  %i.cl = getelementptr i8, ptr %i.ck, i64 %.sroa.03.0.i11.i126
  %.sroa.015.0.copyload.i16.i133 = load i16, ptr %i.cl, align 1, !alias.scope !611, !noalias !612
  %i.cm = zext i16 %.sroa.015.0.copyload.i16.i133 to i64
  %i.cn = shl nuw nsw i64 %.sroa.03.0.i11.i126, 3
  %i.co = shl nuw nsw i64 %i.cm, %i.cn
  %i.cp = or i64 %i.co, %.sroa.0.0.i12.i127
  %i.cq = or disjoint i64 %.sroa.03.0.i11.i126, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.03.1.i13.i128 = phi i64 [ %i.cq, %bb.ab ], [ %.sroa.03.0.i11.i126, %bb.aa ] ; 3 uses
  %.sroa.0.1.i14.i129 = phi i64 [ %i.cp, %bb.ab ], [ %.sroa.0.0.i12.i127, %bb.aa ] ; 2 uses
  %i.cr = icmp samesign ult i64 %.sroa.03.1.i13.i128, %i.cc
  br i1 %i.cr, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145

.lr.ph.i135:                                      ; preds = %bb.y, %.lr.ph.i135
  %i.cs = phi i64 [ %i.dl, %.lr.ph.i135 ], [ %i.be, %bb.y ]
  %i.ct = phi i64 [ %i.di, %.lr.ph.i135 ], [ %i.bd, %bb.y ] ; 3 uses
  %i.cu = phi i64 [ %i.dk, %.lr.ph.i135 ], [ %i.bf, %bb.y ]
  %.sroa.0.119.i140 = phi i64 [ %i.dn, %.lr.ph.i135 ], [ 0, %bb.y ] ; 2 uses
  %i.cv = phi i64 [ %i.dm, %.lr.ph.i135 ], [ %i.bc, %bb.y ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.0.119.i140
  %.sroa.07.0.copyload.i141 = load i64, ptr %i.cw, align 1, !alias.scope !613, !noalias !612 ; 2 uses
  %i.cx = xor i64 %.sroa.07.0.copyload.i141, %i.cu ; 3 uses
  %i.cy = add i64 %i.cv, %i.ct                    ; 3 uses
  %i.cz = add i64 %i.cx, %i.cs                    ; 2 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 13)
  %i.db = xor i64 %i.cy, %i.da                    ; 3 uses
  %i.dc = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 16)
  %i.dd = xor i64 %i.cz, %i.dc                    ; 3 uses
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 32)
  %i.df = add i64 %i.cz, %i.db                    ; 3 uses
  %i.dg = add i64 %i.dd, %i.de                    ; 2 uses
  %i.dh = tail call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 17)
  %i.di = xor i64 %i.df, %i.dh                    ; 2 uses
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 21)
  %i.dk = xor i64 %i.dj, %i.dg                    ; 2 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 32) ; 2 uses
  %i.dm = xor i64 %i.dg, %.sroa.07.0.copyload.i141 ; 2 uses
  %i.dn = add nuw i64 %.sroa.0.119.i140, 8        ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.cd
  br i1 %i.do, label %.lr.ph.i135, label %._crit_edge.i142.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145: ; preds = %bb.ac
  %i.dp = add i64 %i.cb, 1                        ; 2 uses
  %i.dq = icmp eq i64 %i.cc, 0
  br i1 %i.dq, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145
  %i.dr = shl nuw nsw i64 %i.cc, 3
  %i.ds = shl nuw nsw i64 255, %i.dr
  %i.dt = or i64 %i.ds, %.sroa.0.1.i14.i129
  br label %bb.ad

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93: ; preds = %bb.ac
  %i.du = add i64 %.sroa.03.1.i13.i128, %.sroa.0.1.lcssa.i125 ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.cb
  tail call void @llvm.assume(i1 %i.dv), !noalias !612
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.du
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !611, !noalias !612, !noundef !110
  %i.dy = zext i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %.sroa.03.1.i13.i128, 3
  %i.ea = shl nuw nsw i64 %i.dy, %i.dz
  %i.eb = add i64 %i.cb, 1                        ; 2 uses
  %i.ec = shl nuw nsw i64 %i.cc, 3
  %i.ed = shl nuw i64 255, %i.ec
  %i.ee = or i64 %i.ea, %i.ed
  %i.ef = or i64 %i.ee, %.sroa.0.1.i14.i129       ; 3 uses
  %.not243 = icmp eq i64 %i.cc, 7
  br i1 %.not243, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116, label %bb.ad

bb.ad:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93
  %i.eg = phi i64 [ %i.dt, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread ], [ %i.ef, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93 ]
  %i.eh = phi i64 [ %i.dp, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread ], [ %i.eb, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93 ]
  %i.ei = add nuw nsw i64 %i.cc, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145, %bb.ad
  %.ph = phi i64 [ %i.eh, %bb.ad ], [ %i.dp, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %.sroa.68.1.ph = phi i64 [ %i.eg, %bb.ad ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ]
  %storemerge.i103.ph = phi i64 [ %i.ei, %bb.ad ], [ 1, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit145 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !609, !noalias !610, !noundef !110 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !614
  store i64 %i.ek, ptr %i.a, align 8, !noalias !614
  %i.el = sub nuw nsw i64 8, %storemerge.i103.ph  ; 3 uses
  %i.em = icmp samesign ult i64 %storemerge.i103.ph, 5 ; 3 uses
  %i.en = and i64 %i.ek, 4294967295
  %.sroa.03.0.i.i = select i1 %i.em, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i = select i1 %i.em, i64 %i.en, i64 0 ; 2 uses
  %i.eo = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.ep = icmp samesign ult i64 %i.eo, %i.el
  br i1 %i.ep, label %bb.ae, label %bb.af

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116: ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93
  %i.eq = xor i64 %i.ef, %.sroa.44.7              ; 3 uses
  %i.er = add i64 %.sroa.0166.7, %.sroa.30.7      ; 3 uses
  %i.es = add i64 %i.eq, %.sroa.16.7              ; 2 uses
  %i.et = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.7, i64 %.sroa.30.7, i64 13)
  %i.eu = xor i64 %i.er, %i.et                    ; 3 uses
  %i.ev = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 16)
  %i.ew = xor i64 %i.es, %i.ev                    ; 3 uses
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 32)
  %i.ey = add i64 %i.es, %i.eu                    ; 3 uses
  %i.ez = add i64 %i.ew, %i.ex                    ; 2 uses
  %i.fa = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 17)
  %i.fb = xor i64 %i.ey, %i.fa
  %i.fc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 21)
  %i.fd = xor i64 %i.fc, %i.ez
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 32)
  %i.ff = xor i64 %i.ez, %i.ef
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !609, !noalias !610, !noundef !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !614
  store i64 %i.fh, ptr %i.a, align 8, !noalias !614
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.em, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !615, !noalias !612
  %i.fi = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.fj = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.fk = shl nuw nsw i64 %i.fi, %i.fj
  %i.fl = or i64 %i.fk, %.sroa.0.0.i10.i
  %i.fm = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread
  %.sroa.03.1.i.i = phi i64 [ %i.fm, %bb.ae ], [ %.sroa.03.0.i.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.fl, %bb.ae ], [ %.sroa.0.0.i10.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116.thread ] ; 2 uses
  %i.fn = icmp samesign ult i64 %.sroa.03.1.i.i, %i.el
  br i1 %i.fn, label %bb.ag, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !615, !noalias !612, !noundef !110
  %i.fq = zext i8 %i.fp to i64
  %i.fr = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.fs = shl nuw nsw i64 %i.fq, %i.fr
  %i.ft = or i64 %i.fs, %.sroa.0.1.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.2.i.i = phi i64 [ %i.ft, %bb.ag ], [ %.sroa.0.1.i.i, %bb.af ]
  %i.fu = shl nuw nsw i64 %storemerge.i103.ph, 3
  %i.fv = and i64 %i.fu, 56
  %i.fw = shl i64 %.sroa.0.2.i.i, %i.fv
  %i.fx = or i64 %i.fw, %.sroa.68.1.ph            ; 2 uses
  %i.fy = xor i64 %i.fx, %.sroa.44.7              ; 3 uses
  %i.fz = add i64 %.sroa.0166.7, %.sroa.30.7      ; 3 uses
  %i.ga = add i64 %i.fy, %.sroa.16.7              ; 2 uses
  %i.gb = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.7, i64 %.sroa.30.7, i64 13)
  %i.gc = xor i64 %i.fz, %i.gb                    ; 3 uses
  %i.gd = tail call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 16)
  %i.ge = xor i64 %i.ga, %i.gd                    ; 3 uses
  %i.gf = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 32)
  %i.gg = add i64 %i.ga, %i.gc                    ; 3 uses
  %i.gh = add i64 %i.ge, %i.gf                    ; 2 uses
  %i.gi = tail call noundef i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 17)
  %i.gj = xor i64 %i.gg, %i.gi
  %i.gk = tail call noundef i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 21)
  %i.gl = xor i64 %i.gk, %i.gh
  %i.gm = tail call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 32)
  %i.gn = xor i64 %i.gh, %i.fx
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i
  %.in = phi i64 [ %i.eb, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116 ], [ %.ph, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ]
  %.sroa.44.0 = phi i64 [ %i.fd, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116 ], [ %i.gl, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 2 uses
  %.sroa.30.0 = phi i64 [ %i.fb, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116 ], [ %i.gj, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 4 uses
  %.sroa.16.0 = phi i64 [ %i.fe, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116 ], [ %i.gm, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 2 uses
  %.sroa.0166.0 = phi i64 [ %i.ff, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116 ], [ %i.gn, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 2 uses
  %.sroa.0.0.i84 = phi i64 [ 0, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit116 ], [ %i.el, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 5 uses
  %i.go = sub nuw nsw i64 8, %.sroa.0.0.i84       ; 2 uses
  %i.gp = and i64 %i.go, 7                        ; 3 uses
  %i.gq = and i64 %i.go, 8
  %i.gr = icmp samesign ult i64 %.sroa.0.0.i84, %i.gq
  br i1 %i.gr, label %.lr.ph.i86, label %._crit_edge.i87

._crit_edge.i87:                                  ; preds = %.lr.ph.i86, %bb.ah
  %.sroa.44.1 = phi i64 [ %.sroa.44.0, %bb.ah ], [ %i.ib, %.lr.ph.i86 ]
  %.sroa.30.1 = phi i64 [ %.sroa.30.0, %bb.ah ], [ %i.hz, %.lr.ph.i86 ] ; 3 uses
  %.sroa.16.1 = phi i64 [ %.sroa.16.0, %bb.ah ], [ %i.ic, %.lr.ph.i86 ]
  %.sroa.0166.1 = phi i64 [ %.sroa.0166.0, %bb.ah ], [ %i.id, %.lr.ph.i86 ]
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.i84, %bb.ah ], [ %i.ie, %.lr.ph.i86 ] ; 3 uses
  %i.gs = icmp samesign ugt i64 %i.gp, 3
  br i1 %i.gs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i87
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i17.i = load i32, ptr %i.gt, align 1, !alias.scope !616, !noalias !612
  %i.gu = zext i32 %.sroa.014.0.copyload.i17.i to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i87
  %.sroa.03.0.i11.i = phi i64 [ 4, %bb.ai ], [ 0, %._crit_edge.i87 ] ; 5 uses
  %.sroa.0.0.i12.i = phi i64 [ %i.gu, %bb.ai ], [ 0, %._crit_edge.i87 ] ; 2 uses
  %i.gv = or disjoint i64 %.sroa.03.0.i11.i, 1
  %i.gw = icmp samesign ult i64 %i.gv, %i.gp
  br i1 %i.gw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gx = getelementptr i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 %.sroa.03.0.i11.i
  %.sroa.015.0.copyload.i16.i = load i16, ptr %i.gy, align 1, !alias.scope !616, !noalias !612
  %i.gz = zext i16 %.sroa.015.0.copyload.i16.i to i64
  %i.ha = shl nuw nsw i64 %.sroa.03.0.i11.i, 3
  %i.hb = shl nuw nsw i64 %i.gz, %i.ha
  %i.hc = or i64 %i.hb, %.sroa.0.0.i12.i
  %i.hd = or disjoint i64 %.sroa.03.0.i11.i, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.03.1.i13.i = phi i64 [ %i.hd, %bb.ak ], [ %.sroa.03.0.i11.i, %bb.aj ] ; 3 uses
  %.sroa.0.1.i14.i = phi i64 [ %i.hc, %bb.ak ], [ %.sroa.0.0.i12.i, %bb.aj ] ; 2 uses
  %i.he = icmp samesign ult i64 %.sroa.03.1.i13.i, %i.gp
  br i1 %i.he, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hf = add nuw nsw i64 %.sroa.03.1.i13.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.hg = icmp samesign ult i64 %i.hf, 8
  tail call void @llvm.assume(i1 %i.hg), !noalias !612
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hf
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !616, !noalias !612, !noundef !110
  %i.hj = zext i8 %i.hi to i64
  %i.hk = shl nuw nsw i64 %.sroa.03.1.i13.i, 3
  %i.hl = shl nuw nsw i64 %i.hj, %i.hk
  %i.hm = or i64 %i.hl, %.sroa.0.1.i14.i
  br label %bb.an

.lr.ph.i86:                                       ; preds = %bb.ah
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.0.i84
  %.sroa.07.0.copyload.i = load i64, ptr %i.hn, align 1, !alias.scope !617, !noalias !612 ; 2 uses
  %i.ho = xor i64 %.sroa.07.0.copyload.i, %.sroa.44.0 ; 3 uses
  %i.hp = add i64 %.sroa.0166.0, %.sroa.30.0      ; 3 uses
  %i.hq = add i64 %i.ho, %.sroa.16.0              ; 2 uses
  %i.hr = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.0, i64 %.sroa.30.0, i64 13)
  %i.hs = xor i64 %i.hp, %i.hr                    ; 3 uses
  %i.ht = tail call noundef i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 16)
  %i.hu = xor i64 %i.hq, %i.ht                    ; 3 uses
  %i.hv = tail call noundef i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 32)
  %i.hw = add i64 %i.hq, %i.hs                    ; 3 uses
  %i.hx = add i64 %i.hu, %i.hv                    ; 2 uses
  %i.hy = tail call noundef i64 @llvm.fshl.i64(i64 %i.hs, i64 %i.hs, i64 17)
  %i.hz = xor i64 %i.hw, %i.hy
  %i.ia = tail call noundef i64 @llvm.fshl.i64(i64 %i.hu, i64 %i.hu, i64 21)
  %i.ib = xor i64 %i.ia, %i.hx
  %i.ic = tail call noundef i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 32)
  %i.id = xor i64 %i.hx, %.sroa.07.0.copyload.i
  %i.ie = add nuw nsw i64 %.sroa.0.0.i84, 8
  br label %._crit_edge.i87

bb.an:                                            ; preds = %bb.al, %bb.am
  %.sroa.68.0 = phi i64 [ %.sroa.0.1.i14.i, %bb.al ], [ %i.hm, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !614
  %i.if = shl i64 %.in, 56
  %i.ig = add i64 %i.if, 576460752303423488
  %i.ih = or i64 %.sroa.68.0, %i.ig               ; 2 uses
  %i.ii = xor i64 %i.ih, %.sroa.44.1              ; 3 uses
  %i.ij = tail call noundef i64 @llvm.fshl.i64(i64 %i.ii, i64 %i.ii, i64 16)
  %i.ik = add i64 %i.ii, %.sroa.16.1              ; 2 uses
  %i.il = xor i64 %i.ij, %i.ik                    ; 3 uses
  %i.im = add i64 %.sroa.0166.1, %.sroa.30.1      ; 3 uses
  %i.in = tail call noundef i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 32)
  %i.io = add i64 %i.il, %i.in                    ; 2 uses
  %i.ip = xor i64 %i.io, %i.ih
  %i.iq = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.1, i64 %.sroa.30.1, i64 13)
  %i.ir = xor i64 %i.im, %i.iq                    ; 3 uses
  %i.is = add i64 %i.ik, %i.ir                    ; 3 uses
  %i.it = tail call noundef i64 @llvm.fshl.i64(i64 %i.ir, i64 %i.ir, i64 17)
  %i.iu = xor i64 %i.is, %i.it                    ; 3 uses
  %i.iv = add i64 %i.ip, %i.iu                    ; 3 uses
  %6 = tail call noundef i64 @llvm.fshl.i64(i64 %i.iu, i64 %i.iu, i64 13)
  %i.iw = xor i64 %i.iv, %6                       ; 3 uses
  %i.ix = tail call noundef i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 21)
  %i.iy = xor i64 %i.ix, %i.io                    ; 3 uses
  %i.iz = tail call noundef i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 32)
  %i.ja = xor i64 %i.iz, 255
  %i.jb = add i64 %i.iy, %i.ja                    ; 2 uses
  %7 = add i64 %i.iw, %i.jb                       ; 3 uses
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %i.iw, i64 %i.iw, i64 17)
  %i.jc = xor i64 %7, %8                          ; 3 uses
  %i.jd = tail call noundef i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 13)
  %i.je = tail call noundef i64 @llvm.fshl.i64(i64 %i.iy, i64 %i.iy, i64 16)
  %i.jf = xor i64 %i.je, %i.jb                    ; 3 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 32)
  %10 = add i64 %i.jf, %9                         ; 2 uses
  %i.jg = add i64 %i.jc, %10                      ; 3 uses
  %i.jh = xor i64 %i.jd, %i.jg                    ; 3 uses
  %i.ji = tail call noundef i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 17)
  %i.jj = tail call noundef i64 @llvm.fshl.i64(i64 %i.jf, i64 %i.jf, i64 21)
  %i.jk = xor i64 %i.jj, %10                      ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 32)
  %12 = add i64 %i.jk, %11                        ; 2 uses
  %i.jl = add i64 %i.jh, %12                      ; 3 uses
  %i.jm = xor i64 %i.ji, %i.jl                    ; 3 uses
  %i.jn = tail call noundef i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 13)
  %i.jo = tail call noundef i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 16)
  %i.jp = xor i64 %i.jo, %12                      ; 3 uses
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 32)
  %14 = add i64 %i.jp, %13                        ; 2 uses
  %i.jq = add i64 %i.jm, %14
  %i.jr = xor i64 %i.jn, %i.jq                    ; 3 uses
  %i.js = tail call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 21)
  %15 = xor i64 %i.js, %14                        ; 3 uses
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 32)
  %17 = add i64 %15, %16                          ; 2 uses
  %i.jt = add i64 %i.jr, %17                      ; 3 uses
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 32)
  %i.ju = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %i.jv = xor i64 %i.ju, %17                      ; 2 uses
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 21)
  %i.jw = tail call noundef i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 17)
  %20 = xor i64 %19, %i.jw
  %i.jx = xor i64 %20, %18
  %i.jy = xor i64 %i.jx, %i.jt
  %i.jz = load i64, ptr %i.bg, align 8, !noundef !110 ; 2 uses
  %i.ka = add i64 %i.jz, -1                       ; 5 uses
  %i.kb = and i64 %i.ka, %i.jy                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.jz, 0
  br i1 %.not.i64, label %.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kc = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !110, !noundef !110 ; 3 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kb ; 2 uses
  %21 = and i64 %i.bi, 2
  %i.ke = icmp eq i64 %21, 0
  br i1 %i.ke, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ %i.kd, %bb.ao ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ %i.kb, %bb.ao ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.ka
  br i1 %.not.i.us.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.kf = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.kg = add i64 %i.kf, %i.kb
  %i.kh = and i64 %i.kg, %i.ka                    ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kh
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.aq, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.kf, %bb.aq ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.ki, %bb.aq ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.kh, %bb.aq ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ] ; 2 uses
  %i.kj = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !618 ; 5 uses
  %i.kk = and i64 %i.kj, 1
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %._crit_edge.i.us.i
  %i.km = and i64 %i.kj, -8                       ; 2 uses
  %i.kn = inttoptr i64 %i.km to ptr
  %.not20.us.i = icmp eq i64 %i.km, 0
  br i1 %.not20.us.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ko = icmp eq i64 %i.kj, %i.bm
  br i1 %i.ko, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val.us.i = load ptr, ptr %i.kn, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %.val22.us.i = load ptr, ptr %5, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %i.kp = icmp eq ptr %.val.us.i, %.val22.us.i
  br i1 %i.kp, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 32
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !623, !noundef !110 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 32
  %i.kt = load i64, ptr %i.ks, align 8, !alias.scope !624, !noundef !110
  %i.ku = icmp eq i64 %i.kr, %i.kt
  br i1 %i.ku, label %bb.av, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

bb.av:                                            ; preds = %bb.au
  %i.kv = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8, !alias.scope !624, !nonnull !110, !noundef !110
  %i.kx = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !623, !nonnull !110, !noundef !110
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull %i.ky, ptr nonnull %i.kw, i64 %i.kr), !noalias !625
  %i.kz = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %i.kz, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i: ; preds = %bb.av
  %i.la = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 40
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !623, !noundef !110
  %i.lc = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 40
  %i.ld = load i64, ptr %i.lc, align 8, !alias.scope !624, !noundef !110
  %.not53.us.i = icmp eq i64 %i.lb, %i.ld
  br i1 %.not53.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, %bb.at
  %i.le = and i64 %i.kj, 4
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, %bb.ar
  %i.lg = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.kj, i64 %i.bm acq_rel monotonic, align 8, !noalias !626
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.lg, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge: ; preds = %bb.aw, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, %bb.av, %bb.au
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.au ], [ true, %bb.aw ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ], [ false, %bb.av ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i

.invoke:                                          ; preds = %bb.an, %bb.u
  %i.lh = phi i64 [ %.sroa.412.1, %bb.u ], [ %i.kb, %bb.an ]
  %i.li = phi i64 [ %i.bn, %bb.u ], [ 0, %bb.an ]
  %i.lj = phi ptr [ @44, %bb.u ], [ @26, %bb.an ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.lh, i64 noundef %i.li, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lj) #48
          to label %.cont unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ %i.kd, %bb.ao ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ %i.kb, %bb.ao ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ka
  br i1 %.not.i.i, label %bb.ay, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ay, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.17.1.i = phi i64 [ %i.ln, %bb.ay ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.lq, %bb.ay ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.lp, %bb.ay ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.lk = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !618 ; 5 uses
  %i.ll = and i64 %i.lk, 1
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %bb.az, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.ln = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.lo = add i64 %i.ln, %i.kb
  %i.lp = and i64 %i.lo, %i.ka                    ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.lp
  br label %._crit_edge.i.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.lr = and i64 %i.lk, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.lr, 0
  %i.ls = icmp eq i64 %i.lk, %i.bm
  %or.cond.i = or i1 %i.ls, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lt = inttoptr i64 %i.lr to ptr
  %.val.i = load ptr, ptr %i.lt, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %.val22.i = load ptr, ptr %5, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %i.lu = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.lu, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.lv = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !alias.scope !623, !noundef !110 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.val22.i, i64 32
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !624, !noundef !110
  %i.lz = icmp eq i64 %i.lw, %i.ly
  br i1 %i.lz, label %bb.bc, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.ma = getelementptr inbounds nuw i8, ptr %.val22.i, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !624, !nonnull !110, !noundef !110
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !alias.scope !623, !nonnull !110, !noundef !110
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.md, ptr nonnull %i.mb, i64 %i.lw), !noalias !625
  %i.me = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.me, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.bc
  %i.mf = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.mg = load i64, ptr %i.mf, align 8, !alias.scope !623, !noundef !110
  %i.mh = getelementptr inbounds nuw i8, ptr %.val22.i, i64 40
  %i.mi = load i64, ptr %i.mh, align 8, !alias.scope !624, !noundef !110
  %.not53.i = icmp eq i64 %i.mg, %i.mi
  br i1 %.not53.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.ba
  %i.mj = and i64 %i.lk, 4
  %.not66.i = icmp eq i64 %i.mj, 0
  br i1 %.not66.i, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i
  %i.mk = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.lk, i64 %i.bm acq_rel monotonic, align 8, !noalias !626
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.mk, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge: ; preds = %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.bc, %bb.bb
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ true, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bb ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.be:                                            ; preds = %.loopexit
  %i.ml = icmp eq i64 %i.bl, 0
  %22 = and i64 %i.bi, 2
  %i.mm = icmp eq i64 %22, 0
  %or.cond41 = or i1 %i.ml, %i.mm
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit249, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2v_10ValueEntryB1A_NtB1C_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bi)
          to label %.loopexit249 unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit249:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63, %bb.bf, %bb.be
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.be ], [ %.sroa.6.2, %bb.bf ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.be ], [ %.sroa.412.2, %bb.bf ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63 ]
  %i.mn = icmp eq ptr %i.bh, %i.az
  br i1 %i.mn, label %._crit_edge, label %bb.q

bb.bg:                                            ; preds = %._crit_edge
  %i.mo = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.mo, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mp = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.mq = and i64 %i.mp, 9223372036854775807
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !115

.noexc68:                                         ; preds = %bb.bh
  %i.ms = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ms, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bi, %.noexc68, %bb.bh, %bb.bg
  %i.mt = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.mu = icmp eq i32 %i.mt, 2
  br i1 %i.mu, label %bb.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

bb.bj:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.bj, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.bj ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73: ; preds = %bb.bt, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bn, %bb.cb
  %.pn.pn = phi { ptr, i32 } [ %i.of, %bb.cb ], [ %eh.lpad-body214, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.nm, %bb.bt ], [ %eh.lpad-body214, %bb.bn ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body214 = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.as, %bb.l ], [ %lpad.loopexit.split-lp441, %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.mv = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.mv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bk

bb.bk:                                            ; preds = %.body.thread
  %i.mw = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.mx = and i64 %i.mw, 9223372036854775807
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bl, !prof !115

bb.bl:                                            ; preds = %bb.bk
  %i.mz = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.bo

.noexc71:                                         ; preds = %bb.bl
  br i1 %i.mz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bm

bb.bm:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.bm, %.noexc71, %bb.bk, %.body.thread
  %i.na = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.nb = icmp eq i32 %i.na, 2
  br i1 %i.nb, label %bb.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73, !prof !113

bb.bn:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl, %bb.bt, %bb.cb
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.bp:                                            ; preds = %bb.a
  %i.nd = load ptr, ptr %i.e, align 8, !nonnull !110, !noundef !110 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 5 uses
  %i.nf = cmpxchg ptr %i.ne, i32 0, i32 1 acquire monotonic, align 4, !noalias !627
  %i.ng = extractvalue { i32, i1 } %i.nf, 1
  br i1 %i.ng, label %.noexc76, label %bb.bq, !prof !115

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ne)
          to label %.noexc76 unwind label %bb.cb

.noexc76:                                         ; preds = %bb.bq, %bb.bp
  %i.nh = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !627
  %i.ni = and i64 %i.nh, 9223372036854775807
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %.thread367.a, label %bb.br, !prof !115

bb.br:                                            ; preds = %.noexc76
  %i.nk = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bu unwind label %bb.cb     ; 2 uses

bb.bs:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.nl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #48
          to label %bb.v unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nm = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.d, align 8
  %.val53 = load i8, ptr %i.nl, align 8, !range !118, !noundef !110
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val52, i8 %.val53) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73 unwind label %bb.bo

bb.bu:                                            ; preds = %bb.br
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 20 ; 3 uses
  %i.no = load atomic i8, ptr %i.nn monotonic, align 1, !noalias !627
  %.not241 = icmp eq i8 %i.no, 0
  br i1 %.not241, label %bb.bv, label %bb.by

.thread367.a:                                     ; preds = %.noexc76
  %i.np = getelementptr inbounds nuw i8, ptr %i.nd, i64 20 ; 3 uses
  %i.nq = load atomic i8, ptr %i.np monotonic, align 1, !noalias !627
  %.not241369 = icmp eq i8 %i.nq, 0
  br i1 %.not241369, label %.thread372, label %.thread374

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.nk, label %.thread372, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread372:                                       ; preds = %.thread367.a, %bb.bv
  %i.nr = phi ptr [ %i.nn, %bb.bv ], [ %i.np, %.thread367.a ]
  %i.ns = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !628
  %i.nt = and i64 %i.ns, 9223372036854775807
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bw, !prof !115

bb.bw:                                            ; preds = %.thread372
  %i.nv = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.cb

.noexc79:                                         ; preds = %bb.bw
  br i1 %i.nv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.nr monotonic, align 1, !noalias !628
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bx, %.noexc79, %.thread372, %bb.bv
  %i.nw = atomicrmw xchg ptr %i.ne, i32 0 release, align 4, !noalias !628
  %i.nx = icmp eq i32 %i.nw, 2
  br i1 %i.nx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

bb.by:                                            ; preds = %bb.bu
  br i1 %i.nk, label %.thread374, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread374:                                       ; preds = %.thread367.a, %bb.by
  %i.ny = phi ptr [ %i.nn, %bb.by ], [ %i.np, %.thread367.a ]
  %i.nz = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !628
  %i.oa = and i64 %i.nz, 9223372036854775807
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bz, !prof !115

bb.bz:                                            ; preds = %.thread374
  %i.oc = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc80 unwind label %bb.cb

.noexc80:                                         ; preds = %bb.bz
  br i1 %i.oc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc80
  store atomic i8 1, ptr %i.ny monotonic, align 1, !noalias !628
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ca, %.noexc80, %.thread374, %bb.by
  %i.od = atomicrmw xchg ptr %i.ne, i32 0 release, align 4, !noalias !628
  %i.oe = icmp eq i32 %i.od, 2
  br i1 %i.oe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ne)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, %bb.bz, %bb.bw, %bb.br, %bb.bq
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.g, i8 2) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73 unwind label %bb.bo
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !689
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !689
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.q, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.r = load atomic i8, ptr %i.k monotonic, align 1, !noalias !689
  %.not.i.not = icmp eq i8 %i.r, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bu

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8
  %i.u = and i64 %i.t, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.u, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit251

.lr.ph.i:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !110
  %i.x = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.w)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = load i64, ptr %i.y, align 8, !noundef !110
  %i.aa = add i64 %i.z, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE11with_lengthCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.aa, i64 noundef %i.x)
          to label %.noexc unwind label %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !690
  %i.ab = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !690 ; 8 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.f, !prof !113

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ad = ptrtoint ptr %i.ab to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = cmpxchg weak ptr %i.s, i64 0, i64 %i.ad acq_rel monotonic, align 8, !noalias !691
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit251, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load atomic i64, ptr %i.s acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ag, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.n
  %i.ah = load atomic i64, ptr %i.s acquire, align 8
  %i.ai = and i64 %i.ah, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ai, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !635

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !692, !noundef !110 ; 2 uses
  %i.ak = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !692, !nonnull !110, !noundef !110
  %i.al = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.al, i64 noundef 8) #44, !noalias !692
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !695, !nonnull !110, !noundef !110
  %i.ao = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !695
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 48, i64 noundef 8) #44
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 48, i64 noundef 8) #44
  br label %.loopexit251

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ar = load i64, ptr %i.v, align 8, !noundef !110
  %i.as = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ar)
          to label %bb.n unwind label %.loopexit.i ; 0 uses

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #48
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #49
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.n:                                             ; preds = %.peel.next.i
  %i.av = cmpxchg weak ptr %i.s, i64 0, i64 %i.ad acq_rel monotonic, align 8, !noalias !691
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit251, label %bb.h

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
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEECsc93vp1BCDlY_26lance_namespace_datafusion(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #49
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh, %bb.bg, %.invoke, %._crit_edge, %bb.t, %bb.e
  %lpad.loopexit.split-lp443 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit251:                                     ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ad, %bb.f ], [ %i.u, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.ad, %bb.n ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.ax = load ptr, ptr %0, align 8, !nonnull !110, !noundef !110 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !110 ; 2 uses
  %.idx = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph290

.lr.ph290:                                        ; preds = %.loopexit251
  %.val43 = load i64, ptr %2, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val44 = load i64, ptr %i.bc, align 8          ; 2 uses
  %i.bd = xor i64 %.val43, 8317987319222330741    ; 2 uses
  %i.be = xor i64 %.val44, 7237128888997146477    ; 2 uses
  %i.bf = xor i64 %.val43, 7816392313619706465    ; 2 uses
  %i.bg = xor i64 %.val44, 8387220255154660723    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph290, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.02.0289 = phi ptr [ %i.ax, %.lr.ph290 ], [ %i.bl, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ] ; 3 uses
  %.sroa.412.0288 = phi i64 [ undef, %.lr.ph290 ], [ %.sroa.412.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %.sroa.6.0287 = phi i64 [ undef, %.lr.ph290 ], [ %.sroa.6.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.0289, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63

._crit_edge:                                      ; preds = %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.loopexit251
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.bi unwind label %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63: ; preds = %.loopexit, %bb.q
  %.sroa.6.1 = phi i64 [ %.sroa.6.0287, %bb.q ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0288, %bb.q ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.q ], [ %.not37, %.loopexit ]
  %i.bm = load atomic i64, ptr %.sroa.02.0289 acquire, align 8 ; 8 uses
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.r:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63
  %i.bp = and i64 %i.bm, -8                       ; 3 uses
  %i.bq = or i64 %i.bm, 4                         ; 7 uses
  %4 = icmp eq i64 %i.bp, 0                       ; 2 uses
  br i1 %.sroa.010.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  br i1 %4, label %bb.t, label %bb.u, !prof !113

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #48
          to label %bb.v unwind label %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.br = load i64, ptr %i.bh, align 8, !noundef !110 ; 2 uses
  %i.bs = icmp ult i64 %.sroa.412.1, %i.br
  br i1 %i.bs, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.bu, %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !110, !noundef !110
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.412.1 ; 2 uses
  %i.bv = and i64 %.sroa.6.1, 4
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.04.0285 = phi i64 [ %i.by, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.6.1, %bb.w ]
  %i.bx = cmpxchg weak ptr %i.bu, i64 %.sroa.04.0285, i64 %i.bq acq_rel monotonic, align 8, !noalias !696
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bx, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.lr.ph
  %i.by = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bz = and i64 %i.by, 4
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ax, %bb.az, %._crit_edge.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i, %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, %bb.ap, %bb.as, %._crit_edge.i.us.i, %bb.aw, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.lr.ph, %bb.w, %bb.x
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.w ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bq, %bb.aw ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.as ], [ %.sroa.6.1, %bb.ap ], [ %.sroa.6.1, %bb.az ], [ %.sroa.6.1, %bb.ax ], [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i ], [ %i.bq, %bb.bd ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.w ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.aw ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.as ], [ %.sroa.412.1, %bb.ap ], [ %.sroa.412.1, %bb.az ], [ %.sroa.412.1, %bb.ax ], [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i ], [ %.sroa.8.1.i, %bb.bd ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 4 uses
  %.not37 = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i ], [ false, %bb.x ], [ true, %bb.w ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ true, %.lr.ph ], [ true, %bb.aw ], [ false, %._crit_edge.i.us.i ], [ false, %bb.as ], [ false, %bb.ap ], [ false, %bb.az ], [ false, %bb.ax ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i ], [ true, %bb.bd ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cb = cmpxchg weak ptr %.sroa.02.0289, i64 %i.bm, i64 1 acq_rel monotonic, align 8, !noalias !697
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cb, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.be, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63

bb.x:                                             ; preds = %bb.r
  br i1 %4, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %5 = inttoptr i64 %i.bp to ptr                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !698, !noalias !699, !nonnull !110, !noundef !110 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !700, !noalias !701, !nonnull !110, !noundef !110 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !700, !noalias !701, !noundef !110 ; 6 uses
  %i.cg = and i64 %i.cf, 7                        ; 8 uses
  %i.ch = and i64 %i.cf, -8                       ; 2 uses
  %.not244.a = icmp eq i64 %i.ch, 0
  br i1 %.not244.a, label %._crit_edge.i144, label %.lr.ph.i137

._crit_edge.i144.loopexit:                        ; preds = %.lr.ph.i137
  %i.ci = and i64 %i.cf, -8
  br label %._crit_edge.i144

._crit_edge.i144:                                 ; preds = %._crit_edge.i144.loopexit, %bb.y
  %.sroa.44.7 = phi i64 [ %i.bg, %bb.y ], [ %i.do, %._crit_edge.i144.loopexit ] ; 2 uses
  %.sroa.30.7 = phi i64 [ %i.be, %bb.y ], [ %i.dm, %._crit_edge.i144.loopexit ] ; 6 uses
  %.sroa.16.7 = phi i64 [ %i.bf, %bb.y ], [ %i.dp, %._crit_edge.i144.loopexit ] ; 2 uses
  %.sroa.0168.7 = phi i64 [ %i.bd, %bb.y ], [ %i.dq, %._crit_edge.i144.loopexit ] ; 2 uses
  %.sroa.0.1.lcssa.i127 = phi i64 [ 0, %bb.y ], [ %i.ci, %._crit_edge.i144.loopexit ] ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, 3
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.0.1.lcssa.i127
  %.sroa.014.0.copyload.i17.i136 = load i32, ptr %i.ck, align 1, !alias.scope !702, !noalias !703
  %i.cl = zext i32 %.sroa.014.0.copyload.i17.i136 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i144
  %.sroa.03.0.i11.i128 = phi i64 [ 4, %bb.z ], [ 0, %._crit_edge.i144 ] ; 5 uses
  %.sroa.0.0.i12.i129 = phi i64 [ %i.cl, %bb.z ], [ 0, %._crit_edge.i144 ] ; 2 uses
  %i.cm = or disjoint i64 %.sroa.03.0.i11.i128, 1
  %i.cn = icmp samesign ult i64 %i.cm, %i.cg
  br i1 %i.cn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr i8, ptr %i.cd, i64 %.sroa.0.1.lcssa.i127
  %i.cp = getelementptr i8, ptr %i.co, i64 %.sroa.03.0.i11.i128
  %.sroa.015.0.copyload.i16.i135 = load i16, ptr %i.cp, align 1, !alias.scope !702, !noalias !703
  %i.cq = zext i16 %.sroa.015.0.copyload.i16.i135 to i64
  %i.cr = shl nuw nsw i64 %.sroa.03.0.i11.i128, 3
  %i.cs = shl nuw nsw i64 %i.cq, %i.cr
  %i.ct = or i64 %i.cs, %.sroa.0.0.i12.i129
  %i.cu = or disjoint i64 %.sroa.03.0.i11.i128, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.03.1.i13.i130 = phi i64 [ %i.cu, %bb.ab ], [ %.sroa.03.0.i11.i128, %bb.aa ] ; 3 uses
  %.sroa.0.1.i14.i131 = phi i64 [ %i.ct, %bb.ab ], [ %.sroa.0.0.i12.i129, %bb.aa ] ; 2 uses
  %i.cv = icmp samesign ult i64 %.sroa.03.1.i13.i130, %i.cg
  br i1 %i.cv, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147

.lr.ph.i137:                                      ; preds = %bb.y, %.lr.ph.i137
  %i.cw = phi i64 [ %i.dp, %.lr.ph.i137 ], [ %i.bf, %bb.y ]
  %i.cx = phi i64 [ %i.dm, %.lr.ph.i137 ], [ %i.be, %bb.y ] ; 3 uses
  %i.cy = phi i64 [ %i.do, %.lr.ph.i137 ], [ %i.bg, %bb.y ]
  %.sroa.0.119.i142 = phi i64 [ %i.dr, %.lr.ph.i137 ], [ 0, %bb.y ] ; 2 uses
  %i.cz = phi i64 [ %i.dq, %.lr.ph.i137 ], [ %i.bd, %bb.y ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.0.119.i142
  %.sroa.07.0.copyload.i143 = load i64, ptr %i.da, align 1, !alias.scope !704, !noalias !703 ; 2 uses
  %i.db = xor i64 %.sroa.07.0.copyload.i143, %i.cy ; 3 uses
  %i.dc = add i64 %i.cz, %i.cx                    ; 3 uses
  %i.dd = add i64 %i.db, %i.cw                    ; 2 uses
  %i.de = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 13)
  %i.df = xor i64 %i.dc, %i.de                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 16)
  %i.dh = xor i64 %i.dd, %i.dg                    ; 3 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32)
  %i.dj = add i64 %i.dd, %i.df                    ; 3 uses
  %i.dk = add i64 %i.dh, %i.di                    ; 2 uses
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 17)
  %i.dm = xor i64 %i.dj, %i.dl                    ; 2 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 21)
  %i.do = xor i64 %i.dn, %i.dk                    ; 2 uses
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 32) ; 2 uses
  %i.dq = xor i64 %i.dk, %.sroa.07.0.copyload.i143 ; 2 uses
  %i.dr = add nuw i64 %.sroa.0.119.i142, 8        ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.ch
  br i1 %i.ds, label %.lr.ph.i137, label %._crit_edge.i144.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147: ; preds = %bb.ac
  %i.dt = add i64 %i.cf, 1                        ; 2 uses
  %i.du = icmp eq i64 %i.cg, 0
  br i1 %i.du, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147
  %i.dv = shl nuw nsw i64 %i.cg, 3
  %i.dw = shl nuw nsw i64 255, %i.dv
  %i.dx = or i64 %i.dw, %.sroa.0.1.i14.i131
  br label %bb.ad

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95: ; preds = %bb.ac
  %i.dy = add i64 %.sroa.03.1.i13.i130, %.sroa.0.1.lcssa.i127 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cf
  tail call void @llvm.assume(i1 %i.dz), !noalias !703
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !702, !noalias !703, !noundef !110
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %.sroa.03.1.i13.i130, 3
  %i.ee = shl nuw nsw i64 %i.ec, %i.ed
  %i.ef = add i64 %i.cf, 1                        ; 2 uses
  %i.eg = shl nuw nsw i64 %i.cg, 3
  %i.eh = shl nuw i64 255, %i.eg
  %i.ei = or i64 %i.ee, %i.eh
  %i.ej = or i64 %i.ei, %.sroa.0.1.i14.i131       ; 3 uses
  %.not245 = icmp eq i64 %i.cg, 7
  br i1 %.not245, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118, label %bb.ad

bb.ad:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95
  %i.ek = phi i64 [ %i.dx, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread ], [ %i.ej, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95 ]
  %i.el = phi i64 [ %i.dt, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread ], [ %i.ef, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95 ]
  %i.em = add nuw nsw i64 %i.cg, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147, %bb.ad
  %.ph = phi i64 [ %i.el, %bb.ad ], [ %i.dt, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147 ]
  %.sroa.68.1.ph = phi i64 [ %i.ek, %bb.ad ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147 ]
  %storemerge.i105.ph = phi i64 [ %i.em, %bb.ad ], [ 1, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit147 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !700, !noalias !701, !noundef !110 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !705
  store i64 %i.eo, ptr %i.b, align 8, !noalias !705
  %i.ep = sub nuw nsw i64 8, %storemerge.i105.ph  ; 3 uses
  %i.eq = icmp samesign ult i64 %storemerge.i105.ph, 5 ; 3 uses
  %i.er = and i64 %i.eo, 4294967295
  %.sroa.03.0.i.i = select i1 %i.eq, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i = select i1 %i.eq, i64 %i.er, i64 0 ; 2 uses
  %i.es = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.et = icmp samesign ult i64 %i.es, %i.ep
  br i1 %i.et, label %bb.ae, label %bb.af

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118: ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95
  %i.eu = xor i64 %i.ej, %.sroa.44.7              ; 3 uses
  %i.ev = add i64 %.sroa.0168.7, %.sroa.30.7      ; 3 uses
  %i.ew = add i64 %i.eu, %.sroa.16.7              ; 2 uses
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.7, i64 %.sroa.30.7, i64 13)
  %i.ey = xor i64 %i.ev, %i.ex                    ; 3 uses
  %i.ez = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 16)
  %i.fa = xor i64 %i.ew, %i.ez                    ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 32)
  %i.fc = add i64 %i.ew, %i.ey                    ; 3 uses
  %i.fd = add i64 %i.fa, %i.fb                    ; 2 uses
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 17)
  %i.ff = xor i64 %i.fc, %i.fe
  %i.fg = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 21)
  %i.fh = xor i64 %i.fg, %i.fd
  %i.fi = tail call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 32)
  %i.fj = xor i64 %i.fd, %i.ej
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !700, !noalias !701, !noundef !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !705
  store i64 %i.fl, ptr %i.b, align 8, !noalias !705
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.eq, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !706, !noalias !703
  %i.fm = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.fn = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.fo = shl nuw nsw i64 %i.fm, %i.fn
  %i.fp = or i64 %i.fo, %.sroa.0.0.i10.i
  %i.fq = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread
  %.sroa.03.1.i.i = phi i64 [ %i.fq, %bb.ae ], [ %.sroa.03.0.i.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.fp, %bb.ae ], [ %.sroa.0.0.i10.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118.thread ] ; 2 uses
  %i.fr = icmp samesign ult i64 %.sroa.03.1.i.i, %i.ep
  br i1 %i.fr, label %bb.ag, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.1.i.i
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !706, !noalias !703, !noundef !110
  %i.fu = zext i8 %i.ft to i64
  %i.fv = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.fw = shl nuw nsw i64 %i.fu, %i.fv
  %i.fx = or i64 %i.fw, %.sroa.0.1.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.2.i.i = phi i64 [ %i.fx, %bb.ag ], [ %.sroa.0.1.i.i, %bb.af ]
  %i.fy = shl nuw nsw i64 %storemerge.i105.ph, 3
  %i.fz = and i64 %i.fy, 56
  %i.ga = shl i64 %.sroa.0.2.i.i, %i.fz
  %i.gb = or i64 %i.ga, %.sroa.68.1.ph            ; 2 uses
  %i.gc = xor i64 %i.gb, %.sroa.44.7              ; 3 uses
  %i.gd = add i64 %.sroa.0168.7, %.sroa.30.7      ; 3 uses
  %i.ge = add i64 %i.gc, %.sroa.16.7              ; 2 uses
  %i.gf = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.7, i64 %.sroa.30.7, i64 13)
  %i.gg = xor i64 %i.gd, %i.gf                    ; 3 uses
  %i.gh = tail call noundef i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 16)
  %i.gi = xor i64 %i.ge, %i.gh                    ; 3 uses
  %i.gj = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 32)
  %i.gk = add i64 %i.ge, %i.gg                    ; 3 uses
  %i.gl = add i64 %i.gi, %i.gj                    ; 2 uses
  %i.gm = tail call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 17)
  %i.gn = xor i64 %i.gk, %i.gm
  %i.go = tail call noundef i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 21)
  %i.gp = xor i64 %i.go, %i.gl
  %i.gq = tail call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 32)
  %i.gr = xor i64 %i.gl, %i.gb
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i
  %.in = phi i64 [ %i.ef, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118 ], [ %.ph, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ]
  %.sroa.44.0 = phi i64 [ %i.fh, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118 ], [ %i.gp, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 2 uses
  %.sroa.30.0 = phi i64 [ %i.ff, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118 ], [ %i.gn, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 4 uses
  %.sroa.16.0 = phi i64 [ %i.fi, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118 ], [ %i.gq, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 2 uses
  %.sroa.0168.0 = phi i64 [ %i.fj, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118 ], [ %i.gr, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 2 uses
  %.sroa.0.0.i86 = phi i64 [ 0, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit118 ], [ %i.ep, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ] ; 5 uses
  %i.gs = sub nuw nsw i64 8, %.sroa.0.0.i86       ; 2 uses
  %i.gt = and i64 %i.gs, 7                        ; 3 uses
  %i.gu = and i64 %i.gs, 8
  %i.gv = icmp samesign ult i64 %.sroa.0.0.i86, %i.gu
  br i1 %i.gv, label %.lr.ph.i88, label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %.lr.ph.i88, %bb.ah
  %.sroa.44.1 = phi i64 [ %.sroa.44.0, %bb.ah ], [ %i.if, %.lr.ph.i88 ]
  %.sroa.30.1 = phi i64 [ %.sroa.30.0, %bb.ah ], [ %i.id, %.lr.ph.i88 ] ; 3 uses
  %.sroa.16.1 = phi i64 [ %.sroa.16.0, %bb.ah ], [ %i.ig, %.lr.ph.i88 ]
  %.sroa.0168.1 = phi i64 [ %.sroa.0168.0, %bb.ah ], [ %i.ih, %.lr.ph.i88 ]
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0.i86, %bb.ah ], [ %i.ii, %.lr.ph.i88 ] ; 3 uses
  %i.gw = icmp samesign ugt i64 %i.gt, 3
  br i1 %i.gw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i89
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i17.i = load i32, ptr %i.gx, align 1, !alias.scope !707, !noalias !703
  %i.gy = zext i32 %.sroa.014.0.copyload.i17.i to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i89
  %.sroa.03.0.i11.i = phi i64 [ 4, %bb.ai ], [ 0, %._crit_edge.i89 ] ; 5 uses
  %.sroa.0.0.i12.i = phi i64 [ %i.gy, %bb.ai ], [ 0, %._crit_edge.i89 ] ; 2 uses
  %i.gz = or disjoint i64 %.sroa.03.0.i11.i, 1
  %i.ha = icmp samesign ult i64 %i.gz, %i.gt
  br i1 %i.ha, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hb = getelementptr i8, ptr %i.b, i64 %.sroa.0.1.lcssa.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 %.sroa.03.0.i11.i
  %.sroa.015.0.copyload.i16.i = load i16, ptr %i.hc, align 1, !alias.scope !707, !noalias !703
  %i.hd = zext i16 %.sroa.015.0.copyload.i16.i to i64
  %i.he = shl nuw nsw i64 %.sroa.03.0.i11.i, 3
  %i.hf = shl nuw nsw i64 %i.hd, %i.he
  %i.hg = or i64 %i.hf, %.sroa.0.0.i12.i
  %i.hh = or disjoint i64 %.sroa.03.0.i11.i, 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sroa.03.1.i13.i = phi i64 [ %i.hh, %bb.ak ], [ %.sroa.03.0.i11.i, %bb.aj ] ; 3 uses
  %.sroa.0.1.i14.i = phi i64 [ %i.hg, %bb.ak ], [ %.sroa.0.0.i12.i, %bb.aj ] ; 2 uses
  %i.hi = icmp samesign ult i64 %.sroa.03.1.i13.i, %i.gt
  br i1 %i.hi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hj = add nuw nsw i64 %.sroa.03.1.i13.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.hk = icmp samesign ult i64 %i.hj, 8
  tail call void @llvm.assume(i1 %i.hk), !noalias !703
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !707, !noalias !703, !noundef !110
  %i.hn = zext i8 %i.hm to i64
  %i.ho = shl nuw nsw i64 %.sroa.03.1.i13.i, 3
  %i.hp = shl nuw nsw i64 %i.hn, %i.ho
  %i.hq = or i64 %i.hp, %.sroa.0.1.i14.i
  br label %bb.an

.lr.ph.i88:                                       ; preds = %bb.ah
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i86
  %.sroa.07.0.copyload.i = load i64, ptr %i.hr, align 1, !alias.scope !708, !noalias !703 ; 2 uses
  %i.hs = xor i64 %.sroa.07.0.copyload.i, %.sroa.44.0 ; 3 uses
  %i.ht = add i64 %.sroa.0168.0, %.sroa.30.0      ; 3 uses
  %i.hu = add i64 %i.hs, %.sroa.16.0              ; 2 uses
  %i.hv = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.0, i64 %.sroa.30.0, i64 13)
  %i.hw = xor i64 %i.ht, %i.hv                    ; 3 uses
  %i.hx = tail call noundef i64 @llvm.fshl.i64(i64 %i.hs, i64 %i.hs, i64 16)
  %i.hy = xor i64 %i.hu, %i.hx                    ; 3 uses
  %i.hz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ht, i64 %i.ht, i64 32)
  %i.ia = add i64 %i.hu, %i.hw                    ; 3 uses
  %i.ib = add i64 %i.hy, %i.hz                    ; 2 uses
  %i.ic = tail call noundef i64 @llvm.fshl.i64(i64 %i.hw, i64 %i.hw, i64 17)
  %i.id = xor i64 %i.ia, %i.ic
  %i.ie = tail call noundef i64 @llvm.fshl.i64(i64 %i.hy, i64 %i.hy, i64 21)
  %i.if = xor i64 %i.ie, %i.ib
  %i.ig = tail call noundef i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 32)
  %i.ih = xor i64 %i.ib, %.sroa.07.0.copyload.i
  %i.ii = add nuw nsw i64 %.sroa.0.0.i86, 8
  br label %._crit_edge.i89

bb.an:                                            ; preds = %bb.al, %bb.am
  %.sroa.68.0 = phi i64 [ %.sroa.0.1.i14.i, %bb.al ], [ %i.hq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !705
  %i.ij = shl i64 %.in, 56
  %i.ik = add i64 %i.ij, 576460752303423488
  %i.il = or i64 %.sroa.68.0, %i.ik               ; 2 uses
  %i.im = xor i64 %i.il, %.sroa.44.1              ; 3 uses
  %i.in = tail call noundef i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 16)
  %i.io = add i64 %i.im, %.sroa.16.1              ; 2 uses
  %i.ip = xor i64 %i.in, %i.io                    ; 3 uses
  %i.iq = add i64 %.sroa.0168.1, %.sroa.30.1      ; 3 uses
  %i.ir = tail call noundef i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 32)
  %i.is = add i64 %i.ip, %i.ir                    ; 2 uses
  %i.it = xor i64 %i.is, %i.il
  %i.iu = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.1, i64 %.sroa.30.1, i64 13)
  %i.iv = xor i64 %i.iq, %i.iu                    ; 3 uses
  %i.iw = add i64 %i.io, %i.iv                    ; 3 uses
  %i.ix = tail call noundef i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 17)
  %i.iy = xor i64 %i.iw, %i.ix                    ; 3 uses
  %i.iz = add i64 %i.it, %i.iy                    ; 3 uses
  %6 = tail call noundef i64 @llvm.fshl.i64(i64 %i.iy, i64 %i.iy, i64 13)
  %i.ja = xor i64 %i.iz, %6                       ; 3 uses
  %i.jb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ip, i64 %i.ip, i64 21)
  %i.jc = xor i64 %i.jb, %i.is                    ; 3 uses
  %i.jd = tail call noundef i64 @llvm.fshl.i64(i64 %i.iw, i64 %i.iw, i64 32)
  %i.je = xor i64 %i.jd, 255
  %i.jf = add i64 %i.jc, %i.je                    ; 2 uses
  %7 = add i64 %i.ja, %i.jf                       ; 3 uses
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ja, i64 %i.ja, i64 17)
  %i.jg = xor i64 %7, %8                          ; 3 uses
  %i.jh = tail call noundef i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 13)
  %i.ji = tail call noundef i64 @llvm.fshl.i64(i64 %i.jc, i64 %i.jc, i64 16)
  %i.jj = xor i64 %i.ji, %i.jf                    ; 3 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 32)
  %10 = add i64 %i.jj, %9                         ; 2 uses
  %i.jk = add i64 %i.jg, %10                      ; 3 uses
  %i.jl = xor i64 %i.jh, %i.jk                    ; 3 uses
  %i.jm = tail call noundef i64 @llvm.fshl.i64(i64 %i.jl, i64 %i.jl, i64 17)
  %i.jn = tail call noundef i64 @llvm.fshl.i64(i64 %i.jj, i64 %i.jj, i64 21)
  %i.jo = xor i64 %i.jn, %10                      ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 32)
  %12 = add i64 %i.jo, %11                        ; 2 uses
  %i.jp = add i64 %i.jl, %12                      ; 3 uses
  %i.jq = xor i64 %i.jm, %i.jp                    ; 3 uses
  %i.jr = tail call noundef i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 13)
  %i.js = tail call noundef i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 16)
  %i.jt = xor i64 %i.js, %12                      ; 3 uses
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 32)
  %14 = add i64 %i.jt, %13                        ; 2 uses
  %i.ju = add i64 %i.jq, %14
  %i.jv = xor i64 %i.jr, %i.ju                    ; 3 uses
  %i.jw = tail call noundef i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 21)
  %15 = xor i64 %i.jw, %14                        ; 3 uses
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 32)
  %17 = add i64 %15, %16                          ; 2 uses
  %i.jx = add i64 %i.jv, %17                      ; 3 uses
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jx, i64 %i.jx, i64 32)
  %i.jy = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %i.jz = xor i64 %i.jy, %17                      ; 2 uses
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 21)
  %i.ka = tail call noundef i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 17)
  %20 = xor i64 %19, %i.ka
  %i.kb = xor i64 %20, %18
  %i.kc = xor i64 %i.kb, %i.jx
  %i.kd = load i64, ptr %i.bh, align 8, !noundef !110 ; 2 uses
  %i.ke = add i64 %i.kd, -1                       ; 5 uses
  %i.kf = and i64 %i.ke, %i.kc                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.kd, 0
  br i1 %.not.i64, label %.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kg = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !110, !noundef !110 ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kf ; 2 uses
  %21 = and i64 %i.bm, 2
  %i.ki = icmp eq i64 %21, 0
  br i1 %i.ki, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ %i.kh, %bb.ao ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ %i.kf, %bb.ao ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.ke
  br i1 %.not.i.us.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.kj = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.kk = add i64 %i.kj, %i.kf
  %i.kl = and i64 %i.kk, %i.ke                    ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kl
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.aq, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.kj, %bb.aq ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.km, %bb.aq ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.kl, %bb.aq ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ] ; 2 uses
  %i.kn = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !709 ; 5 uses
  %i.ko = and i64 %i.kn, 1
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %._crit_edge.i.us.i
  %i.kq = and i64 %i.kn, -8                       ; 2 uses
  %i.kr = inttoptr i64 %i.kq to ptr
  %.not20.us.i = icmp eq i64 %i.kq, 0
  br i1 %.not20.us.i, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ks = icmp eq i64 %i.kn, %i.bq
  br i1 %i.ks, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val23.us.i = load ptr, ptr %i.kr, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %.val24.us.i = load ptr, ptr %5, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %i.kt = icmp eq ptr %.val23.us.i, %.val24.us.i
  br i1 %i.kt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.ku = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !alias.scope !714, !noundef !110 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 32
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !715, !noundef !110
  %i.ky = icmp eq i64 %i.kv, %i.kx
  br i1 %i.ky, label %bb.av, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

bb.av:                                            ; preds = %bb.au
  %i.kz = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !715, !nonnull !110, !noundef !110
  %i.lb = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8, !alias.scope !714, !nonnull !110, !noundef !110
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull %i.lc, ptr nonnull %i.la, i64 %i.kv), !noalias !716
  %i.ld = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %i.ld, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i: ; preds = %bb.av
  %i.le = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 40
  %i.lf = load i64, ptr %i.le, align 8, !alias.scope !714, !noundef !110
  %i.lg = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 40
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !715, !noundef !110
  %.not53.us.i = icmp eq i64 %i.lf, %i.lh
  br i1 %.not53.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, %bb.at
  %i.li = and i64 %i.kn, 4
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.us.i, %bb.ar
  %i.lk = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.kn, i64 %i.bq acq_rel monotonic, align 8, !noalias !717
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.lk, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge: ; preds = %bb.aw, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, %bb.av, %bb.au
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.au ], [ true, %bb.aw ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ], [ false, %bb.av ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i

.invoke:                                          ; preds = %bb.an, %bb.u
  %i.ll = phi i64 [ %.sroa.412.1, %bb.u ], [ %i.kf, %bb.an ]
  %i.lm = phi i64 [ %i.br, %bb.u ], [ 0, %bb.an ]
  %i.ln = phi ptr [ @44, %bb.u ], [ @26, %bb.an ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ll, i64 noundef %i.lm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ln) #48
          to label %.cont unwind label %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ %i.kh, %bb.ao ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ %i.kf, %bb.ao ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ax

bb.ax:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.ke
  br i1 %.not.i.i, label %bb.ay, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ay, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.17.1.i = phi i64 [ %i.lr, %bb.ay ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.lu, %bb.ay ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.lt, %bb.ay ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.lo = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !709 ; 5 uses
  %i.lp = and i64 %i.lo, 1
  %i.lq = icmp eq i64 %i.lp, 0
  br i1 %i.lq, label %bb.az, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.lr = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ls = add i64 %i.lr, %i.kf
  %i.lt = and i64 %i.ls, %i.ke                    ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.lt
  br label %._crit_edge.i.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.lv = and i64 %i.lo, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.lv, 0
  %i.lw = icmp eq i64 %i.lo, %i.bq
  %or.cond.i = or i1 %i.lw, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lx = inttoptr i64 %i.lv to ptr
  %.val23.i = load ptr, ptr %i.lx, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %.val24.i = load ptr, ptr %5, align 8, !nonnull !110, !noundef !110 ; 4 uses
  %i.ly = icmp eq ptr %.val23.i, %.val24.i
  br i1 %i.ly, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.lz = getelementptr inbounds nuw i8, ptr %.val23.i, i64 32
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !714, !noundef !110 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.val24.i, i64 32
  %i.mc = load i64, ptr %i.mb, align 8, !alias.scope !715, !noundef !110
  %i.md = icmp eq i64 %i.ma, %i.mc
  br i1 %i.md, label %bb.bc, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.me = getelementptr inbounds nuw i8, ptr %.val24.i, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !alias.scope !715, !nonnull !110, !noundef !110
  %i.mg = getelementptr inbounds nuw i8, ptr %.val23.i, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !alias.scope !714, !nonnull !110, !noundef !110
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.mh, ptr nonnull %i.mf, i64 %i.ma), !noalias !716
  %i.mi = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.mi, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.bc
  %i.mj = getelementptr inbounds nuw i8, ptr %.val23.i, i64 40
  %i.mk = load i64, ptr %i.mj, align 8, !alias.scope !714, !noundef !110
  %i.ml = getelementptr inbounds nuw i8, ptr %.val24.i, i64 40
  %i.mm = load i64, ptr %i.ml, align 8, !alias.scope !715, !noundef !110
  %.not53.i = icmp eq i64 %i.mk, %i.mm
  br i1 %.not53.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.ba
  %i.mn = and i64 %i.lo, 4
  %.not66.i = icmp eq i64 %i.mn, 0
  br i1 %.not66.i, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread50.i
  %i.mo = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.lo, i64 %i.bq acq_rel monotonic, align 8, !noalias !717
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.mo, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge: ; preds = %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.bc, %bb.bb
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ true, %bb.bd ], [ false, %bb.bc ], [ false, %bb.bb ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.be:                                            ; preds = %.loopexit
  %i.mp = icmp eq i64 %i.bp, 0
  %22 = and i64 %i.bm, 2
  %i.mq = icmp eq i64 %22, 0
  %or.cond41 = or i1 %i.mp, %i.mq
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.bj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE0Csc93vp1BCDlY_26lance_namespace_datafusion(i64 noundef %i.bm)
          to label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !718
  store ptr @_RINvNvMs_NtCskfeRsqx2rfd_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE0uE0ECsc93vp1BCDlY_26lance_namespace_datafusion, ptr %i.a, align 8, !alias.scope !719, !noalias !718
  store i64 %i.bm, ptr %i.bk, align 8, !alias.scope !719, !noalias !718
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128 %i.bi, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc70 unwind label %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !718
  br label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63, %.noexc70, %bb.bg, %bb.be
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.be ], [ %.sroa.6.2, %.noexc70 ], [ %.sroa.6.2, %bb.bg ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.be ], [ %.sroa.412.2, %.noexc70 ], [ %.sroa.412.2, %bb.bg ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63 ]
  %i.mr = icmp eq ptr %i.bl, %i.ba
  br i1 %i.mr, label %._crit_edge, label %bb.q

bb.bi:                                            ; preds = %._crit_edge
  %i.ms = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ms, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mt = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.mu = and i64 %i.mt, 9223372036854775807
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc71, !prof !115

.noexc71:                                         ; preds = %bb.bj
  %i.mw = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.mw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bk, %.noexc71, %bb.bj, %bb.bi
  %i.mx = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.my = icmp eq i32 %i.mx, 2
  br i1 %i.my, label %bb.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

bb.bl:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.bl, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.bl ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit76: ; preds = %bb.bv, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, %bb.bp, %bb.cd
  %.pn.pn = phi { ptr, i32 } [ %i.oj, %bb.cd ], [ %eh.lpad-body216, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73 ], [ %i.nq, %bb.bv ], [ %eh.lpad-body216, %bb.bp ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body216 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.at, %bb.l ], [ %lpad.loopexit.split-lp443, %.body.thread218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.mz = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.mz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bm

bb.bm:                                            ; preds = %.body.thread
  %i.na = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.nb = and i64 %i.na, 9223372036854775807
  %i.nc = icmp eq i64 %i.nb, 0
  br i1 %i.nc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bn, !prof !115

bb.bn:                                            ; preds = %bb.bm
  %i.nd = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc74 unwind label %bb.bq

.noexc74:                                         ; preds = %bb.bn
  br i1 %i.nd, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bo

bb.bo:                                            ; preds = %.noexc74
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73: ; preds = %bb.bo, %.noexc74, %bb.bm, %.body.thread
  %i.ne = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.nf = icmp eq i32 %i.ne, 2
  br i1 %i.nf, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit76, !prof !113

bb.bp:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit76 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bv, %bb.cd
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.br:                                            ; preds = %bb.a
  %i.nh = load ptr, ptr %i.f, align 8, !nonnull !110, !noundef !110 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 5 uses
  %i.nj = cmpxchg ptr %i.ni, i32 0, i32 1 acquire monotonic, align 4, !noalias !720
  %i.nk = extractvalue { i32, i1 } %i.nj, 1
  br i1 %i.nk, label %.noexc79, label %bb.bs, !prof !115

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ni)
          to label %.noexc79 unwind label %bb.cd

.noexc79:                                         ; preds = %bb.bs, %bb.br
  %i.nl = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !720
  %i.nm = and i64 %i.nl, 9223372036854775807
  %i.nn = icmp eq i64 %i.nm, 0
  br i1 %i.nn, label %.thread369.a, label %bb.bt, !prof !115

bb.bt:                                            ; preds = %.noexc79
  %i.no = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bw unwind label %bb.cd     ; 2 uses

bb.bu:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.np, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #48
          to label %bb.v unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nq = landingpad { ptr, i32 }
          cleanup
  %.val53 = load ptr, ptr %i.e, align 8
  %.val54 = load i8, ptr %i.np, align 8, !range !118, !noundef !110
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val53, i8 %.val54) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit76 unwind label %bb.bq

bb.bw:                                            ; preds = %bb.bt
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nh, i64 20 ; 3 uses
  %i.ns = load atomic i8, ptr %i.nr monotonic, align 1, !noalias !720
  %.not243 = icmp eq i8 %i.ns, 0
  br i1 %.not243, label %bb.bx, label %bb.ca

.thread369.a:                                     ; preds = %.noexc79
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 20 ; 3 uses
  %i.nu = load atomic i8, ptr %i.nt monotonic, align 1, !noalias !720
  %.not243371 = icmp eq i8 %i.nu, 0
  br i1 %.not243371, label %.thread374, label %.thread376

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.no, label %.thread374, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread374:                                       ; preds = %.thread369.a, %bb.bx
  %i.nv = phi ptr [ %i.nr, %bb.bx ], [ %i.nt, %.thread369.a ]
  %i.nw = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !721
  %i.nx = and i64 %i.nw, 9223372036854775807
  %i.ny = icmp eq i64 %i.nx, 0
  br i1 %i.ny, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.by, !prof !115

bb.by:                                            ; preds = %.thread374
  %i.nz = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc81 unwind label %bb.cd

.noexc81:                                         ; preds = %bb.by
  br i1 %i.nz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc81
  store atomic i8 1, ptr %i.nv monotonic, align 1, !noalias !721
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bz, %.noexc81, %.thread374, %bb.bx
  %i.oa = atomicrmw xchg ptr %i.ni, i32 0 release, align 4, !noalias !721
  %i.ob = icmp eq i32 %i.oa, 2
  br i1 %i.ob, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

bb.ca:                                            ; preds = %bb.bw
  br i1 %i.no, label %.thread376, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread376:                                       ; preds = %.thread369.a, %bb.ca
  %i.oc = phi ptr [ %i.nr, %bb.ca ], [ %i.nt, %.thread369.a ]
  %i.od = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !721
  %i.oe = and i64 %i.od, 9223372036854775807
  %i.of = icmp eq i64 %i.oe, 0
  br i1 %i.of, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cb, !prof !115

bb.cb:                                            ; preds = %.thread376
  %i.og = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc82 unwind label %bb.cd

.noexc82:                                         ; preds = %bb.cb
  br i1 %i.og, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.noexc82
  store atomic i8 1, ptr %i.oc monotonic, align 1, !noalias !721
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2l_16CachedReaderDataEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsc93vp1BCDlY_26lance_namespace_datafusion:bb.a
  br i1 %i.h, label %bb.b, label %bb.bd

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !757
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.c, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !757
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !757
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit192.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !110
  %i.v = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.u)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr %i.w, align 8, !noundef !110
  %i.y = add i64 %i.x, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2j_16CachedReaderDataEE11with_lengthCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !758
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !758 ; 8 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %bb.f, !prof !113

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !759
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit192.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.n
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !728

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !760, !noundef !110 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !760, !nonnull !110, !noundef !110
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #44, !noalias !760
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !763, !nonnull !110, !noundef !110
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !763
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #44
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3P_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #44
  br label %.loopexit192.a

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ap = load i64, ptr %i.t, align 8, !noundef !110
  %i.aq = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ap)
          to label %bb.n unwind label %.loopexit.i ; 0 uses

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #48
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBK_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2N_16CachedReaderDataEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #49
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.n:                                             ; preds = %.peel.next.i
  %i.at = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !759
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit192.a, label %bb.h

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
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1T_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3X_16CachedReaderDataEEEEECsc93vp1BCDlY_26lance_namespace_datafusion(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #49
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %.invoke, %._crit_edge, %bb.t, %bb.e
  %lpad.loopexit.split-lp373 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit192.a:                                   ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB3B_16CachedReaderDataEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i ], [ %i.ab, %bb.n ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.av = load ptr, ptr %0, align 8, !nonnull !110, !noundef !110 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !110 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %._crit_edge, label %.lr.ph231

.lr.ph231:                                        ; preds = %.loopexit192.a
  %.val52 = load i64, ptr %2, align 8             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val53 = load i64, ptr %i.ba, align 8          ; 2 uses
  %i.bb = xor i64 %.val52, 8317987319222330741    ; 2 uses
  %i.bc = xor i64 %.val53, 7237128888997146477    ; 2 uses
  %i.bd = xor i64 %.val52, 7816392313619706465    ; 2 uses
  %i.be = xor i64 %.val53, 8387220255154660723    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph231, %.loopexit191
  %.sroa.02.0230 = phi ptr [ %i.av, %.lr.ph231 ], [ %i.bg, %.loopexit191 ] ; 3 uses
  %.sroa.412.0229 = phi i64 [ undef, %.lr.ph231 ], [ %.sroa.412.5, %.loopexit191 ]
  %.sroa.6.0228 = phi i64 [ undef, %.lr.ph231 ], [ %.sroa.6.5, %.loopexit191 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.0230, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63

._crit_edge:                                      ; preds = %.loopexit191, %.loopexit192.a
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.au unwind label %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63: ; preds = %.loopexit, %bb.q
  %.sroa.6.1 = phi i64 [ %.sroa.6.0228, %bb.q ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0229, %bb.q ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.q ], [ %.not37, %.loopexit ]
  %i.bh = load atomic i64, ptr %.sroa.02.0230 acquire, align 8 ; 7 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %.loopexit191

bb.r:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63
  %i.bk = and i64 %i.bh, -8                       ; 3 uses
  %i.bl = or i64 %i.bh, 4                         ; 7 uses
  %i.bm = icmp eq i64 %i.bk, 0                    ; 2 uses
  br i1 %.sroa.010.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  br i1 %i.bm, label %bb.t, label %bb.u, !prof !113

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #48
          to label %bb.v unwind label %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.bn = load i64, ptr %i.bf, align 8, !noundef !110 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.412.1, %i.bn
  br i1 %i.bo, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.bg, %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bp = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !110, !noundef !110
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.412.1 ; 2 uses
  %i.br = and i64 %.sroa.6.1, 4
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit
  %.sroa.04.0226 = phi i64 [ %i.bu, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.6.1, %bb.w ]
  %i.bt = cmpxchg weak ptr %i.bq, i64 %.sroa.04.0226, i64 %i.bl acq_rel monotonic, align 8, !noalias !764
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %.lr.ph
  %i.bu = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bv = and i64 %i.bu, 4
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.am, %bb.ao, %._crit_edge.i.i, %bb.aq, %bb.ar, %bb.ak, %bb.af, %bb.ai, %._crit_edge.i.us.i, %bb.al, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit, %.lr.ph, %bb.w, %bb.x
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %bb.ak ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.w ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bl, %bb.al ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.ai ], [ %.sroa.6.1, %bb.af ], [ %.sroa.6.1, %bb.ao ], [ %.sroa.6.1, %bb.am ], [ %.sroa.6.1, %bb.aq ], [ %i.bl, %bb.ar ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %bb.ak ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.w ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.al ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.ai ], [ %.sroa.412.1, %bb.af ], [ %.sroa.412.1, %bb.ao ], [ %.sroa.412.1, %bb.am ], [ %.sroa.412.1, %bb.aq ], [ %.sroa.8.1.i, %bb.ar ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %bb.ak ], [ false, %bb.x ], [ true, %bb.w ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit ], [ true, %.lr.ph ], [ true, %bb.al ], [ false, %._crit_edge.i.us.i ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ao ], [ false, %bb.am ], [ false, %bb.aq ], [ true, %bb.ar ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.bx = cmpxchg weak ptr %.sroa.02.0230, i64 %i.bh, i64 1 acq_rel monotonic, align 8, !noalias !765
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.bx, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.as, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63

bb.x:                                             ; preds = %bb.r
  br i1 %i.bm, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = inttoptr i64 %i.bk to ptr               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.bz = getelementptr i8, ptr %i.by, i64 8      ; 3 uses
  %.val.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !766, !noalias !767, !nonnull !110, !noundef !110 ; 4 uses
  %i.ca = getelementptr i8, ptr %i.by, i64 16     ; 3 uses
  %.val1.i.i = load i64, ptr %i.ca, align 8, !alias.scope !766, !noalias !767, !noundef !110 ; 5 uses
  %i.cb = and i64 %.val1.i.i, 7                   ; 7 uses
  %i.cc = and i64 %.val1.i.i, -8                  ; 2 uses
  %.not184.a = icmp eq i64 %i.cc, 0
  br i1 %.not184.a, label %._crit_edge.i110, label %.lr.ph.i103

._crit_edge.i110.loopexit:                        ; preds = %.lr.ph.i103
  %i.cd = and i64 %.val1.i.i, -8
  br label %._crit_edge.i110

._crit_edge.i110:                                 ; preds = %._crit_edge.i110.loopexit, %bb.y
  %.sroa.32.4 = phi i64 [ %i.be, %bb.y ], [ %i.dj, %._crit_edge.i110.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.bc, %bb.y ], [ %i.dh, %._crit_edge.i110.loopexit ] ; 6 uses
  %.sroa.12138.4 = phi i64 [ %i.bd, %bb.y ], [ %i.dk, %._crit_edge.i110.loopexit ] ; 4 uses
  %.sroa.0133.4 = phi i64 [ %i.bb, %bb.y ], [ %i.dl, %._crit_edge.i110.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i93 = phi i64 [ 0, %bb.y ], [ %i.cd, %._crit_edge.i110.loopexit ] ; 3 uses
  %i.ce = icmp samesign ugt i64 %i.cb, 3
  br i1 %i.ce, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i110
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i93
  %.sroa.014.0.copyload.i17.i102 = load i32, ptr %i.cf, align 1, !alias.scope !768, !noalias !766
  %i.cg = zext i32 %.sroa.014.0.copyload.i17.i102 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i110
  %.sroa.03.0.i11.i94 = phi i64 [ 4, %bb.z ], [ 0, %._crit_edge.i110 ] ; 5 uses
  %.sroa.0.0.i12.i95 = phi i64 [ %i.cg, %bb.z ], [ 0, %._crit_edge.i110 ] ; 2 uses
  %i.ch = or disjoint i64 %.sroa.03.0.i11.i94, 1
  %i.ci = icmp samesign ult i64 %i.ch, %i.cb
  br i1 %i.ci, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i93
  %i.ck = getelementptr i8, ptr %i.cj, i64 %.sroa.03.0.i11.i94
  %.sroa.015.0.copyload.i16.i101 = load i16, ptr %i.ck, align 1, !alias.scope !768, !noalias !766
  %i.cl = zext i16 %.sroa.015.0.copyload.i16.i101 to i64
  %i.cm = shl nuw nsw i64 %.sroa.03.0.i11.i94, 3
  %i.cn = shl nuw nsw i64 %i.cl, %i.cm
  %i.co = or i64 %i.cn, %.sroa.0.0.i12.i95
  %i.cp = or disjoint i64 %.sroa.03.0.i11.i94, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.03.1.i13.i96 = phi i64 [ %i.cp, %bb.ab ], [ %.sroa.03.0.i11.i94, %bb.aa ] ; 3 uses
  %.sroa.0.1.i14.i97 = phi i64 [ %i.co, %bb.ab ], [ %.sroa.0.0.i12.i95, %bb.aa ] ; 2 uses
  %i.cq = icmp samesign ult i64 %.sroa.03.1.i13.i96, %i.cb
  br i1 %i.cq, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112

.lr.ph.i103:                                      ; preds = %bb.y, %.lr.ph.i103
  %i.cr = phi i64 [ %i.dk, %.lr.ph.i103 ], [ %i.bd, %bb.y ]
  %i.cs = phi i64 [ %i.dh, %.lr.ph.i103 ], [ %i.bc, %bb.y ] ; 3 uses
  %i.ct = phi i64 [ %i.dj, %.lr.ph.i103 ], [ %i.be, %bb.y ]
  %.sroa.0.119.i108 = phi i64 [ %i.dm, %.lr.ph.i103 ], [ 0, %bb.y ] ; 2 uses
  %i.cu = phi i64 [ %i.dl, %.lr.ph.i103 ], [ %i.bb, %bb.y ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.119.i108
  %.sroa.07.0.copyload.i109 = load i64, ptr %i.cv, align 1, !alias.scope !769, !noalias !766 ; 2 uses
  %i.cw = xor i64 %.sroa.07.0.copyload.i109, %i.ct ; 3 uses
  %i.cx = add i64 %i.cu, %i.cs                    ; 3 uses
  %i.cy = add i64 %i.cw, %i.cr                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 13)
  %i.da = xor i64 %i.cx, %i.cz                    ; 3 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 16)
  %i.dc = xor i64 %i.cy, %i.db                    ; 3 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 32)
  %i.de = add i64 %i.cy, %i.da                    ; 3 uses
  %i.df = add i64 %i.dc, %i.dd                    ; 2 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 17)
  %i.dh = xor i64 %i.de, %i.dg                    ; 2 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 21)
  %i.dj = xor i64 %i.di, %i.df                    ; 2 uses
  %i.dk = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 32) ; 2 uses
  %i.dl = xor i64 %i.df, %.sroa.07.0.copyload.i109 ; 2 uses
  %i.dm = add nuw i64 %.sroa.0.119.i108, 8        ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cc
  br i1 %i.dn, label %.lr.ph.i103, label %._crit_edge.i110.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112: ; preds = %bb.ac
  %i.do = icmp eq i64 %i.cb, 0
  br i1 %i.do, label %bb.ad, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112
  %i.dp = shl nuw nsw i64 %i.cb, 3
  %i.dq = shl nuw nsw i64 255, %i.dp
  %i.dr = or i64 %i.dq, %.sroa.0.1.i14.i97
  br label %bb.ad

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.ac
  %i.ds = add i64 %.sroa.03.1.i13.i96, %.sroa.0.1.lcssa.i93 ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.val1.i.i
  tail call void @llvm.assume(i1 %i.dt), !noalias !766
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !768, !noalias !766, !noundef !110
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %.sroa.03.1.i13.i96, 3
  %i.dy = shl nuw nsw i64 %i.dw, %i.dx
  %i.dz = shl nuw nsw i64 %i.cb, 3
  %i.ea = shl nuw i64 255, %i.dz
  %i.eb = or i64 %i.dy, %i.ea
  %i.ec = or i64 %i.eb, %.sroa.0.1.i14.i97        ; 3 uses
  %.not185 = icmp eq i64 %i.cb, 7
  br i1 %.not185, label %.thread, label %bb.ad

.thread:                                          ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i
  %i.ed = xor i64 %i.ec, %.sroa.32.4              ; 3 uses
  %i.ee = add i64 %.sroa.0133.4, %.sroa.22.4      ; 3 uses
  %i.ef = add i64 %i.ed, %.sroa.12138.4           ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.eh = xor i64 %i.ee, %i.eg                    ; 3 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 16)
  %i.ej = xor i64 %i.ef, %i.ei                    ; 3 uses
  %i.ek = tail call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %i.el = add i64 %i.ef, %i.eh                    ; 3 uses
  %i.em = add i64 %i.ej, %i.ek                    ; 2 uses
  %i.en = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 17)
  %i.eo = xor i64 %i.el, %i.en
  %i.ep = tail call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 21)
  %i.eq = xor i64 %i.ep, %i.em
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 32)
  %i.es = xor i64 %i.em, %i.ec
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread, %.thread
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.eq, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112 ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.eo, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112 ] ; 3 uses
  %.sroa.12138.2 = phi i64 [ %.sroa.12138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.12138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.er, %.thread ], [ %.sroa.12138.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112 ]
  %.sroa.0133.2 = phi i64 [ %.sroa.0133.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.0133.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.es, %.thread ], [ %.sroa.0133.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112 ]
  %.sroa.50.0 = phi i64 [ %i.ec, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %i.dr, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion.exit112 ]
  %i.et = shl i64 %.val1.i.i, 56
  %i.eu = add i64 %i.et, 72057594037927936
  %i.ev = or i64 %.sroa.50.0, %i.eu               ; 2 uses
  %i.ew = xor i64 %i.ev, %.sroa.32.2              ; 3 uses
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 16)
  %i.ey = add i64 %i.ew, %.sroa.12138.2           ; 2 uses
  %i.ez = xor i64 %i.ex, %i.ey                    ; 3 uses
  %i.fa = add i64 %.sroa.0133.2, %.sroa.22.2      ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 32)
  %i.fc = add i64 %i.ez, %i.fb                    ; 2 uses
  %i.fd = xor i64 %i.fc, %i.ev
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.ff = xor i64 %i.fa, %i.fe                    ; 3 uses
  %i.fg = add i64 %i.ey, %i.ff                    ; 3 uses
  %i.fh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 17)
  %i.fi = xor i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = add i64 %i.fd, %i.fi                    ; 3 uses
  %4 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 13)
  %i.fk = xor i64 %i.fj, %4                       ; 3 uses
  %i.fl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 21)
  %i.fm = xor i64 %i.fl, %i.fc                    ; 3 uses
  %i.fn = tail call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 32)
  %i.fo = xor i64 %i.fn, 255
  %i.fp = add i64 %i.fm, %i.fo                    ; 2 uses
  %5 = add i64 %i.fk, %i.fp                       ; 3 uses
  %6 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 17)
  %i.fq = xor i64 %5, %6                          ; 3 uses
  %i.fr = tail call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 13)
  %i.fs = tail call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 16)
  %i.ft = xor i64 %i.fs, %i.fp                    ; 3 uses
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 32)
  %8 = add i64 %i.ft, %7                          ; 2 uses
  %i.fu = add i64 %i.fq, %8                       ; 3 uses
  %i.fv = xor i64 %i.fr, %i.fu                    ; 3 uses
  %i.fw = tail call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 17)
  %i.fx = tail call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 21)
  %i.fy = xor i64 %i.fx, %8                       ; 3 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 32)
  %10 = add i64 %i.fy, %9                         ; 2 uses
  %i.fz = add i64 %i.fv, %10                      ; 3 uses
  %i.ga = xor i64 %i.fw, %i.fz                    ; 3 uses
  %i.gb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 13)
  %i.gc = tail call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 16)
  %i.gd = xor i64 %i.gc, %10                      ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 32)
  %12 = add i64 %i.gd, %11                        ; 2 uses
  %i.ge = add i64 %i.ga, %12
  %i.gf = xor i64 %i.gb, %i.ge                    ; 3 uses
  %i.gg = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 21)
  %13 = xor i64 %i.gg, %12                        ; 3 uses
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 32)
  %15 = add i64 %13, %14                          ; 2 uses
  %i.gh = add i64 %i.gf, %15                      ; 3 uses
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 32)
  %i.gi = tail call noundef i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 16)
  %i.gj = xor i64 %i.gi, %15                      ; 2 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 21)
  %i.gk = tail call noundef i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 17)
  %18 = xor i64 %17, %i.gk
  %i.gl = xor i64 %18, %16
  %i.gm = xor i64 %i.gl, %i.gh
  %i.gn = load i64, ptr %i.bf, align 8, !noundef !110 ; 2 uses
  %i.go = add i64 %i.gn, -1                       ; 5 uses
  %i.gp = and i64 %i.go, %i.gm                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.gn, 0
  br i1 %.not.i64, label %.invoke, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gq = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !110, !noundef !110 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gp ; 2 uses
  %19 = and i64 %i.bh, 2
  %i.gs = icmp eq i64 %19, 0
  br i1 %i.gs, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i: ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ true, %bb.ae ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ %i.gr, %bb.ae ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge ], [ %i.gp, %bb.ae ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.af

bb.af:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.go
  br i1 %.not.i.us.i, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.gt = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.gu = add i64 %i.gt, %i.gp
  %i.gv = and i64 %i.gu, %i.go                    ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gv
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.ag, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.gt, %bb.ag ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.gw, %bb.ag ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.gv, %bb.ag ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ] ; 2 uses
  %i.gx = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !770 ; 5 uses
  %i.gy = and i64 %i.gx, 1
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %._crit_edge.i.us.i
  %i.ha = and i64 %i.gx, -8                       ; 2 uses
  %i.hb = inttoptr i64 %i.ha to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.ha, 0
  br i1 %.not20.us.i, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hc = icmp eq i64 %i.gx, %i.bl
  br i1 %i.hc, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = getelementptr i8, ptr %i.hb, i64 16
  %.val24.us.i = load i64, ptr %i.hd, align 8, !noundef !110 ; 2 uses
  %.val26.us.i = load i64, ptr %i.ca, align 8, !noundef !110
  %i.he = icmp eq i64 %.val24.us.i, %.val26.us.i
  br i1 %i.he, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i: ; preds = %bb.aj
  %.val25.us.i = load ptr, ptr %i.bz, align 8, !nonnull !110, !noundef !110
  %i.hf = getelementptr i8, ptr %i.hb, i64 8
  %.val23.us.i = load ptr, ptr %i.hf, align 8, !nonnull !110, !noundef !110
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.us.i, ptr nonnull readonly %.val25.us.i, i64 %.val24.us.i)
  %.not53.us.i = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %.not53.us.i, label %bb.ak, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

bb.ak:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i
  %i.hg = and i64 %i.gx, 4
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %i.hi = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.gx, i64 %i.bl acq_rel monotonic, align 8, !noalias !771
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.hi, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i.backedge: ; preds = %bb.al, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i, %bb.aj
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.aj ], [ true, %bb.al ], [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.us.i

.invoke:                                          ; preds = %bb.ad, %bb.u
  %i.hj = phi i64 [ %.sroa.412.1, %bb.u ], [ %i.gp, %bb.ad ]
  %i.hk = phi i64 [ %i.bn, %bb.u ], [ 0, %bb.ad ]
  %i.hl = phi ptr [ @44, %bb.u ], [ @26, %bb.ad ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hj, i64 noundef %i.hk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #48
          to label %.cont unwind label %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ true, %bb.ae ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ 0, %bb.ae ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ %i.gr, %bb.ae ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge ], [ %i.gp, %bb.ae ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.am

bb.am:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.go
  br i1 %.not.i.i, label %bb.an, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.an, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hp, %bb.an ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.hs, %bb.an ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.hr, %bb.an ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ] ; 2 uses
  %i.hm = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !770 ; 5 uses
  %i.hn = and i64 %i.hm, 1
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.ao, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.hp = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.hq = add i64 %i.hp, %i.gp
  %i.hr = and i64 %i.hq, %i.go                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.hr
  br label %._crit_edge.i.i

bb.ao:                                            ; preds = %._crit_edge.i.i
  %i.ht = and i64 %i.hm, -8                       ; 2 uses
  %i.hu = inttoptr i64 %i.ht to ptr               ; 2 uses
  %.not20.i = icmp eq i64 %i.ht, 0
  %i.hv = icmp eq i64 %i.hm, %i.bl
  %or.cond.i = or i1 %i.hv, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hw = getelementptr i8, ptr %i.hu, i64 16
  %.val24.i = load i64, ptr %i.hw, align 8, !noundef !110 ; 2 uses
  %.val26.i = load i64, ptr %i.ca, align 8, !noundef !110
  %i.hx = icmp eq i64 %.val24.i, %.val26.i
  br i1 %i.hx, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %bb.ap
  %.val25.i = load ptr, ptr %i.bz, align 8, !nonnull !110, !noundef !110
  %i.hy = getelementptr i8, ptr %i.hu, i64 8
  %.val23.i = load ptr, ptr %i.hy, align 8, !nonnull !110, !noundef !110
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.val25.i, i64 %.val24.i)
  %.not53.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not53.i, label %bb.aq, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

bb.aq:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %i.hz = and i64 %i.hm, 4
  %.not64.i = icmp eq i64 %i.hz, 0
  br i1 %.not64.i, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ia = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.hm, i64 %i.bl acq_rel monotonic, align 8, !noalias !771
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.ia, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.backedge: ; preds = %bb.ar, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, %bb.ap
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ true, %bb.ar ], [ false, %bb.ap ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

bb.as:                                            ; preds = %.loopexit
  %i.ib = icmp eq i64 %i.bk, 0
  %20 = and i64 %i.bh, 2
  %i.ic = icmp eq i64 %20, 0
  %or.cond41 = or i1 %i.ib, %i.ic
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit191, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2k_16CachedReaderDataEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bh)
          to label %.loopexit191 unwind label %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit191:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63, %bb.at, %bb.as
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.as ], [ %.sroa.6.2, %bb.at ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.as ], [ %.sroa.412.2, %bb.at ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsc93vp1BCDlY_26lance_namespace_datafusion.exit63 ]
  %i.id = icmp eq ptr %i.bg, %i.ay
  br i1 %i.id, label %._crit_edge, label %bb.q

bb.au:                                            ; preds = %._crit_edge
  %i.ie = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ie, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ig = and i64 %i.if, 9223372036854775807
  %i.ih = icmp eq i64 %i.ig, 0
  br i1 %i.ih, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !115

.noexc68:                                         ; preds = %bb.av
  %i.ii = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ii, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.aw, %.noexc68, %bb.av, %bb.au
  %i.ij = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ik = icmp eq i32 %i.ij, 2
  br i1 %i.ik, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

bb.ax:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.ax ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73: ; preds = %bb.bh, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bb, %bb.bp
  %.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.bp ], [ %eh.lpad-body168, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.jc, %bb.bh ], [ %eh.lpad-body168, %bb.bb ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body168 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.ar, %bb.l ], [ %lpad.loopexit.split-lp373, %.body.thread170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.il = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.il, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ay

bb.ay:                                            ; preds = %.body.thread
  %i.im = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.in = and i64 %i.im, 9223372036854775807
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.az, !prof !115

bb.az:                                            ; preds = %bb.ay
  %i.ip = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.bc

.noexc71:                                         ; preds = %bb.az
  br i1 %i.ip, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ba

bb.ba:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.ba, %.noexc71, %bb.ay, %.body.thread
  %i.iq = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ir = icmp eq i32 %i.iq, 2
  br i1 %i.ir, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73, !prof !113

bb.bb:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.bh, %bb.bp
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.bd:                                            ; preds = %bb.a
  %i.it = load ptr, ptr %i.d, align 8, !nonnull !110, !noundef !110 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 5 uses
  %i.iv = cmpxchg ptr %i.iu, i32 0, i32 1 acquire monotonic, align 4, !noalias !772
  %i.iw = extractvalue { i32, i1 } %i.iv, 1
  br i1 %i.iw, label %.noexc76, label %bb.be, !prof !115

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.iu)
          to label %.noexc76 unwind label %bb.bp

.noexc76:                                         ; preds = %bb.be, %bb.bd
  %i.ix = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !772
  %i.iy = and i64 %i.ix, 9223372036854775807
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %.thread301, label %bb.bf, !prof !115

bb.bf:                                            ; preds = %.noexc76
  %i.ja = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bi unwind label %bb.bp     ; 2 uses

bb.bg:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsc93vp1BCDlY_26lance_namespace_datafusion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.jb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsc93vp1BCDlY_26lance_namespace_datafusion, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #48
          to label %bb.v unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jc = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.c, align 8
  %.val51 = load i8, ptr %i.jb, align 8, !range !118, !noundef !110
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr %.val50, i8 %.val51) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73 unwind label %bb.bc

bb.bi:                                            ; preds = %bb.bf
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 20 ; 3 uses
  %i.je = load atomic i8, ptr %i.jd monotonic, align 1, !noalias !772
  %.not183 = icmp eq i8 %i.je, 0
  br i1 %.not183, label %bb.bj, label %bb.bm

.thread301:                                       ; preds = %.noexc76
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 20 ; 3 uses
  %i.jg = load atomic i8, ptr %i.jf monotonic, align 1, !noalias !772
  %.not183303 = icmp eq i8 %i.jg, 0
  br i1 %.not183303, label %.thread306, label %.thread308

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.ja, label %.thread306, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread306:                                       ; preds = %.thread301, %bb.bj
  %i.jh = phi ptr [ %i.jd, %bb.bj ], [ %i.jf, %.thread301 ]
  %i.ji = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !773
  %i.jj = and i64 %i.ji, 9223372036854775807
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bk, !prof !115

bb.bk:                                            ; preds = %.thread306
  %i.jl = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %bb.bp

.noexc78:                                         ; preds = %bb.bk
  br i1 %i.jl, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.jh monotonic, align 1, !noalias !773
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bl, %.noexc78, %.thread306, %bb.bj
  %i.jm = atomicrmw xchg ptr %i.iu, i32 0 release, align 4, !noalias !773
  %i.jn = icmp eq i32 %i.jm, 2
  br i1 %i.jn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

bb.bm:                                            ; preds = %bb.bi
  br i1 %i.ja, label %.thread308, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread308:                                       ; preds = %.thread301, %bb.bm
  %i.jo = phi ptr [ %i.jd, %bb.bm ], [ %i.jf, %.thread301 ]
  %i.jp = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !773
  %i.jq = and i64 %i.jp, 9223372036854775807
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bn, !prof !115

bb.bn:                                            ; preds = %.thread308
  %i.js = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.bp

.noexc79:                                         ; preds = %bb.bn
  br i1 %i.js, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.jo monotonic, align 1, !noalias !773
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bo, %.noexc79, %.thread308, %bb.bm
  %i.jt = atomicrmw xchg ptr %i.iu, i32 0 release, align 4, !noalias !773
  %i.ju = icmp eq i32 %i.jt, 2
  br i1 %i.ju, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit, !prof !113

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.iu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit unwind label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.sink.split.i, %bb.bn, %bb.bk, %bb.bf, %bb.be
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsc93vp1BCDlY_26lance_namespace_datafusion(ptr nonnull %i.f, i8 2) #49
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsc93vp1BCDlY_26lance_namespace_datafusion.exit73 unwind label %bb.bc
end_hunk_2
