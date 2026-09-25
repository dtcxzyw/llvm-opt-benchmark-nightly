Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
  %i.ah = and i64 %i.ag, -8                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.ah, 0
  br i1 %.not.i55, label %.peel.next.i, label %._crit_edge.thread.i, !llvm.loop !308

._crit_edge.thread.i:                             ; preds = %bb.h, %bb.g
  %.lcssa56.i = phi i64 [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !360, !noundef !24 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.thread.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !360, !nonnull !24, !noundef !24
  %i.ak = shl nuw nsw i64 %.val1.i.i.i.i.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef 8) #36, !noalias !360
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !363, !nonnull !24, !noundef !24
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !363
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexuEE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 48, i64 noundef 8) #36
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i: ; preds = %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtBG_4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB28_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB34_NtB36_16CachedReaderDataEEEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aa, i64 noundef 48, i64 noundef 8) #36
  br label %.loopexit254

.peel.next.i:                                     ; preds = %bb.g, %bb.h
  %i.aq = load i64, ptr %i.u, align 8, !noundef !24
  %i.ar = invoke noundef i64 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.aq)
          to label %bb.n unwind label %.loopexit.i ; 0 uses

bb.k:                                             ; preds = %.noexc
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #40
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBK_6common10concurrent3arc7MiniArcINtB2Y_10ValueEntryB23_NtB25_16CachedReaderDataEEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #41
          to label %.body.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.n:                                             ; preds = %.peel.next.i
  %i.au = cmpxchg weak ptr %i.r, i64 0, i64 %i.ac acq_rel monotonic, align 8, !noalias !359
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.loopexit254, label %bb.h

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
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1T_6common10concurrent3arc7MiniArcINtB47_10ValueEntryB3c_NtB3e_16CachedReaderDataEEEEEECsjsY2yM364a4_11lance_tools(i64 %.sroa.0.0934.lcssa.i, i64 %.sroa.7.033.lcssa.i) #41
          to label %.body.thread unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

.body.thread220.loopexit:                         ; preds = %bb.bf
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread220.loopexit.split-lp:                ; preds = %.invoke, %bb.e, %bb.t, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit254:                                     ; preds = %bb.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i, %bb.f, %bb.d
  %.sroa.0.0.in.i = phi i64 [ %i.ac, %bb.f ], [ %i.t, %bb.d ], [ %.lcssa56.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskfeRsqx2rfd_15crossbeam_epoch6atomic5OwnedINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB1x_6common10concurrent3arc7MiniArcINtB3L_10ValueEntryB2Q_NtB2S_16CachedReaderDataEEEEECsjsY2yM364a4_11lance_tools.exit.i.i ], [ %i.ac, %bb.n ]
  %.sroa.0.0.i = inttoptr i64 %.sroa.0.0.in.i to ptr ; 5 uses
  %i.aw = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ay, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %._crit_edge, label %.lr.ph293

.lr.ph293:                                        ; preds = %.loopexit254
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val43 = load i64, ptr %i.bb, align 8          ; 2 uses
  %i.bc = xor i64 %.val, 8317987319222330741      ; 2 uses
  %i.bd = xor i64 %.val43, 7237128888997146477    ; 2 uses
  %i.be = xor i64 %.val, 7816392313619706465      ; 2 uses
  %i.bf = xor i64 %.val43, 8387220255154660723    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph293, %.loopexit253
  %.sroa.02.0292 = phi ptr [ %i.aw, %.lr.ph293 ], [ %i.bh, %.loopexit253 ] ; 3 uses
  %.sroa.412.0291 = phi i64 [ undef, %.lr.ph293 ], [ %.sroa.412.5, %.loopexit253 ]
  %.sroa.6.0290 = phi i64 [ undef, %.lr.ph293 ], [ %.sroa.6.5, %.loopexit253 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0292, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63

._crit_edge:                                      ; preds = %.loopexit253, %.loopexit254
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.bg unwind label %.body.thread220.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63: ; preds = %.loopexit, %bb.q
  %.sroa.6.1 = phi i64 [ %.sroa.6.0290, %bb.q ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0291, %bb.q ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.q ], [ %.not37, %.loopexit ]
  %i.bi = load atomic i64, ptr %.sroa.02.0292 acquire, align 8 ; 6 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.r, label %.loopexit253

bb.r:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63
  %i.bl = and i64 %i.bi, 2                        ; 2 uses
  %i.bm = and i64 %i.bi, -8                       ; 4 uses
  %i.bn = or i64 %i.bi, 4                         ; 7 uses
  br i1 %.sroa.010.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %bb.t, label %bb.u, !prof !29

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #40
          to label %bb.v unwind label %.body.thread220.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.bp = load i64, ptr %i.bg, align 8, !noundef !24 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.412.1, %i.bp
  br i1 %i.bq, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.bs, %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.br = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.sroa.412.1 ; 2 uses
  %i.bt = and i64 %.sroa.6.1, 4
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit, label %.lr.ph

.invoke:                                          ; preds = %bb.an, %bb.u
  %i.bv = phi i64 [ %.sroa.412.1, %bb.u ], [ %i.kw, %bb.an ]
  %i.bw = phi i64 [ %i.bp, %bb.u ], [ 0, %bb.an ]
  %i.bx = phi ptr [ @55, %bb.u ], [ @35, %bb.an ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx) #40
          to label %.cont unwind label %.body.thread220.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph:                                           ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit
  %.sroa.04.0288 = phi i64 [ %i.bz, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.6.1, %bb.w ]
  %i.by = cmpxchg weak ptr %i.bs, i64 %.sroa.04.0288, i64 %i.bn acq_rel monotonic, align 8, !noalias !364
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit: ; preds = %.lr.ph
  %i.bz = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.ca = and i64 %i.bz, 4
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ax, %bb.az, %._crit_edge.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i, %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, %bb.ap, %bb.as, %._crit_edge.i.us.i, %bb.aw, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit, %.lr.ph, %bb.w, %bb.x
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.w ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bn, %bb.aw ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.as ], [ %.sroa.6.1, %bb.ap ], [ %.sroa.6.1, %bb.az ], [ %.sroa.6.1, %bb.ax ], [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i ], [ %i.bn, %bb.bd ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.w ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.aw ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.as ], [ %.sroa.412.1, %bb.ap ], [ %.sroa.412.1, %bb.az ], [ %.sroa.412.1, %bb.ax ], [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i ], [ %.sroa.8.1.i, %bb.bd ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i ], [ false, %bb.x ], [ true, %bb.w ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ true, %.lr.ph ], [ true, %bb.aw ], [ false, %._crit_edge.i.us.i ], [ false, %bb.as ], [ false, %bb.ap ], [ false, %bb.az ], [ false, %bb.ax ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i ], [ true, %bb.bd ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cc = cmpxchg weak ptr %.sroa.02.0292, i64 %i.bi, i64 1 acq_rel monotonic, align 8, !noalias !365
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cc, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.be, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63

bb.x:                                             ; preds = %bb.r
  %i.cd = inttoptr i64 %i.bm to ptr               ; 3 uses
  %.not = icmp eq i64 %i.bm, 0
  br i1 %.not, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %.val.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !366, !noalias !367, !nonnull !24, !noundef !24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !368, !noalias !369, !nonnull !24, !noundef !24 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !368, !noalias !369, !noundef !24 ; 6 uses
  %i.ci = and i64 %i.ch, 7                        ; 8 uses
  %i.cj = and i64 %i.ch, -8                       ; 2 uses
  %.not246 = icmp eq i64 %i.cj, 0
  br i1 %.not246, label %._crit_edge.i142, label %.lr.ph.i135

._crit_edge.i142.loopexit:                        ; preds = %.lr.ph.i135
  %i.ck = and i64 %i.ch, -8
  br label %._crit_edge.i142

._crit_edge.i142:                                 ; preds = %._crit_edge.i142.loopexit, %bb.y
  %.sroa.44.7 = phi i64 [ %i.bf, %bb.y ], [ %i.dq, %._crit_edge.i142.loopexit ] ; 2 uses
  %.sroa.30.7 = phi i64 [ %i.bd, %bb.y ], [ %i.do, %._crit_edge.i142.loopexit ] ; 6 uses
  %.sroa.16.7 = phi i64 [ %i.be, %bb.y ], [ %i.dr, %._crit_edge.i142.loopexit ] ; 2 uses
  %.sroa.0166.7 = phi i64 [ %i.bc, %bb.y ], [ %i.ds, %._crit_edge.i142.loopexit ] ; 2 uses
  %.sroa.0.1.lcssa.i125 = phi i64 [ 0, %bb.y ], [ %i.ck, %._crit_edge.i142.loopexit ] ; 3 uses
  %i.cl = icmp samesign ugt i64 %i.ci, 3
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i142
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.1.lcssa.i125
  %.sroa.014.0.copyload.i17.i134 = load i32, ptr %i.cm, align 1, !alias.scope !370, !noalias !371
  %i.cn = zext i32 %.sroa.014.0.copyload.i17.i134 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i142
  %.sroa.03.0.i11.i126 = phi i64 [ 4, %bb.z ], [ 0, %._crit_edge.i142 ] ; 5 uses
  %.sroa.0.0.i12.i127 = phi i64 [ %i.cn, %bb.z ], [ 0, %._crit_edge.i142 ] ; 2 uses
  %i.co = or disjoint i64 %.sroa.03.0.i11.i126, 1
  %i.cp = icmp samesign ult i64 %i.co, %i.ci
  br i1 %i.cp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr i8, ptr %i.cf, i64 %.sroa.0.1.lcssa.i125
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.sroa.03.0.i11.i126
  %.sroa.015.0.copyload.i16.i133 = load i16, ptr %i.cr, align 1, !alias.scope !370, !noalias !371
  %i.cs = zext i16 %.sroa.015.0.copyload.i16.i133 to i64
  %i.ct = shl nuw nsw i64 %.sroa.03.0.i11.i126, 3
  %i.cu = shl nuw nsw i64 %i.cs, %i.ct
  %i.cv = or i64 %i.cu, %.sroa.0.0.i12.i127
  %i.cw = or disjoint i64 %.sroa.03.0.i11.i126, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.03.1.i13.i128 = phi i64 [ %i.cw, %bb.ab ], [ %.sroa.03.0.i11.i126, %bb.aa ] ; 3 uses
  %.sroa.0.1.i14.i129 = phi i64 [ %i.cv, %bb.ab ], [ %.sroa.0.0.i12.i127, %bb.aa ] ; 2 uses
  %i.cx = icmp samesign ult i64 %.sroa.03.1.i13.i128, %i.ci
  br i1 %i.cx, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145

.lr.ph.i135:                                      ; preds = %bb.y, %.lr.ph.i135
  %i.cy = phi i64 [ %i.dr, %.lr.ph.i135 ], [ %i.be, %bb.y ]
  %i.cz = phi i64 [ %i.do, %.lr.ph.i135 ], [ %i.bd, %bb.y ] ; 3 uses
  %i.da = phi i64 [ %i.dq, %.lr.ph.i135 ], [ %i.bf, %bb.y ]
  %.sroa.0.119.i140 = phi i64 [ %i.dt, %.lr.ph.i135 ], [ 0, %bb.y ] ; 2 uses
  %i.db = phi i64 [ %i.ds, %.lr.ph.i135 ], [ %i.bc, %bb.y ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.119.i140
  %.sroa.07.0.copyload.i141 = load i64, ptr %i.dc, align 1, !alias.scope !372, !noalias !371 ; 2 uses
  %i.dd = xor i64 %.sroa.07.0.copyload.i141, %i.da ; 3 uses
  %i.de = add i64 %i.db, %i.cz                    ; 3 uses
  %i.df = add i64 %i.dd, %i.cy                    ; 2 uses
  %i.dg = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 13)
  %i.dh = xor i64 %i.de, %i.dg                    ; 3 uses
  %i.di = tail call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 16)
  %i.dj = xor i64 %i.df, %i.di                    ; 3 uses
  %i.dk = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 32)
  %i.dl = add i64 %i.df, %i.dh                    ; 3 uses
  %i.dm = add i64 %i.dj, %i.dk                    ; 2 uses
  %i.dn = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 17)
  %i.do = xor i64 %i.dl, %i.dn                    ; 2 uses
  %i.dp = tail call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 %i.dj, i64 21)
  %i.dq = xor i64 %i.dp, %i.dm                    ; 2 uses
  %i.dr = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 32) ; 2 uses
  %i.ds = xor i64 %i.dm, %.sroa.07.0.copyload.i141 ; 2 uses
  %i.dt = add nuw i64 %.sroa.0.119.i140, 8        ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.cj
  br i1 %i.du, label %.lr.ph.i135, label %._crit_edge.i142.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145: ; preds = %bb.ac
  %i.dv = add i64 %i.ch, 1                        ; 2 uses
  %i.dw = icmp eq i64 %i.ci, 0
  br i1 %i.dw, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145
  %i.dx = shl nuw nsw i64 %i.ci, 3
  %i.dy = shl nuw nsw i64 255, %i.dx
  %i.dz = or i64 %i.dy, %.sroa.0.1.i14.i129
  br label %bb.ad

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93: ; preds = %bb.ac
  %i.ea = add i64 %.sroa.03.1.i13.i128, %.sroa.0.1.lcssa.i125 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.ch
  tail call void @llvm.assume(i1 %i.eb), !noalias !373
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ea
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !370, !noalias !371, !noundef !24
  %i.ee = zext i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %.sroa.03.1.i13.i128, 3
  %i.eg = shl nuw nsw i64 %i.ee, %i.ef
  %i.eh = add i64 %i.ch, 1                        ; 2 uses
  %i.ei = shl nuw nsw i64 %i.ci, 3
  %i.ej = shl nuw i64 255, %i.ei
  %i.ek = or i64 %i.eg, %i.ej
  %i.el = or i64 %i.ek, %.sroa.0.1.i14.i129       ; 3 uses
  %.not247 = icmp eq i64 %i.ci, 7
  br i1 %.not247, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116, label %bb.ad

