Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2n_4moka14MokaCacheEntryEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB2p_:bb.a
  %i.ag = load atomic i64, ptr %i.r acquire, align 8
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ah, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !521

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !563, !noundef !24 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !563, !nonnull !24, !noundef !24
  %i.ak = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef 8) #65, !noalias !563
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !566, !nonnull !24, !noundef !24
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !566
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
  %i.as = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !562
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

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63: ; preds = %.loopexit, %bb.n
  %.sroa.6.1 = phi i64 [ %.sroa.6.0236, %bb.n ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0237, %bb.n ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.n ], [ %.not37, %.loopexit ]
  %i.bi = load atomic i64, ptr %.sroa.02.0238 acquire, align 8 ; 6 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit

bb.o:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63
  %i.bl = and i64 %i.bi, 2                        ; 2 uses
  %i.bm = and i64 %i.bi, -8                       ; 4 uses
  %i.bn = or i64 %i.bi, 4                         ; 7 uses
  %i.bo = icmp eq i64 %i.bm, 0                    ; 2 uses
  br i1 %.sroa.010.0, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.bo, label %bb.q, label %bb.r, !prof !27

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #68
          to label %bb.s unwind label %.body.thread179.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.bd, align 8, !noundef !24 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.412.1, %i.bp
  br i1 %i.bq, label %bb.t, label %.invoke

bb.s:                                             ; preds = %bb.bf, %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.br = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.412.1 ; 2 uses
  %i.bt = and i64 %.sroa.6.1, 4
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %.lr.ph

.invoke:                                          ; preds = %bb.aa, %bb.r
  %i.bv = phi i64 [ %.sroa.412.1, %bb.r ], [ %i.gv, %bb.aa ]
  %i.bw = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.aa ]
  %i.bx = phi ptr [ @57, %bb.r ], [ @41, %bb.aa ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #68
          to label %.cont unwind label %.body.thread179.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph:                                           ; preds = %bb.t, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit
  %.sroa.04.0234 = phi i64 [ %i.bz, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ %.sroa.6.1, %bb.t ]
  %i.by = cmpxchg weak ptr %i.bs, i64 %.sroa.04.0234, i64 %i.bn acq_rel monotonic, align 8, !noalias !567
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit: ; preds = %.lr.ph
  %i.bz = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.ca = and i64 %i.bz, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.aj, %bb.al, %._crit_edge.i.i, %bb.an, %bb.ao, %bb.ah, %bb.ac, %bb.af, %._crit_edge.i.us.i, %bb.ai, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit, %.lr.ph, %bb.t, %bb.u
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %bb.ah ], [ %.sroa.6.1, %bb.u ], [ %.sroa.6.1, %bb.t ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bn, %bb.ai ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.af ], [ %.sroa.6.1, %bb.ac ], [ %.sroa.6.1, %bb.al ], [ %.sroa.6.1, %bb.aj ], [ %.sroa.6.1, %bb.an ], [ %i.bn, %bb.ao ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %bb.ah ], [ %.sroa.412.1, %bb.u ], [ %.sroa.412.1, %bb.t ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.ai ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.af ], [ %.sroa.412.1, %bb.ac ], [ %.sroa.412.1, %bb.al ], [ %.sroa.412.1, %bb.aj ], [ %.sroa.412.1, %bb.an ], [ %.sroa.8.1.i, %bb.ao ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 4 uses
  %.not37 = phi i1 [ false, %bb.ah ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ true, %.lr.ph ], [ true, %bb.ai ], [ false, %._crit_edge.i.us.i ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.an ], [ true, %bb.ao ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cc = cmpxchg weak ptr %.sroa.02.0238, i64 %i.bi, i64 1 acq_rel monotonic, align 8, !noalias !568
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cc, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.ap, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63

bb.u:                                             ; preds = %bb.o
  br i1 %i.bo, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = inttoptr i64 %i.bm to ptr               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !569, !noalias !570, !nonnull !24, !noundef !24 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !569, !noalias !570, !noundef !24 ; 5 uses
  %i.cg = and i64 %.val1.i.i, 7                   ; 7 uses
  %i.ch = and i64 %.val1.i.i, -8                  ; 2 uses
  %.not193 = icmp eq i64 %i.ch, 0
  br i1 %.not193, label %._crit_edge.i115, label %.lr.ph.i108

._crit_edge.i115.loopexit:                        ; preds = %.lr.ph.i108
  %i.ci = and i64 %.val1.i.i, -8
  br label %._crit_edge.i115

._crit_edge.i115:                                 ; preds = %._crit_edge.i115.loopexit, %bb.v
  %.sroa.32.4 = phi i64 [ %i.bc, %bb.v ], [ %i.do, %._crit_edge.i115.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.ba, %bb.v ], [ %i.dm, %._crit_edge.i115.loopexit ] ; 6 uses
  %.sroa.12143.4 = phi i64 [ %i.bb, %bb.v ], [ %i.dp, %._crit_edge.i115.loopexit ] ; 4 uses
  %.sroa.0138.4 = phi i64 [ %i.az, %bb.v ], [ %i.dq, %._crit_edge.i115.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i98 = phi i64 [ 0, %bb.v ], [ %i.ci, %._crit_edge.i115.loopexit ] ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, 3
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i115
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i98
  %.sroa.014.0.copyload.i17.i107 = load i32, ptr %i.ck, align 1, !alias.scope !571, !noalias !572
  %i.cl = zext i32 %.sroa.014.0.copyload.i17.i107 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i115
  %.sroa.03.0.i11.i99 = phi i64 [ 4, %bb.w ], [ 0, %._crit_edge.i115 ] ; 5 uses
  %.sroa.0.0.i12.i100 = phi i64 [ %i.cl, %bb.w ], [ 0, %._crit_edge.i115 ] ; 2 uses
  %i.cm = or disjoint i64 %.sroa.03.0.i11.i99, 1
  %i.cn = icmp samesign ult i64 %i.cm, %i.cg
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i98
  %i.cp = getelementptr i8, ptr %i.co, i64 %.sroa.03.0.i11.i99
  %.sroa.015.0.copyload.i16.i106 = load i16, ptr %i.cp, align 1, !alias.scope !571, !noalias !572
  %i.cq = zext i16 %.sroa.015.0.copyload.i16.i106 to i64
  %i.cr = shl nuw nsw i64 %.sroa.03.0.i11.i99, 3
  %i.cs = shl nuw nsw i64 %i.cq, %i.cr
  %i.ct = or i64 %i.cs, %.sroa.0.0.i12.i100
  %i.cu = or disjoint i64 %.sroa.03.0.i11.i99, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.03.1.i13.i101 = phi i64 [ %i.cu, %bb.y ], [ %.sroa.03.0.i11.i99, %bb.x ] ; 3 uses
  %.sroa.0.1.i14.i102 = phi i64 [ %i.ct, %bb.y ], [ %.sroa.0.0.i12.i100, %bb.x ] ; 2 uses
  %i.cv = icmp samesign ult i64 %.sroa.03.1.i13.i101, %i.cg
  br i1 %i.cv, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117

.lr.ph.i108:                                      ; preds = %bb.v, %.lr.ph.i108
  %i.cw = phi i64 [ %i.dp, %.lr.ph.i108 ], [ %i.bb, %bb.v ]
  %i.cx = phi i64 [ %i.dm, %.lr.ph.i108 ], [ %i.ba, %bb.v ] ; 3 uses
  %i.cy = phi i64 [ %i.do, %.lr.ph.i108 ], [ %i.bc, %bb.v ]
  %.sroa.0.119.i113 = phi i64 [ %i.dr, %.lr.ph.i108 ], [ 0, %bb.v ] ; 2 uses
  %i.cz = phi i64 [ %i.dq, %.lr.ph.i108 ], [ %i.az, %bb.v ]
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.119.i113
  %.sroa.07.0.copyload.i114 = load i64, ptr %i.da, align 1, !alias.scope !573, !noalias !572 ; 2 uses
  %i.db = xor i64 %.sroa.07.0.copyload.i114, %i.cy ; 3 uses
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
  %i.dq = xor i64 %i.dk, %.sroa.07.0.copyload.i114 ; 2 uses
  %i.dr = add nuw i64 %.sroa.0.119.i113, 8        ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.ch
  br i1 %i.ds, label %.lr.ph.i108, label %._crit_edge.i115.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117: ; preds = %bb.z
  %4 = icmp eq i64 %i.cg, 0
  br i1 %4, label %bb.aa, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117
  %5 = shl nuw nsw i64 %i.cg, 3
  %6 = shl nuw nsw i64 255, %5
  %7 = or i64 %6, %.sroa.0.1.i14.i102
  br label %bb.aa

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.z
  %8 = add i64 %.sroa.03.1.i13.i101, %.sroa.0.1.lcssa.i98 ; 2 uses
  %9 = icmp ult i64 %8, %.val1.i.i
  tail call void @llvm.assume(i1 %9), !noalias !569
  %10 = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %8
  %11 = load i8, ptr %10, align 1, !alias.scope !571, !noalias !572, !noundef !24
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %.sroa.03.1.i13.i101, 3
  %14 = shl nuw nsw i64 %12, %13
  %i.dt = shl nuw nsw i64 %i.cg, 3
  %i.du = shl nuw i64 255, %i.dt
  %15 = or i64 %14, %i.du
  %i.dv = or i64 %15, %.sroa.0.1.i14.i102         ; 3 uses
  %.not194 = icmp eq i64 %i.cg, 7
  br i1 %.not194, label %.thread, label %bb.aa

.thread:                                          ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i
  %i.dw = xor i64 %i.dv, %.sroa.32.4              ; 3 uses
  %i.dx = add i64 %.sroa.0138.4, %.sroa.22.4      ; 3 uses
  %i.dy = add i64 %i.dw, %.sroa.12143.4           ; 2 uses
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.ea = xor i64 %i.dx, %i.dz                    ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.dw, i64 %i.dw, i64 16)
  %i.ec = xor i64 %i.dy, %i.eb                    ; 3 uses
  %i.ed = tail call noundef i64 @llvm.fshl.i64(i64 %i.dx, i64 %i.dx, i64 32)
  %i.ee = add i64 %i.dy, %i.ea                    ; 3 uses
  %i.ef = add i64 %i.ec, %i.ed                    ; 2 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 17)
  %i.eh = xor i64 %i.ee, %i.eg
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 21)
  %i.ej = xor i64 %i.ei, %i.ef
  %i.ek = tail call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %i.el = xor i64 %i.ef, %i.dv
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a, %.thread
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.32.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a ], [ %i.ej, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.22.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a ], [ %i.eh, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ] ; 3 uses
  %.sroa.12143.2 = phi i64 [ %.sroa.12143.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.12143.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a ], [ %i.ek, %.thread ], [ %.sroa.12143.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %.sroa.0138.2 = phi i64 [ %.sroa.0138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.0138.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a ], [ %i.el, %.thread ], [ %.sroa.0138.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %.sroa.50.0 = phi i64 [ %i.dv, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %7, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117.a ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %16 = shl i64 %.val1.i.i, 56
  %17 = add i64 %16, 72057594037927936
  %i.em = or i64 %.sroa.50.0, %17                 ; 2 uses
  %i.en = xor i64 %i.em, %.sroa.32.2              ; 3 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 16)
  %i.ep = add i64 %i.en, %.sroa.12143.2           ; 2 uses
  %i.eq = xor i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 21)
  %i.es = add i64 %.sroa.0138.2, %.sroa.22.2      ; 3 uses
  %i.et = tail call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 32)
  %i.eu = add i64 %i.eq, %i.et                    ; 2 uses
  %i.ev = xor i64 %i.er, %i.eu                    ; 3 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 16)
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.ey = xor i64 %i.es, %i.ex                    ; 3 uses
  %i.ez = add i64 %i.ep, %i.ey                    ; 3 uses
  %i.fa = tail call noundef i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 32)
  %i.fb = xor i64 %i.fa, 255
  %i.fc = add i64 %i.ev, %i.fb                    ; 2 uses
  %i.fd = xor i64 %i.ew, %i.fc                    ; 3 uses
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 21)
  %i.ff = xor i64 %i.eu, %i.em
  %i.fg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 17)
  %i.fh = xor i64 %i.ez, %i.fg                    ; 3 uses
  %i.fi = add i64 %i.ff, %i.fh                    ; 3 uses
  %i.fj = tail call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 32)
  %i.fk = add i64 %i.fd, %i.fj                    ; 2 uses
  %i.fl = xor i64 %i.fe, %i.fk                    ; 3 uses
  %i.fm = tail call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 16)
  %i.fn = tail call noundef i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 13)
  %i.fo = xor i64 %i.fi, %i.fn                    ; 3 uses
  %i.fp = add i64 %i.fo, %i.fc                    ; 3 uses
  %i.fq = tail call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 32)
  %i.fr = add i64 %i.fl, %i.fq                    ; 2 uses
  %i.fs = xor i64 %i.fm, %i.fr                    ; 3 uses
  %i.ft = tail call noundef i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 21)
  %i.fu = tail call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 17)
  %i.fv = xor i64 %i.fp, %i.fu                    ; 3 uses
  %i.fw = add i64 %i.fv, %i.fk                    ; 3 uses
  %i.fx = tail call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 32)
  %i.fy = add i64 %i.fs, %i.fx                    ; 2 uses
  %i.fz = xor i64 %i.ft, %i.fy                    ; 3 uses
  %i.ga = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 16)
  %i.gb = tail call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 13)
  %i.gc = xor i64 %i.gb, %i.fw                    ; 3 uses
  %i.gd = add i64 %i.gc, %i.fr                    ; 3 uses
  %i.ge = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 32)
  %i.gf = add i64 %i.fz, %i.ge                    ; 2 uses
  %i.gg = xor i64 %i.ga, %i.gf                    ; 2 uses
  %i.gh = tail call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 21)
  %i.gi = tail call noundef i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 17)
  %i.gj = xor i64 %i.gi, %i.gd                    ; 3 uses
  %i.gk = tail call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 13)
  %i.gl = add i64 %i.gj, %i.fy
  %i.gm = xor i64 %i.gk, %i.gl                    ; 3 uses
  %i.gn = tail call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 17)
  %i.go = xor i64 %i.gh, %i.gn
  %i.gp = add i64 %i.gm, %i.gf                    ; 3 uses
  %i.gq = tail call noundef i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 32)
  %i.gr = xor i64 %i.go, %i.gq
  %i.gs = xor i64 %i.gr, %i.gp
  %i.gt = load i64, ptr %i.bd, align 8, !noundef !24 ; 2 uses
  %i.gu = add i64 %i.gt, -1                       ; 5 uses
  %i.gv = and i64 %i.gu, %i.gs                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.gt, 0
  br i1 %.not.i64, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gw = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gv ; 2 uses
  %i.gy = icmp eq i64 %i.bl, 0
  br i1 %i.gy, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i: ; preds = %bb.ab, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ true, %bb.ab ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ %i.gx, %bb.ab ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ %i.gv, %bb.ab ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.gu
  br i1 %.not.i.us.i, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.gz = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.ha = add i64 %i.gz, %i.gv
  %i.hb = and i64 %i.ha, %i.gu                    ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hb
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.ad, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.gz, %bb.ad ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.hc, %bb.ad ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.hb, %bb.ad ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ] ; 2 uses
  %i.hd = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !574 ; 5 uses
  %i.he = and i64 %i.hd, 1
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %._crit_edge.i.us.i
  %i.hg = and i64 %i.hd, -8                       ; 2 uses
  %i.hh = inttoptr i64 %i.hg to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.hg, 0
  br i1 %.not20.us.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hi = icmp eq i64 %i.hd, %i.bn
  br i1 %i.hi, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hj = getelementptr i8, ptr %i.hh, i64 16
  %.val24.us.i = load i64, ptr %i.hj, align 8, !noundef !24 ; 2 uses
  %.val26.us.i = load i64, ptr %i.cf, align 8, !noundef !24
  %i.hk = icmp eq i64 %.val24.us.i, %.val26.us.i
  br i1 %i.hk, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i: ; preds = %bb.ag
  %.val25.us.i = load ptr, ptr %i.ce, align 8, !nonnull !24, !noundef !24
  %i.hl = getelementptr i8, ptr %i.hh, i64 8
  %.val23.us.i = load ptr, ptr %i.hl, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.us.i, ptr nonnull readonly %.val25.us.i, i64 %.val24.us.i)
  %.not53.us.i = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %.not53.us.i, label %bb.ah, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

