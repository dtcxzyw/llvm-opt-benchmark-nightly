Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2F_10ValueEntryB1B_NtNtB1F_4moka14MokaCacheEntryEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1H_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !480
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !480
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !480
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.aw

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit202.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !48
  %i.v = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.u)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr %i.w, align 8, !noundef !48
  %i.y = add i64 %i.x, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2D_10ValueEntryB1z_NtNtB1D_4moka14MokaCacheEntryEEE11with_lengthB1F_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !481
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !481 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.f, !prof !64

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !482
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit202.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !453

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !483, !noundef !48 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB48_10ValueEntryB34_NtNtB38_4moka14MokaCacheEntryEEEEEEB3a_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !483, !nonnull !48, !noundef !48
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #65, !noalias !483
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB48_10ValueEntryB34_NtNtB38_4moka14MokaCacheEntryEEEEEEB3a_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB48_10ValueEntryB34_NtNtB38_4moka14MokaCacheEntryEEEEEEB3a_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !486, !nonnull !48, !noundef !48
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !486
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3U_10ValueEntryB2Q_NtNtB2U_4moka14MokaCacheEntryEEEEEB2W_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB48_10ValueEntryB34_NtNtB38_4moka14MokaCacheEntryEEEEEEB3a_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3U_10ValueEntryB2Q_NtNtB2U_4moka14MokaCacheEntryEEEEEB2W_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3U_10ValueEntryB2Q_NtNtB2U_4moka14MokaCacheEntryEEEEEB2W_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB48_10ValueEntryB34_NtNtB38_4moka14MokaCacheEntryEEEEEEB3a_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit202.a

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ao = load i64, ptr %i.t, align 8, !noundef !48
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
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtB37_10ValueEntryB23_NtNtB27_4moka14MokaCacheEntryEEEEB29_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #69
  br label %.body.thread

bb.l:                                             ; preds = %.peel.next.i
  %i.ar = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !482
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit202.a, label %bb.h

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
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtB4g_10ValueEntryB3c_NtNtB3g_4moka14MokaCacheEntryEEEEEEB3i_(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #69
  br label %.body.thread

.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %.invoke, %._crit_edge, %bb.q, %bb.e
  %lpad.loopexit.split-lp360 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit202.a:                                   ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3U_10ValueEntryB2Q_NtNtB2U_4moka14MokaCacheEntryEEEEEB2W_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3U_10ValueEntryB2Q_NtNtB2U_4moka14MokaCacheEntryEEEEEB2W_.exit.i.i ], [ %i.ab, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.as = load ptr, ptr %0, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !48 ; 2 uses
  %.idx = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %._crit_edge, label %.lr.ph240

.lr.ph240:                                        ; preds = %.loopexit202.a
  %.val43 = load i64, ptr %2, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val44 = load i64, ptr %i.ax, align 8          ; 2 uses
  %i.ay = xor i64 %.val43, 8317987319222330741
  %i.az = xor i64 %.val44, 7237128888997146477    ; 3 uses
  %i.ba = xor i64 %.val43, 7816392313619706465
  %i.bb = xor i64 %.val44, 8387220255154660707    ; 3 uses
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
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bv = xor i64 %i.bs, %i.bu                    ; 3 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph240, %.loopexit201
  %.sroa.02.0239 = phi ptr [ %i.as, %.lr.ph240 ], [ %i.bx, %.loopexit201 ] ; 3 uses
  %.sroa.412.0238 = phi i64 [ undef, %.lr.ph240 ], [ %.sroa.412.5, %.loopexit201 ]
  %.sroa.6.0237 = phi i64 [ undef, %.lr.ph240 ], [ %.sroa.6.5, %.loopexit201 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.0239, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63

._crit_edge:                                      ; preds = %.loopexit201, %.loopexit202.a
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ak unwind label %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63: ; preds = %.loopexit, %bb.n
  %.sroa.6.1 = phi i64 [ %.sroa.6.0237, %bb.n ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0238, %bb.n ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.n ], [ %.not37, %.loopexit ]
  %i.by = load atomic i64, ptr %.sroa.02.0239 acquire, align 8 ; 7 uses
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %.loopexit201

bb.o:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63
  %i.cb = and i64 %i.by, -8                       ; 3 uses
  %i.cc = or i64 %i.by, 4                         ; 7 uses
  %4 = icmp eq i64 %i.cb, 0                       ; 2 uses
  br i1 %.sroa.010.0, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #68
          to label %bb.s unwind label %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.cd = load i64, ptr %i.br, align 8, !noundef !48 ; 2 uses
  %i.ce = icmp ult i64 %.sroa.412.1, %i.cd
  br i1 %i.ce, label %bb.t, label %.invoke

bb.s:                                             ; preds = %bb.aw, %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.412.1 ; 2 uses
  %i.ch = and i64 %.sroa.6.1, 4
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit
  %.sroa.04.0235 = phi i64 [ %i.ck, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ %.sroa.6.1, %bb.t ]
  %i.cj = cmpxchg weak ptr %i.cg, i64 %.sroa.04.0235, i64 %i.cc acq_rel monotonic, align 8, !noalias !487
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.cj, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit: ; preds = %.lr.ph
  %i.ck = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.cl = and i64 %i.ck, 4
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ad, %bb.af, %._crit_edge.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, %bb.ah, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, %bb.x, %bb.aa, %._crit_edge.i.us.i, %bb.ac, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit, %.lr.ph, %bb.t, %bb.u
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i ], [ %.sroa.6.1, %bb.u ], [ %.sroa.6.1, %bb.t ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.cc, %bb.ac ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.aa ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.af ], [ %.sroa.6.1, %bb.ad ], [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i ], [ %i.cc, %bb.ah ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i ], [ %.sroa.412.1, %bb.u ], [ %.sroa.412.1, %bb.t ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.ac ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.aa ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.af ], [ %.sroa.412.1, %bb.ad ], [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i ], [ %.sroa.8.1.i, %bb.ah ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ true, %.lr.ph ], [ true, %bb.ac ], [ false, %._crit_edge.i.us.i ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i ], [ true, %bb.ah ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cn = cmpxchg weak ptr %.sroa.02.0239, i64 %i.by, i64 1 acq_rel monotonic, align 8, !noalias !488
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cn, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.ai, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63

bb.u:                                             ; preds = %bb.o
  br i1 %4, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %5 = inttoptr i64 %i.cb to ptr                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !489, !noalias !490, !nonnull !48, !noundef !48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %.sroa.07.0.copyload.i.1 = load i64, ptr %i.co, align 1, !alias.scope !491, !noalias !489 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.sroa.07.0.copyload.i = load i64, ptr %i.cp, align 1, !alias.scope !491, !noalias !489 ; 2 uses
  %i.cq = xor i64 %.sroa.07.0.copyload.i, %i.bo   ; 3 uses
  %i.cr = add i64 %i.cq, %i.bp                    ; 2 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 16)
  %i.ct = xor i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.cv = add i64 %i.ct, %i.bt                    ; 2 uses
  %i.cw = xor i64 %i.cu, %i.cv
  %i.cx = xor i64 %.sroa.07.0.copyload.i.1, %i.cw ; 3 uses
  %i.cy = add i64 %i.cr, %i.bv                    ; 3 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 32)
  %i.da = add i64 %i.cx, %i.cz                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 16)
  %i.dc = xor i64 %i.da, %i.db                    ; 3 uses
  %i.dd = xor i64 %i.cv, %.sroa.07.0.copyload.i
  %i.de = xor i64 %i.cy, %i.bw                    ; 3 uses
  %i.df = add i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 32)
  %i.dh = add i64 %i.dc, %i.dg                    ; 2 uses
  %i.di = xor i64 %i.dh, %.sroa.07.0.copyload.i.1
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 13)
  %i.dk = xor i64 %i.df, %i.dj                    ; 3 uses
  %i.dl = add i64 %i.da, %i.dk                    ; 3 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32)
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 21)
  %i.do = xor i64 %i.dn, %i.dh
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 17)
  %i.dq = xor i64 %i.dl, %i.dp                    ; 3 uses
  %i.dr = xor i64 %i.do, 1729382256910270464      ; 3 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 16)
  %i.dt = add i64 %i.dr, %i.dm                    ; 2 uses
  %i.du = xor i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = add i64 %i.di, %i.dq                    ; 3 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 32)
  %i.dx = add i64 %i.du, %i.dw                    ; 2 uses
  %i.dy = xor i64 %i.dx, 1729382256910270464
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 13)
  %i.ea = xor i64 %i.dv, %i.dz                    ; 3 uses
  %i.eb = add i64 %i.dt, %i.ea                    ; 3 uses
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 17)
  %i.ed = xor i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = add i64 %i.dy, %i.ed                    ; 3 uses
  %6 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 13)
  %i.ef = xor i64 %i.ee, %6                       ; 3 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.du, i64 %i.du, i64 21)
  %i.eh = xor i64 %i.eg, %i.dx                    ; 3 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 32)
  %i.ej = xor i64 %i.ei, 255
  %i.ek = add i64 %i.eh, %i.ej                    ; 2 uses
  %7 = add i64 %i.ef, %i.ek                       ; 3 uses
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 17)
  %i.el = xor i64 %7, %8                          ; 3 uses
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 13)
  %i.en = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 16)
  %i.eo = xor i64 %i.en, %i.ek                    ; 3 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %10 = add i64 %i.eo, %9                         ; 2 uses
  %i.ep = add i64 %i.el, %10                      ; 3 uses
  %i.eq = xor i64 %i.em, %i.ep                    ; 3 uses
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 17)
  %i.es = tail call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 21)
  %i.et = xor i64 %i.es, %10                      ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 32)
  %12 = add i64 %i.et, %11                        ; 2 uses
  %i.eu = add i64 %i.eq, %12                      ; 3 uses
  %i.ev = xor i64 %i.er, %i.eu                    ; 3 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 13)
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 16)
  %i.ey = xor i64 %i.ex, %12                      ; 3 uses
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %14 = add i64 %i.ey, %13                        ; 2 uses
  %i.ez = add i64 %i.ev, %14
  %i.fa = xor i64 %i.ew, %i.ez                    ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 21)
  %15 = xor i64 %i.fb, %14                        ; 3 uses
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 32)
  %17 = add i64 %15, %16                          ; 2 uses
  %i.fc = add i64 %i.fa, %17                      ; 3 uses
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 32)
  %i.fd = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %i.fe = xor i64 %i.fd, %17                      ; 2 uses
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 21)
  %i.ff = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 17)
  %20 = xor i64 %19, %i.ff
  %i.fg = xor i64 %20, %18
  %i.fh = xor i64 %i.fg, %i.fc
  %i.fi = load i64, ptr %i.br, align 8, !noundef !48 ; 2 uses
  %i.fj = add i64 %i.fi, -1                       ; 5 uses
  %i.fk = and i64 %i.fj, %i.fh                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.fi, 0
  br i1 %.not.i64, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk ; 2 uses
  %21 = and i64 %i.by, 2
  %i.fn = icmp eq i64 %21, 0
  br i1 %i.fn, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.fm, %bb.w ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.fk, %bb.w ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.x