bb.ad:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93
  %i.em = phi i64 [ %i.dz, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread ], [ %i.el, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93 ]
  %i.en = phi i64 [ %i.dv, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93.thread ], [ %i.eh, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93 ]
  %i.eo = add nuw nsw i64 %i.ci, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145, %bb.ad
  %.ph = phi i64 [ %i.en, %bb.ad ], [ %i.dv, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145 ]
  %.sroa.68.1.ph = phi i64 [ %i.em, %bb.ad ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145 ]
  %storemerge.i103.ph = phi i64 [ %i.eo, %bb.ad ], [ 1, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit145 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !368, !noalias !369, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  store i64 %i.eq, ptr %i.a, align 8, !noalias !374
  %i.er = sub nuw nsw i64 8, %storemerge.i103.ph  ; 3 uses
  %i.es = icmp samesign ult i64 %storemerge.i103.ph, 5 ; 3 uses
  %i.et = and i64 %i.eq, 4294967295
  %.sroa.03.0.i.i = select i1 %i.es, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i = select i1 %i.es, i64 %i.et, i64 0 ; 2 uses
  %i.eu = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.ev = icmp samesign ult i64 %i.eu, %i.er
  br i1 %i.ev, label %bb.ae, label %bb.af

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116: ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i93
  %i.ew = xor i64 %i.el, %.sroa.44.7              ; 3 uses
  %i.ex = add i64 %.sroa.0166.7, %.sroa.30.7      ; 3 uses
  %i.ey = add i64 %i.ew, %.sroa.16.7              ; 2 uses
  %i.ez = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.7, i64 %.sroa.30.7, i64 13)
  %i.fa = xor i64 %i.ex, %i.ez                    ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 16)
  %i.fc = xor i64 %i.ey, %i.fb                    ; 3 uses
  %i.fd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 32)
  %i.fe = add i64 %i.ey, %i.fa                    ; 3 uses
  %i.ff = add i64 %i.fc, %i.fd                    ; 2 uses
  %i.fg = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 17)
  %i.fh = xor i64 %i.fe, %i.fg
  %i.fi = tail call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 21)
  %i.fj = xor i64 %i.fi, %i.ff
  %i.fk = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 32)
  %i.fl = xor i64 %i.ff, %i.el
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !368, !noalias !369, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  store i64 %i.fn, ptr %i.a, align 8, !noalias !374
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.es, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !375, !noalias !376
  %i.fo = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.fp = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.fq = shl nuw nsw i64 %i.fo, %i.fp
  %i.fr = or i64 %i.fq, %.sroa.0.0.i10.i
  %i.fs = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread
  %.sroa.03.1.i.i = phi i64 [ %i.fs, %bb.ae ], [ %.sroa.03.0.i.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.fr, %bb.ae ], [ %.sroa.0.0.i10.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit116.thread ] ; 2 uses
  %i.ft = icmp samesign ult i64 %.sroa.03.1.i.i, %i.er
  br i1 %i.ft, label %bb.ag, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !375, !noalias !376, !noundef !24
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.fy = shl nuw nsw i64 %i.fw, %i.fx
  %i.fz = or i64 %i.fy, %.sroa.0.1.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.2.i.i = phi i64 [ %i.fz, %bb.ag ], [ %.sroa.0.1.i.i, %bb.af ]
  %i.ga = shl nuw nsw i64 %storemerge.i103.ph, 3
  %i.gb = and i64 %i.ga, 56
  %i.gc = shl i64 %.sroa.0.2.i.i, %i.gb
  %i.gd = or i64 %i.gc, %.sroa.68.1.ph            ; 2 uses
  %i.ge = xor i64 %i.gd, %.sroa.44.7              ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB2w_10ValueEntryB1B_NtB1D_16CachedReaderDataEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
  %i.kd = xor i64 %i.kc, %i.jx                    ; 3 uses
  %i.ke = add i64 %i.kd, %i.js                    ; 3 uses
  %i.kf = tail call noundef i64 @llvm.fshl.i64(i64 %i.ke, i64 %i.ke, i64 32)
  %i.kg = add i64 %i.ka, %i.kf                    ; 2 uses
  %i.kh = xor i64 %i.kb, %i.kg                    ; 2 uses
  %i.ki = tail call noundef i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 21)
  %i.kj = tail call noundef i64 @llvm.fshl.i64(i64 %i.kd, i64 %i.kd, i64 17)
  %i.kk = xor i64 %i.kj, %i.ke                    ; 3 uses
  %i.kl = tail call noundef i64 @llvm.fshl.i64(i64 %i.kk, i64 %i.kk, i64 13)
  %i.km = add i64 %i.kk, %i.jz
  %i.kn = xor i64 %i.kl, %i.km                    ; 3 uses
  %i.ko = tail call noundef i64 @llvm.fshl.i64(i64 %i.kn, i64 %i.kn, i64 17)
  %i.kp = xor i64 %i.ki, %i.ko
  %i.kq = add i64 %i.kn, %i.kg                    ; 3 uses
  %i.kr = tail call noundef i64 @llvm.fshl.i64(i64 %i.kq, i64 %i.kq, i64 32)
  %i.ks = xor i64 %i.kp, %i.kr
  %i.kt = xor i64 %i.ks, %i.kq
  %i.ku = load i64, ptr %i.bg, align 8, !noundef !24 ; 2 uses
  %i.kv = add i64 %i.ku, -1                       ; 5 uses
  %i.kw = and i64 %i.kv, %i.kt                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.ku, 0
  br i1 %.not.i64, label %.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kx = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw ; 2 uses
  %i.kz = icmp eq i64 %i.bl, 0
  br i1 %i.kz, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ %i.ky, %bb.ao ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ %i.kw, %bb.ao ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.kv
  br i1 %.not.i.us.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.la = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.lb = add i64 %i.la, %i.kw
  %i.lc = and i64 %i.lb, %i.kv                    ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.lc
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.aq, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i
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
  %4 = icmp eq i64 %i.bm, 0
  %5 = icmp eq i64 %i.bl, 0
  %or.cond41 = or i1 %4, %5
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit253, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2v_10ValueEntryB1A_NtB1C_16CachedReaderDataEEECsjsY2yM364a4_11lance_tools(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bi)
          to label %.loopexit253 unwind label %.body.thread220.loopexit

.loopexit253:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63, %bb.bf, %bb.be
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.be ], [ %.sroa.6.2, %bb.bf ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.be ], [ %.sroa.412.2, %bb.bf ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB3e_10ValueEntryB2j_NtB2l_16CachedReaderDataEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %i.nd = icmp eq ptr %i.bh, %i.az
  br i1 %i.nd, label %._crit_edge, label %bb.q

bb.bg:                                            ; preds = %._crit_edge
  %i.ne = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ne, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nf = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ng = and i64 %i.nf, 9223372036854775807
  %i.nh = icmp eq i64 %i.ng, 0
  br i1 %i.nh, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !26

.noexc68:                                         ; preds = %bb.bh
  %i.ni = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.ni, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bi, %.noexc68, %bb.bh, %bb.bg
  %i.nj = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.nk = icmp eq i32 %i.nj, 2
  br i1 %i.nk, label %bb.bj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bj:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bj, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.bj ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73: ; preds = %bb.bt, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bn, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %i.od, %bb.bu ], [ %i.oc, %bb.bt ], [ %eh.lpad-body218, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %eh.lpad-body218, %bb.bn ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread220.loopexit, %.body.thread220.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.as, %bb.l ], [ %lpad.loopexit, %.body.thread220.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread220.loopexit.split-lp ] ; 2 uses
  %i.nl = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.nl, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bk

bb.bk:                                            ; preds = %.body.thread
  %i.nm = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.nn = and i64 %i.nm, 9223372036854775807
  %i.no = icmp eq i64 %i.nn, 0
  br i1 %i.no, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bl, !prof !26

bb.bl:                                            ; preds = %bb.bk
  %i.np = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.bo

.noexc71:                                         ; preds = %bb.bl
  br i1 %i.np, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.bm

bb.bm:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.j monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.bm, %.noexc71, %bb.bk, %.body.thread
  %i.nq = atomicrmw xchg ptr %i.g, i32 0 release, align 4
  %i.nr = icmp eq i32 %i.nq, 2
  br i1 %i.nr, label %bb.bn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73, !prof !29

bb.bn:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl, %bb.bt, %bb.bu
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.bp:                                            ; preds = %bb.a
  %i.nt = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 5 uses
  %i.nv = cmpxchg ptr %i.nu, i32 0, i32 1 acquire monotonic, align 4, !noalias !388
  %i.nw = extractvalue { i32, i1 } %i.nv, 1
  br i1 %i.nw, label %.noexc76, label %bb.bq, !prof !26

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.nu)
          to label %.noexc76 unwind label %bb.bu

.noexc76:                                         ; preds = %bb.bq, %bb.bp
  %i.nx = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !388
  %i.ny = and i64 %i.nx, 9223372036854775807
  %i.nz = icmp eq i64 %i.ny, 0
  br i1 %i.nz, label %.thread370, label %bb.br, !prof !26

bb.br:                                            ; preds = %.noexc76
  %i.oa = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bv unwind label %bb.bu     ; 2 uses

bb.bs:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.ob, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
          to label %bb.v unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oc = landingpad { ptr, i32 }
          cleanup
  %.val52 = load ptr, ptr %i.d, align 8
  %.val53 = load i8, ptr %i.ob, align 8, !range !30, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val52, i8 %.val53) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bo

bb.bu:                                            ; preds = %bb.bq, %bb.br, %bb.bx, %bb.ca, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i
  %i.od = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.g, i8 2) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bo

bb.bv:                                            ; preds = %bb.br
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nt, i64 20 ; 3 uses
  %i.of = load atomic i8, ptr %i.oe monotonic, align 1, !noalias !388
  %.not245 = icmp eq i8 %i.of, 0
  br i1 %.not245, label %bb.bw, label %bb.bz