bb.ah:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i
  %i.hm = and i64 %i.hd, 4
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.ho = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.hd, i64 %i.bn acq_rel monotonic, align 8, !noalias !575
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.ho, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge: ; preds = %bb.ai, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i, %bb.ag
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.ag ], [ true, %bb.ai ], [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i: ; preds = %bb.ab, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ true, %bb.ab ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ %i.gx, %bb.ab ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ %i.gv, %bb.ab ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.gu
  br i1 %.not.i.i, label %bb.ak, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ak, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hs, %bb.ak ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.hv, %bb.ak ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.hu, %bb.ak ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ] ; 2 uses
  %i.hp = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !574 ; 5 uses
  %i.hq = and i64 %i.hp, 1
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hs = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.ht = add i64 %i.hs, %i.gv
  %i.hu = and i64 %i.ht, %i.gu                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hu
  br label %._crit_edge.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.hw = and i64 %i.hp, -8                       ; 2 uses
  %i.hx = inttoptr i64 %i.hw to ptr               ; 2 uses
  %.not20.i = icmp eq i64 %i.hw, 0
  %i.hy = icmp eq i64 %i.hp, %i.bn
  %or.cond.i = or i1 %i.hy, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hz = getelementptr i8, ptr %i.hx, i64 16
  %.val24.i = load i64, ptr %i.hz, align 8, !noundef !24 ; 2 uses
  %.val26.i = load i64, ptr %i.cf, align 8, !noundef !24
  %i.ia = icmp eq i64 %.val24.i, %.val26.i
  br i1 %i.ia, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.am
  %.val25.i = load ptr, ptr %i.ce, align 8, !nonnull !24, !noundef !24
  %i.ib = getelementptr i8, ptr %i.hx, i64 8
  %.val23.i = load ptr, ptr %i.ib, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.val25.i, i64 %.val24.i)
  %.not53.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not53.i, label %bb.an, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

bb.an:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i
  %i.ic = and i64 %i.hp, 4
  %.not64.i = icmp eq i64 %i.ic, 0
  br i1 %.not64.i, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.id = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.hp, i64 %i.bn acq_rel monotonic, align 8, !noalias !575
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.id, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge: ; preds = %bb.ao, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i, %bb.am
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i ], [ true, %bb.ao ], [ false, %bb.am ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyTbllENCNvMs4_NtB11_6schemaNtB2R_6Schema22unenforced_primary_keys_0E0EB13_:bb.a
  br i1 %i.ex, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ef ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.ef, %i.eg  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ey, ptr %i.ej
  %i.ez = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ez, i1 false), !alias.scope !7263
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i
  %i.fb = phi ptr [ %i.gi, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.fa, %.critedge.i ]
  %i.fc = phi ptr [ %i.gg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.ey, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ff, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 -8 ; 3 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.fe, align 8, !alias.scope !7262, !noalias !7264, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  %.val10.i.i = load ptr, ptr %i.fd, align 8, !alias.scope !7261, !noalias !7265 ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 112
  %i.fh = load i32, ptr %i.fg, align 8, !range !92, !noalias !7266, !noundef !24
  %i.fi = trunc nuw i32 %i.fh to i1
  br i1 %i.fi, label %bb.al, label %.thread.i.i.i.i

bb.al:                                            ; preds = %.preheader.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 116
  %i.fk = load i32, ptr %i.fj, align 4, !noalias !7266 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.am

.thread.i.i.i.i:                                  ; preds = %bb.al, %.preheader.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 176
  %i.fm = load i32, ptr %i.fl, align 8, !noalias !7266, !noundef !24 ; 2 uses
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 176
  %i.fo = load i32, ptr %i.fn, align 8, !noalias !7266, !noundef !24
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.i: ; preds = %bb.am, %.thread.i.i.i.i
  %.sink5.i.i.i.i = phi i8 [ 0, %bb.am ], [ 1, %.thread.i.i.i.i ] ; 2 uses
  %.sink4.i.i.i.i = phi i32 [ %i.fk, %bb.am ], [ %i.fm, %.thread.i.i.i.i ] ; 2 uses
  %.sink.i.i.i.i = phi i32 [ %i.fo, %bb.am ], [ %i.fm, %.thread.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 112
  %i.fq = load i32, ptr %i.fp, align 8, !range !92, !noalias !7267, !noundef !24
  %i.fr = trunc nuw i32 %i.fq to i1
  br i1 %i.fr, label %bb.an, label %.thread.i3.i.i.i

bb.an:                                            ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 116
  %i.ft = load i32, ptr %i.fs, align 4, !noalias !7267 ; 2 uses
  %.not.i7.i.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i7.i.i.i, label %.thread.i3.i.i.i, label %bb.ao

.thread.i3.i.i.i:                                 ; preds = %bb.an, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 176
  %i.fv = load i32, ptr %i.fu, align 8, !noalias !7267, !noundef !24 ; 2 uses
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fw = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 176
  %i.fx = load i32, ptr %i.fw, align 8, !noalias !7267, !noundef !24
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i: ; preds = %bb.ao, %.thread.i3.i.i.i
  %.sink5.i4.i.i.i = phi i8 [ 0, %bb.ao ], [ 1, %.thread.i3.i.i.i ] ; 2 uses
  %.sink4.i5.i.i.i = phi i32 [ %i.ft, %bb.ao ], [ %i.fv, %.thread.i3.i.i.i ] ; 2 uses
  %.sink.i6.i.i.i = phi i32 [ %i.fx, %bb.ao ], [ %i.fv, %.thread.i3.i.i.i ]
  %i.fy = icmp eq i8 %.sink5.i.i.i.i, %.sink5.i4.i.i.i
  %i.fz = icmp samesign ult i8 %.sink5.i.i.i.i, %.sink5.i4.i.i.i
  %i.ga = icmp eq i32 %.sink4.i.i.i.i, %.sink4.i5.i.i.i
  %i.gb = icmp slt i32 %.sink4.i.i.i.i, %.sink4.i5.i.i.i
  %i.gc = icmp slt i32 %.sink.i.i.i.i, %.sink.i6.i.i.i
  %spec.select.i.i.i = select i1 %i.ga, i1 %i.gc, i1 %i.gb
  %.sroa.0.1.in.i.i.i.i = select i1 %i.fy, i1 %spec.select.i.i.i, i1 %i.fz ; 3 uses
  %..i.i = select i1 %.sroa.0.1.in.i.i.i.i, ptr %i.fd, ptr %i.fe
  %i.gd = load i64, ptr %..i.i, align 8, !alias.scope !7263, !noalias !7268
  store i64 %i.gd, ptr %i.ff, align 8, !alias.scope !7261, !noalias !7265
  %i.ge = xor i1 %.sroa.0.1.in.i.i.i.i, true
  %i.gf = zext i1 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.gf ; 3 uses
  %i.gh = zext i1 %.sroa.0.1.in.i.i.i.i to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.gh ; 3 uses
  %i.gj = icmp eq ptr %i.gg, %i.ej
  %i.gk = icmp eq ptr %i.gi, %2
  %or.cond.i.i = select i1 %i.gj, i1 true, i1 %i.gk
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i
  %i.gl = phi ptr [ %i.hq, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ], [ %i.ej, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.hp, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ], [ %i.ey, %.critedge.i ] ; 3 uses
  %i.gm = phi ptr [ %i.hn, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !7261, !noalias !7269, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  %.val.i19.i = load ptr, ptr %i.gm, align 8, !alias.scope !7262, !noalias !7270 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 112
  %i.go = load i32, ptr %i.gn, align 8, !range !92, !noalias !7271, !noundef !24
  %i.gp = trunc nuw i32 %i.go to i1
  br i1 %i.gp, label %bb.ap, label %.thread.i.i.i20.i

bb.ap:                                            ; preds = %.lr.ph.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 116
  %i.gr = load i32, ptr %i.gq, align 4, !noalias !7271 ; 2 uses
  %.not.i.i.i34.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i34.i, label %.thread.i.i.i20.i, label %bb.aq

.thread.i.i.i20.i:                                ; preds = %bb.ap, %.lr.ph.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 176
  %i.gt = load i32, ptr %i.gs, align 8, !noalias !7271, !noundef !24 ; 2 uses
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i21.i

bb.aq:                                            ; preds = %bb.ap
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 176
  %i.gv = load i32, ptr %i.gu, align 8, !noalias !7271, !noundef !24
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i21.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i21.i: ; preds = %bb.aq, %.thread.i.i.i20.i
  %.sink5.i.i.i22.i = phi i8 [ 0, %bb.aq ], [ 1, %.thread.i.i.i20.i ] ; 2 uses
  %.sink4.i.i.i23.i = phi i32 [ %i.gr, %bb.aq ], [ %i.gt, %.thread.i.i.i20.i ] ; 2 uses
  %.sink.i.i.i24.i = phi i32 [ %i.gv, %bb.aq ], [ %i.gt, %.thread.i.i.i20.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 112
  %i.gx = load i32, ptr %i.gw, align 8, !range !92, !noalias !7272, !noundef !24
  %i.gy = trunc nuw i32 %i.gx to i1
  br i1 %i.gy, label %bb.ar, label %.thread.i3.i.i25.i

bb.ar:                                            ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i21.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 116
  %i.ha = load i32, ptr %i.gz, align 4, !noalias !7272 ; 2 uses
  %.not.i7.i.i33.i = icmp eq i32 %i.ha, 0
  br i1 %.not.i7.i.i33.i, label %.thread.i3.i.i25.i, label %bb.as

.thread.i3.i.i25.i:                               ; preds = %bb.ar, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i21.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 176
  %i.hc = load i32, ptr %i.hb, align 8, !noalias !7272, !noundef !24 ; 2 uses
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i

bb.as:                                            ; preds = %bb.ar
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 176
  %i.he = load i32, ptr %i.hd, align 8, !noalias !7272, !noundef !24
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i: ; preds = %bb.as, %.thread.i3.i.i25.i
  %.sink5.i4.i.i27.i = phi i8 [ 0, %bb.as ], [ 1, %.thread.i3.i.i25.i ] ; 2 uses
  %.sink4.i5.i.i28.i = phi i32 [ %i.ha, %bb.as ], [ %i.hc, %.thread.i3.i.i25.i ] ; 2 uses
  %.sink.i6.i.i29.i = phi i32 [ %i.he, %bb.as ], [ %i.hc, %.thread.i3.i.i25.i ]
  %i.hf = icmp eq i8 %.sink5.i.i.i22.i, %.sink5.i4.i.i27.i
  %i.hg = icmp samesign ult i8 %.sink5.i.i.i22.i, %.sink5.i4.i.i27.i
  %i.hh = icmp eq i32 %.sink4.i.i.i23.i, %.sink4.i5.i.i28.i
  %i.hi = icmp slt i32 %.sink4.i.i.i23.i, %.sink4.i5.i.i28.i
  %i.hj = icmp slt i32 %.sink.i.i.i24.i, %.sink.i6.i.i29.i
  %spec.select.i.i30.i = select i1 %i.hh, i1 %i.hj, i1 %i.hi
  %.sroa.0.1.in.i.i.i31.i = select i1 %i.hf, i1 %spec.select.i.i30.i, i1 %i.hg ; 3 uses
  %i.hk = xor i1 %.sroa.0.1.in.i.i.i31.i, true
  %spec.select.i.i = select i1 %.sroa.0.1.in.i.i.i31.i, ptr %.sroa.0.02.i.i, ptr %i.gm
  %i.hl = load i64, ptr %spec.select.i.i, align 8, !alias.scope !7263, !noalias !7273
  store i64 %i.hl, ptr %i.gl, align 8, !alias.scope !7261, !noalias !7269
  %i.hm = zext i1 %i.hk to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.hm ; 3 uses
  %i.ho = zext i1 %.sroa.0.1.in.i.i.i31.i to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  %i.hr = icmp ne ptr %i.hn, %i.fa
  %i.hs = icmp ne ptr %i.hp, %i.m
  %or.cond.i32.i = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %or.cond.i32.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.gg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.hq, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ]
  %.sroa.7.0.i = phi ptr [ %i.gi, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.fa, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.i ], [ %i.hn, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i26.i ] ; 2 uses
  %i.ht = ptrtoint ptr %.sroa.7.0.i to i64
  %i.hu = ptrtoint ptr %.sroa.0.1.i to i64
  %i.hv = sub nuw i64 %i.ht, %i.hu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.hv, i1 false), !alias.scope !7263, !noalias !7274
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit: ; preds = %bb.aj, %bb.ak, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keyTbllENCNvMs4_NtB1f_6schemaNtB3j_6Schema22unenforced_primary_keys_0E0EB1h_.exit.i
  %i.hw = shl nuw nsw i64 %i.eh, 1
  %i.hx = or disjoint i64 %i.hw, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit

bb.at:                                            ; preds = %bb.ah
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ef
  %i.hz = or i64 %i.eg, 1
  %i.ia = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.hz, i1 true)
  %i.ib = trunc nuw nsw i64 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 1
  %i.id = xor i32 %i.ic, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.hy, i64 noundef range(i64 0, 1152921504606846976) %i.eg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7226
  br label %bb.aj

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keyTbllENCNvMs4_NtB1b_6schemaNtB32_6Schema22unenforced_primary_keys_0E0EB1d_.exit: ; preds = %bb.ag, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.hx, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keyTbllENCNvMs4_NtB12_6schemaNtB2S_6Schema22unenforced_primary_keys_0E0EB14_.exit ], [ %i.ep, %bb.ag ] ; 2 uses
  %i.ie = icmp ugt i64 %i.dy, 1
  br i1 %i.ie, label %bb.ad, label %._crit_edge