bb.x:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.fj
  br i1 %.not.i.us.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.fo = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.fp = add i64 %i.fo, %i.fk
  %i.fq = and i64 %i.fp, %i.fj                    ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fq
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.y, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.fo, %bb.y ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.fr, %bb.y ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.fq, %bb.y ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 2 uses
  %i.fs = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !492 ; 5 uses
  %i.ft = and i64 %i.fs, 1
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge.i.us.i
  %i.fv = and i64 %i.fs, -8                       ; 2 uses
  %i.fw = inttoptr i64 %i.fv to ptr
  %.not20.us.i = icmp eq i64 %i.fv, 0
  br i1 %.not20.us.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = icmp eq i64 %i.fs, %i.cc
  br i1 %i.fx, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val23.us.i = load ptr, ptr %i.fw, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %.val24.us.i = load ptr, ptr %5, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.fy = icmp eq ptr %.val23.us.i, %.val24.us.i
  br i1 %i.fy, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i: ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.val24.us.i, i64 16
  %.val.i.i.us.i = load i128, ptr %i.fz, align 1, !noundef !48
  %.val2.i.i.us.i = load i128, ptr %i.ga, align 1, !noundef !48
  %.not51.us.i = icmp eq i128 %.val.i.i.us.i, %.val2.i.i.us.i
  br i1 %.not51.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i, %bb.ab
  %i.gb = and i64 %i.fs, 4
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, %bb.z
  %i.gd = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.fs, i64 %i.cc acq_rel monotonic, align 8, !noalias !493
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.gd, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge: ; preds = %bb.ac, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i
  %.sroa.20.0.us.i.be = phi i1 [ true, %bb.ac ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i

.invoke:                                          ; preds = %bb.v, %bb.r
  %i.ge = phi i64 [ %.sroa.412.1, %bb.r ], [ %i.fk, %bb.v ]
  %i.gf = phi i64 [ %i.cd, %bb.r ], [ 0, %bb.v ]
  %i.gg = phi ptr [ @57, %bb.r ], [ @41, %bb.v ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ge, i64 noundef %i.gf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gg) #68
          to label %.cont unwind label %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.fm, %bb.w ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.fk, %bb.w ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.fj
  br i1 %.not.i.i, label %bb.ae, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.gk, %bb.ae ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.gn, %bb.ae ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.gm, %bb.ae ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 2 uses
  %i.gh = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !492 ; 5 uses
  %i.gi = and i64 %i.gh, 1
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.gk = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.gl = add i64 %i.gk, %i.fk
  %i.gm = and i64 %i.gl, %i.fj                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gm
  br label %._crit_edge.i.i

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.go = and i64 %i.gh, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.go, 0
  %i.gp = icmp eq i64 %i.gh, %i.cc
  %or.cond.i = or i1 %i.gp, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = inttoptr i64 %i.go to ptr
  %.val23.i = load ptr, ptr %i.gq, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %.val24.i = load ptr, ptr %5, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.gr = icmp eq ptr %.val23.i, %.val24.i
  br i1 %i.gr, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i: ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16
  %.val.i.i.i = load i128, ptr %i.gs, align 1, !noundef !48
  %.val2.i.i.i = load i128, ptr %i.gt, align 1, !noundef !48
  %.not51.i = icmp eq i128 %.val.i.i.i, %.val2.i.i.i
  br i1 %.not51.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i, %bb.ag
  %i.gu = and i64 %i.gh, 4
  %.not62.i = icmp eq i64 %i.gu, 0
  br i1 %.not62.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i
  %i.gv = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.gh, i64 %i.cc acq_rel monotonic, align 8, !noalias !493
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.gv, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge: ; preds = %bb.ah, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i
  %.sroa.20.0.i.be = phi i1 [ true, %bb.ah ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

bb.ai:                                            ; preds = %.loopexit
  %i.gw = icmp eq i64 %i.cb, 0
  %22 = and i64 %i.by, 2
  %i.gx = icmp eq i64 %22, 0
  %or.cond41 = or i1 %i.gw, %i.gx
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit201, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2E_10ValueEntryB1A_NtNtB1E_4moka14MokaCacheEntryEEEB1G_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.by)
          to label %.loopexit201 unwind label %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit201:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63, %bb.aj, %bb.ai
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ai ], [ %.sroa.6.2, %bb.aj ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ai ], [ %.sroa.412.2, %bb.aj ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3n_10ValueEntryB2j_NtNtB2n_4moka14MokaCacheEntryEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %i.gy = icmp eq ptr %i.bx, %i.av
  br i1 %i.gy, label %._crit_edge, label %bb.n

bb.ak:                                            ; preds = %._crit_edge
  %i.gz = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.gz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hb = and i64 %i.ha, 9223372036854775807
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !53

.noexc68:                                         ; preds = %bb.al
  %i.hd = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.hd, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.am, %.noexc68, %bb.al, %bb.ak
  %i.he = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.an:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.an, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.an ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.ar, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.bf ], [ %eh.lpad-body172, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.hx, %bb.ax ], [ %eh.lpad-body172, %bb.ar ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body172 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit.split-lp360, %.body.thread174.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hg = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.hg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ao

bb.ao:                                            ; preds = %.body.thread
  %i.hh = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hi = and i64 %i.hh, 9223372036854775807
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ap, !prof !53

bb.ap:                                            ; preds = %bb.ao
  %i.hk = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.as

.noexc71:                                         ; preds = %bb.ap
  br i1 %i.hk, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.aq, %.noexc71, %bb.ao, %.body.thread
  %i.hl = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hm = icmp eq i32 %i.hl, 2
  br i1 %i.hm, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73, !prof !51

bb.ar:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ax, %bb.bf
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.at:                                            ; preds = %bb.a
  %i.ho = load ptr, ptr %i.d, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 5 uses
  %i.hq = cmpxchg ptr %i.hp, i32 0, i32 1 acquire monotonic, align 4, !noalias !494
  %i.hr = extractvalue { i32, i1 } %i.hq, 1
  br i1 %i.hr, label %.noexc76, label %bb.au, !prof !53

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.hp)
          to label %.noexc76 unwind label %bb.bf

.noexc76:                                         ; preds = %bb.au, %bb.at
  %i.hs = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !494
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.thread, label %bb.av, !prof !53

bb.av:                                            ; preds = %.noexc76
  %i.hv = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ay unwind label %bb.bf     ; 2 uses

bb.aw:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.hw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %.val53 = load ptr, ptr %i.c, align 8
  %.val54 = load i8, ptr %i.hw, align 8, !range !57, !noundef !48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val53, i8 %.val54) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.ay:                                            ; preds = %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 20 ; 3 uses
  %i.hz = load atomic i8, ptr %i.hy monotonic, align 1, !noalias !494
  %.not196 = icmp eq i8 %i.hz, 0
  br i1 %.not196, label %bb.az, label %bb.bc

.thread:                                          ; preds = %.noexc76
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 20 ; 3 uses
  %i.ib = load atomic i8, ptr %i.ia monotonic, align 1, !noalias !494
  %.not196299 = icmp eq i8 %i.ib, 0
  br i1 %.not196299, label %.thread302, label %.thread304

bb.az:                                            ; preds = %bb.ay
  br i1 %i.hv, label %.thread302, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread302:                                       ; preds = %.thread, %bb.az
  %i.ic = phi ptr [ %i.hy, %bb.az ], [ %i.ia, %.thread ]
  %i.id = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !495
  %i.ie = and i64 %i.id, 9223372036854775807
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba, !prof !53

bb.ba:                                            ; preds = %.thread302
  %i.ig = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %bb.bf

.noexc78:                                         ; preds = %bb.ba
  br i1 %i.ig, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.ic monotonic, align 1, !noalias !495
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bb, %.noexc78, %.thread302, %bb.az
  %i.ih = atomicrmw xchg ptr %i.hp, i32 0 release, align 4, !noalias !495
  %i.ii = icmp eq i32 %i.ih, 2
  br i1 %i.ii, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.bc:                                            ; preds = %bb.ay
  br i1 %i.hv, label %.thread304, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread304:                                       ; preds = %.thread, %bb.bc
  %i.ij = phi ptr [ %i.hy, %bb.bc ], [ %i.ia, %.thread ]
  %i.ik = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !495
  %i.il = and i64 %i.ik, 9223372036854775807
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bd, !prof !53

bb.bd:                                            ; preds = %.thread304
  %i.in = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.bf

.noexc79:                                         ; preds = %bb.bd
  br i1 %i.in, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.ij monotonic, align 1, !noalias !495
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.be, %.noexc79, %.thread304, %bb.bc
  %i.io = atomicrmw xchg ptr %i.hp, i32 0 release, align 4, !noalias !495
  %i.ip = icmp eq i32 %i.io, 2
  br i1 %i.ip, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bd, %bb.ba, %bb.av, %bb.au
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.f, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1H_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !529
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !529
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !529
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.aw

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit203.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !48
  %i.v = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.u)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr %i.w, align 8, !noundef !48
  %i.y = add i64 %i.x, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE11with_lengthB1F_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !530
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !530 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.f, !prof !64

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !531
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit203.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !502

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !532, !noundef !48 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !532, !nonnull !48, !noundef !48
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #65, !noalias !532
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !535, !nonnull !48, !noundef !48
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !535
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEEB3a_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit203.a

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ao = load i64, ptr %i.t, align 8, !noundef !48
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
  %i.ar = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !531
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit203.a, label %bb.h

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