.thread370:                                       ; preds = %.noexc76
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 20 ; 3 uses
  %i.oh = load atomic i8, ptr %i.og monotonic, align 1, !noalias !388
  %.not245372 = icmp eq i8 %i.oh, 0
  br i1 %.not245372, label %.thread375, label %.thread377

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.oa, label %.thread375, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread375:                                       ; preds = %.thread370, %bb.bw
  %i.oi = phi ptr [ %i.oe, %bb.bw ], [ %i.og, %.thread370 ]
  %i.oj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !389
  %i.ok = and i64 %i.oj, 9223372036854775807
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bx, !prof !26

bb.bx:                                            ; preds = %.thread375
  %i.om = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.bu

.noexc79:                                         ; preds = %bb.bx
  br i1 %i.om, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.oi monotonic, align 1, !noalias !389
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.by, %.noexc79, %.thread375, %bb.bw
  %i.on = atomicrmw xchg ptr %i.nu, i32 0 release, align 4, !noalias !389
  %i.oo = icmp eq i32 %i.on, 2
  br i1 %i.oo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bz:                                            ; preds = %bb.bv
  br i1 %i.oa, label %.thread377, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread377:                                       ; preds = %.thread370, %bb.bz
  %i.op = phi ptr [ %i.oe, %bb.bz ], [ %i.og, %.thread370 ]
  %i.oq = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !389
  %i.or = and i64 %i.oq, 9223372036854775807
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ca, !prof !26

bb.ca:                                            ; preds = %.thread377
  %i.ot = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc80 unwind label %bb.bu

.noexc80:                                         ; preds = %bb.ca
  br i1 %i.ot, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc80
  store atomic i8 1, ptr %i.op monotonic, align 1, !noalias !389
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.cb, %.noexc80, %.thread377, %bb.bz
  %i.ou = atomicrmw xchg ptr %i.nu, i32 0 release, align 4, !noalias !389
  %i.ov = icmp eq i32 %i.ou, 2
  br i1 %i.ov, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.nu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.bu
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a

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
  %i.bf = xor i64 %.val43, 7816392313619706465    ; 2 uses
  %i.bg = xor i64 %.val44, 8387220255154660723    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %1, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph294, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit
  %.sroa.02.0293 = phi ptr [ %i.ax, %.lr.ph294 ], [ %i.bl, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit ] ; 3 uses
  %.sroa.412.0292 = phi i64 [ undef, %.lr.ph294 ], [ %.sroa.412.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit ]
  %.sroa.6.0291 = phi i64 [ undef, %.lr.ph294 ], [ %.sroa.6.5, %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.0293, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63

._crit_edge:                                      ; preds = %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit, %.loopexit255
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.bi unwind label %.body.thread222.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63: ; preds = %.loopexit, %bb.q
  %.sroa.6.1 = phi i64 [ %.sroa.6.0291, %bb.q ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0292, %bb.q ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.q ], [ %.not37, %.loopexit ]
  %i.bm = load atomic i64, ptr %.sroa.02.0293 acquire, align 8 ; 7 uses
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEECsjsY2yM364a4_11lance_tools.exit

bb.r:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63
  %i.bp = and i64 %i.bm, 2                        ; 2 uses
  %i.bq = and i64 %i.bm, -8                       ; 4 uses
  %i.br = or i64 %i.bm, 4                         ; 7 uses
  br i1 %.sroa.010.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %bb.t, label %bb.u, !prof !29

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #40
          to label %bb.v unwind label %.body.thread222.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %i.bh, align 8, !noundef !24 ; 2 uses
  %i.bu = icmp ult i64 %.sroa.412.1, %i.bt
  br i1 %i.bu, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.bu, %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.sroa.412.1 ; 2 uses
  %i.bx = and i64 %.sroa.6.1, 4
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %.lr.ph

.invoke:                                          ; preds = %bb.an, %bb.u
  %i.bz = phi i64 [ %.sroa.412.1, %bb.u ], [ %i.la, %bb.an ]
  %i.ca = phi i64 [ %i.bt, %bb.u ], [ 0, %bb.an ]
  %i.cb = phi ptr [ @55, %bb.u ], [ @35, %bb.an ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb) #40
          to label %.cont unwind label %.body.thread222.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph:                                           ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit
  %.sroa.04.0289 = phi i64 [ %i.cd, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.6.1, %bb.w ]
  %i.cc = cmpxchg weak ptr %i.bw, i64 %.sroa.04.0289, i64 %i.br acq_rel monotonic, align 8, !noalias !458
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.cc, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit: ; preds = %.lr.ph
  %i.cd = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.ce = and i64 %i.cd, 4
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.ax, %bb.az, %._crit_edge.i.i, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i, %bb.bd, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i, %bb.ap, %bb.as, %._crit_edge.i.us.i, %bb.aw, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit, %.lr.ph, %bb.w, %bb.x
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.w ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.br, %bb.aw ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.as ], [ %.sroa.6.1, %bb.ap ], [ %.sroa.6.1, %bb.az ], [ %.sroa.6.1, %bb.ax ], [ %.sroa.6.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i ], [ %i.br, %bb.bd ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 4 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.w ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.aw ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.as ], [ %.sroa.412.1, %bb.ap ], [ %.sroa.412.1, %bb.az ], [ %.sroa.412.1, %bb.ax ], [ %.sroa.412.1, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i ], [ %.sroa.8.1.i, %bb.bd ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 4 uses
  %.not37 = phi i1 [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.us.i ], [ false, %bb.x ], [ true, %bb.w ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ true, %.lr.ph ], [ true, %bb.aw ], [ false, %._crit_edge.i.us.i ], [ false, %bb.as ], [ false, %bb.ap ], [ false, %bb.az ], [ false, %bb.ax ], [ false, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsjsY2yM364a4_11lance_tools.exit.thread50.i ], [ true, %bb.bd ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cg = cmpxchg weak ptr %.sroa.02.0293, i64 %i.bm, i64 1 acq_rel monotonic, align 8, !noalias !459
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cg, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.be, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63

bb.x:                                             ; preds = %bb.r
  %i.ch = inttoptr i64 %i.bq to ptr               ; 3 uses
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %.val.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !460, !noalias !461, !nonnull !24, !noundef !24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !462, !noalias !463, !nonnull !24, !noundef !24 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !462, !noalias !463, !noundef !24 ; 6 uses
  %i.cm = and i64 %i.cl, 7                        ; 8 uses
  %i.cn = and i64 %i.cl, -8                       ; 2 uses
  %.not248 = icmp eq i64 %i.cn, 0
  br i1 %.not248, label %._crit_edge.i144, label %.lr.ph.i137

._crit_edge.i144.loopexit:                        ; preds = %.lr.ph.i137
  %i.co = and i64 %i.cl, -8
  br label %._crit_edge.i144

._crit_edge.i144:                                 ; preds = %._crit_edge.i144.loopexit, %bb.y
  %.sroa.44.7 = phi i64 [ %i.bg, %bb.y ], [ %i.du, %._crit_edge.i144.loopexit ] ; 2 uses
  %.sroa.30.7 = phi i64 [ %i.be, %bb.y ], [ %i.ds, %._crit_edge.i144.loopexit ] ; 6 uses
  %.sroa.16.7 = phi i64 [ %i.bf, %bb.y ], [ %i.dv, %._crit_edge.i144.loopexit ] ; 2 uses
  %.sroa.0168.7 = phi i64 [ %i.bd, %bb.y ], [ %i.dw, %._crit_edge.i144.loopexit ] ; 2 uses
  %.sroa.0.1.lcssa.i127 = phi i64 [ 0, %bb.y ], [ %i.co, %._crit_edge.i144.loopexit ] ; 3 uses
  %i.cp = icmp samesign ugt i64 %i.cm, 3
  br i1 %i.cp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i144
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.0.1.lcssa.i127
  %.sroa.014.0.copyload.i17.i136 = load i32, ptr %i.cq, align 1, !alias.scope !464, !noalias !465
  %i.cr = zext i32 %.sroa.014.0.copyload.i17.i136 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i144
  %.sroa.03.0.i11.i128 = phi i64 [ 4, %bb.z ], [ 0, %._crit_edge.i144 ] ; 5 uses
  %.sroa.0.0.i12.i129 = phi i64 [ %i.cr, %bb.z ], [ 0, %._crit_edge.i144 ] ; 2 uses
  %i.cs = or disjoint i64 %.sroa.03.0.i11.i128, 1
  %i.ct = icmp samesign ult i64 %i.cs, %i.cm
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr i8, ptr %i.cj, i64 %.sroa.0.1.lcssa.i127
  %i.cv = getelementptr i8, ptr %i.cu, i64 %.sroa.03.0.i11.i128
  %.sroa.015.0.copyload.i16.i135 = load i16, ptr %i.cv, align 1, !alias.scope !464, !noalias !465
  %i.cw = zext i16 %.sroa.015.0.copyload.i16.i135 to i64
  %i.cx = shl nuw nsw i64 %.sroa.03.0.i11.i128, 3
  %i.cy = shl nuw nsw i64 %i.cw, %i.cx
  %i.cz = or i64 %i.cy, %.sroa.0.0.i12.i129
  %i.da = or disjoint i64 %.sroa.03.0.i11.i128, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.03.1.i13.i130 = phi i64 [ %i.da, %bb.ab ], [ %.sroa.03.0.i11.i128, %bb.aa ] ; 3 uses
  %.sroa.0.1.i14.i131 = phi i64 [ %i.cz, %bb.ab ], [ %.sroa.0.0.i12.i129, %bb.aa ] ; 2 uses
  %i.db = icmp samesign ult i64 %.sroa.03.1.i13.i130, %i.cm
  br i1 %i.db, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147

.lr.ph.i137:                                      ; preds = %bb.y, %.lr.ph.i137
  %i.dc = phi i64 [ %i.dv, %.lr.ph.i137 ], [ %i.bf, %bb.y ]
  %i.dd = phi i64 [ %i.ds, %.lr.ph.i137 ], [ %i.be, %bb.y ] ; 3 uses
  %i.de = phi i64 [ %i.du, %.lr.ph.i137 ], [ %i.bg, %bb.y ]
  %.sroa.0.119.i142 = phi i64 [ %i.dx, %.lr.ph.i137 ], [ 0, %bb.y ] ; 2 uses
  %i.df = phi i64 [ %i.dw, %.lr.ph.i137 ], [ %i.bd, %bb.y ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.0.119.i142
  %.sroa.07.0.copyload.i143 = load i64, ptr %i.dg, align 1, !alias.scope !466, !noalias !465 ; 2 uses
  %i.dh = xor i64 %.sroa.07.0.copyload.i143, %i.de ; 3 uses
  %i.di = add i64 %i.df, %i.dd                    ; 3 uses
  %i.dj = add i64 %i.dh, %i.dc                    ; 2 uses
  %i.dk = tail call noundef i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 13)
  %i.dl = xor i64 %i.di, %i.dk                    ; 3 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 16)
  %i.dn = xor i64 %i.dj, %i.dm                    ; 3 uses
  %i.do = tail call noundef i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 32)
  %i.dp = add i64 %i.dj, %i.dl                    ; 3 uses
  %i.dq = add i64 %i.dn, %i.do                    ; 2 uses
  %i.dr = tail call noundef i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 17)
  %i.ds = xor i64 %i.dp, %i.dr                    ; 2 uses
  %i.dt = tail call noundef i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 21)
  %i.du = xor i64 %i.dt, %i.dq                    ; 2 uses
  %i.dv = tail call noundef i64 @llvm.fshl.i64(i64 %i.dp, i64 %i.dp, i64 32) ; 2 uses
  %i.dw = xor i64 %i.dq, %.sroa.07.0.copyload.i143 ; 2 uses
  %i.dx = add nuw i64 %.sroa.0.119.i142, 8        ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.cn
  br i1 %i.dy, label %.lr.ph.i137, label %._crit_edge.i144.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147: ; preds = %bb.ac
  %i.dz = add i64 %i.cl, 1                        ; 2 uses
  %i.ea = icmp eq i64 %i.cm, 0
  br i1 %i.ea, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147
  %i.eb = shl nuw nsw i64 %i.cm, 3
  %i.ec = shl nuw nsw i64 255, %i.eb
  %i.ed = or i64 %i.ec, %.sroa.0.1.i14.i131
  br label %bb.ad

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95: ; preds = %bb.ac
  %i.ee = add i64 %.sroa.03.1.i13.i130, %.sroa.0.1.lcssa.i127 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.cl
  tail call void @llvm.assume(i1 %i.ef), !noalias !467
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ee
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !464, !noalias !465, !noundef !24
  %i.ei = zext i8 %i.eh to i64
  %i.ej = shl nuw nsw i64 %.sroa.03.1.i13.i130, 3
  %i.ek = shl nuw nsw i64 %i.ei, %i.ej
  %i.el = add i64 %i.cl, 1                        ; 2 uses
  %i.em = shl nuw nsw i64 %i.cm, 3
  %i.en = shl nuw i64 255, %i.em
  %i.eo = or i64 %i.ek, %i.en
  %i.ep = or i64 %i.eo, %.sroa.0.1.i14.i131       ; 3 uses
  %.not249 = icmp eq i64 %i.cm, 7
  br i1 %.not249, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118, label %bb.ad