bb.au:                                            ; preds = %._crit_edge
  %i.if = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ig = lshr i64 %.sroa.018.0, 1
  %i.ih = add nuw i64 %i.ig, %.sroa.09.0
  br label %bb.f

bb.av:                                            ; preds = %._crit_edge
  %i.ii = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ii, 0
  br i1 %.not31, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ij = or i64 %1, 1
  %i.ik = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ij, i1 true)
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = shl nuw nsw i32 %i.il, 1
  %i.in = xor i32 %i.im, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.in, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7226
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.a, %bb.ax
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keymNCNvMs4_NtB11_6schemaNtB2N_6Schema25unenforced_clustering_keys_0E0EB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.af, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.af ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fx, %bb.af ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fv, %bb.af ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.cm, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB13_11sort_by_keymNCNvMs4_NtB18_6schemaNtB2V_6Schema25unenforced_clustering_keys_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph74, label %._crit_edge

.lr.ph74:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7299)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.r, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !7299, !noalias !7300, !nonnull !24, !align !51, !noundef !24 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !7299, !noalias !7300 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 120
  %i.s = load i32, ptr %i.r, align 8, !range !92, !noalias !7301, !noundef !24
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.l, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 124
  %i.v = load i32, ptr %i.u, align 4, !noalias !7301
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i45 = phi i32 [ %i.v, %bb.l ], [ 0, %bb.k ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ], !noalias !7301
  %i.w = getelementptr inbounds nuw i8, ptr %.val11.i, i64 120
  %i.x = load i32, ptr %i.w, align 8, !range !92, !noalias !7301, !noundef !24
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %.split, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader: ; preds = %.split, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44
  %.not80 = icmp eq i64 %i.n, 2
  br i1 %.not80, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph

.split:                                           ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i44
  %i.z = getelementptr inbounds nuw i8, ptr %.val11.i, i64 124
  %i.aa = load i32, ptr %i.z, align 4, !noalias !7301
  %i.ab = icmp ult i32 %.sroa.0.0.i.i45, %i.aa
  br i1 %i.ab, label %.preheader, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader

.preheader:                                       ; preds = %.split
  %.not81 = icmp eq i64 %i.n, 2
  br i1 %.not81, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph68