.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %.invoke, %._crit_edge, %bb.q, %bb.e
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit203.a:                                   ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEEEB2W_.exit.i.i ], [ %i.ab, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.as = load ptr, ptr %0, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !48 ; 2 uses
  %.idx = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %._crit_edge, label %.lr.ph241

.lr.ph241:                                        ; preds = %.loopexit203.a
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
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bv = xor i64 %i.bs, %i.bu                    ; 3 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph241, %.loopexit202
  %.sroa.02.0240 = phi ptr [ %i.as, %.lr.ph241 ], [ %i.bx, %.loopexit202 ] ; 3 uses
  %.sroa.412.0239 = phi i64 [ undef, %.lr.ph241 ], [ %.sroa.412.5, %.loopexit202 ]
  %.sroa.6.0238 = phi i64 [ undef, %.lr.ph241 ], [ %.sroa.6.5, %.loopexit202 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.0240, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63

._crit_edge:                                      ; preds = %.loopexit202, %.loopexit203.a
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.ak unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63: ; preds = %.loopexit, %bb.n
  %.sroa.6.1 = phi i64 [ %.sroa.6.0238, %bb.n ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0239, %bb.n ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.n ], [ %.not37, %.loopexit ]
  %i.by = load atomic i64, ptr %.sroa.02.0240 acquire, align 8 ; 7 uses
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %.loopexit202

bb.o:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63
  %i.cb = and i64 %i.by, -8                       ; 3 uses
  %i.cc = or i64 %i.by, 4                         ; 7 uses
  %4 = icmp eq i64 %i.cb, 0                       ; 2 uses
  br i1 %.sroa.010.0, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #68
          to label %bb.s unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.cd = load i64, ptr %i.br, align 8, !noundef !48 ; 2 uses
  %i.ce = icmp ult i64 %.sroa.412.1, %i.cd
  br i1 %i.ce, label %bb.t, label %.invoke

bb.s:                                             ; preds = %bb.aw, %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.412.1 ; 2 uses
  %i.ch = and i64 %.sroa.6.1, 4
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit
  %.sroa.04.0236 = phi i64 [ %i.ck, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ %.sroa.6.1, %bb.t ]
  %i.cj = cmpxchg weak ptr %i.cg, i64 %.sroa.04.0236, i64 %i.cc acq_rel monotonic, align 8, !noalias !536
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.cj, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit: ; preds = %.lr.ph
  %i.ck = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.cl = and i64 %i.ck, 4
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ad, %bb.af, %._crit_edge.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, %bb.ah, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, %bb.x, %bb.aa, %._crit_edge.i.us.i, %bb.ac, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit, %.lr.ph, %bb.t, %bb.u
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i ], [ %.sroa.6.1, %bb.u ], [ %.sroa.6.1, %bb.t ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.cc, %bb.ac ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.aa ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.af ], [ %.sroa.6.1, %bb.ad ], [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i ], [ %i.cc, %bb.ah ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i ], [ %.sroa.412.1, %bb.u ], [ %.sroa.412.1, %bb.t ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.ac ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.aa ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.af ], [ %.sroa.412.1, %bb.ad ], [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i ], [ %.sroa.8.1.i, %bb.ah ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit ], [ true, %.lr.ph ], [ true, %bb.ac ], [ false, %._crit_edge.i.us.i ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i ], [ true, %bb.ah ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cn = cmpxchg weak ptr %.sroa.02.0240, i64 %i.by, i64 1 acq_rel monotonic, align 8, !noalias !537
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cn, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.ai, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63

bb.u:                                             ; preds = %bb.o
  br i1 %4, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %5 = inttoptr i64 %i.cb to ptr                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !538, !noalias !539, !nonnull !48, !noundef !48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %.sroa.07.0.copyload.i.1 = load i64, ptr %i.co, align 1, !alias.scope !540, !noalias !538 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.sroa.07.0.copyload.i = load i64, ptr %i.cp, align 1, !alias.scope !540, !noalias !538 ; 2 uses
  %i.cq = xor i64 %.sroa.07.0.copyload.i, %i.bo   ; 3 uses
  %i.cr = add i64 %i.cq, %i.bp                    ; 2 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 16)
  %i.ct = xor i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.cv = add i64 %i.ct, %i.bt                    ; 2 uses
  %i.cw = xor i64 %i.cu, %i.cv
  %i.cx = xor i64 %.sroa.07.0.copyload.i.1, %i.cw ; 3 uses
  %i.cy = add i64 %i.cr, %i.bv                    ; 3 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 32)
  %i.da = add i64 %i.cx, %i.cz                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 16)
  %i.dc = xor i64 %i.da, %i.db                    ; 3 uses
  %i.dd = xor i64 %i.cv, %.sroa.07.0.copyload.i
  %i.de = xor i64 %i.cy, %i.bw                    ; 3 uses
  %i.df = add i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 32)
  %i.dh = add i64 %i.dc, %i.dg                    ; 2 uses
  %i.di = xor i64 %i.dh, %.sroa.07.0.copyload.i.1
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 13)
  %i.dk = xor i64 %i.df, %i.dj                    ; 3 uses
  %i.dl = add i64 %i.da, %i.dk                    ; 3 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32)
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 21)
  %i.do = xor i64 %i.dn, %i.dh
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 17)
  %i.dq = xor i64 %i.dl, %i.dp                    ; 3 uses
  %i.dr = xor i64 %i.do, 1729382256910270464      ; 3 uses
  %i.ds = tail call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 16)
  %i.dt = add i64 %i.dr, %i.dm                    ; 2 uses
  %i.du = xor i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = add i64 %i.di, %i.dq                    ; 3 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 32)
  %i.dx = add i64 %i.du, %i.dw                    ; 2 uses
  %i.dy = xor i64 %i.dx, 1729382256910270464
  %i.dz = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 13)
  %i.ea = xor i64 %i.dv, %i.dz                    ; 3 uses
  %i.eb = add i64 %i.dt, %i.ea                    ; 3 uses
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 17)
  %i.ed = xor i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = add i64 %i.dy, %i.ed                    ; 3 uses
  %6 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 13)
  %i.ef = xor i64 %i.ee, %6                       ; 3 uses
  %i.eg = tail call noundef i64 @llvm.fshl.i64(i64 %i.du, i64 %i.du, i64 21)
  %i.eh = xor i64 %i.eg, %i.dx                    ; 3 uses
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 32)
  %i.ej = xor i64 %i.ei, 255
  %i.ek = add i64 %i.eh, %i.ej                    ; 2 uses
  %7 = add i64 %i.ef, %i.ek                       ; 3 uses
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 17)
  %i.el = xor i64 %7, %8                          ; 3 uses
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 13)
  %i.en = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 16)
  %i.eo = xor i64 %i.en, %i.ek                    ; 3 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %10 = add i64 %i.eo, %9                         ; 2 uses
  %i.ep = add i64 %i.el, %10                      ; 3 uses
  %i.eq = xor i64 %i.em, %i.ep                    ; 3 uses
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 17)
  %i.es = tail call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 21)
  %i.et = xor i64 %i.es, %10                      ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 32)
  %12 = add i64 %i.et, %11                        ; 2 uses
  %i.eu = add i64 %i.eq, %12                      ; 3 uses
  %i.ev = xor i64 %i.er, %i.eu                    ; 3 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 13)
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 16)
  %i.ey = xor i64 %i.ex, %12                      ; 3 uses
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %14 = add i64 %i.ey, %13                        ; 2 uses
  %i.ez = add i64 %i.ev, %14
  %i.fa = xor i64 %i.ew, %i.ez                    ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 21)
  %15 = xor i64 %i.fb, %14                        ; 3 uses
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 32)
  %17 = add i64 %15, %16                          ; 2 uses
  %i.fc = add i64 %i.fa, %17                      ; 3 uses
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 32)
  %i.fd = tail call noundef i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 16)
  %i.fe = xor i64 %i.fd, %17                      ; 2 uses
  %19 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 21)
  %i.ff = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 17)
  %20 = xor i64 %19, %i.ff
  %i.fg = xor i64 %20, %18
  %i.fh = xor i64 %i.fg, %i.fc
  %i.fi = load i64, ptr %i.br, align 8, !noundef !48 ; 2 uses
  %i.fj = add i64 %i.fi, -1                       ; 5 uses
  %i.fk = and i64 %i.fj, %i.fh                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.fi, 0
  br i1 %.not.i64, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fl = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk ; 2 uses
  %21 = and i64 %i.by, 2
  %i.fn = icmp eq i64 %21, 0
  br i1 %i.fn, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.fm, %bb.w ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge ], [ %i.fk, %bb.w ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.x

bb.x:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.fj
  br i1 %.not.i.us.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.fo = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.fp = add i64 %i.fo, %i.fk
  %i.fq = and i64 %i.fp, %i.fj                    ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fq
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.y, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.fo, %bb.y ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.fr, %bb.y ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.fq, %bb.y ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i ] ; 2 uses
  %i.fs = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !541 ; 5 uses
  %i.ft = and i64 %i.fs, 1
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge.i.us.i
  %i.fv = and i64 %i.fs, -8                       ; 2 uses
  %i.fw = inttoptr i64 %i.fv to ptr
  %.not20.us.i = icmp eq i64 %i.fv, 0
  br i1 %.not20.us.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = icmp eq i64 %i.fs, %i.cc
  br i1 %i.fx, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.us.i = load ptr, ptr %i.fw, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %.val22.us.i = load ptr, ptr %5, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.fy = icmp eq ptr %.val.us.i, %.val22.us.i
  br i1 %i.fy, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i: ; preds = %bb.ab
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.val22.us.i, i64 16
  %.val.i.i.us.i = load i128, ptr %i.fz, align 1, !noundef !48
  %.val2.i.i.us.i = load i128, ptr %i.ga, align 1, !noundef !48
  %.not51.us.i = icmp eq i128 %.val.i.i.us.i, %.val2.i.i.us.i
  br i1 %.not51.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i, %bb.ab
  %i.gb = and i64 %i.fs, 4
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.us.i, %bb.z
  %i.gd = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.fs, i64 %i.cc acq_rel monotonic, align 8, !noalias !542
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.gd, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i.backedge: ; preds = %bb.ac, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i
  %.sroa.20.0.us.i.be = phi i1 [ true, %bb.ac ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.us.i

.invoke:                                          ; preds = %bb.v, %bb.r
  %i.ge = phi i64 [ %.sroa.412.1, %bb.r ], [ %i.fk, %bb.v ]
  %i.gf = phi i64 [ %i.cd, %bb.r ], [ 0, %bb.v ]
  %i.gg = phi ptr [ @57, %bb.r ], [ @41, %bb.v ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ge, i64 noundef %i.gf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gg) #68
          to label %.cont unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.fm, %bb.w ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge ], [ %i.fk, %bb.w ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.fj
  br i1 %.not.i.i, label %bb.ae, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ae, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.gk, %bb.ae ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.gn, %bb.ae ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.gm, %bb.ae ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i ] ; 2 uses
  %i.gh = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !541 ; 5 uses
  %i.gi = and i64 %i.gh, 1
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.af, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.gk = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.gl = add i64 %i.gk, %i.fk
  %i.gm = and i64 %i.gl, %i.fj                    ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.gm
  br label %._crit_edge.i.i

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.go = and i64 %i.gh, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.go, 0
  %i.gp = icmp eq i64 %i.gh, %i.cc
  %or.cond.i = or i1 %i.gp, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = inttoptr i64 %i.go to ptr
  %.val.i = load ptr, ptr %i.gq, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %.val22.i = load ptr, ptr %5, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.gr = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.gr, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i: ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %.val.i.i.i = load i128, ptr %i.gs, align 1, !noundef !48
  %.val2.i.i.i = load i128, ptr %i.gt, align 1, !noundef !48
  %.not51.i = icmp eq i128 %.val.i.i.i, %.val2.i.i.i
  br i1 %.not51.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i, %bb.ag
  %i.gu = and i64 %i.gh, 4
  %.not62.i = icmp eq i64 %i.gu, 0
  br i1 %.not62.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.thread.i
  %i.gv = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.gh, i64 %i.cc acq_rel monotonic, align 8, !noalias !542
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.gv, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i.backedge: ; preds = %bb.ah, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i
  %.sroa.20.0.i.be = phi i1 [ true, %bb.ah ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit.i

bb.ai:                                            ; preds = %.loopexit
  %i.gw = icmp eq i64 %i.cb, 0
  %22 = and i64 %i.by, 2
  %i.gx = icmp eq i64 %22, 0
  %or.cond41 = or i1 %i.gw, %i.gx
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit202, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEB1G_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.by)
          to label %.loopexit202 unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit202:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63, %bb.aj, %bb.ai
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ai ], [ %.sroa.6.2, %bb.aj ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ai ], [ %.sroa.412.2, %bb.aj ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2p_.exit63 ]
  %i.gy = icmp eq ptr %i.bx, %i.av
  br i1 %i.gy, label %._crit_edge, label %bb.n

bb.ak:                                            ; preds = %._crit_edge
  %i.gz = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.gz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hb = and i64 %i.ha, 9223372036854775807
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !53

.noexc68:                                         ; preds = %bb.al
  %i.hd = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.hd, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.am

bb.am:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.am, %.noexc68, %bb.al, %bb.ak
  %i.he = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hf = icmp eq i32 %i.he, 2
  br i1 %i.hf, label %bb.an, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.an:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.an, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.an ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.ar, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.bf ], [ %eh.lpad-body173, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.hx, %bb.ax ], [ %eh.lpad-body173, %bb.ar ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body173 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit.split-lp361, %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hg = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.hg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ao

bb.ao:                                            ; preds = %.body.thread
  %i.hh = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hi = and i64 %i.hh, 9223372036854775807
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ap, !prof !53

bb.ap:                                            ; preds = %bb.ao
  %i.hk = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.as

.noexc71:                                         ; preds = %bb.ap
  br i1 %i.hk, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.aq, %.noexc71, %bb.ao, %.body.thread
  %i.hl = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hm = icmp eq i32 %i.hl, 2
  br i1 %i.hm, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73, !prof !51

bb.ar:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap, %bb.ax, %bb.bf
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.at:                                            ; preds = %bb.a
  %i.ho = load ptr, ptr %i.d, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 5 uses
  %i.hq = cmpxchg ptr %i.hp, i32 0, i32 1 acquire monotonic, align 4, !noalias !543
  %i.hr = extractvalue { i32, i1 } %i.hq, 1
  br i1 %i.hr, label %.noexc76, label %bb.au, !prof !53

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.hp)
          to label %.noexc76 unwind label %bb.bf