bb.ad:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95
  %i.eq = phi i64 [ %i.ed, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread ], [ %i.ep, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95 ]
  %i.er = phi i64 [ %i.dz, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95.thread ], [ %i.el, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95 ]
  %i.es = add nuw nsw i64 %i.cm, 1
  br label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147, %bb.ad
  %.ph = phi i64 [ %i.er, %bb.ad ], [ %i.dz, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147 ]
  %.sroa.68.1.ph = phi i64 [ %i.eq, %bb.ad ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147 ]
  %storemerge.i105.ph = phi i64 [ %i.es, %bb.ad ], [ 1, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit147 ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !462, !noalias !463, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !468
  store i64 %i.eu, ptr %i.b, align 8, !noalias !468
  %i.ev = sub nuw nsw i64 8, %storemerge.i105.ph  ; 3 uses
  %i.ew = icmp samesign ult i64 %storemerge.i105.ph, 5 ; 3 uses
  %i.ex = and i64 %i.eu, 4294967295
  %.sroa.03.0.i.i = select i1 %i.ew, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i10.i = select i1 %i.ew, i64 %i.ex, i64 0 ; 2 uses
  %i.ey = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.ez = icmp samesign ult i64 %i.ey, %i.ev
  br i1 %i.ez, label %bb.ae, label %bb.af

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118: ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i95
  %i.fa = xor i64 %i.ep, %.sroa.44.7              ; 3 uses
  %i.fb = add i64 %.sroa.0168.7, %.sroa.30.7      ; 3 uses
  %i.fc = add i64 %i.fa, %.sroa.16.7              ; 2 uses
  %i.fd = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.30.7, i64 %.sroa.30.7, i64 13)
  %i.fe = xor i64 %i.fb, %i.fd                    ; 3 uses
  %i.ff = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 16)
  %i.fg = xor i64 %i.fc, %i.ff                    ; 3 uses
  %i.fh = tail call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 32)
  %i.fi = add i64 %i.fc, %i.fe                    ; 3 uses
  %i.fj = add i64 %i.fg, %i.fh                    ; 2 uses
  %i.fk = tail call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 17)
  %i.fl = xor i64 %i.fi, %i.fk
  %i.fm = tail call noundef i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 21)
  %i.fn = xor i64 %i.fm, %i.fj
  %i.fo = tail call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 32)
  %i.fp = xor i64 %i.fj, %i.ep
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !462, !noalias !463, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !468
  store i64 %i.fr, ptr %i.b, align 8, !noalias !468
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ew, i64 4, i64 0
  %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.015.0.copyload.i.i = load i16, ptr %.sroa.03.0.i.i.sroa.phi.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !469, !noalias !470
  %i.fs = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.ft = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.fu = shl nuw nsw i64 %i.fs, %i.ft
  %i.fv = or i64 %i.fu, %.sroa.0.0.i10.i
  %i.fw = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread
  %.sroa.03.1.i.i = phi i64 [ %i.fw, %bb.ae ], [ %.sroa.03.0.i.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.fv, %bb.ae ], [ %.sroa.0.0.i10.i, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit118.thread ] ; 2 uses
  %i.fx = icmp samesign ult i64 %.sroa.03.1.i.i, %i.ev
  br i1 %i.fx, label %bb.ag, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.1.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !469, !noalias !470, !noundef !24
  %i.ga = zext i8 %i.fz to i64
  %i.gb = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.gc = shl nuw nsw i64 %i.ga, %i.gb
  %i.gd = or i64 %i.gc, %.sroa.0.1.i.i
  br label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.2.i.i = phi i64 [ %i.gd, %bb.ag ], [ %.sroa.0.1.i.i, %bb.af ]
  %i.ge = shl nuw nsw i64 %storemerge.i105.ph, 3
  %i.gf = and i64 %i.ge, 56
  %i.gg = shl i64 %.sroa.0.2.i.i, %i.gf
  %i.gh = or i64 %i.gg, %.sroa.68.1.ph            ; 2 uses
  %i.gi = xor i64 %i.gh, %.sroa.44.7              ; 3 uses
end_hunk_2
begin_hunk_3_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
  %i.kh = xor i64 %i.kg, %i.kb                    ; 3 uses
  %i.ki = add i64 %i.kh, %i.jw                    ; 3 uses
  %i.kj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 32)
  %i.kk = add i64 %i.ke, %i.kj                    ; 2 uses
  %i.kl = xor i64 %i.kf, %i.kk                    ; 2 uses
  %i.km = tail call noundef i64 @llvm.fshl.i64(i64 %i.kl, i64 %i.kl, i64 21)
  %i.kn = tail call noundef i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 17)
  %i.ko = xor i64 %i.kn, %i.ki                    ; 3 uses
  %i.kp = tail call noundef i64 @llvm.fshl.i64(i64 %i.ko, i64 %i.ko, i64 13)
  %i.kq = add i64 %i.ko, %i.kd
  %i.kr = xor i64 %i.kp, %i.kq                    ; 3 uses
  %i.ks = tail call noundef i64 @llvm.fshl.i64(i64 %i.kr, i64 %i.kr, i64 17)
  %i.kt = xor i64 %i.km, %i.ks
  %i.ku = add i64 %i.kr, %i.kk                    ; 3 uses
  %i.kv = tail call noundef i64 @llvm.fshl.i64(i64 %i.ku, i64 %i.ku, i64 32)
  %i.kw = xor i64 %i.kt, %i.kv
  %i.kx = xor i64 %i.kw, %i.ku
  %i.ky = load i64, ptr %i.bh, align 8, !noundef !24 ; 2 uses
  %i.kz = add i64 %i.ky, -1                       ; 5 uses
  %i.la = and i64 %i.kz, %i.kx                    ; 6 uses
  %.not.i64 = icmp eq i64 %i.ky, 0
  br i1 %.not.i64, label %.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lb = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.la ; 2 uses
  %i.ld = icmp eq i64 %i.bp, 0
  br i1 %i.ld, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.i

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i: ; preds = %bb.ao, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge
  %.sroa.20.0.us.i = phi i1 [ %.sroa.20.0.us.i.be, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ true, %bb.ao ]
  %.sroa.17.0.us.i = phi i64 [ %.sroa.17.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.11.0.us.i = phi ptr [ %.sroa.11.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ %i.lc, %bb.ao ]
  %.sroa.8.0.us.i = phi i64 [ %.sroa.8.1.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i.backedge ], [ %i.la, %bb.ao ]
  br i1 %.sroa.20.0.us.i, label %._crit_edge.i.us.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i
  %.not.i.us.i = icmp ult i64 %.sroa.17.0.us.i, %i.kz
  br i1 %.not.i.us.i, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.le = add nuw i64 %.sroa.17.0.us.i, 1         ; 2 uses
  %i.lf = add i64 %i.le, %i.la
  %i.lg = and i64 %i.lf, %i.kz                    ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lg
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %bb.aq, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i
  %.sroa.17.1.us.i = phi i64 [ %i.le, %bb.aq ], [ %.sroa.17.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ]
  %.sroa.11.1.us.i = phi ptr [ %i.lh, %bb.aq ], [ %.sroa.11.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ] ; 3 uses
  %.sroa.8.1.us.i = phi i64 [ %i.lg, %bb.aq ], [ %.sroa.8.0.us.i, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCsjMQ83FLvXnF_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit.us.i ] ; 2 uses
  %i.li = load atomic i64, ptr %.sroa.11.1.us.i acquire, align 8, !noalias !473 ; 5 uses
  %i.lj = and i64 %i.li, 1
  %i.lk = icmp eq i64 %i.lj, 0
  br i1 %i.lk, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %._crit_edge.i.us.i
  %i.ll = and i64 %i.li, -8                       ; 2 uses
  %i.lm = inttoptr i64 %i.ll to ptr
  %.not20.us.i = icmp eq i64 %i.ll, 0
  br i1 %.not20.us.i, label %bb.aw, label %bb.as

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
  %4 = icmp eq i64 %i.bq, 0
  %5 = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %4, %5
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
  %i.nh = icmp eq ptr %i.bl, %i.ba
  br i1 %i.nh, label %._crit_edge, label %bb.q

bb.bi:                                            ; preds = %._crit_edge
  %i.ni = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.ni, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.nk = and i64 %i.nj, 9223372036854775807
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc71, !prof !26

.noexc71:                                         ; preds = %bb.bj
  %i.nm = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.nm, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bk, %.noexc71, %bb.bj, %bb.bi
  %i.nn = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.no = icmp eq i32 %i.nn, 2
  br i1 %i.no, label %bb.bl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bl:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.bl, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.bl ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76: ; preds = %bb.bv, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, %bb.bp, %bb.bw
  %.pn.pn = phi { ptr, i32 } [ %i.oh, %bb.bw ], [ %i.og, %bb.bv ], [ %eh.lpad-body220, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73 ], [ %eh.lpad-body220, %bb.bp ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread222.loopexit, %.body.thread222.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body220 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.at, %bb.l ], [ %lpad.loopexit, %.body.thread222.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread222.loopexit.split-lp ] ; 2 uses
  %i.np = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.np, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bm

bb.bm:                                            ; preds = %.body.thread
  %i.nq = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.nr = and i64 %i.nq, 9223372036854775807
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bn, !prof !26

bb.bn:                                            ; preds = %bb.bm
  %i.nt = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc74 unwind label %bb.bq

.noexc74:                                         ; preds = %bb.bn
  br i1 %i.nt, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73, label %bb.bo

bb.bo:                                            ; preds = %.noexc74
  store atomic i8 1, ptr %i.k monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73: ; preds = %bb.bo, %.noexc74, %bb.bm, %.body.thread
  %i.nu = atomicrmw xchg ptr %i.h, i32 0 release, align 4
  %i.nv = icmp eq i32 %i.nu, 2
  br i1 %i.nv, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76, !prof !29

bb.bp:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i73
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76 unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bv, %bb.bw
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.br:                                            ; preds = %bb.a
  %i.nx = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 5 uses
  %i.nz = cmpxchg ptr %i.ny, i32 0, i32 1 acquire monotonic, align 4, !noalias !484
  %i.oa = extractvalue { i32, i1 } %i.nz, 1
  br i1 %i.oa, label %.noexc79, label %bb.bs, !prof !26

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ny)
          to label %.noexc79 unwind label %bb.bw

.noexc79:                                         ; preds = %bb.bs, %bb.br
  %i.ob = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !484
  %i.oc = and i64 %i.ob, 9223372036854775807
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %.thread372, label %bb.bt, !prof !26

bb.bt:                                            ; preds = %.noexc79
  %i.oe = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bx unwind label %bb.bw     ; 2 uses

bb.bu:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.of, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
          to label %bb.v unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.og = landingpad { ptr, i32 }
          cleanup
  %.val53 = load ptr, ptr %i.e, align 8
  %.val54 = load i8, ptr %i.of, align 8, !range !30, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val53, i8 %.val54) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76 unwind label %bb.bq

bb.bw:                                            ; preds = %bb.bs, %bb.bt, %bb.bz, %bb.cc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i
  %i.oh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.h, i8 2) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit76 unwind label %bb.bq