.lr.ph:                                           ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread
  %.val9.i = phi ptr [ %.val8.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread ], [ %.val10.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader ] ; 2 uses
  %.sroa.01.0.i.i65 = phi i64 [ %i.aq, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread ], [ 2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i65
  %i.ad = add nsw i64 %.sroa.01.0.i.i65, -1
  %i.ae = icmp ult i64 %i.ad, %i.n
  tail call void @llvm.assume(i1 %i.ae)
  %.val8.i = load ptr, ptr %i.ac, align 8, !alias.scope !7299, !noalias !7300, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val8.i, i64 120
  %i.ag = load i32, ptr %i.af, align 8, !range !92, !noalias !7301, !noundef !24
  %i.ah = trunc nuw i32 %i.ag to i1
  br i1 %i.ah, label %bb.m, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40

bb.m:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.val8.i, i64 124
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !7301
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40: ; preds = %bb.m, %.lr.ph
  %.sroa.0.0.i.i41 = phi i32 [ %i.aj, %bb.m ], [ 0, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.val9.i, i64 120
  %i.al = load i32, ptr %i.ak, align 8, !range !92, !noalias !7301, !noundef !24
  %i.am = trunc nuw i32 %i.al to i1
  br i1 %i.am, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40
  %i.an = getelementptr inbounds nuw i8, ptr %.val9.i, i64 124
  %i.ao = load i32, ptr %i.an, align 4, !noalias !7301
  %i.ap = icmp ult i32 %.sroa.0.0.i.i41, %i.ao
  br i1 %i.ap, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i40, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43
  %i.aq = add nuw i64 %.sroa.01.0.i.i65, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph

.lr.ph68:                                         ; preds = %.preheader, %bb.o
  %.val7.i = phi ptr [ %.val.i, %bb.o ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i67 = phi i64 [ %i.bf, %bb.o ], [ 2, %.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i67
  %i.as = add nsw i64 %.sroa.01.1.i.i67, -1
  %i.at = icmp ult i64 %i.as, %i.n
  tail call void @llvm.assume(i1 %i.at)
  %.val.i = load ptr, ptr %i.ar, align 8, !alias.scope !7299, !noalias !7300, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 120
  %i.av = load i32, ptr %i.au, align 8, !range !92, !noalias !7301, !noundef !24
  %i.aw = trunc nuw i32 %i.av to i1
  br i1 %i.aw, label %bb.n, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i

bb.n:                                             ; preds = %.lr.ph68
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 124
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !7301
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i: ; preds = %bb.n, %.lr.ph68
  %.sroa.0.0.i.i39 = phi i32 [ %i.ay, %bb.n ], [ 0, %.lr.ph68 ]
  %i.az = getelementptr inbounds nuw i8, ptr %.val7.i, i64 120
  %i.ba = load i32, ptr %i.az, align 8, !range !92, !noalias !7301, !noundef !24
  %i.bb = trunc nuw i32 %i.ba to i1
  br i1 %i.bb, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.val7.i, i64 124
  %i.bd = load i32, ptr %i.bc, align 4, !noalias !7301
  %i.be = icmp ult i32 %.sroa.0.0.i.i39, %i.bd
  br i1 %i.be, label %bb.o, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i

bb.o:                                             ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit
  %i.bf = add nuw i64 %.sroa.01.1.i.i67, 1        ; 2 uses
  %exitcond89.not = icmp eq i64 %i.bf, %i.n
  br i1 %exitcond89.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i, label %.lr.ph68

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB12_11sort_by_keymNCNvMs4_NtB17_6schemaNtB2U_6Schema25unenforced_clustering_keys_0E0EB19_.exit.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43.thread, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit43, %bb.o, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit47.preheader, %.preheader
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keymNCNvMs4_NtB11_6schemaNtB2N_6Schema25unenforced_clustering_keys_0E0EB13_:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noundef !24
  %.not29 = icmp ult i8 %i.cp, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit, %bb.t, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.172, %bb.t ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.173, %bb.t ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cr, align 1
  br i1 %i.k, label %bb.af, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cn
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !24 ; 3 uses
  %i.cu = lshr i64 %i.ct, 1                       ; 8 uses
  %i.cv = lshr i64 %.sroa.023.172, 1              ; 6 uses
  %i.cw = add nuw i64 %i.cu, %i.cv                ; 4 uses
  %i.cx = sub i64 %.sroa.09.0, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cx ; 6 uses
  %i.cz = icmp samesign ugt i64 %i.cw, %3
  %i.da = trunc i64 %.sroa.023.172 to i1
  %i.db = or i64 %i.ct, %.sroa.023.172
  %i.dc = trunc i64 %i.db to i1
  %or.cond3.i = or i1 %i.cz, %i.dc
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dd = trunc i64 %i.ct to i1
  br i1 %i.dd, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.de = shl nuw nsw i64 %i.cw, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit

bb.x:                                             ; preds = %bb.y, %bb.v
  br i1 %i.da, label %bb.z, label %bb.ae

bb.y:                                             ; preds = %bb.v
  %i.df = or i64 %i.cu, 1
  %i.dg = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.cy, i64 noundef range(i64 0, 1152921504606846976) %i.cu, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7287
  br label %bb.x

bb.z:                                             ; preds = %bb.ae, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7309)
  %i.dk = icmp eq i64 %i.cu, 0
  %i.dl = icmp eq i64 %i.cv, 0
  %or.cond.i = or i1 %i.dl, %i.dk
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 0, -9223372036854775808) %i.cu) ; 2 uses
  %i.dm = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.dm, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cu ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cu, %i.cv  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.dn, ptr %i.cy
  %i.do = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.do, i1 false), !alias.scope !7310
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i
  %i.dq = phi ptr [ %i.em, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.dp, %.critedge.i ]
  %i.dr = phi ptr [ %i.ek, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.dn, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.du, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !7309, !noalias !7311, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %.val10.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !7308, !noalias !7312 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 120
  %i.dw = load i32, ptr %i.dv, align 8, !range !92, !noalias !7313, !noundef !24
  %i.dx = trunc nuw i32 %i.dw to i1
  %i.dy = ptrtoint ptr %.val.i.i to i64
  br i1 %i.dx, label %bb.ab, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i

bb.ab:                                            ; preds = %.preheader.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 124
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !7313
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i: ; preds = %bb.ab, %.preheader.i
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.ea, %bb.ab ], [ 0, %.preheader.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 120
  %i.ec = load i32, ptr %i.eb, align 8, !range !92, !noalias !7313, !noundef !24
  %i.ed = trunc nuw i32 %i.ec to i1
  br i1 %i.ed, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 124
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !7313
  %i.eg = icmp ult i32 %.sroa.0.0.i.i.i.i, %i.ef
  %cond.fr.i.i = freeze i1 %i.eg                  ; 2 uses
  %spec.select.i.i = select i1 %cond.fr.i.i, ptr %i.ds, ptr %i.dt
  %.pre.i.i = load i64, ptr %spec.select.i.i, align 8, !alias.scope !7310, !noalias !7314
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i
  %i.eh = phi i64 [ %i.dy, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i ], [ %.pre.i.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i ]
  %.sroa.0.0.i3.i3.i.i = phi i1 [ false, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i.i ], [ %cond.fr.i.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i.i ] ; 2 uses
  store i64 %i.eh, ptr %i.du, align 8, !alias.scope !7308, !noalias !7312
  %i.ei = xor i1 %.sroa.0.0.i3.i3.i.i, true
  %i.ej = zext i1 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ej ; 3 uses
  %i.el = zext i1 %.sroa.0.0.i3.i3.i.i to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.el ; 3 uses
  %i.en = icmp eq ptr %i.ek, %i.cy
  %i.eo = icmp eq ptr %i.em, %2
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i
  %i.ep = phi ptr [ %i.fg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ], [ %i.cy, %.critedge.i ] ; 2 uses
  %.sroa.0.05.i.i = phi ptr [ %i.ff, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ], [ %i.dn, %.critedge.i ] ; 3 uses
  %i.eq = phi ptr [ %i.fe, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.05.i.i, align 8, !alias.scope !7308, !noalias !7315, !nonnull !24, !align !51, !noundef !24 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.eq, align 8, !alias.scope !7309, !noalias !7316 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 120
  %i.es = load i32, ptr %i.er, align 8, !range !92, !noalias !7317, !noundef !24
  %i.et = trunc nuw i32 %i.es to i1
  br i1 %i.et, label %bb.ac, label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 124
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !7317
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i: ; preds = %bb.ac, %.lr.ph.i.i
  %.sroa.0.0.i.i.i21.i = phi i32 [ %i.ev, %bb.ac ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i19.i) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 120
  %i.ex = load i32, ptr %i.ew, align 8, !range !92, !noalias !7317, !noundef !24
  %i.ey = trunc nuw i32 %i.ex to i1
  br i1 %i.ey, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i: ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 124
  %i.fa = load i32, ptr %i.ez, align 4, !noalias !7317
  %i.fb = icmp ult i32 %.sroa.0.0.i.i.i21.i, %i.fa
  br i1 %i.fb, label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i, label %bb.ad

bb.ad:                                            ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i: ; preds = %bb.ad, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i
  %i.fc = phi i64 [ 0, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i ], [ 1, %bb.ad ], [ 1, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i ]
  %.sroa.0.0.i3.i3.i23.i = phi i64 [ 1, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i ], [ 0, %bb.ad ], [ 0, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i ]
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.05.i.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.i25.i ], [ %i.eq, %bb.ad ], [ %i.eq, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema25unenforced_clustering_keys_0Bb_.exit.i.i20.i ]
  %i.fd = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !7310, !noalias !7318
  store i64 %i.fd, ptr %i.ep, align 8, !alias.scope !7308, !noalias !7315
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fc ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.05.i.i, i64 %.sroa.0.0.i3.i3.i23.i ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.fh = icmp ne ptr %i.fe, %i.dp
  %i.fi = icmp ne ptr %i.ff, %i.m
  %or.cond.i24.i = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.i24.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i: ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i
  %.sroa.13.1.i = phi ptr [ %i.ek, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.fg, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ]
  %.sroa.7.0.i = phi ptr [ %i.em, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.dp, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i.i ], [ %i.fe, %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keymNCNvMs4_NtBD_6schemaNtB1N_6Schema25unenforced_clustering_keys_0E0BF_.exit.thread.i22.i ] ; 2 uses
  %i.fj = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fk = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fl = sub nuw i64 %i.fj, %i.fk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fl, i1 false), !alias.scope !7310, !noalias !7319
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit: ; preds = %bb.z, %bb.aa, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE10merge_downNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1a_11sort_by_keymNCNvMs4_NtB1f_6schemaNtB3f_6Schema25unenforced_clustering_keys_0E0EB1h_.exit.i
  %i.fm = shl nuw nsw i64 %i.cw, 1
  %i.fn = or disjoint i64 %i.fm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit

bb.ae:                                            ; preds = %bb.x
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cu
  %i.fp = or i64 %i.cv, 1
  %i.fq = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fp, i1 true)
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 1
  %i.ft = xor i32 %i.fs, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %i.fo, i64 noundef range(i64 0, 1152921504606846976) %i.cv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7287
  br label %bb.z

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB16_11sort_by_keymNCNvMs4_NtB1b_6schemaNtB2Y_6Schema25unenforced_clustering_keys_0E0EB1d_.exit: ; preds = %bb.w, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.fn, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSBX_11sort_by_keymNCNvMs4_NtB12_6schemaNtB2O_6Schema25unenforced_clustering_keys_0E0EB14_.exit ], [ %i.de, %bb.w ] ; 2 uses
  %i.fu = icmp ugt i64 %i.cn, 1
  br i1 %i.fu, label %bb.t, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.fv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fw = lshr i64 %.sroa.018.0, 1
  %i.fx = add nuw i64 %i.fw, %.sroa.09.0
  br label %bb.f

bb.ag:                                            ; preds = %._crit_edge
  %i.fy = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fy, 0
  br i1 %.not31, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fz = or i64 %1, 1
  %i.ga = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fz, i1 true)
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 1
  %i.gd = xor i32 %i.gc, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keymNCNvMs4_NtB1a_6schemaNtB2X_6Schema25unenforced_clustering_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !7287
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.val10.i = load i32, ptr %i.q, align 4, !alias.scope !7353, !noalias !7354, !noundef !24 ; 3 uses
  %.val11.i = load i32, ptr %i.o, align 4, !alias.scope !7355, !noalias !7356, !noundef !24
  %i.r = icmp ult i32 %.val10.i, %.val11.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94, label %.lr.ph57

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader48 ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %.val8.i = load i32, ptr %i.s, align 4, !alias.scope !7353, !noalias !7354, !noundef !24 ; 2 uses
  %i.t = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.t, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i53, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %.val.i = load i32, ptr %i.v, align 4, !alias.scope !7353, !noalias !7354, !noundef !24 ; 2 uses
  %i.w = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.x = add nuw i64 %.sroa.01.1.i.i56, 1         ; 2 uses
  %exitcond77.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !7327
  %i.aa = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i, %middle.block, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %middle.block ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7357), !noalias !7358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7359), !noalias !7358
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i.thread94 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !alias.scope !7360, !noalias !7361
  %wide.load116 = load <4 x i32>, ptr %i.ak, align 4, !alias.scope !7360, !noalias !7361
  %i.al = getelementptr i8, ptr %i.aj, i64 -12    ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -28    ; 2 uses
  %wide.load117 = load <4 x i32>, ptr %i.al, align 4, !alias.scope !7362, !noalias !7363
  %wide.load118 = load <4 x i32>, ptr %i.am, align 4, !alias.scope !7362, !noalias !7363
  %reverse = shufflevector <4 x i32> %wide.load117, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse119 = shufflevector <4 x i32> %wide.load118, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.ai, align 4, !alias.scope !7360, !noalias !7361
  store <4 x i32> %reverse119, ptr %i.ak, align 4, !alias.scope !7360, !noalias !7361
  %reverse120 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse121 = shufflevector <4 x i32> %wide.load116, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse120, ptr %i.al, align 4, !alias.scope !7362, !noalias !7363
  store <4 x i32> %reverse121, ptr %i.am, align 4, !alias.scope !7362, !noalias !7363
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !7333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !alias.scope !7360, !noalias !7361, !noundef !24
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !7362, !noalias !7363
  store i32 %i.as, ptr %i.ap, align 4, !alias.scope !7360, !noalias !7361
  store i32 %i.ar, ptr %i.aq, align 4, !alias.scope !7362, !noalias !7363
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSm12split_at_mutCs63DIHKhvmTb_10lance_core.exit11.i.i, !llvm.loop !7334

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ad, %_RNvMNtCscI6d9CVNmLh_4core5sliceSm7reverseCs63DIHKhvmTb_10lance_core.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bd, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !24
  %.not29 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !24 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.161 to i1
  %i.br = or i64 %i.bj, %.sroa.023.161
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %i.bo, i64 noundef range(i64 0, 2305843009213693952) %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.bz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !7335
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7365)
  %i.ca = icmp eq i64 %i.bk, 0
  %i.cb = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.cc = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cc, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cd, ptr %i.bo
  %i.ce = shl nuw nsw i64 %.sroa.0.0.i.i35, 2     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ce, i1 false), !alias.scope !7366
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cg = phi ptr [ %i.cr, %.preheader.i ], [ %i.cf, %.critedge.i ]
  %i.ch = phi ptr [ %i.cp, %.preheader.i ], [ %i.cd, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -4 ; 2 uses
  %.val.i.i = load i32, ptr %i.cj, align 4, !alias.scope !7367, !noalias !7368, !noundef !24 ; 2 uses
  %.val10.i.i = load i32, ptr %i.ci, align 4, !alias.scope !7369, !noalias !7370, !noundef !24 ; 2 uses
  %i.cl = icmp ult i32 %.val.i.i, %.val10.i.i     ; 2 uses
  %i.cm = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val10.i.i)
  store i32 %i.cm, ptr %i.ck, align 4, !alias.scope !7364, !noalias !7371
  %i.cn = xor i1 %i.cl, true
  %i.co = zext i1 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.co ; 3 uses
  %i.cq = zext i1 %i.cl to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cq ; 3 uses
  %i.cs = icmp eq ptr %i.cp, %i.bo
  %i.ct = icmp eq ptr %i.cr, %2
  %or.cond.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNvYmNtNtBb_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.cu = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %i.bo, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %i.cv = phi ptr [ %i.da, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 2 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.04.i.i, align 4, !alias.scope !7372, !noalias !7373, !noundef !24 ; 2 uses
  %.val.i19.i = load i32, ptr %i.cv, align 4, !alias.scope !7374, !noalias !7375, !noundef !24 ; 2 uses
  %i.cw = icmp ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 2 uses
  %i.cx = xor i1 %i.cw, true
  %i.cy = tail call i32 @llvm.umin.i32(i32 %.sroa.0.0.val.i.i, i32 %.val.i19.i)
  store i32 %i.cy, ptr %i.cu, align 4, !alias.scope !7364, !noalias !7376
  %i.cz = zext i1 %i.cx to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cz ; 3 uses
  %i.db = zext i1 %i.cw to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.04.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.de = icmp ne ptr %i.da, %i.cf
  %i.df = icmp ne ptr %i.dc, %i.m
  %or.cond.i20.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNvYmNtNtBb_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i

_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNvYmNtNtBb_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cp, %.preheader.i ], [ %i.dd, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cr, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.da, %.lr.ph.i.i ] ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.di = sub nuw i64 %i.dg, %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.di, i1 false), !alias.scope !7366, !noalias !7377
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNvYmNtNtBb_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit.i
  %i.dj = shl nuw nsw i64 %i.bm, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit

bb.z:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bk
  %i.dm = or i64 %i.bl, 1
  %i.dn = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = xor i32 %i.dp, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %i.dl, i64 noundef range(i64 0, 2305843009213693952) %i.bl, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.dq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !7335
  br label %bb.x

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit
  %.sroa.0.0.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core.exit ], [ %i.bu, %bb.u ] ; 2 uses
  %i.dr = icmp ugt i64 %i.bd, 1
  br i1 %i.dr, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ds = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dt = lshr i64 %.sroa.018.0, 1
  %i.du = add nuw i64 %i.dt, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.dv = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dv, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dw = or i64 %1, 1
  %i.dx = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dw, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 1
  %i.ea = xor i32 %i.dz, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortmNvYmNtNtBa_3cmp10PartialOrd2ltECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.ea, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull %5), !inline_history !7335
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyTbllENCNvMs4_NtB1a_6schemaNtB31_6Schema22unenforced_primary_keys_0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph143 = phi ptr [ %i.uc, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph142 = phi i64 [ %i.tn, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph141 = phi i32 [ %i.ew, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph140 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph143 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph140, null
  %i.d = icmp eq i32 %.sroa.025.0.ph141, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph387

bb.b:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit
  %i.e = icmp eq i32 %i.ew, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph387

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit, %bb.a
  %.sroa.0.0.ph.lcssa133 = phi ptr [ %.sroa.0.0.ph143, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit ], [ %0, %bb.a ], [ %i.uc, %.outer ] ; 11 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field12split_at_mutBB_.exit ], [ %1, %bb.a ], [ %i.tn, %.outer ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7492)
  call void @llvm.experimental.noalias.scope.decl(metadata !7493)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyTbllENCNvMs4_NtB1x_6schemaNtB3o_6Schema22unenforced_primary_keys_0E0EB1z_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 11 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 5 uses
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyTbllENCNvMs4_NtB1e_6schemaNtB35_6Schema22unenforced_primary_keys_0E0EB1g_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph.lcssa133, ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa133, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyTbllENCNvMs4_NtB1e_6schemaNtB35_6Schema22unenforced_primary_keys_0E0EB1g_(ptr noundef readonly %i.m, ptr noundef %i.n)
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1g_11sort_by_keyTbllENCNvMs4_NtB1l_6schemaNtB3c_6Schema22unenforced_primary_keys_0E0EB1n_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef 8, ptr noundef nonnull align 8 %2), !noalias !7492
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyTbllENCNvMs4_NtB1e_6schemaNtB35_6Schema22unenforced_primary_keys_0E0EB1g_(ptr noundef nonnull readonly %i.o, ptr noundef nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyTbllENCNvMs4_NtB1e_6schemaNtB35_6Schema22unenforced_primary_keys_0E0EB1g_(ptr noundef readonly %i.r, ptr noundef %i.s)
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB1g_11sort_by_keyTbllENCNvMs4_NtB1l_6schemaNtB3c_6Schema22unenforced_primary_keys_0E0EB1n_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef 8, ptr noundef nonnull %i.p), !noalias !7492
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyTbllENCNvMs4_NtB1e_6schemaNtB35_6Schema22unenforced_primary_keys_0E0EB1g_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa133, ptr noundef nonnull align 8 %2)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort4_stableRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyTbllENCNvMs4_NtB1e_6schemaNtB35_6Schema22unenforced_primary_keys_0E0EB1g_(ptr noundef %i.t, ptr noundef %i.u)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.v = load i64, ptr %.sroa.0.0.ph.lcssa133, align 8, !alias.scope !7492, !noalias !7493
  store i64 %i.v, ptr %2, align 8, !alias.scope !7493, !noalias !7492
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !7492, !noalias !7493
  store i64 %i.y, ptr %i.x, align 8, !alias.scope !7493, !noalias !7492
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.z = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.i  ; 2 uses
  %i.aa = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyTbllENCNvMs4_NtB1d_6schemaNtB34_6Schema22unenforced_primary_keys_0E0EB1f_.exit.i, %bb.j
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.0.0.i, %i.z
  br i1 %i.ad, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyTbllENCNvMs4_NtB1d_6schemaNtB34_6Schema22unenforced_primary_keys_0E0EB1f_.exit.1.i
  %.sroa.05.04.1.i = phi i64 [ %i.cl, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyTbllENCNvMs4_NtB1d_6schemaNtB34_6Schema22unenforced_primary_keys_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.05.04.1.i
  %.idx423 = shl nuw nsw i64 %.sroa.05.04.1.i, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx423 ; 3 uses
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !7492, !noalias !7493 ; 3 uses
  store i64 %i.ag, ptr %i.af, align 8, !alias.scope !7493, !noalias !7492
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %.val9.i.cast.1.i = inttoptr i64 %i.ag to ptr   ; 5 uses
  %.val10.i.1.i = load ptr, ptr %i.ah, align 8, !alias.scope !7493, !noalias !7492 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1.i, i64 112
  %i.aj = load i32, ptr %i.ai, align 8, !range !92, !noalias !7494, !noundef !24
  %i.ak = trunc nuw i32 %i.aj to i1               ; 2 uses
  br i1 %i.ak, label %bb.k, label %.thread.i.i.i.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.al = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1.i, i64 116
  %i.am = load i32, ptr %i.al, align 4, !noalias !7494 ; 2 uses
  %.not.i.i.i.1.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.1.i, label %.thread.i.i.i.1.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1.i, i64 176
  %i.ao = load i32, ptr %i.an, align 8, !noalias !7494, !noundef !24
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.1.i

.thread.i.i.i.1.i:                                ; preds = %bb.k, %.lr.ph.1.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1.i, i64 176
  %i.aq = load i32, ptr %i.ap, align 8, !noalias !7494, !noundef !24 ; 2 uses
  br label %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.1.i

_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.1.i: ; preds = %.thread.i.i.i.1.i, %bb.l
  %.sink5.i.i.i.1.i = phi i8 [ 0, %bb.l ], [ 1, %.thread.i.i.i.1.i ] ; 2 uses
  %.sink4.i.i.i.1.i = phi i32 [ %i.am, %bb.l ], [ %i.aq, %.thread.i.i.i.1.i ] ; 2 uses
  %i.ar = phi i32 [ %i.ao, %bb.l ], [ %i.aq, %.thread.i.i.i.1.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.1.i) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.val10.i.1.i, i64 112
  %i.at = load i32, ptr %i.as, align 8, !range !92, !noalias !7495, !noundef !24
  %i.au = trunc nuw i32 %i.at to i1
  br i1 %i.au, label %bb.m, label %.thread.i3.i.i.1.i

bb.m:                                             ; preds = %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.1.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val10.i.1.i, i64 116
  %i.aw = load i32, ptr %i.av, align 4, !noalias !7495 ; 2 uses
  %.not.i7.i.i.1.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i7.i.i.1.i, label %.thread.i3.i.i.1.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.val10.i.1.i, i64 176
  %i.ay = load i32, ptr %i.ax, align 8, !noalias !7495, !noundef !24
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.1.i

.thread.i3.i.i.1.i:                               ; preds = %bb.m, %_RNCNvMs4_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB7_6Schema22unenforced_primary_keys_0Bb_.exit.i.i.1.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val10.i.1.i, i64 176
  %i.ba = load i32, ptr %i.az, align 8, !noalias !7495, !noundef !24 ; 2 uses
  br label %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.1.i

_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.1.i: ; preds = %.thread.i3.i.i.1.i, %bb.n
  %.sink5.i4.i.i.1.i = phi i8 [ 0, %bb.n ], [ 1, %.thread.i3.i.i.1.i ] ; 2 uses
  %.sink4.i5.i.i.1.i = phi i32 [ %i.aw, %bb.n ], [ %i.ba, %.thread.i3.i.i.1.i ] ; 2 uses
  %.sink.i6.i.i.1.i = phi i32 [ %i.ay, %bb.n ], [ %i.ba, %.thread.i3.i.i.1.i ]
  %i.bb = icmp eq i8 %.sink5.i.i.i.1.i, %.sink5.i4.i.i.1.i
  %i.bc = icmp samesign ult i8 %.sink5.i.i.i.1.i, %.sink5.i4.i.i.1.i
  %i.bd = icmp eq i32 %.sink4.i.i.i.1.i, %.sink4.i5.i.i.1.i
  %i.be = icmp slt i32 %.sink4.i.i.i.1.i, %.sink4.i5.i.i.1.i
  %i.bf = icmp slt i32 %i.ar, %.sink.i6.i.i.1.i
  %spec.select.i.i.1.i = select i1 %i.bd, i1 %i.bf, i1 %i.be
  %.sroa.0.1.in.i.i.i.1.i = select i1 %i.bb, i1 %spec.select.i.i.1.i, i1 %i.bc
  br i1 %.sroa.0.1.in.i.i.i.1.i, label %bb.o, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNCINvMNtCs40k4W9msRzi_5alloc5sliceSB18_11sort_by_keyTbllENCNvMs4_NtB1d_6schemaNtB34_6Schema22unenforced_primary_keys_0E0EB1f_.exit.1.i

bb.o:                                             ; preds = %_RNCINvMNtCs40k4W9msRzi_5alloc5sliceSRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5Field11sort_by_keyTbllENCNvMs4_NtBD_6schemaNtB1R_6Schema22unenforced_primary_keys_0E0BF_.exit.i.1.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.val9.i.cast.1.i, i64 116
  %i.bh = ptrtoint ptr %.val10.i.1.i to i64
  store i64 %i.bh, ptr %i.af, align 8, !alias.scope !7493, !noalias !7492
  %i.bi = icmp eq i64 %.sroa.05.04.1.i, 1         ; 2 uses
  br i1 %i.ak, label %.split148.us.preheader, label %.split148.preheader

.split148.preheader:                              ; preds = %bb.o
  br i1 %i.bi, label %.split150.us, label %.thread.i.i11.i.1.i

.split148.us.preheader:                           ; preds = %bb.o
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB4_16CacheEntryReader8read_raw:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18805)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !18805, !noalias !18803 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.o, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !18805, !noalias !18803, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !18806
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1050, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @367, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1052) #68
          to label %.noexc.i.i unwind label %bb.c, !noalias !18804

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.r, %bb.i ], [ %i.r, %bb.j ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #69
          to label %bb.l unwind label %bb.k, !noalias !18807

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !18808 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !18808 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !18808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18803
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !18809
  %i.p = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !18809 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %_RNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB6_16CacheEntryReader8read_raw0Ba_.exit, !prof !40

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i2.i unwind label %bb.i, !noalias !18810

.noexc.i2.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.s, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !18811
  br label %.body.i

bb.k:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !18807
  unreachable

bb.l:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB6_16CacheEntryReader8read_raw0Ba_.exit: ; preds = %bb.g
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !noalias !18810
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !18810
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !18810
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 17, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.41.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @232, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB6_16CacheEntryReader8read_raw0Ba_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB4_10GroupRemap16compute_new_addr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !24 ; 7 uses
  switch i64 %i.d, label %.lr.ph.i [
    i64 0, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTmymE16binary_search_byNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtBZ_10GroupRemap16compute_new_addr0EB13_.exit
    i64 1, label %._crit_edge.i
  ]

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.05.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i
  %.val14.i = load i64, ptr %i.e, align 8, !alias.scope !18815, !noalias !18816, !noundef !24 ; 2 uses
  %i.f = icmp eq i64 %.val14.i, %1
  br i1 %i.f, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTmymE16binary_search_byNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtBZ_10GroupRemap16compute_new_addr0EB13_.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.01.018.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.017.i = phi i64 [ %i.l, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = lshr i64 %.sroa.01.018.i, 1              ; 2 uses
  %i.h = add nuw nsw i64 %i.g, %.sroa.05.017.i    ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.d
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h
  %.val16.i = load i64, ptr %i.j, align 8, !alias.scope !18815, !noalias !18816, !noundef !24
  %i.k = icmp ugt i64 %.val16.i, %1
  %i.l = select i1 %i.k, i64 %.sroa.05.017.i, i64 %i.h, !unpredictable !24 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.018.i, %i.g    ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.o = icmp ult i64 %.val14.i, %1
  %i.p = zext i1 %i.o to i64
  %i.q = add nuw nsw i64 %.sroa.05.0.lcssa.i, %i.p ; 2 uses
  %i.r = icmp ule i64 %i.q, %i.d
  tail call void @llvm.assume(i1 %i.r)
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSTmymE16binary_search_byNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtBZ_10GroupRemap16compute_new_addr0EB13_.exit

_RINvMNtCscI6d9CVNmLh_4core5sliceSTmymE16binary_search_byNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtBZ_10GroupRemap16compute_new_addr0EB13_.exit: ; preds = %bb.a, %._crit_edge.i, %bb.b
  %.sroa.4.0.i = phi i64 [ %i.d, %bb.a ], [ %i.q, %bb.b ], [ %.sroa.05.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0.i = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %._crit_edge.i ]
  %.sroa.03.0 = add nsw i64 %.sroa.0.0.i, %.sroa.4.0.i ; 3 uses
  %i.s = icmp ult i64 %.sroa.03.0, %i.d
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSTmymE16binary_search_byNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtBZ_10GroupRemap16compute_new_addr0EB13_.exit
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.03.0 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !noundef !24
  %i.w = load i64, ptr %i.t, align 8, !noundef !24
  %i.x = sub i64 %1, %i.w
  %i.y = zext i32 %i.v to i64
  %i.z = shl nuw i64 %i.y, 32
  %i.aa = and i64 %i.x, 4294967295
  %i.ab = or disjoint i64 %i.aa, %i.z
  ret i64 %i.ab

bb.d:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSTmymE16binary_search_byNCNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtBZ_10GroupRemap16compute_new_addr0EB13_.exit
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @552) #68
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB4_10GroupRemap3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.4.i = alloca [36 x i8], align 4          ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.4.i.i.i.i.i.i.i.i.i = alloca [28 x i8], align 4 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 11 uses
  %i.l = alloca [72 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 16 uses
  %i.x = alloca [72 x i8], align 8                ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 19 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [4 x i8], align 4                ; 5 uses
  %i.ae = alloca [4 x i8], align 4                ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !24 ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = shl nuw nsw i64 %i.ai, 4                ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.ai, 576460752303423487
  br i1 %.not.i, label %bb.f, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.ai, 0
  br i1 %i.al, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !19082
  %i.am = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !19082 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = ptrtoint ptr %i.am to i64
  %.pre = load i64, ptr %i.ah, align 8
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmymEEECs63DIHKhvmTb_10lance_core.exit212: ; preds = %bb.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit, %bb.e
  %.pn58 = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %.pn56, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit ], [ %.pn56, %bb.cs ] ; 3 uses
  %.sroa.013.0 = phi i1 [ true, %bb.e ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit ], [ false, %bb.cs ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring7treemap14RoaringTreemapECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #69
          to label %bb.cu unwind label %bb.ap

bb.e:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmymEEECs63DIHKhvmTb_10lance_core.exit212

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.10251.0.ph = phi i64 [ %i.ak, %bb.c ], [ undef, %bb.a ]
  %.sroa.4249.0.ph = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4249.0.ph, i64 %.sroa.10251.0.ph) #68
          to label %bb.ct unwind label %bb.e

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.d
  %i.ar = phi i64 [ %.pre, %bb.d ], [ 0, %bb.b ]  ; 3 uses
  %.sroa.10251.0 = phi i64 [ %i.ao, %bb.d ], [ 8, %bb.b ]
  %i.as = inttoptr i64 %.sroa.10251.0 to ptr      ; 2 uses
  store i64 %i.ai, ptr %i.af, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.ax = load i64, ptr %i.ag, align 8, !range !39, !noundef !24 ; 6 uses
  %i.ay = icmp ult i64 %i.ar, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ay)
  %.idx = shl nuw nsw i64 %i.ar, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx ; 2 uses
  %i.ba = icmp eq i64 %i.ar, 0
  br i1 %i.ba, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit, %.outer
  %i.bb = phi ptr [ %i.rg, %.outer ], [ %i.as, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ]
  %i.bc = phi i64 [ %i.ri, %.outer ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ] ; 3 uses
  %.sroa.0.0.ph315 = phi i64 [ %i.rk, %.outer ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ] ; 3 uses
  %.sroa.04.0.ph314 = phi i1 [ true, %.outer ], [ false, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ]
  %.sroa.3.0.ph313 = phi i32 [ %i.bg, %.outer ], [ undef, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %.sroa.7.0.ph312 = phi ptr [ %i.bf, %.outer ], [ %i.aw, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ]
  br label %bb.h

.loopexit284:                                     ; preds = %bb.ce
  %lpad.loopexit286 = landingpad { ptr, i32 }
          cleanup
  br label %.body184

.loopexit.split-lp285:                            ; preds = %bb.cg
  %lpad.loopexit.split-lp287 = landingpad { ptr, i32 }
          cleanup
  br label %.body184

.body184:                                         ; preds = %.loopexit284, %.loopexit.split-lp285, %bb.ci, %bb.cj
  %eh.lpad-body185 = phi { ptr, i32 } [ %i.qo, %bb.ci ], [ %i.qo, %bb.cj ], [ %lpad.loopexit286, %.loopexit284 ], [ %lpad.loopexit.split-lp287, %.loopexit.split-lp285 ] ; 2 uses
  %i.bd = icmp eq i64 %i.ax, 0
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit, label %bb.g

bb.g:                                             ; preds = %.body184
  %i.be = shl nuw i64 %i.ax, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !19083
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit

bb.h:                                             ; preds = %.lr.ph, %bb.ca
  %.sroa.7.0310 = phi ptr [ %.sroa.7.0.ph312, %.lr.ph ], [ %i.bf, %bb.ca ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.7.0310, i64 8 ; 4 uses
  %i.bg = load i32, ptr %.sroa.7.0310, align 4, !noalias !19084, !noundef !24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.7.0310, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !19084, !noundef !24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i32 %i.bg, ptr %i.ae, align 4
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ca, label %bb.cb

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit: ; preds = %.outer, %bb.ca, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit
  %.sroa.0.0.ph.lcssa309 = phi i64 [ %.sroa.0.0.ph315, %bb.ca ], [ 0, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit ], [ %i.rk, %.outer ]
  %i.bk = icmp eq i64 %i.ax, 0
  br i1 %i.bk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit92, label %bb.i

bb.i:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit
  %i.bl = shl nuw i64 %i.ax, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 4) #65, !noalias !19085
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit92

bb.j:                                             ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit92
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit92: ; preds = %bb.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTmmEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.0.0.ph.lcssa309, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvMsb_NtNtCs1akgR21QTtx_7roaring7treemap4iterNtB7_14RoaringTreemap7bitmaps(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTmmEEECs63DIHKhvmTb_10lance_core.exit92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.x, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19086
  %i.bo = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 8, !range !30, !noalias !19087, !noundef !24
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i: ; preds = %bb.k
  %.pre.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !19088
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !19088
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i.i: ; preds = %bb.k
  %i.bs = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i.i.i
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !noalias !19089
  store i8 1, ptr %i.bp, align 8, !noalias !19089
  br label %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i

_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i: ; preds = %.noexc, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i
  %.pre-phi10.i = phi i64 [ %.pre1.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i ], [ %i.bu, %.noexc ]
  %i.bw = phi i64 [ %.pre.i.i.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i.i.i ], [ %i.bt, %.noexc ] ; 2 uses
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bo, align 8, !noalias !19088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false), !noalias !19086
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 %i.bw, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19086
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  store i64 %.pre-phi10.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19086
  call void @llvm.experimental.noalias.scope.decl(metadata !19090)
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19091)
  call void @llvm.experimental.noalias.scope.decl(metadata !19092)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19093
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.y, i64 72, i1 false), !noalias !19094
  call void @llvm.experimental.noalias.scope.decl(metadata !19095)
  %i.bz = invoke { i32, ptr } @_RNvXsl_NtNtCs1akgR21QTtx_7roaring7treemap4iterNtB5_10BitmapIterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !19086 ; 2 uses