.noexc76:                                         ; preds = %bb.au, %bb.at
  %i.hs = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !543
  %i.ht = and i64 %i.hs, 9223372036854775807
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.thread, label %bb.av, !prof !53

bb.av:                                            ; preds = %.noexc76
  %i.hv = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ay unwind label %bb.bf     ; 2 uses

bb.aw:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.hw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.c, align 8
  %.val53 = load i8, ptr %i.hw, align 8, !range !57, !noundef !48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val52, i8 %.val53) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as

bb.ay:                                            ; preds = %bb.av
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 20 ; 3 uses
  %i.hz = load atomic i8, ptr %i.hy monotonic, align 1, !noalias !543
  %.not197 = icmp eq i8 %i.hz, 0
  br i1 %.not197, label %bb.az, label %bb.bc

.thread:                                          ; preds = %.noexc76
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 20 ; 3 uses
  %i.ib = load atomic i8, ptr %i.ia monotonic, align 1, !noalias !543
  %.not197300 = icmp eq i8 %i.ib, 0
  br i1 %.not197300, label %.thread303, label %.thread305

bb.az:                                            ; preds = %bb.ay
  br i1 %i.hv, label %.thread303, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread303:                                       ; preds = %.thread, %bb.az
  %i.ic = phi ptr [ %i.hy, %bb.az ], [ %i.ia, %.thread ]
  %i.id = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !544
  %i.ie = and i64 %i.id, 9223372036854775807
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ba, !prof !53

bb.ba:                                            ; preds = %.thread303
  %i.ig = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.bf

.noexc79:                                         ; preds = %bb.ba
  br i1 %i.ig, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.ic monotonic, align 1, !noalias !544
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bb, %.noexc79, %.thread303, %bb.az
  %i.ih = atomicrmw xchg ptr %i.hp, i32 0 release, align 4, !noalias !544
  %i.ii = icmp eq i32 %i.ih, 2
  br i1 %i.ii, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.bc:                                            ; preds = %bb.ay
  br i1 %i.hv, label %.thread305, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread305:                                       ; preds = %.thread, %bb.bc
  %i.ij = phi ptr [ %i.hy, %bb.bc ], [ %i.ia, %.thread ]
  %i.ik = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !544
  %i.il = and i64 %i.ik, 9223372036854775807
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bd, !prof !53

bb.bd:                                            ; preds = %.thread305
  %i.in = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc80 unwind label %bb.bf

.noexc80:                                         ; preds = %bb.bd
  br i1 %i.in, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %.noexc80
  store atomic i8 1, ptr %i.ij monotonic, align 1, !noalias !544
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.be, %.noexc80, %.thread305, %bb.bc
  %i.io = atomicrmw xchg ptr %i.hp, i32 0 release, align 4, !noalias !544
  %i.ip = icmp eq i32 %i.io, 2
  br i1 %i.ip, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.hp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bd, %bb.ba, %bb.av, %bb.au
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.f, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.as
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2n_4moka14MokaCacheEntryEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB2p_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !589 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.h = cmpxchg ptr %i.g, i32 0, i32 1 acquire monotonic, align 4, !noalias !590
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.bc

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.k = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !590
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !590
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.q = load atomic i8, ptr %i.j monotonic, align 1, !noalias !590
  %.not.i.not = icmp eq i8 %i.q, 0
  br i1 %.not.i.not, label %bb.d, label %bb.bf

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8
  %i.t = and i64 %i.s, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.t, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit196

.lr.ph.i:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !48
  %i.w = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.v)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = load i64, ptr %i.x, align 8, !noundef !48
  %i.z = add i64 %i.y, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2l_4moka14MokaCacheEntryEE11with_lengthB2n_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %i.z, i64 noundef %i.w)
          to label %.noexc unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !591
  %i.aa = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !591 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.f, !prof !64

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.ac = ptrtoint ptr %i.aa to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !592
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit196, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load atomic i64, ptr %i.r acquire, align 8
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.af, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.ag = load atomic i64, ptr %i.r acquire, align 8
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ah, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !551

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !593, !noundef !48 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !593, !nonnull !48, !noundef !48
  %i.ak = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef 8) #65, !noalias !593
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !596, !nonnull !48, !noundef !48
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !596
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.al)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtBG_6string6StringINtNtNtB28_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3R_4moka14MokaCacheEntryEEEEEB3T_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit196

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ap = load i64, ptr %i.u, align 8, !noundef !48
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
  %i.as = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !592
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.as, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit196, label %bb.h

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