bb.bx:                                            ; preds = %bb.bt
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nx, i64 20 ; 3 uses
  %i.oj = load atomic i8, ptr %i.oi monotonic, align 1, !noalias !484
  %.not247 = icmp eq i8 %i.oj, 0
  br i1 %.not247, label %bb.by, label %bb.cb

.thread372:                                       ; preds = %.noexc79
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 20 ; 3 uses
  %i.ol = load atomic i8, ptr %i.ok monotonic, align 1, !noalias !484
  %.not247374 = icmp eq i8 %i.ol, 0
  br i1 %.not247374, label %.thread377, label %.thread379

bb.by:                                            ; preds = %bb.bx
  br i1 %i.oe, label %.thread377, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread377:                                       ; preds = %.thread372, %bb.by
  %i.om = phi ptr [ %i.oi, %bb.by ], [ %i.ok, %.thread372 ]
  %i.on = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !485
  %i.oo = and i64 %i.on, 9223372036854775807
  %i.op = icmp eq i64 %i.oo, 0
  br i1 %i.op, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bz, !prof !26

bb.bz:                                            ; preds = %.thread377
  %i.oq = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc81 unwind label %bb.bw

.noexc81:                                         ; preds = %bb.bz
  br i1 %i.oq, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %.noexc81
  store atomic i8 1, ptr %i.om monotonic, align 1, !noalias !485
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.ca, %.noexc81, %.thread377, %bb.by
  %i.or = atomicrmw xchg ptr %i.ny, i32 0 release, align 4, !noalias !485
  %i.os = icmp eq i32 %i.or, 2
  br i1 %i.os, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.cb:                                            ; preds = %bb.bx
  br i1 %i.oe, label %.thread379, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread379:                                       ; preds = %.thread372, %bb.cb
  %i.ot = phi ptr [ %i.oi, %bb.cb ], [ %i.ok, %.thread372 ]
  %i.ou = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !485
  %i.ov = and i64 %i.ou, 9223372036854775807
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cc, !prof !26

bb.cc:                                            ; preds = %.thread379
  %i.ox = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc82 unwind label %bb.bw

.noexc82:                                         ; preds = %bb.cc
  br i1 %i.ox, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.noexc82
end_hunk_3
begin_hunk_4_@_RINvMs3_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2l_16CachedReaderDataEE6rehashNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateECsjsY2yM364a4_11lance_tools:bb.a
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
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph235, %.loopexit195
  %.sroa.02.0234 = phi ptr [ %i.av, %.lr.ph235 ], [ %i.bg, %.loopexit195 ] ; 3 uses
  %.sroa.412.0233 = phi i64 [ undef, %.lr.ph235 ], [ %.sroa.412.5, %.loopexit195 ]
  %.sroa.6.0232 = phi i64 [ undef, %.lr.ph235 ], [ %.sroa.6.5, %.loopexit195 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.0234, i64 8 ; 2 uses
  br label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63

._crit_edge:                                      ; preds = %.loopexit195, %.loopexit196
  invoke void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.au unwind label %.body.thread174.loopexit.split-lp

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63: ; preds = %.loopexit, %bb.q
  %.sroa.6.1 = phi i64 [ %.sroa.6.0232, %bb.q ], [ %.sroa.6.2, %.loopexit ] ; 15 uses
  %.sroa.412.1 = phi i64 [ %.sroa.412.0233, %bb.q ], [ %.sroa.412.2, %.loopexit ] ; 16 uses
  %.sroa.010.0 = phi i1 [ false, %bb.q ], [ %.not37, %.loopexit ]
  %i.bh = load atomic i64, ptr %.sroa.02.0234 acquire, align 8 ; 6 uses
  %i.bi = and i64 %i.bh, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.r, label %.loopexit195

bb.r:                                             ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63
  %i.bk = and i64 %i.bh, 2                        ; 2 uses
  %i.bl = and i64 %i.bh, -8                       ; 3 uses
  %i.bm = or i64 %i.bh, 4                         ; 7 uses
  %i.bn = icmp eq i64 %i.bl, 0                    ; 2 uses
  br i1 %.sroa.010.0, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  br i1 %i.bn, label %bb.t, label %bb.u, !prof !29

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #40
          to label %bb.v unwind label %.body.thread174.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.bo = load i64, ptr %i.bf, align 8, !noundef !24 ; 2 uses
  %i.bp = icmp ult i64 %.sroa.412.1, %i.bo
  br i1 %i.bp, label %bb.w, label %.invoke

bb.v:                                             ; preds = %bb.bg, %bb.t
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.412.1 ; 2 uses
  %i.bs = and i64 %.sroa.6.1, 4
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.loopexit, label %.lr.ph

.invoke:                                          ; preds = %bb.ad, %bb.u
  %i.bu = phi i64 [ %.sroa.412.1, %bb.u ], [ %i.hi, %bb.ad ]
  %i.bv = phi i64 [ %i.bo, %bb.u ], [ 0, %bb.ad ]
  %i.bw = phi ptr [ @55, %bb.u ], [ @35, %bb.ad ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.bu, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #40
          to label %.cont unwind label %.body.thread174.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.lr.ph:                                           ; preds = %bb.w, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit
  %.sroa.04.0230 = phi i64 [ %i.by, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.6.1, %bb.w ]
  %i.bx = cmpxchg weak ptr %i.br, i64 %.sroa.04.0230, i64 %i.bm acq_rel monotonic, align 8, !noalias !528
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bx, 1
  br i1 %.sroa.18.0.in.i.i, label %.loopexit, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit

_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit: ; preds = %.lr.ph
  %i.by = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bz = and i64 %i.by, 4
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.am, %bb.ao, %._crit_edge.i.i, %bb.aq, %bb.ar, %bb.ak, %bb.af, %bb.ai, %._crit_edge.i.us.i, %bb.al, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit, %.lr.ph, %bb.w, %bb.x
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %bb.ak ], [ %.sroa.6.1, %bb.x ], [ %.sroa.6.1, %bb.w ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.6.1, %.lr.ph ], [ %i.bm, %bb.al ], [ %.sroa.6.1, %._crit_edge.i.us.i ], [ %.sroa.6.1, %bb.ai ], [ %.sroa.6.1, %bb.af ], [ %.sroa.6.1, %bb.ao ], [ %.sroa.6.1, %bb.am ], [ %.sroa.6.1, %bb.aq ], [ %i.bm, %bb.ar ], [ %.sroa.6.1, %._crit_edge.i.i ] ; 3 uses
  %.sroa.412.2 = phi i64 [ %.sroa.412.1, %bb.ak ], [ %.sroa.412.1, %bb.x ], [ %.sroa.412.1, %bb.w ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ %.sroa.412.1, %.lr.ph ], [ %.sroa.8.1.us.i, %bb.al ], [ %.sroa.412.1, %._crit_edge.i.us.i ], [ %.sroa.412.1, %bb.ai ], [ %.sroa.412.1, %bb.af ], [ %.sroa.412.1, %bb.ao ], [ %.sroa.412.1, %bb.am ], [ %.sroa.412.1, %bb.aq ], [ %.sroa.8.1.i, %bb.ar ], [ %.sroa.412.1, %._crit_edge.i.i ] ; 3 uses
  %.not37 = phi i1 [ false, %bb.ak ], [ false, %bb.x ], [ true, %bb.w ], [ true, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit ], [ true, %.lr.ph ], [ true, %bb.al ], [ false, %._crit_edge.i.us.i ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ao ], [ false, %bb.am ], [ false, %bb.aq ], [ true, %bb.ar ], [ false, %._crit_edge.i.i ] ; 2 uses
  %i.cb = cmpxchg weak ptr %.sroa.02.0234, i64 %i.bh, i64 1 acq_rel monotonic, align 8, !noalias !529
  %.sroa.18.0.in.i.i59 = extractvalue { i64, i1 } %i.cb, 1
  br i1 %.sroa.18.0.in.i.i59, label %bb.as, label %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63

bb.x:                                             ; preds = %bb.r
  br i1 %i.bn, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = inttoptr i64 %i.bl to ptr               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !530, !noalias !531, !nonnull !24, !noundef !24 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %.val1.i.i = load i64, ptr %i.ce, align 8, !alias.scope !530, !noalias !531, !noundef !24 ; 5 uses
  %i.cf = and i64 %.val1.i.i, 7                   ; 7 uses
  %i.cg = and i64 %.val1.i.i, -8                  ; 2 uses
  %.not188 = icmp eq i64 %i.cg, 0
  br i1 %.not188, label %._crit_edge.i110, label %.lr.ph.i103

._crit_edge.i110.loopexit:                        ; preds = %.lr.ph.i103
  %i.ch = and i64 %.val1.i.i, -8
  br label %._crit_edge.i110

._crit_edge.i110:                                 ; preds = %._crit_edge.i110.loopexit, %bb.y
  %.sroa.32.4 = phi i64 [ %i.be, %bb.y ], [ %i.dn, %._crit_edge.i110.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.bc, %bb.y ], [ %i.dl, %._crit_edge.i110.loopexit ] ; 6 uses
  %.sroa.12138.4 = phi i64 [ %i.bd, %bb.y ], [ %i.do, %._crit_edge.i110.loopexit ] ; 4 uses
  %.sroa.0133.4 = phi i64 [ %i.bb, %bb.y ], [ %i.dp, %._crit_edge.i110.loopexit ] ; 4 uses
  %.sroa.0.1.lcssa.i93 = phi i64 [ 0, %bb.y ], [ %i.ch, %._crit_edge.i110.loopexit ] ; 3 uses
  %i.ci = icmp samesign ugt i64 %i.cf, 3
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i110
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i93
  %.sroa.014.0.copyload.i17.i102 = load i32, ptr %i.cj, align 1, !alias.scope !532, !noalias !533
  %i.ck = zext i32 %.sroa.014.0.copyload.i17.i102 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i110
  %.sroa.03.0.i11.i94 = phi i64 [ 4, %bb.z ], [ 0, %._crit_edge.i110 ] ; 5 uses
  %.sroa.0.0.i12.i95 = phi i64 [ %i.ck, %bb.z ], [ 0, %._crit_edge.i110 ] ; 2 uses
  %i.cl = or disjoint i64 %.sroa.03.0.i11.i94, 1
  %i.cm = icmp samesign ult i64 %i.cl, %i.cf
  br i1 %i.cm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr i8, ptr %.val.i.i, i64 %.sroa.0.1.lcssa.i93
  %i.co = getelementptr i8, ptr %i.cn, i64 %.sroa.03.0.i11.i94
  %.sroa.015.0.copyload.i16.i101 = load i16, ptr %i.co, align 1, !alias.scope !532, !noalias !533
  %i.cp = zext i16 %.sroa.015.0.copyload.i16.i101 to i64
  %i.cq = shl nuw nsw i64 %.sroa.03.0.i11.i94, 3
  %i.cr = shl nuw nsw i64 %i.cp, %i.cq
  %i.cs = or i64 %i.cr, %.sroa.0.0.i12.i95
  %i.ct = or disjoint i64 %.sroa.03.0.i11.i94, 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.03.1.i13.i96 = phi i64 [ %i.ct, %bb.ab ], [ %.sroa.03.0.i11.i94, %bb.aa ] ; 3 uses
  %.sroa.0.1.i14.i97 = phi i64 [ %i.cs, %bb.ab ], [ %.sroa.0.0.i12.i95, %bb.aa ] ; 2 uses
  %i.cu = icmp samesign ult i64 %.sroa.03.1.i13.i96, %i.cf
  br i1 %i.cu, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, label %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112

.lr.ph.i103:                                      ; preds = %bb.y, %.lr.ph.i103
  %i.cv = phi i64 [ %i.do, %.lr.ph.i103 ], [ %i.bd, %bb.y ]
  %i.cw = phi i64 [ %i.dl, %.lr.ph.i103 ], [ %i.bc, %bb.y ] ; 3 uses
  %i.cx = phi i64 [ %i.dn, %.lr.ph.i103 ], [ %i.be, %bb.y ]
  %.sroa.0.119.i108 = phi i64 [ %i.dq, %.lr.ph.i103 ], [ 0, %bb.y ] ; 2 uses
  %i.cy = phi i64 [ %i.dp, %.lr.ph.i103 ], [ %i.bb, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.119.i108
  %.sroa.07.0.copyload.i109 = load i64, ptr %i.cz, align 1, !alias.scope !534, !noalias !533 ; 2 uses
  %i.da = xor i64 %.sroa.07.0.copyload.i109, %i.cx ; 3 uses
  %i.db = add i64 %i.cy, %i.cw                    ; 3 uses
  %i.dc = add i64 %i.da, %i.cv                    ; 2 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 13)
  %i.de = xor i64 %i.db, %i.dd                    ; 3 uses
  %i.df = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 16)
  %i.dg = xor i64 %i.dc, %i.df                    ; 3 uses
  %i.dh = tail call noundef i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 32)
  %i.di = add i64 %i.dc, %i.de                    ; 3 uses
  %i.dj = add i64 %i.dg, %i.dh                    ; 2 uses
  %i.dk = tail call noundef i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 17)
  %i.dl = xor i64 %i.di, %i.dk                    ; 2 uses
  %i.dm = tail call noundef i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21)
  %i.dn = xor i64 %i.dm, %i.dj                    ; 2 uses
  %i.do = tail call noundef i64 @llvm.fshl.i64(i64 %i.di, i64 %i.di, i64 32) ; 2 uses
  %i.dp = xor i64 %i.dj, %.sroa.07.0.copyload.i109 ; 2 uses
  %i.dq = add nuw i64 %.sroa.0.119.i108, 8        ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.cg
  br i1 %i.dr, label %.lr.ph.i103, label %._crit_edge.i110.loopexit