.noexc.i:                                         ; preds = %_RNvXs3_NtNtCsgczF5crJ4sT_3std4hash6randomNtB5_11RandomStateNtNtCscI6d9CVNmLh_4core7default7Default7default.exit.i
  %i.ca = extractvalue { i32, ptr } %i.bz, 1      ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not9.i.i.i.i.i, label %.loopexit283, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.8..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %.noexc5.i, %.lr.ph.i.i.i.i.i
  %i.cd = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %i.em, %.noexc5.i ]
  %i.ce = phi { i32, ptr } [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.el, %.noexc5.i ]
  %i.cf = extractvalue { i32, ptr } %i.ce, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19096
  invoke void @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB7_13RoaringBitmapNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cd)
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !19086

.noexc4.i:                                        ; preds = %bb.l
  store i32 %i.cf, ptr %i.i, align 8, !noalias !19097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19098
  call void @llvm.experimental.noalias.scope.decl(metadata !19099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19098
  store i32 %i.cf, ptr %i.g, align 4, !noalias !19100
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !19101, !noalias !19102, !noundef !24
  %.val6.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !19101, !noalias !19102, !noundef !24
  %i.cg = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRmECs63DIHKhvmTb_10lance_core(i64 %.val.i.i.i.i.i.i.i.i.i, i64 %.val6.i.i.i.i.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !19103 ; 2 uses
  %i.ch = load i64, ptr %i.by, align 8, !alias.scope !19104, !noalias !19105, !noundef !24
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTmNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapEE7reserveNCINvNtB8_3map11make_hashermBR_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i.i.i, !prof !27

end_hunk_3
begin_hunk_4_@_RNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema16parse_field_path:bb.a
  store i64 %.sroa.0186.0.copyload, ptr %i.et, align 8
  %.sroa.5.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %.sroa.5.0.copyload265.ph, ptr %.sroa.5.0..sroa_idx189, align 8
  %.sroa.6.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx191, align 8
  %i.eu = add i64 %i.en, 1
  store i64 %i.eu, ptr %i.u, align 8, !alias.scope !22285, !noalias !22286
  store i64 0, ptr %i.m, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  br label %.outer.backedge

.thread276:                                       ; preds = %bb.k, %bb.n
  %i.ev = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.ev)
  %i.ew = icmp eq i64 %i.w, 0                     ; 3 uses
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.o, ptr %i.e, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.485.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @695, ptr noundef nonnull %i.e)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit150 unwind label %.body.thread217.loopexit.split-lp

bb.ai:                                            ; preds = %.thread276
  %i.ex = load i64, ptr %i.u, align 8, !noundef !24 ; 2 uses
  %i.ey = icmp ult i64 %i.ex, 384307168202282326
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp eq i64 %i.ex, 0
  br i1 %i.ez, label %.thread235, label %bb.an

bb.aj:                                            ; preds = %.thread276
  %.sroa.0195.0.copyload = load i64, ptr %i.m, align 8 ; 3 uses
  %i.fa = load i64, ptr %i.u, align 8, !alias.scope !22288, !noalias !22289, !noundef !24 ; 4 uses
  %i.fb = load i64, ptr %i.n, align 8, !range !39, !alias.scope !22288, !noalias !22289, !noundef !24
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ao unwind label %bb.al, !noalias !22289