.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.as, %.invoke, %._crit_edge, %bb.q, %bb.e
  %lpad.loopexit.split-lp379 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit196:                                     ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ac, %bb.f ], [ %i.t, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB1x_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB3D_4moka14MokaCacheEntryEEEEB3F_.exit.i.i ], [ %i.ac, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.at = load ptr, ptr %0, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !48 ; 2 uses
  %.idx = shl nuw nsw i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %._crit_edge, label %.lr.ph235

.lr.ph235:                                        ; preds = %.loopexit196
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

bb.n:                                             ; preds = %.lr.ph235, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit
  %.sroa.02.0234 = phi ptr [ %i.at, %.lr.ph235 ], [ %i.bh, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit ] ; 3 uses
  %.sroa.412.0233 = phi i64 [ undef, %.lr.ph235 ], [ %.sroa.412.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit ]
  %.sroa.6.0232 = phi i64 [ undef, %.lr.ph235 ], [ %.sroa.6.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0234, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63

._crit_edge:                                      ; preds = %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit, %.loopexit196
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.at unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63: ; preds = %.loopexit, %bb.n
  %.sroa.6.1 = phi i64 [ %.sroa.6.0232, %bb.n ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0233, %bb.n ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.n ], [ %.not37, %.loopexit ]
  %i.bi = load atomic i64, ptr %.sroa.02.0234 acquire, align 8 ; 7 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit

bb.o:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63
  %i.bl = and i64 %i.bi, -8                       ; 4 uses
  %i.bm = or i64 %i.bi, 4                         ; 7 uses
  %i.bn = icmp eq i64 %i.bl, 0                    ; 2 uses
  br i1 %.sroa.010.0, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.bn, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #68
          to label %bb.s unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.bo = load i64, ptr %i.bd, align 8, !noundef !48 ; 2 uses
  %i.bp = icmp ult i64 %.sroa.412.1, %i.bo
  br i1 %i.bp, label %bb.t, label %.invoke

bb.s:                                             ; preds = %bb.bf, %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.412.1 ; 2 uses
  %i.bs = and i64 %.sroa.6.1, 4
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit
  %.sroa.04.0230 = phi i64 [ %i.bv, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ %.sroa.6.1, %bb.t ]
  %i.bu = cmpxchg weak ptr %i.br, i64 %.sroa.04.0230, i64 %i.bm acq_rel monotonic, align 8, !noalias !597
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bu, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit: ; preds = %.lr.ph
  %i.bv = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bw = and i64 %i.bv, 4
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.aj, %bb.al, %._crit_edge.i.i, %bb.an, %bb.ao, %bb.ah, %bb.ac, %bb.af, %._crit_edge.i.us.i, %bb.ai, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit, %.lr.ph, %bb.t, %bb.u
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %bb.ah ], [ %.sroa.6.1, %bb.u ], [ %.sroa.6.1, %bb.t ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bm, %bb.ai ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.af ], [ %.sroa.6.1, %bb.ac ], [ %.sroa.6.1, %bb.al ], [ %.sroa.6.1, %bb.aj ], [ %.sroa.6.1, %bb.an ], [ %i.bm, %bb.ao ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %bb.ah ], [ %.sroa.412.1, %bb.u ], [ %.sroa.412.1, %bb.t ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.ai ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.af ], [ %.sroa.412.1, %bb.ac ], [ %.sroa.412.1, %bb.al ], [ %.sroa.412.1, %bb.aj ], [ %.sroa.412.1, %bb.an ], [ %.sroa.8.1.i, %bb.ao ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 4 uses
  %.not37 = phi i1 [ false, %bb.ah ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit ], [ true, %.lr.ph ], [ true, %bb.ai ], [ false, %._crit_edge.i.us.i ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.an ], [ true, %bb.ao ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.by = cmpxchg weak ptr %.sroa.02.0234, i64 %i.bi, i64 1 acq_rel monotonic, align 8, !noalias !598
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.ap, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63

bb.u:                                             ; preds = %bb.o
  br i1 %i.bn, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = inttoptr i64 %i.bl to ptr               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.ca = getelementptr i8, ptr %i.bz, i64 8      ; 3 uses
  %.val.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !599, !noalias !600, !nonnull !48, !noundef !48 ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 16     ; 3 uses
  %.val1.i.i = load i64, ptr %i.cb, align 8, !alias.scope !599, !noalias !600, !noundef !48 ; 5 uses
  %i.cc = and i64 %.val1.i.i, 7                   ; 7 uses
  %i.cd = and i64 %.val1.i.i, -8                  ; 2 uses
  %.not189.a = icmp eq i64 %i.cd, 0
  br i1 %.not189.a, label %._crit_edge.i115, label %.lr.ph.i108

._crit_edge.i115.loopexit:                        ; preds = %.lr.ph.i108
  %i.ce = and i64 %.val1.i.i, -8
  br label %._crit_edge.i115

._crit_edge.i115:                                 ; preds = %._crit_edge.i115.loopexit, %bb.v
  %.sroa.32.4 = phi i64 [ %i.bc, %bb.v ], [ %i.dk, %._crit_edge.i115.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.ba, %bb.v ], [ %i.di, %._crit_edge.i115.loopexit ] ; 6 uses
  %.sroa.12143.4 = phi i64 [ %i.bb, %bb.v ], [ %i.dl, %._crit_edge.i115.loopexit ] ; 4 uses
  %.sroa.0138.4 = phi i64 [ %i.az, %bb.v ], [ %i.dm, %._crit_edge.i115.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i98 = phi i64 [ 0, %bb.v ], [ %i.ce, %._crit_edge.i115.loopexit ] ; 3 uses
  %i.cf = icmp samesign ugt i64 %i.cc, 3
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i115
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i98
  %.sroa.014.0.copyload.i17.i107 = load i32, ptr %i.cg, align 1, !alias.scope !601, !noalias !599
  %i.ch = zext i32 %.sroa.014.0.copyload.i17.i107 to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i115
  %.sroa.03.0.i11.i99 = phi i64 [ 4, %bb.w ], [ 0, %._crit_edge.i115 ] ; 5 uses
  %.sroa.0.0.i12.i100 = phi i64 [ %i.ch, %bb.w ], [ 0, %._crit_edge.i115 ] ; 2 uses
  %i.ci = or disjoint i64 %.sroa.03.0.i11.i99, 1
  %i.cj = icmp samesign ult i64 %i.ci, %i.cc
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i98
  %i.cl = getelementptr i8, ptr %i.ck, i64 %.sroa.03.0.i11.i99
  %.sroa.015.0.copyload.i16.i106 = load i16, ptr %i.cl, align 1, !alias.scope !601, !noalias !599
  %i.cm = zext i16 %.sroa.015.0.copyload.i16.i106 to i64
  %i.cn = shl nuw nsw i64 %.sroa.03.0.i11.i99, 3
  %i.co = shl nuw nsw i64 %i.cm, %i.cn
  %i.cp = or i64 %i.co, %.sroa.0.0.i12.i100
  %i.cq = or disjoint i64 %.sroa.03.0.i11.i99, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.03.1.i13.i101 = phi i64 [ %i.cq, %bb.y ], [ %.sroa.03.0.i11.i99, %bb.x ] ; 3 uses
  %.sroa.0.1.i14.i102 = phi i64 [ %i.cp, %bb.y ], [ %.sroa.0.0.i12.i100, %bb.x ] ; 2 uses
  %i.cr = icmp samesign ult i64 %.sroa.03.1.i13.i101, %i.cc
  br i1 %i.cr, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117

.lr.ph.i108:                                      ; preds = %bb.v, %.lr.ph.i108
  %i.cs = phi i64 [ %i.dl, %.lr.ph.i108 ], [ %i.bb, %bb.v ]
  %i.ct = phi i64 [ %i.di, %.lr.ph.i108 ], [ %i.ba, %bb.v ] ; 3 uses
  %i.cu = phi i64 [ %i.dk, %.lr.ph.i108 ], [ %i.bc, %bb.v ]
  %.sroa.0.119.i113 = phi i64 [ %i.dn, %.lr.ph.i108 ], [ 0, %bb.v ] ; 2 uses
  %i.cv = phi i64 [ %i.dm, %.lr.ph.i108 ], [ %i.az, %bb.v ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.119.i113
  %.sroa.07.0.copyload.i114 = load i64, ptr %i.cw, align 1, !alias.scope !602, !noalias !599 ; 2 uses
  %i.cx = xor i64 %.sroa.07.0.copyload.i114, %i.cu ; 3 uses
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
  %i.dm = xor i64 %i.dg, %.sroa.07.0.copyload.i114 ; 2 uses
  %i.dn = add nuw i64 %.sroa.0.119.i113, 8        ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.cd
  br i1 %i.do, label %.lr.ph.i108, label %._crit_edge.i115.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117: ; preds = %bb.z
  %i.dp = icmp eq i64 %i.cc, 0
  br i1 %i.dp, label %bb.aa, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117
  %i.dq = shl nuw nsw i64 %i.cc, 3
  %i.dr = shl nuw nsw i64 255, %i.dq
  %i.ds = or i64 %i.dr, %.sroa.0.1.i14.i102
  br label %bb.aa

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.z
  %i.dt = add i64 %.sroa.03.1.i13.i101, %.sroa.0.1.lcssa.i98 ; 2 uses
  %i.du = icmp ult i64 %i.dt, %.val1.i.i
  tail call void @llvm.assume(i1 %i.du), !noalias !599
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !601, !noalias !599, !noundef !48
  %i.dx = zext i8 %i.dw to i64
  %i.dy = shl nuw nsw i64 %.sroa.03.1.i13.i101, 3
  %i.dz = shl nuw nsw i64 %i.dx, %i.dy
  %i.ea = shl nuw nsw i64 %i.cc, 3
  %i.eb = shl nuw i64 255, %i.ea
  %i.ec = or i64 %i.dz, %i.eb
  %i.ed = or i64 %i.ec, %.sroa.0.1.i14.i102       ; 3 uses
  %.not190 = icmp eq i64 %i.cc, 7
  br i1 %.not190, label %.thread, label %bb.aa

.thread:                                          ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i
  %i.ee = xor i64 %i.ed, %.sroa.32.4              ; 3 uses
  %i.ef = add i64 %.sroa.0138.4, %.sroa.22.4      ; 3 uses
  %i.eg = add i64 %i.ee, %.sroa.12143.4           ; 2 uses
  %i.eh = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.ei = xor i64 %i.ef, %i.eh                    ; 3 uses
  %i.ej = tail call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 16)
  %i.ek = xor i64 %i.eg, %i.ej                    ; 3 uses
  %i.el = tail call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 32)
  %i.em = add i64 %i.eg, %i.ei                    ; 3 uses
  %i.en = add i64 %i.ek, %i.el                    ; 2 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 17)
  %i.ep = xor i64 %i.em, %i.eo
  %i.eq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 21)
  %i.er = xor i64 %i.eq, %i.en
  %i.es = tail call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 32)
  %i.et = xor i64 %i.en, %i.ed
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread, %.thread
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.er, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.ep, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ] ; 3 uses
  %.sroa.12143.2 = phi i64 [ %.sroa.12143.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.12143.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.es, %.thread ], [ %.sroa.12143.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %.sroa.0138.2 = phi i64 [ %.sroa.0138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.0138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.et, %.thread ], [ %.sroa.0138.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %.sroa.50.0 = phi i64 [ %i.ed, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %i.ds, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs63DIHKhvmTb_10lance_core.exit117 ]
  %i.eu = shl i64 %.val1.i.i, 56
  %i.ev = add i64 %i.eu, 72057594037927936
  %i.ew = or i64 %.sroa.50.0, %i.ev               ; 2 uses
  %i.ex = xor i64 %i.ew, %.sroa.32.2              ; 3 uses
  %i.ey = tail call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 16)
  %i.ez = add i64 %i.ex, %.sroa.12143.2           ; 2 uses
  %i.fa = xor i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = add i64 %.sroa.0138.2, %.sroa.22.2      ; 3 uses
  %i.fc = tail call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 32)
  %i.fd = add i64 %i.fa, %i.fc                    ; 2 uses
  %i.fe = xor i64 %i.fd, %i.ew
  %i.ff = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.fg = xor i64 %i.fb, %i.ff                    ; 3 uses
  %i.fh = add i64 %i.ez, %i.fg                    ; 3 uses
  %i.fi = tail call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 17)
  %i.fj = xor i64 %i.fh, %i.fi                    ; 3 uses
  %i.fk = add i64 %i.fe, %i.fj                    ; 3 uses
  %4 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 13)
  %i.fl = xor i64 %i.fk, %4                       ; 3 uses
  %i.fm = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 21)
  %i.fn = xor i64 %i.fm, %i.fd                    ; 3 uses
  %i.fo = tail call noundef i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 32)
  %i.fp = xor i64 %i.fo, 255
  %i.fq = add i64 %i.fn, %i.fp                    ; 2 uses
  %5 = add i64 %i.fl, %i.fq                       ; 3 uses
  %6 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 17)
  %i.fr = xor i64 %5, %6                          ; 3 uses
  %i.fs = tail call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 13)
  %i.ft = tail call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 16)
  %i.fu = xor i64 %i.ft, %i.fq                    ; 3 uses
  %7 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 32)
  %8 = add i64 %i.fu, %7                          ; 2 uses
  %i.fv = add i64 %i.fr, %8                       ; 3 uses
  %i.fw = xor i64 %i.fs, %i.fv                    ; 3 uses
  %i.fx = tail call noundef i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fw, i64 17)
  %i.fy = tail call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 21)
  %i.fz = xor i64 %i.fy, %8                       ; 3 uses
  %9 = tail call noundef i64 @llvm.fshl.i64(i64 %5, i64 %5, i64 32)
  %10 = add i64 %i.fz, %9                         ; 2 uses
  %i.ga = add i64 %i.fw, %10                      ; 3 uses
  %i.gb = xor i64 %i.fx, %i.ga                    ; 3 uses
  %i.gc = tail call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 13)
  %i.gd = tail call noundef i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.fz, i64 16)
  %i.ge = xor i64 %i.gd, %10                      ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 32)
  %12 = add i64 %i.ge, %11                        ; 2 uses
  %i.gf = add i64 %i.gb, %12
  %i.gg = xor i64 %i.gc, %i.gf                    ; 3 uses
  %i.gh = tail call noundef i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 21)
  %13 = xor i64 %i.gh, %12                        ; 3 uses
  %14 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 32)
  %15 = add i64 %13, %14                          ; 2 uses
  %i.gi = add i64 %i.gg, %15                      ; 3 uses
  %16 = tail call noundef i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 32)
  %i.gj = tail call noundef i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 16)
  %i.gk = xor i64 %i.gj, %15                      ; 2 uses
  %17 = tail call noundef i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 21)
  %i.gl = tail call noundef i64 @llvm.fshl.i64(i64 %i.gg, i64 %i.gg, i64 17)
  %18 = xor i64 %17, %i.gl
  %i.gm = xor i64 %18, %16
  %i.gn = xor i64 %i.gm, %i.gi
  %i.go = load i64, ptr %i.bd, align 8, !noundef !48 ; 2 uses
  %i.gp = add i64 %i.go, -1                       ; 5 uses
  %i.gq = and i64 %i.gp, %i.gn                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.go, 0
  br i1 %.not.i64, label %.invoke, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gr = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gq ; 2 uses
  %19 = and i64 %i.bi, 2
  %i.gt = icmp eq i64 %19, 0
  br i1 %i.gt, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i: ; preds = %bb.ab, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ true, %bb.ab ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ %i.gs, %bb.ab ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge ], [ %i.gq, %bb.ab ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.gp
  br i1 %.not.i.us.i, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.gu = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.gv = add i64 %i.gu, %i.gq
  %i.gw = and i64 %i.gv, %i.gp                    ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gw
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.ad, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.gu, %bb.ad ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.gx, %bb.ad ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.gw, %bb.ad ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i ] ; 2 uses
  %i.gy = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !603 ; 5 uses
  %i.gz = and i64 %i.gy, 1
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %._crit_edge.i.us.i
  %i.hb = and i64 %i.gy, -8                       ; 2 uses
  %i.hc = inttoptr i64 %i.hb to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.hb, 0
  br i1 %.not20.us.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hd = icmp eq i64 %i.gy, %i.bm
  br i1 %i.hd, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = getelementptr i8, ptr %i.hc, i64 16
  %.val24.us.i = load i64, ptr %i.he, align 8, !noundef !48 ; 2 uses
  %.val26.us.i = load i64, ptr %i.cb, align 8, !noundef !48
  %i.hf = icmp eq i64 %.val24.us.i, %.val26.us.i
  br i1 %i.hf, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i: ; preds = %bb.ag
  %.val25.us.i = load ptr, ptr %i.ca, align 8, !nonnull !48, !noundef !48
  %i.hg = getelementptr i8, ptr %i.hc, i64 8
  %.val23.us.i = load ptr, ptr %i.hg, align 8, !nonnull !48, !noundef !48
  %bcmp.i.i.i.i.us.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.us.i, ptr nonnull readonly %.val25.us.i, i64 %.val24.us.i)
  %.not53.us.i = icmp eq i32 %bcmp.i.i.i.i.us.i, 0
  br i1 %.not53.us.i, label %bb.ah, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