_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112: ; preds = %bb.ac
  %i.ds = icmp eq i64 %i.cf, 0
  br i1 %i.ds, label %bb.ad, label %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread: ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112
  %i.dt = shl nuw nsw i64 %i.cf, 3
  %i.du = shl nuw nsw i64 255, %i.dt
  %i.dv = or i64 %i.du, %.sroa.0.1.i14.i97
  br label %bb.ad

_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.ac
  %i.dw = add i64 %.sroa.03.1.i13.i96, %.sroa.0.1.lcssa.i93 ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.val1.i.i
  tail call void @llvm.assume(i1 %i.dx), !noalias !530
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !alias.scope !532, !noalias !533, !noundef !24
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %.sroa.03.1.i13.i96, 3
  %i.ec = shl nuw nsw i64 %i.ea, %i.eb
  %i.ed = shl nuw nsw i64 %i.cf, 3
  %i.ee = shl nuw i64 255, %i.ed
  %i.ef = or i64 %i.ec, %i.ee
  %i.eg = or i64 %i.ef, %.sroa.0.1.i14.i97        ; 3 uses
  %.not189 = icmp eq i64 %i.cf, 7
  br i1 %.not189, label %.thread, label %bb.ad

.thread:                                          ; preds = %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i
  %i.eh = xor i64 %i.eg, %.sroa.32.4              ; 3 uses
  %i.ei = add i64 %.sroa.0133.4, %.sroa.22.4      ; 3 uses
  %i.ej = add i64 %i.eh, %.sroa.12138.4           ; 2 uses
  %i.ek = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.el = xor i64 %i.ei, %i.ek                    ; 3 uses
  %i.em = tail call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 16)
  %i.en = xor i64 %i.ej, %i.em                    ; 3 uses
  %i.eo = tail call noundef i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 32)
  %i.ep = add i64 %i.ej, %i.el                    ; 3 uses
  %i.eq = add i64 %i.en, %i.eo                    ; 2 uses
  %i.er = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 17)
  %i.es = xor i64 %i.ep, %i.er
  %i.et = tail call noundef i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 21)
  %i.eu = xor i64 %i.et, %i.eq
  %i.ev = tail call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %i.ew = xor i64 %i.eq, %i.eg
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread, %.thread
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.32.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.eu, %.thread ], [ %.sroa.32.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112 ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.22.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.es, %.thread ], [ %.sroa.22.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112 ] ; 3 uses
  %.sroa.12138.2 = phi i64 [ %.sroa.12138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.12138.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.ev, %.thread ], [ %.sroa.12138.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112 ]
  %.sroa.0133.2 = phi i64 [ %.sroa.0133.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %.sroa.0133.4, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ %i.ew, %.thread ], [ %.sroa.0133.4, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112 ]
  %.sroa.50.0 = phi i64 [ %i.eg, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i ], [ %i.dv, %_RNvNtNtCscI6d9CVNmLh_4core4hash3sip9u8to64_le.exit.i.thread ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsjsY2yM364a4_11lance_tools.exit112 ]
  %i.ex = shl i64 %.val1.i.i, 56
  %i.ey = add i64 %i.ex, 72057594037927936
  %i.ez = or i64 %.sroa.50.0, %i.ey               ; 2 uses
  %i.fa = xor i64 %i.ez, %.sroa.32.2              ; 3 uses
  %i.fb = tail call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 16)
  %i.fc = add i64 %i.fa, %.sroa.12138.2           ; 2 uses
  %i.fd = xor i64 %i.fb, %i.fc                    ; 3 uses
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %i.fd, i64 %i.fd, i64 21)
  %i.ff = add i64 %.sroa.0133.2, %.sroa.22.2      ; 3 uses
  %i.fg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 32)
  %i.fh = add i64 %i.fd, %i.fg                    ; 2 uses
  %i.fi = xor i64 %i.fe, %i.fh                    ; 3 uses
  %i.fj = tail call noundef i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 16)
  %i.fk = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.fl = xor i64 %i.ff, %i.fk                    ; 3 uses
  %i.fm = add i64 %i.fc, %i.fl                    ; 3 uses
  %i.fn = tail call noundef i64 @llvm.fshl.i64(i64 %i.fm, i64 %i.fm, i64 32)
  %i.fo = xor i64 %i.fn, 255
  %i.fp = add i64 %i.fi, %i.fo                    ; 2 uses
  %i.fq = xor i64 %i.fj, %i.fp                    ; 3 uses
  %i.fr = tail call noundef i64 @llvm.fshl.i64(i64 %i.fq, i64 %i.fq, i64 21)
  %i.fs = xor i64 %i.fh, %i.ez
  %i.ft = tail call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 17)
  %i.fu = xor i64 %i.fm, %i.ft                    ; 3 uses
  %i.fv = add i64 %i.fs, %i.fu                    ; 3 uses
  %i.fw = tail call noundef i64 @llvm.fshl.i64(i64 %i.fv, i64 %i.fv, i64 32)
  %i.fx = add i64 %i.fq, %i.fw                    ; 2 uses
  %i.fy = xor i64 %i.fr, %i.fx                    ; 3 uses
  %i.fz = tail call noundef i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 16)
  %i.ga = tail call noundef i64 @llvm.fshl.i64(i64 %i.fu, i64 %i.fu, i64 13)
  %i.gb = xor i64 %i.fv, %i.ga                    ; 3 uses
  %i.gc = add i64 %i.gb, %i.fp                    ; 3 uses
  %i.gd = tail call noundef i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gc, i64 32)
  %i.ge = add i64 %i.fy, %i.gd                    ; 2 uses
  %i.gf = xor i64 %i.fz, %i.ge                    ; 3 uses
  %i.gg = tail call noundef i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gf, i64 21)
  %i.gh = tail call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 17)
  %i.gi = xor i64 %i.gc, %i.gh                    ; 3 uses
  %i.gj = add i64 %i.gi, %i.fx                    ; 3 uses
  %i.gk = tail call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 32)
  %i.gl = add i64 %i.gf, %i.gk                    ; 2 uses
  %i.gm = xor i64 %i.gg, %i.gl                    ; 3 uses
  %i.gn = tail call noundef i64 @llvm.fshl.i64(i64 %i.gm, i64 %i.gm, i64 16)
  %i.go = tail call noundef i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gi, i64 13)
  %i.gp = xor i64 %i.go, %i.gj                    ; 3 uses
  %i.gq = add i64 %i.gp, %i.ge                    ; 3 uses
  %i.gr = tail call noundef i64 @llvm.fshl.i64(i64 %i.gq, i64 %i.gq, i64 32)
  %i.gs = add i64 %i.gm, %i.gr                    ; 2 uses
  %i.gt = xor i64 %i.gn, %i.gs                    ; 2 uses
  %i.gu = tail call noundef i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 21)
  %i.gv = tail call noundef i64 @llvm.fshl.i64(i64 %i.gp, i64 %i.gp, i64 17)
  %i.gw = xor i64 %i.gv, %i.gq                    ; 3 uses
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
  %4 = icmp eq i64 %i.bl, 0
  %5 = icmp eq i64 %i.bk, 0
  %or.cond41 = or i1 %4, %5
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %.loopexit195, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB2k_16CachedReaderDataEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bh)
          to label %.loopexit195 unwind label %.body.thread174.loopexit

.loopexit195:                                     ; preds = %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63, %bb.at, %bb.as
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.as ], [ %.sroa.6.2, %bb.at ], [ %.sroa.6.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.as ], [ %.sroa.412.2, %bb.at ], [ %.sroa.412.1, %_RINvMs7_NtCskfeRsqx2rfd_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCskTBvlRM5ILY_4moka3cht3map6bucket6BucketNtNtCs40k4W9msRzi_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB34_16CachedReaderDataEEE21compare_exchange_weakINtB6_6SharedBX_EECsjsY2yM364a4_11lance_tools.exit63 ]
  %i.ir = icmp eq ptr %i.bg, %i.ay
  br i1 %i.ir, label %._crit_edge, label %bb.q

bb.au:                                            ; preds = %._crit_edge
  %i.is = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.is, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.it = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.iu = and i64 %i.it, 9223372036854775807
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc68, !prof !26

.noexc68:                                         ; preds = %bb.av
  %i.iw = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.iw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.aw, %.noexc68, %bb.av, %bb.au
  %i.ix = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.iy = icmp eq i32 %i.ix, 2
  br i1 %i.iy, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.ax:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.ax, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i, %bb.ax ], [ %.sroa.0.0.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ null, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  ret ptr %.sroa.0.0

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73: ; preds = %bb.bh, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, %bb.bb, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %i.jr, %bb.bi ], [ %i.jq, %bb.bh ], [ %eh.lpad-body172, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70 ], [ %eh.lpad-body172, %bb.bb ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread174.loopexit, %.body.thread174.loopexit.split-lp, %bb.j, %bb.l, %bb.o
  %eh.lpad-body172 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %lpad.phi.i, %bb.o ], [ %i.ar, %bb.l ], [ %lpad.loopexit, %.body.thread174.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread174.loopexit.split-lp ] ; 2 uses
  %i.iz = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.iz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ay

bb.ay:                                            ; preds = %.body.thread
  %i.ja = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.jb = and i64 %i.ja, 9223372036854775807
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.az, !prof !26

bb.az:                                            ; preds = %bb.ay
  %i.jd = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc71 unwind label %bb.bc

.noexc71:                                         ; preds = %bb.az
  br i1 %i.jd, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70, label %bb.ba

bb.ba:                                            ; preds = %.noexc71
  store atomic i8 1, ptr %i.i monotonic, align 1
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70: ; preds = %bb.ba, %.noexc71, %bb.ay, %.body.thread
  %i.je = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.jf = icmp eq i32 %i.je, 2
  br i1 %i.jf, label %bb.bb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73, !prof !29

bb.bb:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i70
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.az, %bb.bh, %bb.bi
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.bd:                                            ; preds = %bb.a
  %i.jh = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 5 uses
  %i.jj = cmpxchg ptr %i.ji, i32 0, i32 1 acquire monotonic, align 4, !noalias !537
  %i.jk = extractvalue { i32, i1 } %i.jj, 1
  br i1 %i.jk, label %.noexc76, label %bb.be, !prof !26

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ji)
          to label %.noexc76 unwind label %bb.bi