bb.al:                                            ; preds = %bb.ak
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fe = icmp eq i64 %.sroa.0195.0.copyload, 0
  br i1 %i.fe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit169, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload265.ph) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload265.ph, i64 noundef %.sroa.0195.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22290
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit169

bb.an:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.o, ptr %i.c, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.491.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @691, ptr noundef nonnull %i.c)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit159 unwind label %.body.thread217.loopexit.split-lp

bb.ao:                                            ; preds = %bb.ak, %bb.aj
  %i.ff = load ptr, ptr %i.t, align 8, !alias.scope !22288, !noalias !22289, !nonnull !24, !noundef !24
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fa ; 3 uses
  store i64 %.sroa.0195.0.copyload, ptr %i.fg, align 8
  %.sroa.5197.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %.sroa.5.0.copyload265.ph, ptr %.sroa.5197.0..sroa_idx198, align 8
  %.sroa.6200.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 %i.w, ptr %.sroa.6200.0..sroa_idx201, align 8
  %i.fh = add nsw i64 %i.fa, 1                    ; 2 uses
  store i64 %i.fh, ptr %i.u, align 8, !alias.scope !22288, !noalias !22289
  %i.fi = icmp slt i64 %i.fa, 384307168202282325
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq i64 %i.fh, 0
  br i1 %i.fj, label %.thread235, label %bb.ap

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit159: ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.critedge.sink.split

.thread235:                                       ; preds = %bb.ai, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.497.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @693, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit161 unwind label %.body

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit161: ; preds = %.thread235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.537.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 15, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @694, ptr %.sroa.436.0..sroa_idx, align 8
  br i1 %i.ew, label %.critedge, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.f

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit150: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166: ; preds = %bb.as, %.critedge, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !22291)
  %.val.i162 = load ptr, ptr %i.t, align 8, !alias.scope !22291, !nonnull !24, !noundef !24 ; 2 uses
  %.val1.i163 = load i64, ptr %i.u, align 8, !alias.scope !22291, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22292)
  %i.fl = icmp eq i64 %.val1.i163, 0
  br i1 %i.fl, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.fn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %.val.i162, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.fn = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22293)
  %.val.i.i.i.i = load i64, ptr %i.fm, align 8, !alias.scope !22294, !noalias !22291 ; 2 uses
  %i.fo = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.fp, align 8, !alias.scope !22294, !noalias !22291, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22295
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %bb.aq, %.lr.ph.i.i.i
  %i.fq = icmp eq i64 %i.fn, %.val1.i163
  br i1 %i.fq, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166
  %.val2.i = load i64, ptr %i.n, align 8, !range !39, !alias.scope !22291, !noundef !24 ; 2 uses
  %i.fr = icmp eq i64 %.val2.i, 0
  br i1 %i.fr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit, label %bb.ar

bb.ar:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i
  %i.fs = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i162, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22291
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.f

.critedge.sink.split:                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit148, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit136, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit150, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit159
  %.sink359 = phi ptr [ %i.d, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit159 ], [ %i.f, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit150 ], [ %i.j, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit ], [ %i.l, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit136 ], [ %i.h, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit148 ]
  %.sink358 = phi ptr [ @692, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit159 ], [ @696, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit150 ], [ @686, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit ], [ @688, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit136 ], [ @690, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit148 ]
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.532.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sink359, i64 24, i1 false)
  store i8 15, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink358, ptr %.sroa.431.0..sroa_idx, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit161
  call void @llvm.experimental.noalias.scope.decl(metadata !22296)
  %.val.i164 = load i64, ptr %i.m, align 8, !alias.scope !22296 ; 2 uses
  %i.ft = icmp eq i64 %.val.i164, 0
  br i1 %i.ft, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166, label %bb.as

bb.as:                                            ; preds = %.critedge
  %.val1.i165 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !22296, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i165, i64 noundef %.val.i164, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22296
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit166

.body.thread217:                                  ; preds = %.body.thread217.loopexit, %.body.thread217.loopexit.split-lp, %.body
  %lpad.phi220 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %lpad.loopexit, %.body.thread217.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread217.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22297)
  %.val.i167 = load i64, ptr %i.m, align 8, !alias.scope !22297 ; 2 uses
  %i.fu = icmp eq i64 %.val.i167, 0
  br i1 %i.fu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit169, label %bb.at

bb.at:                                            ; preds = %.body.thread217
  %.val1.i168 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !22297, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i168, i64 noundef %.val.i167, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22297
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit169

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit169: ; preds = %bb.al, %bb.am, %bb.ae, %bb.af, %bb.at, %.body.thread217, %.body
  %.pn = phi { ptr, i32 } [ %lpad.phi220, %bb.at ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.fd, %bb.al ], [ %lpad.phi220, %.body.thread217 ], [ %i.eq, %bb.ae ], [ %i.eq, %bb.af ], [ %i.fd, %bb.am ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.n) #69
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema17format_field_path(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = mul nuw nsw i64 %2, 24                   ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema17format_field_path0EE9from_iterB3j_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !22340
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #65, !noalias !22340 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.f, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #68, !noalias !22341
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvMNtNtCscI6d9CVNmLh_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i:          ; preds = %bb.m
  %lpad.loopexit21.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i: ; preds = %bb.n
  %lpad.loopexit.split-lp22.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.s, %bb.e
  %.val15.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bl, %bb.s ] ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val15.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !22342, !nonnull !24, !noundef !24 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val17.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !22342, !noundef !24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22342
  %i.m = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i ; 4 uses
  %.not.i12.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val17.i.i.i.i.i.i, 0
  br i1 %.not.i12.not.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread11.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %.backedge.i.i.i.i.i.i.i.i.i
  %i.n = phi ptr [ %i.aw, %.backedge.i.i.i.i.i.i.i.i.i ], [ %.val16.i.i.i.i.i.i, %bb.f ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.n, align 1, !noalias !22343, !noundef !24 ; 5 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.g, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.r = and i8 %i.p, 31
  %i.s = zext nneg i8 %i.r to i32                 ; 3 uses
  %i.t = icmp ne ptr %i.o, %i.m
  call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.v = load i8, ptr %i.o, align 1, !noalias !22343, !noundef !24
  %i.w = shl nuw nsw i32 %i.s, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = or disjoint i32 %i.w, %i.y
  %i.aa = icmp samesign ugt i8 %i.p, -33
  br i1 %i.aa, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ab = zext nneg i8 %i.p to i32
  br label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = icmp ne ptr %i.u, %i.m
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 3 uses
  %i.ae = load i8, ptr %i.u, align 1, !noalias !22343, !noundef !24
  %i.af = shl nuw nsw i32 %i.y, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = shl nuw nsw i32 %i.s, 12
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i8 %i.p, -17
  br i1 %i.al, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.i.i.i.i.i.i.i
  %i.am = icmp ne ptr %i.ad, %i.m
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ao = load i8, ptr %i.ad, align 1, !noalias !22343, !noundef !24
  %i.ap = shl nuw nsw i32 %i.s, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = shl nuw nsw i32 %i.ai, 6
  %i.as = and i8 %i.ao, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.i.i.i.i.i.i.i, %bb.g, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = phi ptr [ %i.ad, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.g ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ak, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.i.i.i.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ab, %bb.g ] ; 7 uses
  %i.ax = and i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i, 2097119
  %i.ay = add nsw i32 %i.ax, -65
  %or.cond4.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ay, 26
  %i.az = add nsw i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i, -48
  %or.cond2.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.az, 10
  %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond4.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %or.cond2.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond5.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i, 170
  br i1 %i.ba, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema17format_field_path00E0B1m_.exit.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !22342

.noexc.i.i.i.i.i.i:                               ; preds = %bb.j
  br i1 %i.bb, label %.backedge.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.bc = icmp samesign ugt i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i, 177
  br i1 %i.bc, label %_RNvMNtNtCscI6d9CVNmLh_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

_RNvMNtNtCscI6d9CVNmLh_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bd = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i.i.i.i.i.i.i.i.i)
          to label %.noexc18.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !22342

.noexc18.i.i.i.i.i.i:                             ; preds = %_RNvMNtNtCscI6d9CVNmLh_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bd, label %.backedge.i.i.i.i.i.i.i.i.i, label %bb.m

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema17format_field_path00E0B1m_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i, 95
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i, label %bb.m

.backedge.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema17format_field_path00E0B1m_.exit.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i, %bb.h
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.m
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.backedge.i.i.i.i.i.i.i.i.i
  %.not.i12.i.i.i.i.i.i.i.i = icmp slt i64 %.val17.i.i.i.i.i.i, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i, label %bb.n, label %bb.l, !prof !22344

bb.l:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !22345
  %i.be = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.val17.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22345 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.n, label %bb.o

bb.m:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkcNCNCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema17format_field_path00E0B1m_.exit.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22346
  invoke fastcc void @_RINvMs3_NtCs40k4W9msRzi_5alloc3stre7replacecECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i.i.i.i.i.i, i64 noundef %.val17.i.i.i.i.i.i)
          to label %.noexc19.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i.i

.noexc19.i.i.i.i.i.i:                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22346
  store ptr %i.b, ptr %i.a, align 8, !noalias !22346
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !22346
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @290, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !22347

bb.n:                                             ; preds = %bb.l, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.l ], [ 0, %.loopexit.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i) #68
          to label %.noexc20.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i, !noalias !22342

.noexc20.i.i.i.i.i.i:                             ; preds = %bb.n
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread11.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.f
  %i.bg = phi ptr [ %i.be, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.f ]
  store i64 %.val17.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !22347
  store ptr %i.bg, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !22347
  store i64 %.val17.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !22347
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.val16.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, i1 false), !noalias !22346
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread11.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.noexc19.i.i.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22348)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !22348, !noalias !22346 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bi, label %.body.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !22348, !noalias !22346, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22349
  br label %.body.i

end_hunk_4
begin_hunk_5_@_RNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema25explain_fields_difference:bb.a
  %.val2.i = load i64, ptr %i.m, align 8, !range !39, !alias.scope !22644, !noundef !24 ; 2 uses
  %i.lq = icmp eq i64 %.val2.i, 0
  br i1 %i.lq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit, label %bb.cd

bb.cd:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i
  %i.lr = mul nuw i64 %.val2.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i188288, i64 noundef %i.lr, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22644
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit

bb.ce:                                            ; preds = %bb.ca
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %.body196

.body196:                                         ; preds = %bb.ch, %bb.ci, %bb.ce
  %eh.lpad-body197 = phi { ptr, i32 } [ %i.ls, %bb.ce ], [ %i.lw, %bb.ci ], [ %i.lw, %bb.ch ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.m) #69
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs63DIHKhvmTb_10lance_core.exit

bb.cf:                                            ; preds = %bb.ca
  %.sroa.0239.0.copyload = load i64, ptr %i.h, align 8 ; 3 uses
  %.sroa.5241.0.copyload = load ptr, ptr %.sroa.5241.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6244.0.copyload = load i64, ptr %.sroa.6244.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.lt = load i64, ptr %i.dr, align 8, !alias.scope !22642, !noalias !22643, !noundef !24 ; 3 uses
  %i.lu = load i64, ptr %i.v, align 8, !range !39, !alias.scope !22642, !noalias !22643, !noundef !24
  %i.lv = icmp eq i64 %i.lt, %i.lu
  br i1 %i.lv, label %bb.cg, label %bb.cb

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsgczF5crJ4sT_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.cb unwind label %bb.ch, !noalias !22643

bb.ch:                                            ; preds = %bb.cg
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = icmp eq i64 %.sroa.0239.0.copyload, 0
  br i1 %i.lx, label %.body196, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5241.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5241.0.copyload, i64 noundef %.sroa.0239.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22649
  br label %.body196

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.cd, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ly = icmp eq ptr %i.kv, %i.ht
  br i1 %i.ly, label %._crit_edge, label %bb.bu

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldjEEEB1g_.exit187: ; preds = %bb.bv, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !22650)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val.i199 = load ptr, ptr %i.lz, align 8, !alias.scope !22650, !nonnull !24, !noundef !24 ; 2 uses
  %.val1.i200 = load i64, ptr %i.ds, align 8, !alias.scope !22650, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22651)
  %i.ma = icmp eq i64 %.val1.i200, 0
  br i1 %i.ma, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i206, label %.lr.ph.i.i.i201