bb.ah:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i
  %i.hh = and i64 %i.gy, 4
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.hj = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.gy, i64 %i.bm acq_rel monotonic, align 8, !noalias !604
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.hj, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i.backedge: ; preds = %bb.ai, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i, %bb.ag
  %.sroa.20.0.us.i.be = phi i1 [ false, %bb.ag ], [ true, %bb.ai ], [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.us.i

.invoke:                                          ; preds = %bb.aa, %bb.r
  %i.hk = phi i64 [ %.sroa.412.1, %bb.r ], [ %i.gq, %bb.aa ]
  %i.hl = phi i64 [ %i.bo, %bb.r ], [ 0, %bb.aa ]
  %i.hm = phi ptr [ @57, %bb.r ], [ @41, %bb.aa ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hk, i64 noundef %i.hl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hm) #68
          to label %.cont unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i: ; preds = %bb.ab, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ true, %bb.ab ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ 0, %bb.ab ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ %i.gs, %bb.ab ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge ], [ %i.gq, %bb.ab ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.gp
  br i1 %.not.i.i, label %bb.ak, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.ak, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hq, %bb.ak ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.ht, %bb.ak ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.hs, %bb.ak ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i ] ; 2 uses
  %i.hn = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !603 ; 5 uses
  %i.ho = and i64 %i.hn, 1
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hq = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.hr = add i64 %i.hq, %i.gq
  %i.hs = and i64 %i.hr, %i.gp                    ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hs
  br label %._crit_edge.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.hu = and i64 %i.hn, -8                       ; 2 uses
  %i.hv = inttoptr i64 %i.hu to ptr               ; 2 uses
  %.not20.i = icmp eq i64 %i.hu, 0
  %i.hw = icmp eq i64 %i.hn, %i.bm
  %or.cond.i = or i1 %i.hw, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr i8, ptr %i.hv, i64 16
  %.val24.i = load i64, ptr %i.hx, align 8, !noundef !48 ; 2 uses
  %.val26.i = load i64, ptr %i.cb, align 8, !noundef !48
  %i.hy = icmp eq i64 %.val24.i, %.val26.i
  br i1 %i.hy, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.am
  %.val25.i = load ptr, ptr %i.ca, align 8, !nonnull !48, !noundef !48
  %i.hz = getelementptr i8, ptr %i.hv, i64 8
  %.val23.i = load ptr, ptr %i.hz, align 8, !nonnull !48, !noundef !48
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val23.i, ptr nonnull readonly %.val25.i, i64 %.val24.i)
  %.not53.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not53.i, label %bb.an, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

bb.an:                                            ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i
  %i.ia = and i64 %i.hn, 4
  %.not64.i = icmp eq i64 %i.ia, 0
  br i1 %.not64.i, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ib = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.hn, i64 %i.bm acq_rel monotonic, align 8, !noalias !604
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.ib, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i.backedge: ; preds = %bb.ao, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i, %bb.am
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCs63DIHKhvmTb_10lance_core.exit.i ], [ true, %bb.ao ], [ false, %bb.am ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit.i

bb.ap:                                            ; preds = %.loopexit
  %i.ic = icmp eq i64 %i.bl, 0
  %20 = and i64 %i.bi, 2
  %i.id = icmp eq i64 %20, 0
  %or.cond41 = or i1 %i.ic, %i.id
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.bf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i, label %bb.as

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i: ; preds = %bb.aq
  fence acquire
  %i.ie = inttoptr i64 %i.bl to ptr               ; 3 uses
  %.val.i.i.i.i.i.i.i68 = load i64, ptr %i.ie, align 8, !alias.scope !605, !noalias !606 ; 2 uses
  %i.if = icmp eq i64 %.val.i.i.i.i.i.i.i68, 0
  br i1 %i.if, label %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i
  %i.ig = getelementptr i8, ptr %i.ie, i64 8
  %.val1.i.i.i.i.i.i.i69 = load ptr, ptr %i.ig, align 8, !noalias !606, !nonnull !48, !noundef !48
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i69, i64 noundef %.val.i.i.i.i.i.i.i68, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !607
  br label %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i

_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i: ; preds = %bb.ar, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB1z_4moka14MokaCacheEntryEEB1B_.exit.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ie, i64 noundef 72, i64 noundef 8) #65, !noalias !606
  br label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !606
  store ptr @_RINvNvMs_NtCskfeRsqx2rfd_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB25_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB4k_4moka14MokaCacheEntryEE0uE0EB4m_, ptr %i.a, align 8, !alias.scope !608, !noalias !606
  store i64 %i.bi, ptr %i.bg, align 8, !alias.scope !608, !noalias !606
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128 %i.be, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc72 unwind label %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !606
  br label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit

_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2m_4moka14MokaCacheEntryEEB2o_.exit: ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63, %.noexc72, %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i, %bb.ap
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ap ], [ %.sroa.6.2, %.noexc72 ], [ %.sroa.6.2, %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ap ], [ %.sroa.412.2, %.noexc72 ], [ %.sroa.412.2, %_RNCINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB2o_4moka14MokaCacheEntryEE0B2q_.exit.i.i ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB36_4moka14MokaCacheEntryEEE21compare_exchange_weakINtB6_6SharedBX_EEB38_.exit63 ]
  %i.ih = icmp eq ptr %i.bh, %i.aw
  br i1 %i.ih, label %._crit_edge, label %bb.n

bb.at:                                            ; preds = %._crit_edge
  %i.ii = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ii, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ij = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ik = and i64 %i.ij, 9223372036854775807
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc73, !prof !53

.noexc73:                                         ; preds = %bb.au
  %i.im = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.im, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.av, %.noexc73, %bb.au, %bb.at
  %i.in = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.io = icmp eq i32 %i.in, 2
  br i1 %i.io, label %bb.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.aw:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.aw, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.aw ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78: ; preds = %bb.bg, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, %bb.ba, %bb.bo
  %.pn.pn = phi { ptr, i32 } [ %i.jz, %bb.bo ], [ %eh.lpad-body173, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75 ], [ %i.jg, %bb.bg ], [ %eh.lpad-body173, %bb.ba ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body173 = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit.split-lp379, %.body.thread175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ip = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ip, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, label %bb.ax

bb.ax:                                            ; preds = %.body.thread
  %i.iq = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ir = and i64 %i.iq, 9223372036854775807
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, label %bb.ay, !prof !53

bb.ay:                                            ; preds = %bb.ax
  %i.it = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc76 unwind label %bb.bb

.noexc76:                                         ; preds = %bb.ay
  br i1 %i.it, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75, label %bb.az

bb.az:                                            ; preds = %.noexc76
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75: ; preds = %bb.az, %.noexc76, %bb.ax, %.body.thread
  %i.iu = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.iv = icmp eq i32 %i.iu, 2
  br i1 %i.iv, label %bb.ba, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78, !prof !51

bb.ba:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i75
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %bb.bg, %bb.bo
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.bc:                                            ; preds = %bb.a
  %i.ix = load ptr, ptr %i.e, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 5 uses
  %i.iz = cmpxchg ptr %i.iy, i32 0, i32 1 acquire monotonic, align 4, !noalias !609
  %i.ja = extractvalue { i32, i1 } %i.iz, 1
  br i1 %i.ja, label %.noexc81, label %bb.bd, !prof !53

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.iy)
          to label %.noexc81 unwind label %bb.bo

.noexc81:                                         ; preds = %bb.bd, %bb.bc
  %i.jb = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !609
  %i.jc = and i64 %i.jb, 9223372036854775807
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %.thread307, label %bb.be, !prof !53

bb.be:                                            ; preds = %.noexc81
  %i.je = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bh unwind label %bb.bo     ; 2 uses

bb.bf:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.jf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.d, align 8
  %.val53 = load i8, ptr %i.jf, align 8, !range !57, !noundef !48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val52, i8 %.val53) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit78 unwind label %bb.bb

bb.bh:                                            ; preds = %bb.be
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 20 ; 3 uses
  %i.ji = load atomic i8, ptr %i.jh monotonic, align 1, !noalias !609
  %.not188 = icmp eq i8 %i.ji, 0
  br i1 %.not188, label %bb.bi, label %bb.bl

.thread307:                                       ; preds = %.noexc81
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 20 ; 3 uses
  %i.jk = load atomic i8, ptr %i.jj monotonic, align 1, !noalias !609
  %.not188309 = icmp eq i8 %i.jk, 0
  br i1 %.not188309, label %.thread312, label %.thread314

bb.bi:                                            ; preds = %bb.bh
  br i1 %i.je, label %.thread312, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread312:                                       ; preds = %.thread307, %bb.bi
  %i.jl = phi ptr [ %i.jh, %bb.bi ], [ %i.jj, %.thread307 ]
  %i.jm = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !610
  %i.jn = and i64 %i.jm, 9223372036854775807
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bj, !prof !53

bb.bj:                                            ; preds = %.thread312
  %i.jp = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc83 unwind label %bb.bo

.noexc83:                                         ; preds = %bb.bj
  br i1 %i.jp, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc83
  store atomic i8 1, ptr %i.jl monotonic, align 1, !noalias !610
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bk, %.noexc83, %.thread312, %bb.bi
  %i.jq = atomicrmw xchg ptr %i.iy, i32 0 release, align 4, !noalias !610
  %i.jr = icmp eq i32 %i.jq, 2
  br i1 %i.jr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.bl:                                            ; preds = %bb.bh
  br i1 %i.je, label %.thread314, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread314:                                       ; preds = %.thread307, %bb.bl
  %i.js = phi ptr [ %i.jh, %bb.bl ], [ %i.jj, %.thread307 ]
  %i.jt = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !610
  %i.ju = and i64 %i.jt, 9223372036854775807
  %i.jv = icmp eq i64 %i.ju, 0
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtB1G_4moka14MokaCacheEntryEEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEB1I_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 3 uses
  %i.j = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !644
  %i.k = and i64 %i.j, 9223372036854775807
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !644
  %i.n = xor i1 %i.m, true
  %i.o = zext i1 %i.n to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = load atomic i8, ptr %i.i monotonic, align 1, !noalias !644
  %.not.i.not = icmp eq i8 %i.p, 0
  br i1 %.not.i.not, label %bb.d, label %bb.ay

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8
  %i.s = and i64 %i.r, -8                         ; 2 uses
  %.not32.not.i = icmp eq i64 %i.s, 0
  br i1 %.not32.not.i, label %.lr.ph.i, label %.loopexit255.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !48
  %i.v = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.u)
          to label %bb.e unwind label %.loopexit.split-lp.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr %i.w, align 8, !noundef !48
  %i.y = add i64 %i.x, 1
  invoke fastcc void @_RNvMs_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtB1E_4moka14MokaCacheEntryEEEE11with_lengthB1G_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.y, i64 noundef %i.v)
          to label %.noexc unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !645
  %i.z = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !645 ; 7 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %bb.f, !prof !64

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.ab = ptrtoint ptr %i.z to i64                ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !646
  %.sroa.18.0.in.i.i.peel.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.sroa.18.0.in.i.i.peel.i, label %.loopexit255.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load atomic i64, ptr %i.q acquire, align 8
  %i.ae = and i64 %i.ad, -8                       ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %.peel.next.i, label %._crit_edge.thread.i

bb.h:                                             ; preds = %bb.l
  %i.af = load atomic i64, ptr %i.q acquire, align 8
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ag, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !617

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.ae, %bb.g ], [ %i.ag, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !647, !noundef !48 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !647, !nonnull !48, !noundef !48
  %i.aj = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.aj, i64 noundef 8) #65, !noalias !647
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !650, !nonnull !48, !noundef !48
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !650
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtBG_4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB28_6future17value_initializer11WaiterValueNtNtB39_4moka14MokaCacheEntryEEEEEEEB3b_.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 48, i64 noundef 8) #65
  br label %.loopexit255.a

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.ao = load i64, ptr %i.t, align 8, !noundef !48
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
  %i.ar = cmpxchg weak ptr %i.q, i64 0, i64 %i.ab acq_rel monotonic, align 8, !noalias !646
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit255.a, label %bb.h

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