.noexc76:                                         ; preds = %bb.be, %bb.bd
  %i.jl = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !537
  %i.jm = and i64 %i.jl, 9223372036854775807
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %.thread304, label %bb.bf, !prof !26

bb.bf:                                            ; preds = %.noexc76
  %i.jo = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %bb.bj unwind label %bb.bi     ; 2 uses

bb.bg:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsjsY2yM364a4_11lance_tools.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i8 %.sroa.01.0.i.i, ptr %i.jp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs4_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #40
          to label %bb.v unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jq = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.c, align 8
  %.val51 = load i8, ptr %i.jp, align 8, !range !30, !noundef !24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr %.val50, i8 %.val51) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bc

bb.bi:                                            ; preds = %bb.be, %bb.bf, %bb.bl, %bb.bo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison12TryLockErrorINtNtBE_5mutex10MutexGuarduEEECsjsY2yM364a4_11lance_tools(ptr nonnull %i.f, i8 2) #41
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit73 unwind label %bb.bc

bb.bj:                                            ; preds = %bb.bf
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 20 ; 3 uses
  %i.jt = load atomic i8, ptr %i.js monotonic, align 1, !noalias !537
  %.not187 = icmp eq i8 %i.jt, 0
  br i1 %.not187, label %bb.bk, label %bb.bn

.thread304:                                       ; preds = %.noexc76
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 20 ; 3 uses
  %i.jv = load atomic i8, ptr %i.ju monotonic, align 1, !noalias !537
  %.not187306 = icmp eq i8 %i.jv, 0
  br i1 %.not187306, label %.thread309, label %.thread311

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.jo, label %.thread309, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

.thread309:                                       ; preds = %.thread304, %bb.bk
  %i.jw = phi ptr [ %i.js, %bb.bk ], [ %i.ju, %.thread304 ]
  %i.jx = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !538
  %i.jy = and i64 %i.jx, 9223372036854775807
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bl, !prof !26

bb.bl:                                            ; preds = %.thread309
  %i.ka = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc78 unwind label %bb.bi

.noexc78:                                         ; preds = %bb.bl
  br i1 %i.ka, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %.noexc78
  store atomic i8 1, ptr %i.jw monotonic, align 1, !noalias !538
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bm, %.noexc78, %.thread309, %bb.bk
  %i.kb = atomicrmw xchg ptr %i.ji, i32 0 release, align 4, !noalias !538
  %i.kc = icmp eq i32 %i.kb, 2
  br i1 %i.kc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

bb.bn:                                            ; preds = %bb.bj
  br i1 %i.jo, label %.thread311, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

.thread311:                                       ; preds = %.thread304, %bb.bn
  %i.kd = phi ptr [ %i.js, %bb.bn ], [ %i.ju, %.thread304 ]
  %i.ke = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !538
  %i.kf = and i64 %i.ke, 9223372036854775807
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bo, !prof !26

bb.bo:                                            ; preds = %.thread311
  %i.kh = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc79 unwind label %bb.bi

.noexc79:                                         ; preds = %bb.bo
  br i1 %i.kh, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc79
  store atomic i8 1, ptr %i.kd monotonic, align 1, !noalias !538
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bp, %.noexc79, %.thread311, %bb.bn
  %i.ki = atomicrmw xchg ptr %i.ji, i32 0 release, align 4, !noalias !538
  %i.kj = icmp eq i32 %i.ki, 2
  br i1 %i.kj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit, !prof !29

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit.sink.split.i: ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ji)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuarduEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.bi
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_4
begin_hunk_5_@_RNCNvNtCsftBYP88YJaE_11lance_tools4util25get_object_store_and_path0CsjsY2yM364a4_11lance_tools:bb.a
  br label %bb.lv

bb.kl:                                            ; preds = %.noexc154.i.i.i, %.noexc153.i.i.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.acy, %.noexc154.i.i.i ], [ 0, %.noexc153.i.i.i ] ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acp, i64 72 ; 3 uses
  %i.adb = load atomic i8, ptr %i.ada monotonic, align 8, !noalias !11927
  %.not422.i.i.i = icmp eq i8 %i.adb, 0
  br i1 %.not422.i.i.i, label %bb.kv, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.adc = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  br i1 %i.adc, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.add = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11929
  %i.ade = and i64 %i.add, 9223372036854775807
  %i.adf = icmp eq i64 %i.ade, 0
  br i1 %i.adf, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.ko, !prof !26

bb.ko:                                            ; preds = %bb.kn
  %i.adg = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc156.i.i.i unwind label %bb.kr, !noalias !11859

.noexc156.i.i.i:                                  ; preds = %bb.ko
  br i1 %i.adg, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i, label %bb.kp

bb.kp:                                            ; preds = %.noexc156.i.i.i
  store atomic i8 1, ptr %i.ada monotonic, align 8, !noalias !11930
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i: ; preds = %bb.kp, %.noexc156.i.i.i, %bb.kn, %bb.km
  %i.adh = atomicrmw sub ptr %i.acq, i32 1073741823 release, align 4, !noalias !11930
  %i.adi = add i32 %i.adh, -1073741823            ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i32 %i.adi, 1073741824
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ks, label %bb.kq, !prof !55

bb.kq:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.acq, i32 noundef %i.adi)
          to label %bb.ks unwind label %bb.kr, !noalias !11859

bb.kr:                                            ; preds = %bb.kq, %bb.ko
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.ks:                                            ; preds = %bb.kq, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !11931
  %i.adk = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !11931 ; 3 uses
  %i.adl = icmp eq ptr %i.adk, null
  br i1 %i.adl, label %bb.kt, label %bb.mc

bb.kt:                                            ; preds = %bb.ks
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 29) #40
          to label %.noexc163.i.i.i unwind label %bb.ku, !noalias !11859

.noexc163.i.i.i:                                  ; preds = %bb.kt
  unreachable

bb.ku:                                            ; preds = %bb.kt
  %i.adm = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

bb.kv:                                            ; preds = %bb.kl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acp, i64 80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11858
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 1435 ; 2 uses
  store i8 0, ptr %i.ado, align 1, !noalias !11858
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %i.adp, i64 208, i1 false), !noalias !11858
  call void @llvm.experimental.noalias.scope.decl(metadata !11932)
  %i.adq = load ptr, ptr %i.n, align 8, !alias.scope !11932, !noalias !11858, !nonnull !24, !noundef !24 ; 5 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8 ; 3 uses
  br label %.backedge.i.i.i.i.sink.split

.backedge.i.i.i.i.sink.split:                     ; preds = %bb.kv, %bb.kw
  %i.ads = load atomic i64, ptr %i.adr monotonic, align 8, !noalias !11933
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.sink.split, %bb.kz
  %.sroa.0.0.i165.i.i.i = phi i64 [ %.sroa.01.0.i.i166.i.i.i, %bb.kz ], [ %i.ads, %.backedge.i.i.i.i.sink.split ] ; 4 uses
  %i.adt = icmp eq i64 %.sroa.0.0.i165.i.i.i, -1
  br i1 %i.adt, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %.backedge.i.i.i.i
  call void @llvm.x86.sse2.pause(), !noalias !11933
  br label %.backedge.i.i.i.i.sink.split

bb.kx:                                            ; preds = %.backedge.i.i.i.i
  %i.adu = icmp sgt i64 %.sroa.0.0.i165.i.i.i, -1
  br i1 %i.adu, label %bb.kz, label %bb.ky, !prof !26

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11934
  store ptr @380, ptr %i.i, align 8, !noalias !11934
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjsY2yM364a4_11lance_tools, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !11934
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #40
          to label %.noexc167.i.i.i unwind label %bb.mb, !noalias !11859

.noexc167.i.i.i:                                  ; preds = %bb.ky
  unreachable

bb.kz:                                            ; preds = %bb.kx
  %i.adv = add nuw i64 %.sroa.0.0.i165.i.i.i, 1
  %i.adw = cmpxchg weak ptr %i.adr, i64 %.sroa.0.0.i165.i.i.i, i64 %i.adv acquire monotonic, align 8, !noalias !11933 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.adw, 1
  %.sroa.01.0.i.i166.i.i.i = extractvalue { i64, i1 } %i.adw, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9downgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i, label %.backedge.i.i.i.i

.body172.i.i.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %.body172.thread.i.i.i

_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9downgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.kz
  call void @llvm.experimental.noalias.scope.decl(metadata !11935)
  call void @llvm.experimental.noalias.scope.decl(metadata !11936)
  call void @llvm.experimental.noalias.scope.decl(metadata !11937)
  call void @llvm.experimental.noalias.scope.decl(metadata !11938)
  %i.ady = getelementptr inbounds nuw i8, ptr %i.acp, i64 112 ; 2 uses
  %.val7.i.i.i.i.i = load i64, ptr %i.ady, align 8, !alias.scope !11939, !noalias !11940, !noundef !24
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acp, i64 120
  %.val8.i.i.i.i.i = load i64, ptr %i.adz, align 8, !alias.scope !11939, !noalias !11940, !noundef !24
  %i.aea = invoke fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools(i64 %.val7.i.i.i.i.i, i64 %.val8.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.l)
          to label %bb.la unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !11941 ; 2 uses

bb.la:                                            ; preds = %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9downgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11942)
  call void @llvm.experimental.noalias.scope.decl(metadata !11943)
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acp, i64 96 ; 3 uses
  %i.aec = load i64, ptr %i.aeb, align 8, !alias.scope !11944, !noalias !11945, !noundef !24
  %i.aed = icmp eq i64 %i.aec, 0
  br i1 %i.aed, label %bb.lb, label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i, !prof !29

bb.lb:                                            ; preds = %bb.la
  %i.aee = invoke { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0EB1x_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.adn, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ady, i1 noundef zeroext true)
          to label %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !11940 ; 0 uses

_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i: ; preds = %bb.lb, %bb.la
  %.val.i.i.i.i.i.i = load ptr, ptr %i.adn, align 8, !alias.scope !11946, !noalias !11947, !nonnull !24, !noundef !24 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.acp, i64 88 ; 2 uses
  %.val7.i.i.i.i.i.i = load i64, ptr %i.aef, align 8, !alias.scope !11946, !noalias !11947, !noundef !24 ; 3 uses
  %i.aeg = lshr i64 %i.aea, 57
  %i.aeh = trunc nuw nsw i64 %i.aeg to i8         ; 3 uses
  %i.aei = insertelement <16 x i8> poison, i8 %i.aeh, i64 0
  %i.aej = shufflevector <16 x i8> %i.aei, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aek = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aek, align 8, !alias.scope !11948, !noalias !11949 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ael, align 8, !alias.scope !11948, !noalias !11949, !nonnull !24
  %i.aem = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.le, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i
  %.pn.i.i.i.i168.i.i.i = phi i64 [ %i.aea, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %i.afq, %bb.le ]
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %.sroa.4.125.i.i.i.i.i.i.i, %bb.le ]
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %.sroa.04.127.i.i.i.i.i.i.i, %bb.le ]
  %i.aen = phi i64 [ 0, %_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBV_4sync4WeakNtB1v_11ObjectStoreEEE7reserveNCINvNtB8_3map11make_hasherBQ_B2s_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i ], [ %i.afp, %bb.le ]
  %.sroa.0.021.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i168.i.i.i, %.val7.i.i.i.i.i.i ; 4 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.aeo, align 1, !noalias !11950 ; 3 uses
  %i.aep = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, %i.aej
  %i.aeq = bitcast <16 x i1> %i.aep to i16        ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp eq i16 %i.aeq, 0
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.lc, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i
  %.sroa.01.034.i.i.i.i.i.i.i = phi i16 [ %i.aff, %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i ], [ %i.aeq, %bb.lc ] ; 3 uses
  %i.aer = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.034.i.i.i.i.i.i.i, i1 true)
  %i.aes = zext nneg i16 %i.aer to i64
  %i.aet = add i64 %.sroa.0.021.i.i.i.i.i.i.i, %i.aes
  %i.aeu = and i64 %i.aet, %.val7.i.i.i.i.i.i
  %i.aev = load ptr, ptr %i.adn, align 8, !alias.scope !11946, !noalias !11951, !nonnull !24, !noundef !24
  %i.aew = sub nsw i64 0, %i.aeu                  ; 2 uses
  %i.aex = getelementptr inbounds [216 x i8], ptr %i.aev, i64 %i.aew ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11952)
  call void @llvm.experimental.noalias.scope.decl(metadata !11953)
  call void @llvm.experimental.noalias.scope.decl(metadata !11954)
  %i.aey = getelementptr inbounds i8, ptr %i.aex, i64 -200
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aey, align 8, !alias.scope !11955, !noalias !11956, !noundef !24
  %i.aez = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aez, label %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, !prof !33