.lr.ph.i.i.i201:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldjEEEB1g_.exit187, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i205
  %.sroa.0.010.i.i.i202 = phi i64 [ %i.mc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i205 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldjEEEB1g_.exit187 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %.val.i199, i64 %.sroa.0.010.i.i.i202 ; 2 uses
  %i.mc = add nuw nsw i64 %.sroa.0.010.i.i.i202, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22652)
  %.val.i.i.i.i203 = load i64, ptr %i.mb, align 8, !alias.scope !22653, !noalias !22650 ; 2 uses
  %i.md = icmp eq i64 %.val.i.i.i.i203, 0
  br i1 %i.md, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i205, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i201
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %.val1.i.i.i.i204 = load ptr, ptr %i.me, align 8, !alias.scope !22653, !noalias !22650, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i204, i64 noundef %.val.i.i.i.i203, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22654
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i205

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i205: ; preds = %bb.cj, %.lr.ph.i.i.i201
  %i.mf = icmp eq i64 %i.mc, %.val1.i200
  br i1 %i.mf, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i206, label %.lr.ph.i.i.i201

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i206: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i205, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldjEEEB1g_.exit187
  %.val2.i207 = load i64, ptr %i.y, align 8, !range !39, !alias.scope !22650, !noundef !24 ; 2 uses
  %i.mg = icmp eq i64 %.val2.i207, 0
  br i1 %i.mg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit208, label %bb.ck

bb.ck:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i206
  %i.mh = mul nuw i64 %.val2.i207, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i199, i64 noundef %i.mh, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22650
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit208

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit208: ; preds = %bb.ck, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !22655)
  %i.mi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val.i209 = load ptr, ptr %i.mi, align 8, !alias.scope !22655, !nonnull !24, !noundef !24 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val1.i210 = load i64, ptr %i.mj, align 8, !alias.scope !22655, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22656)
  %i.mk = icmp eq i64 %.val1.i210, 0
  br i1 %i.mk, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i216, label %.lr.ph.i.i.i211

.lr.ph.i.i.i211:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit208, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i215
  %.sroa.0.010.i.i.i212 = phi i64 [ %i.mm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i215 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit208 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw [24 x i8], ptr %.val.i209, i64 %.sroa.0.010.i.i.i212 ; 2 uses
  %i.mm = add nuw nsw i64 %.sroa.0.010.i.i.i212, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22657)
  %.val.i.i.i.i213 = load i64, ptr %i.ml, align 8, !alias.scope !22658, !noalias !22655 ; 2 uses
  %i.mn = icmp eq i64 %.val.i.i.i.i213, 0
  br i1 %i.mn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i215, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i211
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %.val1.i.i.i.i214 = load ptr, ptr %i.mo, align 8, !alias.scope !22658, !noalias !22655, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i214, i64 noundef %.val.i.i.i.i213, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22659
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i215

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i215: ; preds = %bb.cl, %.lr.ph.i.i.i211
  %i.mp = icmp eq i64 %i.mm, %.val1.i210
  br i1 %i.mp, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i216, label %.lr.ph.i.i.i211

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i216: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i215, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit208
  %.val2.i217 = load i64, ptr %i.aa, align 8, !range !39, !alias.scope !22655, !noundef !24 ; 2 uses
  %i.mq = icmp eq i64 %.val2.i217, 0
  br i1 %i.mq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit218, label %bb.cm

bb.cm:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i216
  %i.mr = mul nuw i64 %.val2.i217, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i209, i64 noundef %i.mr, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22655
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit218

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit218: ; preds = %bb.cm, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.val73 = load ptr, ptr %i.ab, align 8          ; 2 uses
  %.val74 = load i64, ptr %i.ce, align 8, !noundef !24 ; 3 uses
  %i.ms = icmp eq i64 %.val74, 0
  br i1 %i.ms, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit218
  %i.mt = shl i64 %.val74, 4                      ; 2 uses
  %i.mu = add i64 %i.mt, 16                       ; 2 uses
  %i.mv = add i64 %.val74, 17
  %i.mw = add i64 %i.mv, %i.mu                    ; 4 uses
  %i.mx = icmp uge i64 %i.mw, %i.mu
  %i.my = icmp ult i64 %i.mw, 9223372036854775793
  call void @llvm.assume(i1 %i.mx)
  call void @llvm.assume(i1 %i.my)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val73) ]
  %i.mz = icmp eq i64 %i.mw, 0
  br i1 %i.mz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit, label %bb.cn

bb.cn:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.na = sub nuw nsw i64 -16, %i.mt
  %i.nb = getelementptr inbounds i8, ptr %.val73, i64 %i.na
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nb, i64 noundef %i.mw, i64 noundef range(i64 1, -9223372036854775807) 16) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.cn, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.val71 = load ptr, ptr %i.ac, align 8          ; 2 uses
  %.val72 = load i64, ptr %i.bt, align 8, !noundef !24 ; 3 uses
  %i.nc = icmp eq i64 %.val72, 0
  br i1 %i.nc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit220, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i219

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i219: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit
  %i.nd = shl i64 %.val72, 4                      ; 2 uses
  %i.ne = add i64 %i.nd, 16                       ; 2 uses
  %i.nf = add i64 %.val72, 17
  %i.ng = add i64 %i.nf, %i.ne                    ; 4 uses
  %i.nh = icmp uge i64 %i.ng, %i.ne
  %i.ni = icmp ult i64 %i.ng, 9223372036854775793
  call void @llvm.assume(i1 %i.nh)
  call void @llvm.assume(i1 %i.ni)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val71) ]
  %i.nj = icmp eq i64 %i.ng, 0
  br i1 %i.nj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit220, label %bb.co

bb.co:                                            ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i219
  %i.nk = sub nuw nsw i64 -16, %i.nd
  %i.nl = getelementptr inbounds i8, ptr %.val71, i64 %i.nk
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.ng, i64 noundef range(i64 1, -9223372036854775807) 16) #65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit220

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit220: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetReEECs63DIHKhvmTb_10lance_core.exit, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i219, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

.body130:                                         ; preds = %bb.aw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs63DIHKhvmTb_10lance_core.exit, %bb.au, %bb.av, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit136, %bb.ai, %bb.ah, %bb.ak
  %.pn50 = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.hb, %bb.au ], [ %i.gd, %bb.ah ], [ %i.gd, %bb.ai ], [ %i.gi, %bb.ak ], [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit136 ], [ %i.hb, %bb.av ], [ %.pn48, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecReEECs63DIHKhvmTb_10lance_core.exit ], [ %.pn48, %bb.aw ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.v) #69
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.y) #69
  br label %.body119
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema25format_field_path_minimal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = mul nuw nsw i64 %2, 24                   ; 2 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %2, 384307168202282325
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema25format_field_path_minimal0EE9from_iterB3j_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !22704
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #65, !noalias !22704 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.10.0.ph.i.i = phi i64 [ %i.f, %bb.c ], [ undef, %bb.a ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #68, !noalias !22705
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.f

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.i.i.i.i.i.i.i.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %bb.j
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.o, %bb.e
  %.val15.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.ai, %bb.o ] ; 5 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.val15.i.i.i.i.i.i ; 2 uses
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !22706, !nonnull !24, !noundef !24 ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val17.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !22706, !noundef !24 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22706
  %i.m = icmp samesign ult i64 %.val17.i.i.i.i.i.i, 16
  br i1 %i.m, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val17.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread16.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !22707, !noalias !22708, !noundef !24
  %i.p = icmp eq i8 %i.o, 46
  br i1 %i.p, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.q = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, %.val17.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i14.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.r = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val17.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !22706

.noexc.i.i.i.i.i.i:                               ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i.i.i.i.i
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.i.i.i.i.i.i.i.i

.lr.ph.i.i14.i.i.i.i.i.i.i.i:                     ; preds = %bb.g, %bb.h
  %.sroa.01.05.i.i15.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 %.sroa.01.05.i.i15.i.i.i.i.i.i.i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !22709, !noalias !22708, !noundef !24
  %i.w = icmp eq i8 %i.v, 96
  br i1 %i.w, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i14.i.i.i.i.i.i.i.i
  %i.x = add nuw nsw i64 %.sroa.01.05.i.i15.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i16.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, %.val17.i.i.i.i.i.i
  br i1 %exitcond.not.i.i16.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i14.i.i.i.i.i.i.i.i

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i
  %i.y = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 96, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val17.i.i.i.i.i.i)
          to label %.noexc18.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i, !noalias !22706

.noexc18.i.i.i.i.i.i:                             ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.i.i.i.i.i.i.i.i
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i, label %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.thread.i.i.i.i.i.i.i.i

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.thread.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.noexc18.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val17.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i, !prof !22710

bb.i:                                             ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.thread.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !22711
  %i.ab = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.val17.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22711 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %bb.k

_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i14.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22708
  invoke fastcc void @_RINvMs3_NtCs40k4W9msRzi_5alloc3stre7replacecECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val16.i.i.i.i.i.i, i64 noundef %.val17.i.i.i.i.i.i)
          to label %.noexc19.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i

.noexc19.i.i.i.i.i.i:                             ; preds = %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22708
  store ptr %i.b, ptr %i.a, align 8, !noalias !22708
  store ptr @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !22708
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @290, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i unwind label %bb.l, !noalias !22712

bb.j:                                             ; preds = %bb.i, %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.thread.i.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %_RNvXs2_NtNtCscI6d9CVNmLh_4core3str7patterncNtB5_7Pattern15is_contained_in.exit17.thread.i.i.i.i.i.i.i.i ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i) #68
          to label %.noexc20.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !22706

.noexc20.i.i.i.i.i.i:                             ; preds = %bb.j
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread16.i.i.i.i.i.i.i.i: ; preds = %bb.k, %.preheader.i.i.i.i.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.ab, %bb.k ], [ inttoptr (i64 1 to ptr), %.preheader.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.val17.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !22712
  store ptr %i.ad, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !22712
  store i64 %.val17.i.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !22712
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 1 %.val16.i.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i, i1 false), !noalias !22708
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread16.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.noexc19.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22713)
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !22713, !noalias !22708 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !22713, !noalias !22708, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22714
  br label %.body.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22708
  call void @llvm.experimental.noalias.scope.decl(metadata !22715)
  %.val.i18.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !22715, !noalias !22708 ; 2 uses
  %i.ag = icmp eq i64 %.val.i18.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit20.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i
  %.val1.i19.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !22715, !noalias !22708, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i19.i.i.i.i.i.i.i.i, i64 noundef %.val.i18.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22716
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit20.i.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit20.i.i.i.i.i.i.i.i: ; preds = %bb.n, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs63DIHKhvmTb_10lance_core.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22708
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit20.i.i.i.i.i.i.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread16.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.val15.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !22712
  %i.ai = add nuw nsw i64 %.val15.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22706
  %i.aj = icmp eq i64 %i.ai, %2
  br i1 %i.aj, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema25format_field_path_minimal0EE9from_iterB3j_.exit, label %bb.f

.body.i:                                          ; preds = %bb.m, %bb.l, %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.ae, %bb.m ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22717), !noalias !22705
  %i.ak = icmp eq i64 %.val15.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i8, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %.body.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i7
  %.sroa.0.010.i.i.i4 = phi i64 [ %i.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i7 ], [ 0, %.body.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.0.010.i.i.i4 ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.0.010.i.i.i4, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22718), !noalias !22705
  %.val.i.i.i.i5 = load i64, ptr %i.al, align 8, !alias.scope !22719, !noalias !22720 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i5, 0
  br i1 %i.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i7, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val1.i.i.i.i6 = load ptr, ptr %i.ao, align 8, !alias.scope !22719, !noalias !22720, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i6, i64 noundef %.val.i.i.i.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !22721
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i7

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i7: ; preds = %bb.p, %.lr.ph.i.i.i3
  %i.ap = icmp eq i64 %i.am, %.val15.i.i.i.i.i.i
  br i1 %i.ap, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i8, label %.lr.ph.i.i.i3

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs63DIHKhvmTb_10lance_core.exit.i8: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.i7, %.body.i
  %i.aq = mul nuw nsw i64 %2, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !22720
  br label %common.resume

end_hunk_5