.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %.invoke, %._crit_edge, %bb.q, %bb.e
  %lpad.loopexit.split-lp413 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit255.a:                                   ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB4_3any6TypeIdEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB1x_6future17value_initializer11WaiterValueNtNtB2V_4moka14MokaCacheEntryEEEEEEB2X_.exit.i.i ], [ %i.ab, %bb.l ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.as = load ptr, ptr %0, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noundef !48 ; 2 uses
  %.idx = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %._crit_edge, label %.lr.ph293

.lr.ph293:                                        ; preds = %.loopexit255.a
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
  %i.bu = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bv = xor i64 %i.bs, %i.bu                    ; 3 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph293, %.loopexit254
  %.sroa.02.0292 = phi ptr [ %i.as, %.lr.ph293 ], [ %i.bx, %.loopexit254 ] ; 3 uses
  %.sroa.412.0291 = phi i64 [ undef, %.lr.ph293 ], [ %.sroa.412.5, %.loopexit254 ]
  %.sroa.6.0290 = phi i64 [ undef, %.lr.ph293 ], [ %.sroa.6.5, %.loopexit254 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.0292, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63

._crit_edge:                                      ; preds = %.loopexit254, %.loopexit255.a
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.am unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63: ; preds = %.loopexit, %bb.n
  %.sroa.6.1 = phi i64 [ %.sroa.6.0290, %bb.n ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0291, %bb.n ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.n ], [ %.not37, %.loopexit ]
  %i.by = load atomic i64, ptr %.sroa.02.0292 acquire, align 8 ; 7 uses
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %.loopexit254

bb.o:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63
  %i.cb = and i64 %i.by, -8                       ; 3 uses
  %i.cc = or i64 %i.by, 4                         ; 7 uses
  %4 = icmp eq i64 %i.cb, 0                       ; 2 uses
  br i1 %.sroa.010.0, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %4, label %bb.q, label %bb.r, !prof !51

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #68
          to label %bb.s unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.cd = load i64, ptr %i.br, align 8, !noundef !48 ; 2 uses
  %i.ce = icmp ult i64 %.sroa.412.1, %i.cd
  br i1 %i.ce, label %bb.t, label %.invoke

bb.s:                                             ; preds = %bb.ay, %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.412.1 ; 2 uses
  %i.ch = and i64 %.sroa.6.1, 4
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit
  %.sroa.04.0288 = phi i64 [ %i.ck, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit ], [ %.sroa.6.1, %bb.t ]
  %i.cj = cmpxchg weak ptr %i.cg, i64 %.sroa.04.0288, i64 %i.cc acq_rel monotonic, align 8, !noalias !651
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.cj, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit: ; preds = %.lr.ph
  %i.ck = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.cl = and i64 %i.ck, 4
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ae, %bb.ag, %._crit_edge.i.i, %bb.ai, %bb.aj, %bb.ac, %bb.x, %bb.aa, %._crit_edge.i.us.i, %bb.ad, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit, %.lr.ph, %bb.t, %bb.u
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %bb.ac ], [ %.sroa.6.1, %bb.u ], [ %.sroa.6.1, %bb.t ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.cc, %bb.ad ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.aa ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.ag ], [ %.sroa.6.1, %bb.ae ], [ %.sroa.6.1, %bb.ai ], [ %i.cc, %bb.aj ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %bb.ac ], [ %.sroa.412.1, %bb.u ], [ %.sroa.412.1, %bb.t ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.ad ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.aa ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.ag ], [ %.sroa.412.1, %bb.ae ], [ %.sroa.412.1, %bb.ai ], [ %.sroa.8.1.i, %bb.aj ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %bb.ac ], [ false, %bb.u ], [ true, %bb.t ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit ], [ true, %.lr.ph ], [ true, %bb.ad ], [ false, %._crit_edge.i.us.i ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ai ], [ true, %bb.aj ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cn = cmpxchg weak ptr %.sroa.02.0292, i64 %i.by, i64 1 acq_rel monotonic, align 8, !noalias !652
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cn, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.ak, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63

bb.u:                                             ; preds = %bb.o
  br i1 %4, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %5 = inttoptr i64 %i.cb to ptr                  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !653, !noalias !654, !nonnull !48, !noundef !48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %.sroa.07.0.copyload.i111.1 = load i64, ptr %i.co, align 1, !alias.scope !655, !noalias !653 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %.sroa.07.0.copyload.i111 = load i64, ptr %i.cp, align 1, !alias.scope !655, !noalias !653 ; 2 uses
  %i.cq = xor i64 %.sroa.07.0.copyload.i111, %i.bo ; 3 uses
  %i.cr = add i64 %i.cq, %i.bp                    ; 2 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 16)
  %i.ct = xor i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 21)
  %i.cv = add i64 %i.ct, %i.bt                    ; 2 uses
  %i.cw = xor i64 %i.cu, %i.cv
  %i.cx = xor i64 %.sroa.07.0.copyload.i111.1, %i.cw ; 3 uses
  %i.cy = add i64 %i.cr, %i.bv                    ; 3 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 32)
  %i.da = add i64 %i.cx, %i.cz                    ; 2 uses
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 16)
  %i.dc = xor i64 %i.da, %i.db                    ; 3 uses
  %i.dd = xor i64 %i.cv, %.sroa.07.0.copyload.i111
  %i.de = xor i64 %i.cy, %i.bw                    ; 3 uses
  %i.df = add i64 %i.dd, %i.de                    ; 3 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 32)
  %i.dh = add i64 %i.dc, %i.dg                    ; 2 uses
  %i.di = xor i64 %i.dh, %.sroa.07.0.copyload.i111.1
  %i.dj = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 13)
  %i.dk = xor i64 %i.df, %i.dj                    ; 3 uses
  %i.dl = add i64 %i.da, %i.dk                    ; 3 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32)
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 21)
  %i.do = xor i64 %i.dn, %i.dh
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 17)
  %i.dq = xor i64 %i.dl, %i.dp                    ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val1.i.i = load i64, ptr %i.dr, align 8, !alias.scope !653, !noalias !654 ; 2 uses
  %i.ds = xor i64 %i.do, %.val1.i.i               ; 3 uses
  %i.dt = add i64 %i.ds, %i.dm                    ; 2 uses
  %i.du = tail call noundef i64 @llvm.fshl.i64(i64 %i.ds, i64 %i.ds, i64 16)
  %i.dv = xor i64 %i.dt, %i.du                    ; 3 uses
  %6 = add i64 %i.di, %i.dq                       ; 3 uses
  %i.dw = tail call noundef i64 @llvm.fshl.i64(i64 %6, i64 %6, i64 32)
  %i.dx = add i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = tail call noundef i64 @llvm.fshl.i64(i64 %i.dv, i64 %i.dv, i64 21)
  %i.dz = xor i64 %i.dx, %i.dy
  %i.ea = xor i64 %i.dz, 2305843009213693952      ; 3 uses
  %i.eb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 16)
  %i.ec = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 13)
  %i.ed = xor i64 %6, %i.ec                       ; 3 uses
  %i.ee = add i64 %i.dt, %i.ed                    ; 3 uses
  %i.ef = tail call noundef i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 32)
  %i.eg = add i64 %i.ea, %i.ef                    ; 2 uses
  %i.eh = xor i64 %i.eb, %i.eg                    ; 3 uses
  %7 = xor i64 %i.dx, %.val1.i.i
  %i.ei = tail call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 17)
  %i.ej = xor i64 %i.ee, %i.ei                    ; 3 uses
  %i.ek = add i64 %7, %i.ej                       ; 3 uses
  %i.el = tail call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 32)
  %i.em = add i64 %i.eh, %i.el                    ; 2 uses
  %i.en = xor i64 %i.em, 2305843009213693952
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 13)
  %i.ep = xor i64 %i.ek, %i.eo                    ; 3 uses
  %i.eq = add i64 %i.eg, %i.ep                    ; 3 uses
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 17)
  %i.es = xor i64 %i.eq, %i.er                    ; 3 uses
  %i.et = add i64 %i.en, %i.es                    ; 3 uses
  %8 = tail call noundef i64 @llvm.fshl.i64(i64 %i.es, i64 %i.es, i64 13)
  %i.eu = xor i64 %i.et, %8                       ; 3 uses
  %i.ev = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 21)
  %i.ew = xor i64 %i.ev, %i.em                    ; 3 uses
  %i.ex = tail call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 32)
  %i.ey = xor i64 %i.ex, 255
  %i.ez = add i64 %i.ew, %i.ey                    ; 2 uses
  %9 = add i64 %i.eu, %i.ez                       ; 3 uses
  %10 = tail call noundef i64 @llvm.fshl.i64(i64 %i.eu, i64 %i.eu, i64 17)
  %i.fa = xor i64 %9, %10                         ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 13)
  %i.fc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 16)
  %i.fd = xor i64 %i.fc, %i.ez                    ; 3 uses
  %11 = tail call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 32)
  %12 = add i64 %i.fd, %11                        ; 2 uses
  %i.fe = add i64 %i.fa, %12                      ; 3 uses
  %i.ff = xor i64 %i.fb, %i.fe                    ; 3 uses
  %i.fg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 17)
  %i.fh = tail call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 21)
  %i.fi = xor i64 %i.fh, %12                      ; 3 uses
  %13 = tail call noundef i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 32)
  %14 = add i64 %i.fi, %13                        ; 2 uses
  %i.fj = add i64 %i.ff, %14                      ; 3 uses
  %i.fk = xor i64 %i.fg, %i.fj                    ; 3 uses
  %i.fl = tail call noundef i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 13)
  %i.fm = tail call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 16)
  %i.fn = xor i64 %i.fm, %14                      ; 3 uses
  %15 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 32)
  %16 = add i64 %i.fn, %15                        ; 2 uses
  %i.fo = add i64 %i.fk, %16
  %i.fp = xor i64 %i.fl, %i.fo                    ; 3 uses
  %i.fq = tail call noundef i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 21)
  %17 = xor i64 %i.fq, %16                        ; 3 uses
  %18 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 32)
  %19 = add i64 %17, %18                          ; 2 uses
  %i.fr = add i64 %i.fp, %19                      ; 3 uses
  %20 = tail call noundef i64 @llvm.fshl.i64(i64 %i.fr, i64 %i.fr, i64 32)
  %i.fs = tail call noundef i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 16)
  %i.ft = xor i64 %i.fs, %19                      ; 2 uses
  %21 = tail call noundef i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.ft, i64 21)
  %i.fu = tail call noundef i64 @llvm.fshl.i64(i64 %i.fp, i64 %i.fp, i64 17)
  %22 = xor i64 %21, %i.fu
  %i.fv = xor i64 %22, %20
  %i.fw = xor i64 %i.fv, %i.fr
  %i.fx = load i64, ptr %i.br, align 8, !noundef !48 ; 2 uses
  %i.fy = add i64 %i.fx, -1                       ; 5 uses
  %i.fz = and i64 %i.fy, %i.fw                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.fx, 0
  br i1 %.not.i64, label %.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ga = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fz ; 2 uses
  %i.gc = getelementptr i8, ptr %5, i64 8         ; 2 uses
  %23 = and i64 %i.by, 2
  %i.gd = icmp eq i64 %23, 0
  br i1 %i.gd, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ %i.gb, %bb.w ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge ], [ %i.fz, %bb.w ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.x

bb.x:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.fy
  br i1 %.not.i.us.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ge = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.gf = add i64 %i.ge, %i.fz
  %i.gg = and i64 %i.gf, %i.fy                    ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gg
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.y, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.ge, %bb.y ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.gh, %bb.y ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.gg, %bb.y ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i ] ; 2 uses
  %i.gi = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !656 ; 5 uses
  %i.gj = and i64 %i.gi, 1
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge.i.us.i
  %i.gl = and i64 %i.gi, -8                       ; 2 uses
  %i.gm = inttoptr i64 %i.gl to ptr               ; 2 uses
  %.not20.us.i = icmp eq i64 %i.gl, 0
  br i1 %.not20.us.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = icmp eq i64 %i.gi, %i.cc
  br i1 %i.gn, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val23.us.i = load ptr, ptr %i.gm, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gm, i64 8
  %.val24.us.i = load i128, ptr %i.go, align 8    ; 2 uses
  %.val25.us.i = load ptr, ptr %5, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %.val26.us.i = load i128, ptr %i.gc, align 8    ; 2 uses
  %i.gp = icmp eq ptr %.val23.us.i, %.val25.us.i
  br i1 %i.gp, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i: ; preds = %bb.ab
  %i.gq = getelementptr inbounds nuw i8, ptr %.val23.us.i, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %.val25.us.i, i64 16
  %.val.i.i.i.us.i = load i128, ptr %i.gq, align 1, !noundef !48
  %.val2.i.i.i.us.i = load i128, ptr %i.gr, align 1, !noundef !48
  %.not.i27.us.i = icmp ne i128 %.val.i.i.i.us.i, %.val2.i.i.i.us.i
  %i.gs = icmp ne i128 %.val24.us.i, %.val26.us.i
  %or.cond54.us.i = select i1 %.not.i27.us.i, i1 true, i1 %i.gs
  br i1 %or.cond54.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge, label %bb.ac

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i: ; preds = %bb.ab
  %.old.not.us.i = icmp eq i128 %.val24.us.i, %.val26.us.i
  br i1 %.old.not.us.i, label %bb.ac, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge

bb.ac:                                            ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i
  %i.gt = and i64 %i.gi, 4
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %i.gv = cmpxchg weak ptr %.sroa.11.1.us.i, i64 %i.gi, i64 %i.cc acq_rel monotonic, align 8, !noalias !657
  %.sroa.18.0.in.i.i.us.i = extractvalue { i64, i1 } %i.gv, 1
  br i1 %.sroa.18.0.in.i.i.us.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i.backedge: ; preds = %bb.ad, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i
  %.sroa.20.0.us.i.be = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.us.i ], [ true, %bb.ad ], [ false, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.us.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.us.i

.invoke:                                          ; preds = %bb.v, %bb.r
  %i.gw = phi i64 [ %.sroa.412.1, %bb.r ], [ %i.fz, %bb.v ]
  %i.gx = phi i64 [ %i.cd, %bb.r ], [ 0, %bb.v ]
  %i.gy = phi ptr [ @57, %bb.r ], [ @41, %bb.v ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.gw, i64 noundef %i.gx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gy) #68
          to label %.cont unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i: ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge
  %.sroa.20.0.i = phi i1 [ %.sroa.20.0.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ true, %bb.w ]
  %.sroa.17.0.i = phi i64 [ %.sroa.17.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ 0, %bb.w ] ; 3 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ %i.gb, %bb.w ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.1.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge ], [ %i.fz, %bb.w ]
  br i1 %.sroa.20.0.i, label %._crit_edge.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.17.0.i, %i.fy
  br i1 %.not.i.i, label %bb.af, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.af, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i
  %.sroa.17.1.i = phi i64 [ %i.hc, %bb.af ], [ %.sroa.17.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i ]
  %.sroa.11.1.i = phi ptr [ %i.hf, %bb.af ], [ %.sroa.11.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i ] ; 3 uses
  %.sroa.8.1.i = phi i64 [ %i.he, %bb.af ], [ %.sroa.8.0.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i ] ; 2 uses
  %i.gz = load atomic i64, ptr %.sroa.11.1.i acquire, align 8, !noalias !656 ; 5 uses
  %i.ha = and i64 %i.gz, 1
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.ag, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.hc = add nuw i64 %.sroa.17.0.i, 1            ; 2 uses
  %i.hd = add i64 %i.hc, %i.fz
  %i.he = and i64 %i.hd, %i.fy                    ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.he
  br label %._crit_edge.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.hg = and i64 %i.gz, -8                       ; 2 uses
  %.not20.i = icmp eq i64 %i.hg, 0
  %i.hh = icmp eq i64 %i.gz, %i.cc
  %or.cond.i = or i1 %i.hh, %.not20.i
  br i1 %or.cond.i, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hi = inttoptr i64 %i.hg to ptr               ; 2 uses
  %.val23.i = load ptr, ptr %i.hi, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 8
  %.val24.i = load i128, ptr %i.hj, align 8       ; 2 uses
  %.val25.i = load ptr, ptr %5, align 8, !nonnull !48, !noundef !48 ; 2 uses
  %.val26.i = load i128, ptr %i.gc, align 8       ; 2 uses
  %i.hk = icmp eq ptr %.val23.i, %.val25.i
  br i1 %i.hk, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i: ; preds = %bb.ah
  %i.hl = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %.val25.i, i64 16
  %.val.i.i.i.i = load i128, ptr %i.hl, align 1, !noundef !48
  %.val2.i.i.i.i = load i128, ptr %i.hm, align 1, !noundef !48
  %.not.i27.i = icmp ne i128 %.val.i.i.i.i, %.val2.i.i.i.i
  %i.hn = icmp ne i128 %.val24.i, %.val26.i
  %or.cond54.i = select i1 %.not.i27.i, i1 true, i1 %i.hn
  br i1 %or.cond54.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge, label %bb.ai

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i: ; preds = %bb.ah
  %.old.not.i = icmp eq i128 %.val24.i, %.val26.i
  br i1 %.old.not.i, label %bb.ai, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge

bb.ai:                                            ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i
  %i.ho = and i64 %i.gz, 4
  %.not65.i = icmp eq i64 %i.ho, 0
  br i1 %.not65.i, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = cmpxchg weak ptr %.sroa.11.1.i, i64 %i.gz, i64 %i.cc acq_rel monotonic, align 8, !noalias !657
  %.sroa.18.0.in.i.i.i65 = extractvalue { i64, i1 } %i.hp, 1
  br i1 %.sroa.18.0.in.i.i.i65, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i.backedge: ; preds = %bb.aj, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neB1b_.exit.i ], [ true, %bb.aj ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neBM_.exit.i.i ]
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit.i

bb.ak:                                            ; preds = %.loopexit
  %i.hq = icmp eq i64 %i.cb, 0
  %24 = and i64 %i.by, 2
  %i.hr = icmp eq i64 %24, 0
  %or.cond41 = or i1 %i.hq, %i.hr
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit254, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtB1F_4moka14MokaCacheEntryEEEEB1H_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.by)
          to label %.loopexit254 unwind label %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit254:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63, %bb.al, %bb.ak
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ak ], [ %.sroa.6.2, %bb.al ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ak ], [ %.sroa.412.2, %bb.al ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyENtNtCscI6d9CVNmLh_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtB2o_4moka14MokaCacheEntryEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB2q_.exit63 ]
  %i.hs = icmp eq ptr %i.bx, %i.av
  br i1 %i.hs, label %._crit_edge, label %bb.n

bb.am:                                            ; preds = %._crit_edge
  %i.ht = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ht, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hu = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.hv = and i64 %i.hu, 9223372036854775807
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !53

.noexc68:                                         ; preds = %bb.an
  %i.hx = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.hx, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.ao, %.noexc68, %bb.an, %bb.am
  %i.hy = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.hz = icmp eq i32 %i.hy, 2
  br i1 %i.hz, label %bb.ap, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.ap:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.ap, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.ap ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73: ; preds = %bb.az, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.at, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %i.jk, %bb.bh ], [ %eh.lpad-body214, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %i.ir, %bb.az ], [ %eh.lpad-body214, %bb.at ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k, %bb.m
  %eh.lpad-body214 = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %lpad.phi.i, %bb.m ], [ %lpad.loopexit.split-lp413, %.body.thread216.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ia = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ia, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.body.thread
  %i.ib = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ic = and i64 %i.ib, 9223372036854775807
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ar, !prof !53

bb.ar:                                            ; preds = %bb.aq
  %i.ie = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.au

.noexc71:                                         ; preds = %bb.ar
  br i1 %i.ie, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.as

bb.as:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.as, %.noexc71, %bb.aq, %.body.thread
  %i.if = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.ig = icmp eq i32 %i.if, 2
  br i1 %i.ig, label %bb.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73, !prof !51

bb.at:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar, %bb.az, %bb.bh
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.av:                                            ; preds = %bb.a
  %i.ii = load ptr, ptr %i.d, align 8, !nonnull !48, !noundef !48 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 5 uses
  %i.ik = cmpxchg ptr %i.ij, i32 0, i32 1 acquire monotonic, align 4, !noalias !658
  %i.il = extractvalue { i32, i1 } %i.ik, 1
  br i1 %i.il, label %.noexc76, label %bb.aw, !prof !53

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ij)
          to label %.noexc76 unwind label %bb.bh

.noexc76:                                         ; preds = %bb.aw, %bb.av
  %i.im = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !658
  %i.in = and i64 %i.im, 9223372036854775807
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %.thread, label %bb.ax, !prof !53

bb.ax:                                            ; preds = %.noexc76
  %i.ip = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.ba unwind label %bb.bh     ; 2 uses

bb.ay:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.iq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #68
          to label %bb.s unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ir = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.c, align 8
  %.val51 = load i8, ptr %i.iq, align 8, !range !57, !noundef !48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr %.val50, i8 %.val51) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.au

bb.ba:                                            ; preds = %bb.ax
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 20 ; 3 uses
  %i.it = load atomic i8, ptr %i.is monotonic, align 1, !noalias !658
  %.not249 = icmp eq i8 %i.it, 0
  br i1 %.not249, label %bb.bb, label %bb.be

.thread:                                          ; preds = %.noexc76
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 20 ; 3 uses
  %i.iv = load atomic i8, ptr %i.iu monotonic, align 1, !noalias !658
  %.not249352 = icmp eq i8 %i.iv, 0
  br i1 %.not249352, label %.thread355, label %.thread357

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ip, label %.thread355, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread355:                                       ; preds = %.thread, %bb.bb
  %i.iw = phi ptr [ %i.is, %bb.bb ], [ %i.iu, %.thread ]
  %i.ix = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !659
  %i.iy = and i64 %i.ix, 9223372036854775807
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bc, !prof !53

bb.bc:                                            ; preds = %.thread355
  %i.ja = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %bb.bh

.noexc78:                                         ; preds = %bb.bc
  br i1 %i.ja, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.iw monotonic, align 1, !noalias !659
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bd, %.noexc78, %.thread355, %bb.bb
  %i.jb = atomicrmw xchg ptr %i.ij, i32 0 release, align 4, !noalias !659
  %i.jc = icmp eq i32 %i.jb, 2
  br i1 %i.jc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

bb.be:                                            ; preds = %bb.ba
  br i1 %i.ip, label %.thread357, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread357:                                       ; preds = %.thread, %bb.be
  %i.jd = phi ptr [ %i.is, %bb.be ], [ %i.iu, %.thread ]
  %i.je = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !659
  %i.jf = and i64 %i.je, 9223372036854775807
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bf, !prof !53

bb.bf:                                            ; preds = %.thread357
  %i.jh = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.bh

.noexc79:                                         ; preds = %bb.bf
  br i1 %i.jh, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.jd monotonic, align 1, !noalias !659
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bg, %.noexc79, %.thread357, %bb.be
  %i.ji = atomicrmw xchg ptr %i.ij, i32 0 release, align 4, !noalias !659
  %i.jj = icmp eq i32 %i.ji, 2
  br i1 %i.jj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit, !prof !51

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ij)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit unwind label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit.sink.split.i, %bb.bf, %bb.bc, %bb.ax, %bb.aw
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECs63DIHKhvmTb_10lance_core(ptr nonnull %i.f, i8 2) #69
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECs63DIHKhvmTb_10lance_core.exit73 unwind label %bb.au
end_hunk_2