_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.afa = getelementptr inbounds i8, ptr %i.aex, i64 -208
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afa, align 8, !alias.scope !11955, !noalias !11956, !nonnull !24, !noundef !24
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i.i), !noalias !11957
  %i.afb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afb, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, !prof !33

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.afc = getelementptr inbounds i8, ptr %i.aex, i64 -192
  %i.afd = invoke noundef zeroext i1 @_RNvXs6_NtCsjjbR6Jfsbqw_8lance_io12object_storeNtB5_17ObjectStoreParamsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aem, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.afc)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !11859

.noexc9.i.i.i.i.i:                                ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  br i1 %i.afd, label %bb.lh, label %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, !prof !34

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i, %bb.lc
  %.not13.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %bb.ld, !prof !29

_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc9.i.i.i.i.i, %_RNvXs1h_NtCs40k4W9msRzi_5alloc6stringNtB6_6StringNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.afe = add i16 %.sroa.01.034.i.i.i.i.i.i.i, -1
  %i.aff = and i16 %i.afe, %.sroa.01.034.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i125.i.i = icmp eq i16 %i.aff, 0
  br i1 %.not.i.i.i.i.i125.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ld:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.afg = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, zeroinitializer
  %i.afh = bitcast <16 x i1> %i.afg to i16        ; 2 uses
  %.not.i.i.i.i.i169.i.i.i = icmp eq i16 %i.afh, 0
  br i1 %.not.i.i.i.i.i169.i.i.i, label %bb.le, label %.thread29.i.i.i.i.i.i.i, !prof !29

.thread29.i.i.i.i.i.i.i:                          ; preds = %bb.ld
  %i.afi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.afh, i1 true)
  %i.afj = zext nneg i16 %i.afi to i64
  %i.afk = add i64 %.sroa.0.021.i.i.i.i.i.i.i, %i.afj
  %i.afl = and i64 %i.afk, %.val7.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %.thread29.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.4.126.i.i.i.i.i.i.i = phi i64 [ %i.afl, %.thread29.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.afm = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i, splat (i8 -1)
  %i.afn = bitcast <16 x i1> %i.afm to i16
  %i.afo = icmp eq i16 %i.afn, 0
  br i1 %i.afo, label %bb.le, label %bb.lf, !prof !29

bb.le:                                            ; preds = %.thread.i.i.i.i.i.i.i, %bb.ld
  %.sroa.04.127.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i ], [ 0, %bb.ld ]
  %.sroa.4.125.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.126.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ undef, %bb.ld ]
  %i.afp = add i64 %i.aen, 16                     ; 2 uses
  %i.afq = add i64 %i.afp, %.sroa.0.021.i.i.i.i.i.i.i
  br label %bb.lc

bb.lf:                                            ; preds = %.thread.i.i.i.i.i.i.i
  %i.afr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.sroa.4.126.i.i.i.i.i.i.i
  %i.afs = load i8, ptr %i.afr, align 1, !noalias !11859, !noundef !24
  %i.aft = icmp sgt i8 %i.afs, -1
  br i1 %i.aft, label %bb.lg, label %bb.lj, !prof !29

bb.lg:                                            ; preds = %bb.lf
  %.val2.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i, align 16, !noalias !11859
  %i.afu = icmp slt <16 x i8> %.val2.i.i.i.i.i.i.i.i, zeroinitializer
  %i.afv = bitcast <16 x i1> %i.afu to i16        ; 2 uses
  %.not.i24.i.i.i.i.i.i.i = icmp ne i16 %i.afv, 0
  %i.afw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.afv, i1 true)
  %i.afx = zext nneg i16 %i.afw to i64
  call void @llvm.assume(i1 %.not.i24.i.i.i.i.i.i.i)
  br label %bb.lj

bb.lh:                                            ; preds = %.noexc9.i.i.i.i.i
  %i.afy = load ptr, ptr %i.adn, align 8, !alias.scope !11946, !noalias !11947, !nonnull !24, !noundef !24
  %i.afz = getelementptr inbounds [216 x i8], ptr %i.afy, i64 %i.aew
  %i.aga = getelementptr inbounds i8, ptr %i.afz, i64 -8 ; 2 uses
  %i.agb = load ptr, ptr %i.aga, align 8, !noalias !11859, !nonnull !24, !noundef !24
  store ptr %i.adq, ptr %i.aga, align 8, !noalias !11859
  call void @llvm.experimental.noalias.scope.decl(metadata !11958)
  call void @llvm.experimental.noalias.scope.decl(metadata !11959)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !11960, !noalias !11961 ; 2 uses
  %i.agc = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.agc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ael, align 8, !alias.scope !11960, !noalias !11961, !nonnull !24, !noundef !24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !11962
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i: ; preds = %bb.li, %bb.lh
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsECsjsY2yM364a4_11lance_tools(ptr noalias noundef align 8 dereferenceable(184) %i.aem)
          to label %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %.body172.i.i.i, !noalias !11859

bb.lj:                                            ; preds = %bb.lg, %bb.lf
  %.sroa.3.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.afx, %bb.lg ], [ %.sroa.4.126.i.i.i.i.i.i.i, %bb.lf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.011.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %i.l, i64 208, i1 false), !noalias !11961
  call void @llvm.experimental.noalias.scope.decl(metadata !11963)
  %i.agd = load ptr, ptr %i.adn, align 8, !alias.scope !11964, !noalias !11965, !nonnull !24, !noundef !24 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !noalias !11966, !noundef !24
  %i.agg = and i8 %i.agf, 1
  %i.agh = zext nneg i8 %i.agg to i64
  %i.agi = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i, -16
  %i.agj = load i64, ptr %i.aef, align 8, !alias.scope !11964, !noalias !11965, !noundef !24
  %i.agk = and i64 %i.agj, %i.agi
  store i8 %i.aeh, ptr %i.age, align 1, !noalias !11966
  %i.agl = getelementptr i8, ptr %i.agd, i64 %i.agk
  %i.agm = getelementptr i8, ptr %i.agl, i64 16
  store i8 %i.aeh, ptr %i.agm, align 1, !noalias !11966
  %i.agn = load <2 x i64>, ptr %i.aeb, align 8, !alias.scope !11964, !noalias !11965
  %i.ago = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.agh, i64 0
  %i.agp = sub <2 x i64> %i.agn, %i.ago
  store <2 x i64> %i.agp, ptr %i.aeb, align 8, !alias.scope !11964, !noalias !11965
  %i.agq = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i
  %i.agr = getelementptr inbounds [216 x i8], ptr %i.agd, i64 %i.agq ; 2 uses
  %i.ags = getelementptr inbounds i8, ptr %i.agr, i64 -216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.ags, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.011.i.i.i.i.i, i64 208, i1 false), !noalias !11967
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %i.agr, i64 -8
  store ptr %i.adq, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !11967
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i.i.i.i.i)
  br label %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtBX_4sync4WeakNtB1x_11ObjectStoreEEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_B2u_E0NCINvB3E_11make_hasherBS_B2u_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0CsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lk

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.lb, %_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9downgradeCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.lk

bb.lk:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  %i.agt = icmp eq ptr %i.adq, inttoptr (i64 -1 to ptr)
  br i1 %i.agt, label %bb.lo, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.agu = atomicrmw sub ptr %i.adr, i64 1 release, align 8, !noalias !11968
  %i.agv = icmp eq i64 %i.agu, 1
  br i1 %i.agv, label %bb.lm, label %bb.lo

bb.lm:                                            ; preds = %bb.ll
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.adq, i64 noundef 144, i64 noundef 8) #36, !noalias !11859
  br label %bb.lo

bb.ln:                                            ; preds = %bb.lo
  %i.agw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42, !noalias !11859
  unreachable

bb.lo:                                            ; preds = %bb.lm, %bb.ll, %bb.lk
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.l) #41
          to label %.body172.thread.i.i.i unwind label %bb.ln, !noalias !11859

_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.lj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i
  %.sroa.0.0.i.i170.i.i.i = phi ptr [ null, %bb.lj ], [ %i.agb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEECsjsY2yM364a4_11lance_tools.exit.i.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11858
  %magicptr.i.i.i.i = ptrtoint ptr %.sroa.0.0.i.i170.i.i.i to i64
  %magicptr.off.i.i.i.i = add i64 %magicptr.i.i.i.i, -1
  %switch.i.i.i.i = icmp ult i64 %magicptr.off.i.i.i.i, -2
  br i1 %switch.i.i.i.i, label %bb.lp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.lp:                                            ; preds = %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i170.i.i.i, i64 8
  %i.agy = atomicrmw sub ptr %i.agx, i64 1 release, align 8, !noalias !11859
  %i.agz = icmp eq i64 %i.agy, 1
  br i1 %i.agz, label %bb.lq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

bb.lq:                                            ; preds = %bb.lp
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i.i170.i.i.i, i64 noundef 144, i64 noundef 8) #36, !noalias !11859
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i: ; preds = %bb.lq, %bb.lp, %_RNvMs2_NtNtNtCsgczF5crJ4sT_3std11collections4hash3mapINtB5_7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB18_4sync4WeakNtB1I_11ObjectStoreEE6insertCsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.aha = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  br i1 %i.aha, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.ahb = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !11858
  %i.ahc = and i64 %i.ahb, 9223372036854775807
  %i.ahd = icmp eq i64 %i.ahc, 0
  br i1 %i.ahd, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.ls, !prof !26

bb.ls:                                            ; preds = %bb.lr
  %i.ahe = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc174.i.i.i unwind label %bb.lx, !noalias !11859

.noexc174.i.i.i:                                  ; preds = %bb.ls
  br i1 %i.ahe, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %.noexc174.i.i.i
  store atomic i8 1, ptr %i.ada monotonic, align 8, !noalias !11859
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.lt, %.noexc174.i.i.i, %bb.lr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync4WeakNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEEECsjsY2yM364a4_11lance_tools.exit.i.i.i
  %i.ahf = atomicrmw sub ptr %i.acq, i32 1073741823 release, align 4, !noalias !11859
  %i.ahg = add i32 %i.ahf, -1073741823            ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ahg, 1073741824
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i, label %bb.lu, !prof !55

bb.lu:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.acq, i32 noundef %i.ahg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjbR6Jfsbqw_8lance_io12object_store17ObjectStoreParamsEINtNtB2o_4sync4WeakNtB2Y_11ObjectStoreEEEECsjsY2yM364a4_11lance_tools.exit.i.i.i unwind label %bb.lx, !noalias !11859

bb.lv:                                            ; preds = %.body172.thread.i.i.i, %bb.lx, %bb.ku, %bb.kr, %bb.kk
  %.pn47.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body173416.i.i.i, %.body172.thread.i.i.i ], [ %i.ahk, %bb.lx ], [ %i.acz, %bb.kk ], [ %i.adm, %bb.ku ], [ %i.adj, %bb.kr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11969)
  call void @llvm.experimental.noalias.scope.decl(metadata !11970)
  %i.ahh = load ptr, ptr %i.n, align 8, !alias.scope !11971, !noalias !11858, !nonnull !24, !noundef !24
  %i.ahi = atomicrmw sub ptr %i.ahh, i64 1 release, align 8, !noalias !11972
  %i.ahj = icmp eq i64 %i.ahi, 1
  br i1 %i.ahj, label %bb.lw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i

bb.lw:                                            ; preds = %bb.lv
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io12object_store11ObjectStoreEECsjsY2yM364a4_11lance_tools.exit177.i.i.i unwind label %bb.im, !noalias !11859

end_hunk_5
