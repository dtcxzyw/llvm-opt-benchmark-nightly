Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73510
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE21retry_interrupted_ops0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.v = load atomic i64, ptr %.val26 monotonic, align 8, !noalias !151786
  %i.w = getelementptr inbounds nuw i8, ptr %.val26, i64 400 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val26, i64 392 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val26, i64 408
  %i.z = getelementptr inbounds nuw i8, ptr %.val26, i64 416
  %i.aa = getelementptr inbounds nuw i8, ptr %.val26, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %.val26, i64 384
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge, %bb.f
  %.sroa.0.023.i.i.i = phi i32 [ 0, %bb.f ], [ %.sroa.0.023.i.i.i.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i.i = phi i64 [ %i.v, %bb.f ], [ %.sroa.04.0.i.i.i.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge ] ; 7 uses
  %i.ac = load i64, ptr %i.w, align 16, !noalias !151786, !noundef !416
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %.sroa.04.0.i.i.i        ; 3 uses
  %i.af = load i64, ptr %i.x, align 8, !noalias !151786, !noundef !416
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %.sroa.04.0.i.i.i, %i.ag
  %i.ai = load ptr, ptr %i.y, align 8, !noalias !151786, !nonnull !416, !noundef !416
  %i.aj = load i64, ptr %i.z, align 16, !noalias !151786, !noundef !416
  %i.ak = icmp ult i64 %i.ae, %i.aj
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %i.ae ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !151786 ; 3 uses
  %i.ao = add i64 %.sroa.04.0.i.i.i, 1
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i
  %i.aq = icmp eq i64 %i.an, %.sroa.04.0.i.i.i
  br i1 %i.aq, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i
  %i.ar = add nuw i64 %i.ae, 1
  %i.as = load i64, ptr %i.ab, align 128, !noalias !151786, !noundef !416
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.au = icmp ult i32 %.sroa.0.023.i.i.i, 7
  br i1 %i.au, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %.loopexit.i.i.i.i
  %i.av = icmp ult i32 %.sroa.0.023.i.i.i, 11
  br i1 %i.av, label %.loopexit.i.thread.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.i, %.preheader.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i32 [ %i.aw, %.preheader.i.i.i.i ], [ 0, %bb.i ]
  %i.aw = add nuw nsw i32 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151786
  %.sroa.0.0.highbits.i.i.i.i = lshr i32 %i.aw, %.sroa.0.023.i.i.i
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i, 0
  br i1 %i.ax, label %.preheader.i.i.i.i, label %.loopexit.i.thread.i.i.i

.loopexit.i.thread.i.i.i:                         ; preds = %.preheader.i.i.i.i, %.noexc30
  %i.ay = add nuw nsw i32 %.sroa.0.023.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i: ; preds = %.loopexit.i.thread.i.i.i, %.noexc30
  %.sroa.0.2.i.i.i = phi i32 [ %i.ay, %.loopexit.i.thread.i.i.i ], [ %.sroa.0.023.i.i.i, %.noexc30 ]
  %i.az = load atomic i64, ptr %.val26 monotonic, align 16, !noalias !151786
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge

bb.j:                                             ; preds = %bb.g
  fence seq_cst
  %i.ba = load atomic i64, ptr %i.aa monotonic, align 16, !noalias !151786 ; 2 uses
  %i.bb = load i64, ptr %i.w, align 16, !noalias !151786, !noundef !416 ; 2 uses
  %i.bc = xor i64 %i.bb, -1
  %i.bd = and i64 %i.ba, %i.bc
  %i.be = icmp eq i64 %i.bd, %.sroa.04.0.i.i.i
  br i1 %i.be, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i, i32 6)
  br label %bb.l

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i: ; preds = %bb.l
  %i.bf = icmp ult i32 %.sroa.0.023.i.i.i, 7
  %i.bg = zext i1 %i.bf to i32
  %spec.select.i.i.i = add nuw nsw i32 %.sroa.0.023.i.i.i, %i.bg
  %i.bh = load atomic i64, ptr %.val26 monotonic, align 16, !noalias !151786
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.02.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.bi, %bb.l ]
  %i.bi = add nuw nsw i32 %.sroa.0.02.i.i.i.i, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151786
  %.sroa.0.0.highbits.i13.i.i.i = lshr i32 %i.bi, %.sroa.0.0.i.i.i.i.i
  %i.bj = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i, 0
  br i1 %i.bj, label %bb.l, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.bk = and i64 %i.bb, %i.ba
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.sink.split, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

bb.n:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.x, align 8, !noalias !151786, !noundef !416
  %i.bn = add i64 %i.bm, %i.ah
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.sroa.01.0.i.i.i = phi i64 [ %i.bn, %bb.n ], [ %i.an, %bb.h ]
  %i.bo = cmpxchg weak ptr %.val26, i64 %.sroa.04.0.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !151786 ; 2 uses
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.bo, 1
  %.sroa.01.0.i.i.i.i = extractvalue { i64, i1 } %i.bo, 0
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.i.i14.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i, i32 6)
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.bp = icmp ult i32 %.sroa.0.023.i.i.i, 7
  %i.bq = zext i1 %i.bp to i32
  %spec.select24.i.i.i = add nuw nsw i32 %.sroa.0.023.i.i.i, %i.bq
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge: ; preds = %bb.q, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i
  %.sroa.0.023.i.i.i.be = phi i32 [ %.sroa.0.2.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i ], [ %spec.select.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i ], [ %spec.select24.i.i.i, %bb.q ]
  %.sroa.04.0.i.i.i.be = phi i64 [ %i.az, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i ], [ %i.bh, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i ], [ %.sroa.01.0.i.i.i.i, %bb.q ]
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i

bb.r:                                             ; preds = %bb.r, %bb.p
  %.sroa.0.02.i15.i.i.i = phi i32 [ 0, %bb.p ], [ %i.br, %bb.r ]
  %i.br = add nuw nsw i32 %.sroa.0.02.i15.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151786
  %.sroa.0.0.highbits.i16.i.i.i = lshr i32 %i.br, %.sroa.0.0.i.i14.i.i.i
  %i.bs = icmp eq i32 %.sroa.0.0.highbits.i16.i.i.i, 0
  br i1 %i.bs, label %bb.r, label %bb.q

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i)
  br label %bb.v

bb.s:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1n_16CachedReaderDataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(64) %i.d) #73
          to label %.body unwind label %bb.u, !noalias !151787

bb.t:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bv = load i64, ptr %i.x, align 8, !noalias !151786, !noundef !416
  %i.bw = add i64 %i.bv, %.sroa.04.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !151787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !noalias !151787
  store atomic i64 %i.bw, ptr %i.bu release, align 8, !noalias !151787
  %i.bx = getelementptr inbounds nuw i8, ptr %.val26, i64 256
  invoke fastcc void @_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bx)
          to label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.s, !noalias !151787

bb.u:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !151787
  unreachable

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.t
  %.sroa.04.0.copyload5.i.i = load i16, ptr %i.d, align 8, !noalias !151788 ; 2 uses
  %.sroa.66.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.0..sroa_idx7.i.i, i64 62, i1 false), !noalias !151788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !151787
  %i.bz = icmp eq i16 %.sroa.04.0.copyload5.i.i, -2
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.ca, align 2, !alias.scope !151788
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.i.i, i64 62, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge.i.i = phi i16 [ %.sroa.04.0.copyload5.i.i, %bb.w ], [ -2, %bb.v ] ; 2 uses
  store i16 %storemerge.i.i, ptr %0, align 8, !alias.scope !151788
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.y:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !151789)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i.i)
  %i.cb = load atomic i64, ptr %.val26 acquire, align 8, !noalias !151790
  %i.cc = getelementptr inbounds nuw i8, ptr %.val26, i64 8 ; 5 uses
  %i.cd = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !151790
  %i.ce = getelementptr inbounds nuw i8, ptr %.val26, i64 128
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.y
  %.sroa.0.032.i.i.i = phi i32 [ 0, %bb.y ], [ %.sroa.0.032.i.i.i.be, %.backedge.i.i.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i.i = phi ptr [ %i.cd, %bb.y ], [ %.sroa.014.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 8 uses
  %.sroa.05.0.i.i.i = phi i64 [ %i.cb, %bb.y ], [ %.sroa.05.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 6 uses
  %i.cf = lshr i64 %.sroa.05.0.i.i.i, 1           ; 2 uses
  %i.cg = and i64 %i.cf, 31                       ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 31
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.backedge.i.i.i
  %i.ci = icmp ult i32 %.sroa.0.032.i.i.i, 7
  br i1 %i.ci, label %.preheader.i.i.i12.i, label %.loopexit.i.i.i8.i

.loopexit.i.i.i8.i:                               ; preds = %bb.z
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %.loopexit.i.i.i8.i
  %i.cj = icmp ult i32 %.sroa.0.032.i.i.i, 11
  br i1 %i.cj, label %.loopexit.i.thread.i.i11.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i

.preheader.i.i.i12.i:                             ; preds = %bb.z, %.preheader.i.i.i12.i
  %.sroa.0.03.i.i.i13.i = phi i32 [ %i.ck, %.preheader.i.i.i12.i ], [ 0, %bb.z ]
  %i.ck = add nuw nsw i32 %.sroa.0.03.i.i.i13.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151790
  %.sroa.0.0.highbits.i.i.i14.i = lshr i32 %i.ck, %.sroa.0.032.i.i.i
  %i.cl = icmp eq i32 %.sroa.0.0.highbits.i.i.i14.i, 0
  br i1 %i.cl, label %.preheader.i.i.i12.i, label %.loopexit.i.thread.i.i11.i

.loopexit.i.thread.i.i11.i:                       ; preds = %.preheader.i.i.i12.i, %.noexc31
  %i.cm = add nuw nsw i32 %.sroa.0.032.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i: ; preds = %.loopexit.i.thread.i.i11.i, %.noexc31
  %.sroa.0.2.i.i10.i = phi i32 [ %i.cm, %.loopexit.i.thread.i.i11.i ], [ %.sroa.0.032.i.i.i, %.noexc31 ]
  %i.cn = load atomic i64, ptr %.val26 acquire, align 8, !noalias !151790
  %i.co = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !151790
  br label %.backedge.i.i.i.backedge

bb.aa:                                            ; preds = %.backedge.i.i.i
  %i.cp = add i64 %.sroa.05.0.i.i.i, 2            ; 2 uses
  %i.cq = and i64 %.sroa.05.0.i.i.i, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  fence seq_cst
  %i.cs = load atomic i64, ptr %i.ce monotonic, align 8, !noalias !151790 ; 3 uses
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.cf, %i.ct
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.unshifted.i.i.i = xor i64 %i.cs, %.sroa.05.0.i.i.i
  %.not.i.i.i = icmp ult i64 %.not.unshifted.i.i.i, 64
  %2 = add i64 %.sroa.05.0.i.i.i, 3
  %spec.select.i.i7.i = select i1 %.not.i.i.i, i64 %i.cp, i64 %2
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cv = and i64 %i.cs, 1
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %.sroa.01.0.i.i1.i = phi i64 [ %i.cp, %bb.aa ], [ %spec.select.i.i7.i, %bb.ac ] ; 2 uses
  %i.cx = icmp eq ptr %.sroa.014.0.i.i.i, null
  br i1 %i.cx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp ult i32 %.sroa.0.032.i.i.i, 7
  br i1 %i.cy, label %.preheader.i21.i.i.i, label %.loopexit.i20.i.i.i

.loopexit.i20.i.i.i:                              ; preds = %bb.af
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %.loopexit.i20.i.i.i
  %i.cz = icmp ult i32 %.sroa.0.032.i.i.i, 11
  br i1 %i.cz, label %.loopexit.i20.thread.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i

.preheader.i21.i.i.i:                             ; preds = %bb.af, %.preheader.i21.i.i.i
  %.sroa.0.03.i22.i.i.i = phi i32 [ %i.da, %.preheader.i21.i.i.i ], [ 0, %bb.af ]
  %i.da = add nuw nsw i32 %.sroa.0.03.i22.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151790
  %.sroa.0.0.highbits.i23.i.i.i = lshr i32 %i.da, %.sroa.0.032.i.i.i
  %i.db = icmp eq i32 %.sroa.0.0.highbits.i23.i.i.i, 0
  br i1 %i.db, label %.preheader.i21.i.i.i, label %.loopexit.i20.thread.i.i.i

.loopexit.i20.thread.i.i.i:                       ; preds = %.preheader.i21.i.i.i, %.noexc32
  %i.dc = add nuw nsw i32 %.sroa.0.032.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i: ; preds = %.loopexit.i20.thread.i.i.i, %.noexc32
  %.sroa.0.3.i.i.i = phi i32 [ %i.dc, %.loopexit.i20.thread.i.i.i ], [ %.sroa.0.032.i.i.i, %.noexc32 ]
  %i.dd = load atomic i64, ptr %.val26 acquire, align 8, !noalias !151790
  %i.de = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !151790
  br label %.backedge.i.i.i.backedge

bb.ag:                                            ; preds = %bb.ae
  %i.df = cmpxchg weak ptr %.val26, i64 %.sroa.05.0.i.i.i, i64 %.sroa.01.0.i.i1.i seq_cst acquire, align 8, !noalias !151790 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i = extractvalue { i64, i1 } %i.df, 1
  %.sroa.01.0.i.i.i3.i = extractvalue { i64, i1 } %i.df, 0
  br i1 %.sroa.18.0.in.i.i.i2.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !151790
  %.sroa.0.0.i.i.i.i4.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.032.i.i.i, i32 6)
  br label %bb.ai

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i: ; preds = %bb.ai
  %i.dh = icmp ult i32 %.sroa.0.032.i.i.i, 7
  %i.di = zext i1 %i.dh to i32
  %spec.select33.i.i.i = add nuw nsw i32 %.sroa.0.032.i.i.i, %i.di
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i
  %.sroa.0.032.i.i.i.be = phi i32 [ %spec.select33.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i ], [ %.sroa.0.2.i.i10.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i ], [ %.sroa.0.3.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i ]
  %.sroa.014.0.i.i.i.be = phi ptr [ %i.dg, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i ], [ %i.co, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i ], [ %i.de, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i ]
  %.sroa.05.0.i.i.i.be = phi i64 [ %.sroa.01.0.i.i.i3.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i ], [ %i.cn, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i ], [ %i.dd, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i ]
  br label %.backedge.i.i.i

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.02.i.i.i5.i = phi i32 [ 0, %bb.ah ], [ %i.dj, %bb.ai ]
  %i.dj = add nuw nsw i32 %.sroa.0.02.i.i.i5.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151790
  %.sroa.0.0.highbits.i25.i.i.i = lshr i32 %i.dj, %.sroa.0.0.i.i.i.i4.i
  %i.dk = icmp eq i32 %.sroa.0.0.highbits.i25.i.i.i, 0
  br i1 %i.dk, label %bb.ai, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i

bb.aj:                                            ; preds = %bb.ag
  %i.dl = icmp eq i64 %i.cg, 30
  br i1 %i.dl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load atomic ptr, ptr %.sroa.014.0.i.i.i acquire, align 8, !noalias !151790 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.lr.ph.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i
  %.sroa.0.02.i26.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ], [ 0, %bb.ak ] ; 5 uses
  %i.do = icmp ult i32 %.sroa.0.02.i26.i.i.i, 7
  br i1 %i.do, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %.loopexit.i.i.i.i.i
  %i.dp = icmp ult i32 %.sroa.0.02.i26.i.i.i, 11
  br i1 %i.dp, label %.loopexit.i.thread.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i32 [ %i.dq, %.preheader.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dq = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151790
  %.sroa.0.0.highbits.i.i.i.i.i = lshr i32 %i.dq, %.sroa.0.02.i26.i.i.i
  %i.dr = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i, 0
  br i1 %i.dr, label %.preheader.i.i.i.i.i, label %.loopexit.i.thread.i.i.i.i

.loopexit.i.thread.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i, %.noexc33
  %i.ds = add nuw nsw i32 %.sroa.0.02.i26.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i: ; preds = %.loopexit.i.thread.i.i.i.i, %.noexc33
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.ds, %.loopexit.i.thread.i.i.i.i ], [ %.sroa.0.02.i26.i.i.i, %.noexc33 ]
  %i.dt = load atomic ptr, ptr %.sroa.014.0.i.i.i acquire, align 8, !noalias !151790 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.lr.ph.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i, %bb.ak
  %.lcssa.i.i.i.i = phi ptr [ %i.dm, %bb.ak ], [ %i.dt, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ] ; 2 uses
  %i.dv = and i64 %.sroa.01.0.i.i1.i, -2
  %i.dw = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !151790
  %3 = icmp eq ptr %i.dw, null
  %spec.select19.v.i.i.i = select i1 %3, i64 2, i64 3
  %spec.select19.i.i.i = add i64 %spec.select19.v.i.i.i, %i.dv
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.cc release, align 8, !noalias !151790
  store atomic i64 %spec.select19.i.i.i, ptr %.val26 release, align 8, !noalias !151790
  br label %bb.al

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.dx, align 2, !alias.scope !151791
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.al:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i, i64 8
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %i.dy, i64 %i.cg ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64 ; 3 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !noalias !151792
  %i.ec = and i64 %i.eb, 1
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i2.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i2.i.i:                                  ; preds = %bb.al, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i
  %.sroa.0.02.i.i3.i.i = phi i32 [ %.sroa.0.1.i.i6.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i ], [ 0, %bb.al ] ; 5 uses
  %i.ee = icmp ult i32 %.sroa.0.02.i.i3.i.i, 7
  br i1 %i.ee, label %.preheader.i.i.i8.i.i, label %.loopexit.i.i.i4.i.i

.loopexit.i.i.i4.i.i:                             ; preds = %.lr.ph.i.i2.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %.loopexit.i.i.i4.i.i
  %i.ef = icmp ult i32 %.sroa.0.02.i.i3.i.i, 11
  br i1 %i.ef, label %.loopexit.i.thread.i.i7.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i

.preheader.i.i.i8.i.i:                            ; preds = %.lr.ph.i.i2.i.i, %.preheader.i.i.i8.i.i
  %.sroa.0.03.i.i.i9.i.i = phi i32 [ %i.eg, %.preheader.i.i.i8.i.i ], [ 0, %.lr.ph.i.i2.i.i ]
  %i.eg = add nuw nsw i32 %.sroa.0.03.i.i.i9.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !151792
  %.sroa.0.0.highbits.i.i.i10.i.i = lshr i32 %i.eg, %.sroa.0.02.i.i3.i.i
  %i.eh = icmp eq i32 %.sroa.0.0.highbits.i.i.i10.i.i, 0
  br i1 %i.eh, label %.preheader.i.i.i8.i.i, label %.loopexit.i.thread.i.i7.i.i

.loopexit.i.thread.i.i7.i.i:                      ; preds = %.preheader.i.i.i8.i.i, %.noexc34
  %i.ei = add nuw nsw i32 %.sroa.0.02.i.i3.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i: ; preds = %.loopexit.i.thread.i.i7.i.i, %.noexc34
  %.sroa.0.1.i.i6.i.i = phi i32 [ %i.ei, %.loopexit.i.thread.i.i7.i.i ], [ %.sroa.0.02.i.i3.i.i, %.noexc34 ]
  %i.ej = load atomic i64, ptr %i.ea acquire, align 8, !noalias !151792
  %i.ek = and i64 %i.ej, 1
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i2.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i, %bb.al
  %.sroa.018.0.copyload.i.i = load i16, ptr %i.dz, align 8, !noalias !151792 ; 2 uses
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.419.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.419.0..sroa_idx.i.i, i64 62, i1 false), !noalias !151791
  %i.em = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %i.en = icmp eq i64 %i.em, 31
  br i1 %i.en, label %.lr.ph.i2.i.i.i, label %bb.ap

.lr.ph.i2.i.i.i:                                  ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.ao
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.ew, %bb.ao ], [ 0, %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [72 x i8], ptr %.sroa.014.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72 ; 2 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8, !noalias !151792
  %i.er = and i64 %i.eq, 2
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.am, label %.lr.ph.i2.i.i.i.1

bb.am:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.et = atomicrmw or ptr %i.ep, i64 4 acq_rel, align 8, !noalias !151792
  %i.eu = and i64 %i.et, 2
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.am, %.lr.ph.i2.i.i.i
  %i.ew = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.ex = getelementptr inbounds nuw [72 x i8], ptr %.sroa.014.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 144 ; 2 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8, !noalias !151792
  %i.fa = and i64 %i.ez, 2
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.fc = atomicrmw or ptr %i.ey, i64 4 acq_rel, align 8, !noalias !151792
  %i.fd = and i64 %i.fc, 2
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ew, 30
  br i1 %exitcond.not.i.i.i.i.1, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i2.i.i.i

bb.ap:                                            ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.ff = atomicrmw or ptr %i.ea, i64 2 acq_rel, align 8, !noalias !151792
  %i.fg = and i64 %i.ff, 4
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.aq

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %bb.as, %bb.ao, %bb.aq
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i.i, i64 noundef 2240, i64 noundef 8) #68, !noalias !151792
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fi = icmp samesign ult i64 %i.cg, 29
  br i1 %i.fi, label %.lr.ph.i4.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.aq, %bb.as
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.fj, %bb.as ], [ %i.em, %bb.aq ] ; 2 uses
  %i.fj = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %.sroa.014.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72 ; 2 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8, !noalias !151792
  %i.fn = and i64 %i.fm, 2
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.fp = atomicrmw or ptr %i.fl, i64 4 acq_rel, align 8, !noalias !151792
  %i.fq = and i64 %i.fp, 2
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i4.i.i.i
  %exitcond.not.i6.i.i.i = icmp eq i64 %i.fj, 30
  br i1 %exitcond.not.i6.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i4.i.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ar, %bb.am, %bb.an, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.ap
  %i.fs = icmp eq i16 %.sroa.018.0.copyload.i.i, -2
  br i1 %i.fs, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.at

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.ft, align 2, !alias.scope !151791
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.at:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.417.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.419.i.i, i64 62, i1 false)
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.at, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sink.i = phi i16 [ -2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ -2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %.sroa.018.0.copyload.i.i, %bb.at ] ; 2 uses
  store i16 %.sink.i, ptr %0, align 8, !alias.scope !151791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.au:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !151793)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.739.i.i)
  %i.fu = cmpxchg ptr %.val26, i32 0, i32 1 acquire monotonic, align 4, !noalias !151794
  %i.fv = extractvalue { i32, i1 } %i.fu, 1
  br i1 %i.fv, label %.noexc35, label %bb.av, !prof !439

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val26)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.av, %bb.au
  %i.fw = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !151794
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.aw, !prof !439

bb.aw:                                            ; preds = %.noexc35
  %i.fz = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.aw
  %i.ga = xor i1 %i.fz, true
  %i.gb = zext i1 %i.ga to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.noexc36, %.noexc35
  %.sroa.01.0.i.i.i15.i = phi i8 [ %i.gb, %.noexc36 ], [ 0, %.noexc35 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val26, i64 4 ; 3 uses
  %i.gd = load atomic i8, ptr %i.gc monotonic, align 1, !noalias !151794
  %.not.i.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ax, !prof !439

bb.ax:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !151795
  store ptr %.val26, ptr %i.b, align 8, !noalias !151795
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i15.i, ptr %i.ge, align 8, !noalias !151795
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3277) #72
          to label %bb.az unwind label %bb.ay, !noalias !151796

bb.ay:                                            ; preds = %bb.ax
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #73
          to label %.body unwind label %bb.ba, !noalias !151796

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !151796
end_hunk_0
begin_hunk_1_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.yf = getelementptr inbounds nuw i8, ptr %.val25.i, i64 392 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.val25.i, i64 408
  %i.yh = getelementptr inbounds nuw i8, ptr %.val25.i, i64 416
  %i.yi = getelementptr inbounds nuw i8, ptr %.val25.i, i64 128
  %i.yj = getelementptr inbounds nuw i8, ptr %.val25.i, i64 384
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge, %bb.fp
  %.sroa.0.023.i.i.i.i = phi i32 [ 0, %bb.fp ], [ %.sroa.0.023.i.i.i.i.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.yd, %bb.fp ], [ %.sroa.04.0.i.i.i.i.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge ] ; 7 uses
  %i.yk = load i64, ptr %i.ye, align 16, !noalias !173796, !noundef !416
  %i.yl = add i64 %i.yk, -1
  %i.ym = and i64 %i.yl, %.sroa.04.0.i.i.i.i      ; 3 uses
  %i.yn = load i64, ptr %i.yf, align 8, !noalias !173796, !noundef !416
  %i.yo = sub i64 0, %i.yn
  %i.yp = and i64 %.sroa.04.0.i.i.i.i, %i.yo
  %i.yq = load ptr, ptr %i.yg, align 8, !noalias !173796, !nonnull !416, !noundef !416
  %i.yr = load i64, ptr %i.yh, align 16, !noalias !173796, !noundef !416
  %i.ys = icmp ult i64 %i.ym, %i.yr
  call void @llvm.assume(i1 %i.ys)
  %i.yt = getelementptr inbounds nuw [24 x i8], ptr %i.yq, i64 %i.ym ; 5 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.yv = load atomic i64, ptr %i.yu acquire, align 8, !noalias !173796 ; 3 uses
  %i.yw = add i64 %.sroa.04.0.i.i.i.i, 1
  %i.yx = icmp eq i64 %i.yw, %i.yv
  br i1 %i.yx, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i
  %i.yy = icmp eq i64 %i.yv, %.sroa.04.0.i.i.i.i
  br i1 %i.yy, label %bb.ft, label %bb.fs

bb.fr:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i
  %i.yz = add nuw i64 %i.ym, 1
  %i.za = load i64, ptr %i.yj, align 128, !noalias !173796, !noundef !416
  %i.zb = icmp ult i64 %i.yz, %i.za
  br i1 %i.zb, label %bb.fy, label %bb.fx

bb.fs:                                            ; preds = %bb.fq
  %i.zc = icmp ult i32 %.sroa.0.023.i.i.i.i, 7
  br i1 %i.zc, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.fs
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc.i unwind label %.loopexit.i183

.noexc.i:                                         ; preds = %.loopexit.i.i.i.i.i
  %i.zd = icmp ult i32 %.sroa.0.023.i.i.i.i, 11
  br i1 %i.zd, label %.loopexit.i.thread.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.fs, %.preheader.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i32 [ %i.ze, %.preheader.i.i.i.i.i ], [ 0, %bb.fs ]
  %i.ze = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173796
  %.sroa.0.0.highbits.i.i.i.i.i = lshr i32 %i.ze, %.sroa.0.023.i.i.i.i
  %i.zf = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i, 0
  br i1 %i.zf, label %.preheader.i.i.i.i.i, label %.loopexit.i.thread.i.i.i.i

.loopexit.i.thread.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i, %.noexc.i
  %i.zg = add nuw nsw i32 %.sroa.0.023.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i: ; preds = %.loopexit.i.thread.i.i.i.i, %.noexc.i
  %.sroa.0.2.i.i.i.i = phi i32 [ %i.zg, %.loopexit.i.thread.i.i.i.i ], [ %.sroa.0.023.i.i.i.i, %.noexc.i ]
  %i.zh = load atomic i64, ptr %.val25.i monotonic, align 16, !noalias !173796
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge

bb.ft:                                            ; preds = %bb.fq
  fence seq_cst
  %i.zi = load atomic i64, ptr %i.yi monotonic, align 16, !noalias !173796 ; 2 uses
  %i.zj = load i64, ptr %i.ye, align 16, !noalias !173796, !noundef !416 ; 2 uses
  %i.zk = xor i64 %i.zj, -1
  %i.zl = and i64 %i.zi, %i.zk
  %i.zm = icmp eq i64 %i.zl, %.sroa.04.0.i.i.i.i
  br i1 %i.zm, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i, i32 6)
  br label %bb.fv

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i: ; preds = %bb.fv
  %i.zn = icmp ult i32 %.sroa.0.023.i.i.i.i, 7
  %i.zo = zext i1 %i.zn to i32
  %spec.select.i.i.i.i184 = add nuw nsw i32 %.sroa.0.023.i.i.i.i, %i.zo
  %i.zp = load atomic i64, ptr %.val25.i monotonic, align 16, !noalias !173796
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge

bb.fv:                                            ; preds = %bb.fv, %bb.fu
  %.sroa.0.02.i.i.i.i.i = phi i32 [ 0, %bb.fu ], [ %i.zq, %bb.fv ]
  %i.zq = add nuw nsw i32 %.sroa.0.02.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173796
  %.sroa.0.0.highbits.i13.i.i.i.i = lshr i32 %i.zq, %.sroa.0.0.i.i.i.i.i.i
  %i.zr = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i.i, 0
  br i1 %i.zr, label %bb.fv, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i

bb.fw:                                            ; preds = %bb.ft
  %i.zs = and i64 %i.zj, %i.zi
  %i.zt = icmp eq i64 %i.zs, 0
  br i1 %i.zt, label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.fx:                                            ; preds = %bb.fr
  %i.zu = load i64, ptr %i.yf, align 8, !noalias !173796, !noundef !416
  %i.zv = add i64 %i.zu, %i.yp
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fr
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.zv, %bb.fx ], [ %i.yv, %bb.fr ]
  %i.zw = cmpxchg weak ptr %.val25.i, i64 %.sroa.04.0.i.i.i.i, i64 %.sroa.01.0.i.i.i.i seq_cst monotonic, align 8, !noalias !173796 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.zw, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.zw, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.gd, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.sroa.0.0.i.i14.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i, i32 6)
  br label %bb.gb

bb.ga:                                            ; preds = %bb.gb
  %i.zx = icmp ult i32 %.sroa.0.023.i.i.i.i, 7
  %i.zy = zext i1 %i.zx to i32
  %spec.select24.i.i.i.i = add nuw nsw i32 %.sroa.0.023.i.i.i.i, %i.zy
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge: ; preds = %bb.ga, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i
  %.sroa.0.023.i.i.i.i.be = phi i32 [ %.sroa.0.2.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ], [ %spec.select.i.i.i.i184, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i ], [ %spec.select24.i.i.i.i, %bb.ga ]
  %.sroa.04.0.i.i.i.i.be = phi i64 [ %i.zh, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ], [ %i.zp, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i, %bb.ga ]
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i

bb.gb:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.0.02.i15.i.i.i.i = phi i32 [ 0, %bb.fz ], [ %i.zz, %bb.gb ]
  %i.zz = add nuw nsw i32 %.sroa.0.02.i15.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173796
  %.sroa.0.0.highbits.i16.i.i.i.i = lshr i32 %i.zz, %.sroa.0.0.i.i14.i.i.i.i
  %i.aaa = icmp eq i32 %.sroa.0.0.highbits.i16.i.i.i.i, 0
  br i1 %i.aaa, label %bb.gb, label %bb.ga

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i.i)
  br label %bb.gf

bb.gc:                                            ; preds = %bb.gd
  %i.aab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsfR8GmIBoxTX_21lance_namespace_impls(i8 %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.57.0.copyload.i.i.i.i) #73
          to label %.body.i177 unwind label %bb.ge, !noalias !173797

bb.gd:                                            ; preds = %bb.fy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.aad = load i64, ptr %i.yf, align 8, !noalias !173796, !noundef !416
  %i.aae = add i64 %i.aad, %.sroa.04.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.sroa.06.0.copyload.i.i.i.i = load i8, ptr %i.yt, align 8, !noalias !173797 ; 4 uses
  %.sroa.4.0..0.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..0.val.sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !173797
  %.sroa.57.0..0.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yt, i64 8
  %.sroa.57.0.copyload.i.i.i.i = load ptr, ptr %.sroa.57.0..0.val.sroa_idx.i.i.i.i, align 8, !noalias !173797 ; 2 uses
  store atomic i64 %i.aae, ptr %i.aac release, align 8, !noalias !173797
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val25.i, i64 256
  invoke fastcc void @_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.aaf)
          to label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.gc, !noalias !173797

bb.ge:                                            ; preds = %bb.gc
  %i.aag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !173797
  unreachable

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i, i64 7, i1 false), !noalias !173798
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.aah = icmp eq i8 %.sroa.06.0.copyload.i.i.i.i, 2
  br i1 %i.aah, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  store i8 1, ptr %.sroa.443.0..sroa_idx.i.i.i, align 1, !alias.scope !173798
  store i8 2, ptr %i.bq, align 8, !alias.scope !173798
  br label %bb.gh

bb.gg:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.443.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.i.i.i, i64 7, i1 false)
  store i8 %.sroa.06.0.copyload.i.i.i.i, ptr %i.bq, align 8, !alias.scope !173798
  store ptr %.sroa.57.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i175, align 8, !alias.scope !173798
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pr153.i = phi i8 [ %.sroa.06.0.copyload.i.i.i.i, %bb.gg ], [ 2, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.gi:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !173799)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i1.i.i)
  %i.aai = load atomic i64, ptr %.val25.i acquire, align 8, !noalias !173800
  %i.aaj = getelementptr inbounds nuw i8, ptr %.val25.i, i64 8 ; 5 uses
  %i.aak = load atomic ptr, ptr %i.aaj acquire, align 8, !noalias !173800
  %i.aal = getelementptr inbounds nuw i8, ptr %.val25.i, i64 128
  br label %.backedge.i.i.i.i182

.backedge.i.i.i.i182:                             ; preds = %.backedge.i.i.i.i182.backedge, %bb.gi
  %.sroa.0.032.i.i.i.i = phi i32 [ 0, %bb.gi ], [ %.sroa.0.032.i.i.i.i.be, %.backedge.i.i.i.i182.backedge ] ; 13 uses
  %.sroa.014.0.i.i.i.i = phi ptr [ %i.aak, %bb.gi ], [ %.sroa.014.0.i.i.i.i.be, %.backedge.i.i.i.i182.backedge ] ; 8 uses
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.aai, %bb.gi ], [ %.sroa.05.0.i.i.i.i.be, %.backedge.i.i.i.i182.backedge ] ; 6 uses
  %i.aam = lshr i64 %.sroa.05.0.i.i.i.i, 1        ; 2 uses
  %i.aan = and i64 %i.aam, 31                     ; 5 uses
  %i.aao = icmp eq i64 %i.aan, 31
  br i1 %i.aao, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.backedge.i.i.i.i182
  %i.aap = icmp ult i32 %.sroa.0.032.i.i.i.i, 7
  br i1 %i.aap, label %.preheader.i.i.i16.i.i, label %.loopexit.i.i.i12.i.i

.loopexit.i.i.i12.i.i:                            ; preds = %bb.gj
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc32.i:                                       ; preds = %.loopexit.i.i.i12.i.i
  %i.aaq = icmp ult i32 %.sroa.0.032.i.i.i.i, 11
  br i1 %i.aaq, label %.loopexit.i.thread.i.i15.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i

.preheader.i.i.i16.i.i:                           ; preds = %bb.gj, %.preheader.i.i.i16.i.i
  %.sroa.0.03.i.i.i17.i.i = phi i32 [ %i.aar, %.preheader.i.i.i16.i.i ], [ 0, %bb.gj ]
  %i.aar = add nuw nsw i32 %.sroa.0.03.i.i.i17.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173800
  %.sroa.0.0.highbits.i.i.i18.i.i = lshr i32 %i.aar, %.sroa.0.032.i.i.i.i
  %i.aas = icmp eq i32 %.sroa.0.0.highbits.i.i.i18.i.i, 0
  br i1 %i.aas, label %.preheader.i.i.i16.i.i, label %.loopexit.i.thread.i.i15.i.i

.loopexit.i.thread.i.i15.i.i:                     ; preds = %.preheader.i.i.i16.i.i, %.noexc32.i
  %i.aat = add nuw nsw i32 %.sroa.0.032.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i: ; preds = %.loopexit.i.thread.i.i15.i.i, %.noexc32.i
  %.sroa.0.2.i.i14.i.i = phi i32 [ %i.aat, %.loopexit.i.thread.i.i15.i.i ], [ %.sroa.0.032.i.i.i.i, %.noexc32.i ]
  %i.aau = load atomic i64, ptr %.val25.i acquire, align 8, !noalias !173800
  %i.aav = load atomic ptr, ptr %i.aaj acquire, align 8, !noalias !173800
  br label %.backedge.i.i.i.i182.backedge

bb.gk:                                            ; preds = %.backedge.i.i.i.i182
  %i.aaw = add i64 %.sroa.05.0.i.i.i.i, 2         ; 2 uses
  %i.aax = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.aay = icmp eq i64 %i.aax, 0
  br i1 %i.aay, label %bb.gl, label %bb.go

bb.gl:                                            ; preds = %bb.gk
  fence seq_cst
  %i.aaz = load atomic i64, ptr %i.aal monotonic, align 8, !noalias !173800 ; 3 uses
  %i.aba = lshr i64 %i.aaz, 1
  %i.abb = icmp eq i64 %i.aam, %i.aba
  br i1 %i.abb, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %.not.unshifted.i.i.i.i = xor i64 %i.aaz, %.sroa.05.0.i.i.i.i
  %.not.i.i.i.i = icmp ult i64 %.not.unshifted.i.i.i.i, 64
  %2 = add i64 %.sroa.05.0.i.i.i.i, 3
  %spec.select.i.i11.i.i = select i1 %.not.i.i.i.i, i64 %i.aaw, i64 %2
  br label %bb.go

bb.gn:                                            ; preds = %bb.gl
  %i.abc = and i64 %i.aaz, 1
  %i.abd = icmp eq i64 %i.abc, 0
  br i1 %i.abd, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.go:                                            ; preds = %bb.gm, %bb.gk
  %.sroa.01.0.i.i2.i.i = phi i64 [ %i.aaw, %bb.gk ], [ %spec.select.i.i11.i.i, %bb.gm ] ; 2 uses
  %i.abe = icmp eq ptr %.sroa.014.0.i.i.i.i, null
  br i1 %i.abe, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.abf = icmp ult i32 %.sroa.0.032.i.i.i.i, 7
  br i1 %i.abf, label %.preheader.i21.i.i.i.i, label %.loopexit.i20.i.i.i.i

.loopexit.i20.i.i.i.i:                            ; preds = %bb.gp
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc33.i:                                       ; preds = %.loopexit.i20.i.i.i.i
  %i.abg = icmp ult i32 %.sroa.0.032.i.i.i.i, 11
  br i1 %i.abg, label %.loopexit.i20.thread.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i

.preheader.i21.i.i.i.i:                           ; preds = %bb.gp, %.preheader.i21.i.i.i.i
  %.sroa.0.03.i22.i.i.i.i = phi i32 [ %i.abh, %.preheader.i21.i.i.i.i ], [ 0, %bb.gp ]
  %i.abh = add nuw nsw i32 %.sroa.0.03.i22.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173800
  %.sroa.0.0.highbits.i23.i.i.i.i = lshr i32 %i.abh, %.sroa.0.032.i.i.i.i
  %i.abi = icmp eq i32 %.sroa.0.0.highbits.i23.i.i.i.i, 0
  br i1 %i.abi, label %.preheader.i21.i.i.i.i, label %.loopexit.i20.thread.i.i.i.i

.loopexit.i20.thread.i.i.i.i:                     ; preds = %.preheader.i21.i.i.i.i, %.noexc33.i
  %i.abj = add nuw nsw i32 %.sroa.0.032.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i: ; preds = %.loopexit.i20.thread.i.i.i.i, %.noexc33.i
  %.sroa.0.3.i.i.i.i = phi i32 [ %i.abj, %.loopexit.i20.thread.i.i.i.i ], [ %.sroa.0.032.i.i.i.i, %.noexc33.i ]
  %i.abk = load atomic i64, ptr %.val25.i acquire, align 8, !noalias !173800
  %i.abl = load atomic ptr, ptr %i.aaj acquire, align 8, !noalias !173800
  br label %.backedge.i.i.i.i182.backedge

bb.gq:                                            ; preds = %bb.go
  %i.abm = cmpxchg weak ptr %.val25.i, i64 %.sroa.05.0.i.i.i.i, i64 %.sroa.01.0.i.i2.i.i seq_cst acquire, align 8, !noalias !173800 ; 2 uses
  %.sroa.18.0.in.i.i.i3.i.i = extractvalue { i64, i1 } %i.abm, 1
  %.sroa.01.0.i.i.i4.i.i = extractvalue { i64, i1 } %i.abm, 0
  br i1 %.sroa.18.0.in.i.i.i3.i.i, label %bb.gt, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.abn = load atomic ptr, ptr %i.aaj acquire, align 8, !noalias !173800
  %.sroa.0.0.i.i.i.i5.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.032.i.i.i.i, i32 6)
  br label %bb.gs

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i: ; preds = %bb.gs
  %i.abo = icmp ult i32 %.sroa.0.032.i.i.i.i, 7
  %i.abp = zext i1 %i.abo to i32
  %spec.select33.i.i.i.i = add nuw nsw i32 %.sroa.0.032.i.i.i.i, %i.abp
  br label %.backedge.i.i.i.i182.backedge

.backedge.i.i.i.i182.backedge:                    ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i
  %.sroa.0.032.i.i.i.i.be = phi i32 [ %spec.select33.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i ], [ %.sroa.0.2.i.i14.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i ], [ %.sroa.0.3.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i ]
  %.sroa.014.0.i.i.i.i.be = phi ptr [ %i.abn, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i ], [ %i.aav, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i ], [ %i.abl, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i ]
  %.sroa.05.0.i.i.i.i.be = phi i64 [ %.sroa.01.0.i.i.i4.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i ], [ %i.aau, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i ], [ %i.abk, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i ]
  br label %.backedge.i.i.i.i182

bb.gs:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.0.02.i.i.i6.i.i = phi i32 [ 0, %bb.gr ], [ %i.abq, %bb.gs ]
  %i.abq = add nuw nsw i32 %.sroa.0.02.i.i.i6.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173800
  %.sroa.0.0.highbits.i25.i.i.i.i = lshr i32 %i.abq, %.sroa.0.0.i.i.i.i5.i.i
  %i.abr = icmp eq i32 %.sroa.0.0.highbits.i25.i.i.i.i, 0
  br i1 %i.abr, label %bb.gs, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i

bb.gt:                                            ; preds = %bb.gq
  %i.abs = icmp eq i64 %i.aan, 30
  br i1 %i.abs, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.abt = load atomic ptr, ptr %.sroa.014.0.i.i.i.i acquire, align 8, !noalias !173800 ; 2 uses
  %i.abu = icmp eq ptr %i.abt, null
  br i1 %i.abu, label %.lr.ph.i.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.gu, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i
  %.sroa.0.02.i26.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i ], [ 0, %bb.gu ] ; 5 uses
  %i.abv = icmp ult i32 %.sroa.0.02.i26.i.i.i.i, 7
  br i1 %i.abv, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc34.i:                                       ; preds = %.loopexit.i.i.i.i.i.i
  %i.abw = icmp ult i32 %.sroa.0.02.i26.i.i.i.i, 11
  br i1 %i.abw, label %.loopexit.i.thread.i.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i32 [ %i.abx, %.preheader.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.abx = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173800
  %.sroa.0.0.highbits.i.i.i.i.i.i = lshr i32 %i.abx, %.sroa.0.02.i26.i.i.i.i
  %i.aby = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i.i, 0
  br i1 %i.aby, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.thread.i.i.i.i.i

.loopexit.i.thread.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i, %.noexc34.i
  %i.abz = add nuw nsw i32 %.sroa.0.02.i26.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i: ; preds = %.loopexit.i.thread.i.i.i.i.i, %.noexc34.i
  %.sroa.0.1.i.i.i.i.i = phi i32 [ %i.abz, %.loopexit.i.thread.i.i.i.i.i ], [ %.sroa.0.02.i26.i.i.i.i, %.noexc34.i ]
  %i.aca = load atomic ptr, ptr %.sroa.014.0.i.i.i.i acquire, align 8, !noalias !173800 ; 2 uses
  %i.acb = icmp eq ptr %i.aca, null
  br i1 %i.acb, label %.lr.ph.i.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i, %bb.gu
  %.lcssa.i.i.i.i.i = phi ptr [ %i.abt, %bb.gu ], [ %i.aca, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i ] ; 2 uses
  %i.acc = and i64 %.sroa.01.0.i.i2.i.i, -2
  %i.acd = load atomic ptr, ptr %.lcssa.i.i.i.i.i monotonic, align 8, !noalias !173800
  %3 = icmp eq ptr %i.acd, null
  %spec.select19.v.i.i.i.i = select i1 %3, i64 2, i64 3
  %spec.select19.i.i.i.i = add i64 %spec.select19.v.i.i.i.i, %i.acc
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.aaj release, align 8, !noalias !173800
  store atomic i64 %spec.select19.i.i.i.i, ptr %.val25.i release, align 8, !noalias !173800
  br label %bb.gv

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.gn
  store i8 0, ptr %.sroa.443.0..sroa_idx.i.i.i, align 1, !alias.scope !173801
  store i8 2, ptr %i.bq, align 8, !alias.scope !173801
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.gv:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.gt
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i, i64 8
  %i.acf = getelementptr inbounds nuw [24 x i8], ptr %i.ace, i64 %i.aan ; 4 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16 ; 3 uses
  %i.ach = load atomic i64, ptr %i.acg acquire, align 8, !noalias !173802
  %i.aci = and i64 %i.ach, 1
  %i.acj = icmp eq i64 %i.aci, 0
  br i1 %i.acj, label %.lr.ph.i.i2.i.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i2.i.i.i:                                ; preds = %bb.gv, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i
  %.sroa.0.02.i.i3.i.i.i = phi i32 [ %.sroa.0.1.i.i6.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i ], [ 0, %bb.gv ] ; 5 uses
  %i.ack = icmp ult i32 %.sroa.0.02.i.i3.i.i.i, 7
  br i1 %i.ack, label %.preheader.i.i.i8.i.i.i, label %.loopexit.i.i.i4.i.i.i

.loopexit.i.i.i4.i.i.i:                           ; preds = %.lr.ph.i.i2.i.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.i

.noexc35.i:                                       ; preds = %.loopexit.i.i.i4.i.i.i
  %i.acl = icmp ult i32 %.sroa.0.02.i.i3.i.i.i, 11
  br i1 %i.acl, label %.loopexit.i.thread.i.i7.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i

.preheader.i.i.i8.i.i.i:                          ; preds = %.lr.ph.i.i2.i.i.i, %.preheader.i.i.i8.i.i.i
  %.sroa.0.03.i.i.i9.i.i.i = phi i32 [ %i.acm, %.preheader.i.i.i8.i.i.i ], [ 0, %.lr.ph.i.i2.i.i.i ]
  %i.acm = add nuw nsw i32 %.sroa.0.03.i.i.i9.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173802
  %.sroa.0.0.highbits.i.i.i10.i.i.i = lshr i32 %i.acm, %.sroa.0.02.i.i3.i.i.i
  %i.acn = icmp eq i32 %.sroa.0.0.highbits.i.i.i10.i.i.i, 0
  br i1 %i.acn, label %.preheader.i.i.i8.i.i.i, label %.loopexit.i.thread.i.i7.i.i.i

.loopexit.i.thread.i.i7.i.i.i:                    ; preds = %.preheader.i.i.i8.i.i.i, %.noexc35.i
  %i.aco = add nuw nsw i32 %.sroa.0.02.i.i3.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i: ; preds = %.loopexit.i.thread.i.i7.i.i.i, %.noexc35.i
  %.sroa.0.1.i.i6.i.i.i = phi i32 [ %i.aco, %.loopexit.i.thread.i.i7.i.i.i ], [ %.sroa.0.02.i.i3.i.i.i, %.noexc35.i ]
  %i.acp = load atomic i64, ptr %i.acg acquire, align 8, !noalias !173802
  %i.acq = and i64 %i.acp, 1
  %i.acr = icmp eq i64 %i.acq, 0
  br i1 %i.acr, label %.lr.ph.i.i2.i.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i, %bb.gv
  %.sroa.06.0.copyload.i.i8.i.i = load i8, ptr %i.acf, align 8, !noalias !173802 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.acf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i1.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !173801
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %.sroa.57.0.copyload.i.i9.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !173802
  %i.acs = add nuw nsw i64 %i.aan, 1              ; 2 uses
  %i.act = icmp eq i64 %i.acs, 31
  br i1 %i.act, label %.lr.ph.i3.i.i.i.i, label %bb.gz

.lr.ph.i3.i.i.i.i:                                ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.gy
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.adc, %bb.gy ], [ 0, %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 3 uses
  %i.acu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24 ; 2 uses
  %i.acw = load atomic i64, ptr %i.acv acquire, align 8, !noalias !173802
  %i.acx = and i64 %i.acw, 2
  %i.acy = icmp eq i64 %i.acx, 0
  br i1 %i.acy, label %bb.gw, label %.lr.ph.i3.i.i.i.i.1

bb.gw:                                            ; preds = %.lr.ph.i3.i.i.i.i
  %i.acz = atomicrmw or ptr %i.acv, i64 4 acq_rel, align 8, !noalias !173802
  %i.ada = and i64 %i.acz, 2
  %i.adb = icmp eq i64 %i.ada, 0
  br i1 %i.adb, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i3.i.i.i.i.1

.lr.ph.i3.i.i.i.i.1:                              ; preds = %bb.gw, %.lr.ph.i3.i.i.i.i
  %i.adc = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i, 2 ; 2 uses
  %i.add = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 48 ; 2 uses
  %i.adf = load atomic i64, ptr %i.ade acquire, align 8, !noalias !173802
  %i.adg = and i64 %i.adf, 2
  %i.adh = icmp eq i64 %i.adg, 0
  br i1 %i.adh, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %.lr.ph.i3.i.i.i.i.1
  %i.adi = atomicrmw or ptr %i.ade, i64 4 acq_rel, align 8, !noalias !173802
  %i.adj = and i64 %i.adi, 2
  %i.adk = icmp eq i64 %i.adj, 0
  br i1 %i.adk, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %.lr.ph.i3.i.i.i.i.1
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.adc, 30
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i3.i.i.i.i

bb.gz:                                            ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.adl = atomicrmw or ptr %i.acg, i64 2 acq_rel, align 8, !noalias !173802
  %i.adm = and i64 %i.adl, 4
  %i.adn = icmp eq i64 %i.adm, 0
  br i1 %i.adn, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.ha

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i: ; preds = %bb.hc, %bb.gy, %bb.ha
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i.i.i, i64 noundef 752, i64 noundef 8) #68, !noalias !173802
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.ha:                                            ; preds = %bb.gz
  %i.ado = icmp samesign ult i64 %i.aan, 29
  br i1 %i.ado, label %.lr.ph.i5.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i

.lr.ph.i5.i.i.i.i:                                ; preds = %bb.ha, %bb.hc
  %.sroa.0.04.i6.i.i.i.i = phi i64 [ %i.adp, %bb.hc ], [ %i.acs, %bb.ha ] ; 2 uses
  %i.adp = add nuw nsw i64 %.sroa.0.04.i6.i.i.i.i, 1 ; 2 uses
  %i.adq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.i.i.i.i, i64 %.sroa.0.04.i6.i.i.i.i
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 24 ; 2 uses
  %i.ads = load atomic i64, ptr %i.adr acquire, align 8, !noalias !173802
  %i.adt = and i64 %i.ads, 2
  %i.adu = icmp eq i64 %i.adt, 0
  br i1 %i.adu, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph.i5.i.i.i.i
  %i.adv = atomicrmw or ptr %i.adr, i64 4 acq_rel, align 8, !noalias !173802
  %i.adw = and i64 %i.adv, 2
  %i.adx = icmp eq i64 %i.adw, 0
  br i1 %i.adx, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.i5.i.i.i.i
  %exitcond.not.i7.i.i.i.i = icmp eq i64 %i.adp, 30
  br i1 %exitcond.not.i7.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i5.i.i.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.hb, %bb.gw, %bb.gx, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, %bb.gz
  %i.ady = icmp eq i8 %.sroa.06.0.copyload.i.i8.i.i, 2
  br i1 %i.ady, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.hd

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.gn
  store i8 1, ptr %.sroa.443.0..sroa_idx.i.i.i, align 1, !alias.scope !173801
  store i8 2, ptr %i.bq, align 8, !alias.scope !173801
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.hd:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.443.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i1.i.i, i64 7, i1 false)
  store i8 %.sroa.06.0.copyload.i.i8.i.i, ptr %i.bq, align 8, !alias.scope !173801
  store ptr %.sroa.57.0.copyload.i.i9.i.i, ptr %.sroa.7.0..sroa_idx.i.i175, align 8, !alias.scope !173801
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.hd, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.pr154.i = phi i8 [ %.sroa.06.0.copyload.i.i8.i.i, %bb.hd ], [ 2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i ], [ 2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i1.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.he:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !173803)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i.i.i)
  %i.adz = cmpxchg ptr %.val25.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !173804
  %i.aea = extractvalue { i32, i1 } %i.adz, 1
  br i1 %i.aea, label %.noexc36.i, label %bb.hf, !prof !439

bb.hf:                                            ; preds = %bb.he
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val25.i)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc36.i:                                       ; preds = %bb.hf, %bb.he
  %i.aeb = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !173804
  %i.aec = and i64 %i.aeb, 9223372036854775807
  %i.aed = icmp eq i64 %i.aec, 0
  br i1 %i.aed, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.hg, !prof !439

bb.hg:                                            ; preds = %.noexc36.i
  %i.aee = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc37.i:                                       ; preds = %bb.hg
  %i.aef = xor i1 %i.aee, true
  %i.aeg = zext i1 %i.aef to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.noexc37.i, %.noexc36.i
  %.sroa.01.0.i.i.i19.i.i = phi i8 [ %i.aeg, %.noexc37.i ], [ 0, %.noexc36.i ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.val25.i, i64 4 ; 3 uses
  %i.aei = load atomic i8, ptr %i.aeh monotonic, align 1, !noalias !173804
  %.not.i.i.i = icmp eq i8 %i.aei, 0
  br i1 %.not.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.hh, !prof !439

bb.hh:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !173805
  store ptr %.val25.i, ptr %i.bn, align 8, !noalias !173805
  %i.aej = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.01.0.i.i.i19.i.i, ptr %i.aej, align 8, !noalias !173805
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3277) #72
          to label %bb.hj unwind label %bb.hi, !noalias !173806

bb.hi:                                            ; preds = %bb.hh
  %i.aek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bn) #73
          to label %.body.i177 unwind label %bb.hk, !noalias !173806

bb.hj:                                            ; preds = %bb.hh
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.ael = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !173954)
  %i.bxu = load atomic i64, ptr %.val34.i197 monotonic, align 8, !noalias !173955
  %i.bxv = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 400 ; 2 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 392 ; 3 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 408
  %i.bxy = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 416
  %i.bxz = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 128
  %i.bya = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 384
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge, %bb.vz
  %.sroa.0.023.i.i.i.i309 = phi i32 [ 0, %bb.vz ], [ %.sroa.0.023.i.i.i.i309.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge ] ; 11 uses
  %.sroa.04.0.i.i.i.i310 = phi i64 [ %i.bxu, %bb.vz ], [ %.sroa.04.0.i.i.i.i310.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge ] ; 7 uses
  %i.byb = load i64, ptr %i.bxv, align 16, !noalias !173955, !noundef !416
  %i.byc = add i64 %i.byb, -1
  %i.byd = and i64 %i.byc, %.sroa.04.0.i.i.i.i310 ; 3 uses
  %i.bye = load i64, ptr %i.bxw, align 8, !noalias !173955, !noundef !416
  %i.byf = sub i64 0, %i.bye
  %i.byg = and i64 %.sroa.04.0.i.i.i.i310, %i.byf
  %i.byh = load ptr, ptr %i.bxx, align 8, !noalias !173955, !nonnull !416, !noundef !416
  %i.byi = load i64, ptr %i.bxy, align 16, !noalias !173955, !noundef !416
  %i.byj = icmp ult i64 %i.byd, %i.byi
  call void @llvm.assume(i1 %i.byj)
  %i.byk = getelementptr inbounds nuw [48 x i8], ptr %i.byh, i64 %i.byd ; 3 uses
  %i.byl = load atomic i64, ptr %i.byk acquire, align 8, !noalias !173955 ; 3 uses
  %i.bym = add i64 %.sroa.04.0.i.i.i.i310, 1
  %i.byn = icmp eq i64 %i.bym, %i.byl
  br i1 %i.byn, label %bb.wb, label %bb.wa

bb.wa:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316
  %i.byo = icmp eq i64 %i.byl, %.sroa.04.0.i.i.i.i310
  br i1 %i.byo, label %bb.wd, label %bb.wc

bb.wb:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316
  %i.byp = add nuw i64 %i.byd, 1
  %i.byq = load i64, ptr %i.bya, align 128, !noalias !173955, !noundef !416
  %i.byr = icmp ult i64 %i.byp, %i.byq
  br i1 %i.byr, label %bb.wi, label %bb.wh

bb.wc:                                            ; preds = %bb.wa
  %i.bys = icmp ult i32 %.sroa.0.023.i.i.i.i309, 7
  br i1 %i.bys, label %.preheader.i.i.i.i57.i, label %.loopexit.i.i.i.i.i311

.loopexit.i.i.i.i.i311:                           ; preds = %bb.wc
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc61.i unwind label %.loopexit.i312

.noexc61.i:                                       ; preds = %.loopexit.i.i.i.i.i311
  %i.byt = icmp ult i32 %.sroa.0.023.i.i.i.i309, 11
  br i1 %i.byt, label %.loopexit.i.thread.i.i.i.i319, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i314

.preheader.i.i.i.i57.i:                           ; preds = %bb.wc, %.preheader.i.i.i.i57.i
  %.sroa.0.03.i.i.i.i.i320 = phi i32 [ %i.byu, %.preheader.i.i.i.i57.i ], [ 0, %bb.wc ]
  %i.byu = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i320, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173955
  %.sroa.0.0.highbits.i.i.i.i.i321 = lshr i32 %i.byu, %.sroa.0.023.i.i.i.i309
  %i.byv = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i321, 0
  br i1 %i.byv, label %.preheader.i.i.i.i57.i, label %.loopexit.i.thread.i.i.i.i319

.loopexit.i.thread.i.i.i.i319:                    ; preds = %.preheader.i.i.i.i57.i, %.noexc61.i
  %i.byw = add nuw nsw i32 %.sroa.0.023.i.i.i.i309, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i314

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i314: ; preds = %.loopexit.i.thread.i.i.i.i319, %.noexc61.i
  %.sroa.0.2.i.i.i.i315 = phi i32 [ %i.byw, %.loopexit.i.thread.i.i.i.i319 ], [ %.sroa.0.023.i.i.i.i309, %.noexc61.i ]
  %i.byx = load atomic i64, ptr %.val34.i197 monotonic, align 16, !noalias !173955
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge

bb.wd:                                            ; preds = %bb.wa
  fence seq_cst
  %i.byy = load atomic i64, ptr %i.bxz monotonic, align 16, !noalias !173955 ; 2 uses
  %i.byz = load i64, ptr %i.bxv, align 16, !noalias !173955, !noundef !416 ; 2 uses
  %i.bza = xor i64 %i.byz, -1
  %i.bzb = and i64 %i.byy, %i.bza
  %i.bzc = icmp eq i64 %i.bzb, %.sroa.04.0.i.i.i.i310
  br i1 %i.bzc, label %bb.wg, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %.sroa.0.0.i.i.i.i.i.i322 = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i309, i32 6)
  br label %bb.wf

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i325: ; preds = %bb.wf
  %i.bzd = icmp ult i32 %.sroa.0.023.i.i.i.i309, 7
  %i.bze = zext i1 %i.bzd to i32
  %spec.select.i.i.i58.i = add nuw nsw i32 %.sroa.0.023.i.i.i.i309, %i.bze
  %i.bzf = load atomic i64, ptr %.val34.i197 monotonic, align 16, !noalias !173955
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge

bb.wf:                                            ; preds = %bb.wf, %bb.we
  %.sroa.0.02.i.i.i.i.i323 = phi i32 [ 0, %bb.we ], [ %i.bzg, %bb.wf ]
  %i.bzg = add nuw nsw i32 %.sroa.0.02.i.i.i.i.i323, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173955
  %.sroa.0.0.highbits.i13.i.i.i.i324 = lshr i32 %i.bzg, %.sroa.0.0.i.i.i.i.i.i322
  %i.bzh = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i.i324, 0
  br i1 %i.bzh, label %bb.wf, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i325

bb.wg:                                            ; preds = %bb.wd
  %i.bzi = and i64 %i.byz, %i.byy
  %i.bzj = icmp eq i64 %i.bzi, 0
  br i1 %i.bzj, label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.sink.split.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.wh:                                            ; preds = %bb.wb
  %i.bzk = load i64, ptr %i.bxw, align 8, !noalias !173955, !noundef !416
  %i.bzl = add i64 %i.bzk, %i.byg
  br label %bb.wi

bb.wi:                                            ; preds = %bb.wh, %bb.wb
  %.sroa.01.0.i.i.i60.i = phi i64 [ %i.bzl, %bb.wh ], [ %i.byl, %bb.wb ]
  %i.bzm = cmpxchg weak ptr %.val34.i197, i64 %.sroa.04.0.i.i.i.i310, i64 %.sroa.01.0.i.i.i60.i seq_cst monotonic, align 8, !noalias !173955 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i326 = extractvalue { i64, i1 } %i.bzm, 1
  %.sroa.01.0.i.i.i.i.i327 = extractvalue { i64, i1 } %i.bzm, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i326, label %bb.wn, label %bb.wj

bb.wj:                                            ; preds = %bb.wi
  %.sroa.0.0.i.i14.i.i.i.i328 = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i309, i32 6)
  br label %bb.wl

bb.wk:                                            ; preds = %bb.wl
  %i.bzn = icmp ult i32 %.sroa.0.023.i.i.i.i309, 7
  %i.bzo = zext i1 %i.bzn to i32
  %spec.select24.i.i.i.i331 = add nuw nsw i32 %.sroa.0.023.i.i.i.i309, %i.bzo
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316.backedge: ; preds = %bb.wk, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i325, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i314
  %.sroa.0.023.i.i.i.i309.be = phi i32 [ %.sroa.0.2.i.i.i.i315, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i314 ], [ %spec.select.i.i.i58.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i325 ], [ %spec.select24.i.i.i.i331, %bb.wk ]
  %.sroa.04.0.i.i.i.i310.be = phi i64 [ %i.byx, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i314 ], [ %i.bzf, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i325 ], [ %.sroa.01.0.i.i.i.i.i327, %bb.wk ]
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i316

bb.wl:                                            ; preds = %bb.wl, %bb.wj
  %.sroa.0.02.i15.i.i.i.i329 = phi i32 [ 0, %bb.wj ], [ %i.bzp, %bb.wl ]
  %i.bzp = add nuw nsw i32 %.sroa.0.02.i15.i.i.i.i329, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173955
  %.sroa.0.0.highbits.i16.i.i.i.i330 = lshr i32 %i.bzp, %.sroa.0.0.i.i14.i.i.i.i328
  %i.bzq = icmp eq i32 %.sroa.0.0.highbits.i16.i.i.i.i330, 0
  br i1 %i.bzq, label %bb.wl, label %bb.wk

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %bb.wg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i)
  br label %bb.wp

bb.wm:                                            ; preds = %bb.wn
  %i.bzr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(40) %i.ba) #73
          to label %.body62.i unwind label %bb.wo, !noalias !173956

bb.wn:                                            ; preds = %bb.wi
  %i.bzs = load i64, ptr %i.bxw, align 8, !noalias !173955, !noundef !416
  %i.bzt = add i64 %i.bzs, %.sroa.04.0.i.i.i.i310
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !173957
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.byk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bzu, i64 40, i1 false), !noalias !173956
  store atomic i64 %i.bzt, ptr %i.byk release, align 8, !noalias !173956
  %i.bzv = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 256
  invoke fastcc void @_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bzv)
          to label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.wm, !noalias !173956

bb.wo:                                            ; preds = %bb.wm
  %i.bzw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !173956
  unreachable

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.wn
  %.sroa.04.0.copyload5.i.i.i = load i16, ptr %i.ba, align 8, !noalias !173958 ; 2 uses
  %.sroa.66.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.0..sroa_idx7.i.i.i, i64 38, i1 false), !noalias !173958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !173957
  %i.bzx = icmp eq i16 %.sroa.04.0.copyload5.i.i.i, -1
  br i1 %i.bzx, label %bb.wp, label %bb.wq

bb.wp:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  %i.bzy = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 1, ptr %i.bzy, align 2, !alias.scope !173959, !noalias !173836
  br label %bb.wr

bb.wq:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.i.i.i, i64 38, i1 false), !noalias !173836
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wq, %bb.wp
  %storemerge.i.i59.i = phi i16 [ %.sroa.04.0.copyload5.i.i.i, %bb.wq ], [ -1, %bb.wp ] ; 2 uses
  store i16 %storemerge.i.i59.i, ptr %i.bxs, align 8, !alias.scope !173959, !noalias !173836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.ws:                                            ; preds = %bb.vy
  call void @llvm.experimental.noalias.scope.decl(metadata !173960)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i.i.i)
  %i.bzz = load atomic i64, ptr %.val34.i197 acquire, align 8, !noalias !173961
  %i.caa = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 8 ; 5 uses
  %i.cab = load atomic ptr, ptr %i.caa acquire, align 8, !noalias !173961
  %i.cac = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 128
  br label %.backedge.i.i.i55.i

.backedge.i.i.i55.i:                              ; preds = %.backedge.i.i.i55.i.backedge, %bb.ws
  %.sroa.0.032.i.i.i.i267 = phi i32 [ 0, %bb.ws ], [ %.sroa.0.032.i.i.i.i267.be, %.backedge.i.i.i55.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i.i.i268 = phi ptr [ %i.cab, %bb.ws ], [ %.sroa.014.0.i.i.i.i268.be, %.backedge.i.i.i55.i.backedge ] ; 7 uses
  %.sroa.05.0.i.i.i.i269 = phi i64 [ %i.bzz, %bb.ws ], [ %.sroa.05.0.i.i.i.i269.be, %.backedge.i.i.i55.i.backedge ] ; 6 uses
  %i.cad = lshr i64 %.sroa.05.0.i.i.i.i269, 1     ; 2 uses
  %i.cae = and i64 %i.cad, 31                     ; 5 uses
  %i.caf = icmp eq i64 %i.cae, 31
  br i1 %i.caf, label %bb.wt, label %bb.wu

bb.wt:                                            ; preds = %.backedge.i.i.i55.i
  %i.cag = icmp ult i32 %.sroa.0.032.i.i.i.i267, 7
  br i1 %i.cag, label %.preheader.i.i.i12.i.i, label %.loopexit.i.i.i8.i.i

.loopexit.i.i.i8.i.i:                             ; preds = %bb.wt
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc64.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i300

.noexc64.i:                                       ; preds = %.loopexit.i.i.i8.i.i
  %i.cah = icmp ult i32 %.sroa.0.032.i.i.i.i267, 11
  br i1 %i.cah, label %.loopexit.i.thread.i.i11.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i

.preheader.i.i.i12.i.i:                           ; preds = %bb.wt, %.preheader.i.i.i12.i.i
  %.sroa.0.03.i.i.i13.i.i = phi i32 [ %i.cai, %.preheader.i.i.i12.i.i ], [ 0, %bb.wt ]
  %i.cai = add nuw nsw i32 %.sroa.0.03.i.i.i13.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173961
  %.sroa.0.0.highbits.i.i.i14.i.i = lshr i32 %i.cai, %.sroa.0.032.i.i.i.i267
  %i.caj = icmp eq i32 %.sroa.0.0.highbits.i.i.i14.i.i, 0
  br i1 %i.caj, label %.preheader.i.i.i12.i.i, label %.loopexit.i.thread.i.i11.i.i

.loopexit.i.thread.i.i11.i.i:                     ; preds = %.preheader.i.i.i12.i.i, %.noexc64.i
  %i.cak = add nuw nsw i32 %.sroa.0.032.i.i.i.i267, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i: ; preds = %.loopexit.i.thread.i.i11.i.i, %.noexc64.i
  %.sroa.0.2.i.i10.i.i = phi i32 [ %i.cak, %.loopexit.i.thread.i.i11.i.i ], [ %.sroa.0.032.i.i.i.i267, %.noexc64.i ]
  %i.cal = load atomic i64, ptr %.val34.i197 acquire, align 8, !noalias !173961
  %i.cam = load atomic ptr, ptr %i.caa acquire, align 8, !noalias !173961
  br label %.backedge.i.i.i55.i.backedge

bb.wu:                                            ; preds = %.backedge.i.i.i55.i
  %i.can = add i64 %.sroa.05.0.i.i.i.i269, 2      ; 2 uses
  %i.cao = and i64 %.sroa.05.0.i.i.i.i269, 1
  %i.cap = icmp eq i64 %i.cao, 0
  br i1 %i.cap, label %bb.wv, label %bb.wy

bb.wv:                                            ; preds = %bb.wu
  fence seq_cst
  %i.caq = load atomic i64, ptr %i.cac monotonic, align 8, !noalias !173961 ; 3 uses
  %i.car = lshr i64 %i.caq, 1
  %i.cas = icmp eq i64 %i.cad, %i.car
  br i1 %i.cas, label %bb.wx, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %.not.unshifted.i.i.i.i307 = xor i64 %i.caq, %.sroa.05.0.i.i.i.i269
  %.not.i.i.i.i309 = icmp ult i64 %.not.unshifted.i.i.i.i307, 64
  %4 = add i64 %.sroa.05.0.i.i.i.i269, 3
  %spec.select.i.i7.i.i = select i1 %.not.i.i.i.i309, i64 %i.can, i64 %4
  br label %bb.wy

bb.wx:                                            ; preds = %bb.wv
  %i.cat = and i64 %i.caq, 1
  %i.cau = icmp eq i64 %i.cat, 0
  br i1 %i.cau, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.wy:                                            ; preds = %bb.ww, %bb.wu
  %.sroa.01.0.i.i1.i.i = phi i64 [ %i.can, %bb.wu ], [ %spec.select.i.i7.i.i, %bb.ww ] ; 2 uses
  %i.cav = icmp eq ptr %.sroa.014.0.i.i.i.i268, null
  br i1 %i.cav, label %bb.wz, label %bb.xa

bb.wz:                                            ; preds = %bb.wy
  %i.caw = icmp ult i32 %.sroa.0.032.i.i.i.i267, 7
  br i1 %i.caw, label %.preheader.i21.i.i.i.i304, label %.loopexit.i20.i.i.i.i299

.loopexit.i20.i.i.i.i299:                         ; preds = %bb.wz
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i300

.noexc65.i:                                       ; preds = %.loopexit.i20.i.i.i.i299
  %i.cax = icmp ult i32 %.sroa.0.032.i.i.i.i267, 11
  br i1 %i.cax, label %.loopexit.i20.thread.i.i.i.i303, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301

.preheader.i21.i.i.i.i304:                        ; preds = %bb.wz, %.preheader.i21.i.i.i.i304
  %.sroa.0.03.i22.i.i.i.i305 = phi i32 [ %i.cay, %.preheader.i21.i.i.i.i304 ], [ 0, %bb.wz ]
  %i.cay = add nuw nsw i32 %.sroa.0.03.i22.i.i.i.i305, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173961
  %.sroa.0.0.highbits.i23.i.i.i.i306 = lshr i32 %i.cay, %.sroa.0.032.i.i.i.i267
  %i.caz = icmp eq i32 %.sroa.0.0.highbits.i23.i.i.i.i306, 0
  br i1 %i.caz, label %.preheader.i21.i.i.i.i304, label %.loopexit.i20.thread.i.i.i.i303

.loopexit.i20.thread.i.i.i.i303:                  ; preds = %.preheader.i21.i.i.i.i304, %.noexc65.i
  %i.cba = add nuw nsw i32 %.sroa.0.032.i.i.i.i267, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301: ; preds = %.loopexit.i20.thread.i.i.i.i303, %.noexc65.i
  %.sroa.0.3.i.i.i.i302 = phi i32 [ %i.cba, %.loopexit.i20.thread.i.i.i.i303 ], [ %.sroa.0.032.i.i.i.i267, %.noexc65.i ]
  %i.cbb = load atomic i64, ptr %.val34.i197 acquire, align 8, !noalias !173961
  %i.cbc = load atomic ptr, ptr %i.caa acquire, align 8, !noalias !173961
  br label %.backedge.i.i.i55.i.backedge

bb.xa:                                            ; preds = %bb.wy
  %i.cbd = cmpxchg weak ptr %.val34.i197, i64 %.sroa.05.0.i.i.i.i269, i64 %.sroa.01.0.i.i1.i.i seq_cst acquire, align 8, !noalias !173961 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i = extractvalue { i64, i1 } %i.cbd, 1
  %.sroa.01.0.i.i.i3.i.i = extractvalue { i64, i1 } %i.cbd, 0
  br i1 %.sroa.18.0.in.i.i.i2.i.i, label %bb.xd, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.cbe = load atomic ptr, ptr %i.caa acquire, align 8, !noalias !173961
  %.sroa.0.0.i.i.i.i4.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.032.i.i.i.i267, i32 6)
  br label %bb.xc

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i: ; preds = %bb.xc
  %i.cbf = icmp ult i32 %.sroa.0.032.i.i.i.i267, 7
  %i.cbg = zext i1 %i.cbf to i32
  %spec.select33.i.i.i.i271 = add nuw nsw i32 %.sroa.0.032.i.i.i.i267, %i.cbg
  br label %.backedge.i.i.i55.i.backedge

.backedge.i.i.i55.i.backedge:                     ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i
  %.sroa.0.032.i.i.i.i267.be = phi i32 [ %spec.select33.i.i.i.i271, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i ], [ %.sroa.0.2.i.i10.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i ], [ %.sroa.0.3.i.i.i.i302, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301 ]
  %.sroa.014.0.i.i.i.i268.be = phi ptr [ %i.cbe, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i ], [ %i.cam, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i ], [ %i.cbc, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301 ]
  %.sroa.05.0.i.i.i.i269.be = phi i64 [ %.sroa.01.0.i.i.i3.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i ], [ %i.cal, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i ], [ %i.cbb, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i301 ]
  br label %.backedge.i.i.i55.i

bb.xc:                                            ; preds = %bb.xc, %bb.xb
  %.sroa.0.02.i.i.i5.i.i = phi i32 [ 0, %bb.xb ], [ %i.cbh, %bb.xc ]
  %i.cbh = add nuw nsw i32 %.sroa.0.02.i.i.i5.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173961
  %.sroa.0.0.highbits.i25.i.i.i.i270 = lshr i32 %i.cbh, %.sroa.0.0.i.i.i.i4.i.i
  %i.cbi = icmp eq i32 %.sroa.0.0.highbits.i25.i.i.i.i270, 0
  br i1 %i.cbi, label %bb.xc, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i

bb.xd:                                            ; preds = %bb.xa
  %i.cbj = icmp eq i64 %i.cae, 30
  br i1 %i.cbj, label %bb.xe, label %bb.xf

bb.xe:                                            ; preds = %bb.xd
  %i.cbk = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i268, i64 1488 ; 2 uses
  %i.cbl = load atomic ptr, ptr %i.cbk acquire, align 8, !noalias !173961 ; 2 uses
  %i.cbm = icmp eq ptr %i.cbl, null
  br i1 %i.cbm, label %.lr.ph.i.i.i.i.i289, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i289:                              ; preds = %bb.xe, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293
  %.sroa.0.02.i26.i.i.i.i290 = phi i32 [ %.sroa.0.1.i.i.i.i.i294, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293 ], [ 0, %bb.xe ] ; 5 uses
  %i.cbn = icmp ult i32 %.sroa.0.02.i26.i.i.i.i290, 7
  br i1 %i.cbn, label %.preheader.i.i.i.i.i.i296, label %.loopexit.i.i.i.i.i.i291

.loopexit.i.i.i.i.i.i291:                         ; preds = %.lr.ph.i.i.i.i.i289
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i292

.noexc66.i:                                       ; preds = %.loopexit.i.i.i.i.i.i291
  %i.cbo = icmp ult i32 %.sroa.0.02.i26.i.i.i.i290, 11
  br i1 %i.cbo, label %.loopexit.i.thread.i.i.i.i.i295, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293

.preheader.i.i.i.i.i.i296:                        ; preds = %.lr.ph.i.i.i.i.i289, %.preheader.i.i.i.i.i.i296
  %.sroa.0.03.i.i.i.i.i.i297 = phi i32 [ %i.cbp, %.preheader.i.i.i.i.i.i296 ], [ 0, %.lr.ph.i.i.i.i.i289 ]
  %i.cbp = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i.i297, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173961
  %.sroa.0.0.highbits.i.i.i.i.i.i298 = lshr i32 %i.cbp, %.sroa.0.02.i26.i.i.i.i290
  %i.cbq = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i.i298, 0
  br i1 %i.cbq, label %.preheader.i.i.i.i.i.i296, label %.loopexit.i.thread.i.i.i.i.i295

.loopexit.i.thread.i.i.i.i.i295:                  ; preds = %.preheader.i.i.i.i.i.i296, %.noexc66.i
  %i.cbr = add nuw nsw i32 %.sroa.0.02.i26.i.i.i.i290, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293: ; preds = %.loopexit.i.thread.i.i.i.i.i295, %.noexc66.i
  %.sroa.0.1.i.i.i.i.i294 = phi i32 [ %i.cbr, %.loopexit.i.thread.i.i.i.i.i295 ], [ %.sroa.0.02.i26.i.i.i.i290, %.noexc66.i ]
  %i.cbs = load atomic ptr, ptr %i.cbk acquire, align 8, !noalias !173961 ; 2 uses
  %i.cbt = icmp eq ptr %i.cbs, null
  br i1 %i.cbt, label %.lr.ph.i.i.i.i.i289, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293, %bb.xe
  %.lcssa.i.i.i.i.i287 = phi ptr [ %i.cbl, %bb.xe ], [ %i.cbs, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i293 ] ; 2 uses
  %i.cbu = and i64 %.sroa.01.0.i.i1.i.i, -2
  %i.cbv = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i287, i64 1488
  %i.cbw = load atomic ptr, ptr %i.cbv monotonic, align 8, !noalias !173961
  %5 = icmp eq ptr %i.cbw, null
  %spec.select19.v.i.i.i.i288 = select i1 %5, i64 2, i64 3
  %spec.select19.i.i.i.i289 = add i64 %spec.select19.v.i.i.i.i288, %i.cbu
  store atomic ptr %.lcssa.i.i.i.i.i287, ptr %i.caa release, align 8, !noalias !173961
  store atomic i64 %spec.select19.i.i.i.i289, ptr %.val34.i197 release, align 8, !noalias !173961
  br label %bb.xf

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.wx
  %i.cbx = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 0, ptr %i.cbx, align 2, !alias.scope !173962, !noalias !173836
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.xf:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.xd
  %i.cby = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i268, i64 %i.cae ; 3 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 40 ; 3 uses
  %i.cca = load atomic i64, ptr %i.cbz acquire, align 8, !noalias !173963
  %i.ccb = and i64 %i.cca, 1
  %i.ccc = icmp eq i64 %i.ccb, 0
  br i1 %i.ccc, label %.lr.ph.i.i2.i.i.i277, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i2.i.i.i277:                             ; preds = %bb.xf, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i281
  %.sroa.0.02.i.i3.i.i.i278 = phi i32 [ %.sroa.0.1.i.i6.i.i.i282, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i281 ], [ 0, %bb.xf ] ; 5 uses
  %i.ccd = icmp ult i32 %.sroa.0.02.i.i3.i.i.i278, 7
  br i1 %i.ccd, label %.preheader.i.i.i8.i.i.i284, label %.loopexit.i.i.i4.i.i.i279

.loopexit.i.i.i4.i.i.i279:                        ; preds = %.lr.ph.i.i2.i.i.i277
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.i280

.noexc67.i:                                       ; preds = %.loopexit.i.i.i4.i.i.i279
  %i.cce = icmp ult i32 %.sroa.0.02.i.i3.i.i.i278, 11
  br i1 %i.cce, label %.loopexit.i.thread.i.i7.i.i.i283, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i281

.preheader.i.i.i8.i.i.i284:                       ; preds = %.lr.ph.i.i2.i.i.i277, %.preheader.i.i.i8.i.i.i284
  %.sroa.0.03.i.i.i9.i.i.i285 = phi i32 [ %i.ccf, %.preheader.i.i.i8.i.i.i284 ], [ 0, %.lr.ph.i.i2.i.i.i277 ]
  %i.ccf = add nuw nsw i32 %.sroa.0.03.i.i.i9.i.i.i285, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !173963
  %.sroa.0.0.highbits.i.i.i10.i.i.i286 = lshr i32 %i.ccf, %.sroa.0.02.i.i3.i.i.i278
  %i.ccg = icmp eq i32 %.sroa.0.0.highbits.i.i.i10.i.i.i286, 0
  br i1 %i.ccg, label %.preheader.i.i.i8.i.i.i284, label %.loopexit.i.thread.i.i7.i.i.i283

.loopexit.i.thread.i.i7.i.i.i283:                 ; preds = %.preheader.i.i.i8.i.i.i284, %.noexc67.i
  %i.cch = add nuw nsw i32 %.sroa.0.02.i.i3.i.i.i278, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i281

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i281: ; preds = %.loopexit.i.thread.i.i7.i.i.i283, %.noexc67.i
  %.sroa.0.1.i.i6.i.i.i282 = phi i32 [ %i.cch, %.loopexit.i.thread.i.i7.i.i.i283 ], [ %.sroa.0.02.i.i3.i.i.i278, %.noexc67.i ]
  %i.cci = load atomic i64, ptr %i.cbz acquire, align 8, !noalias !173963
  %i.ccj = and i64 %i.cci, 1
  %i.cck = icmp eq i64 %i.ccj, 0
  br i1 %i.cck, label %.lr.ph.i.i2.i.i.i277, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i281, %bb.xf
  %.sroa.018.0.copyload.i.i.i = load i16, ptr %i.cby, align 8, !noalias !173963 ; 2 uses
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cby, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.419.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.419.0..sroa_idx.i.i.i, i64 38, i1 false), !noalias !173962
  %i.ccl = add nuw nsw i64 %i.cae, 1              ; 2 uses
  %i.ccm = icmp eq i64 %i.ccl, 31
  br i1 %i.ccm, label %.lr.ph.i2.i.i.i.i, label %bb.xj

.lr.ph.i2.i.i.i.i:                                ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.xi
  %.sroa.0.04.i.i.i.i.i275 = phi i64 [ %i.ccv, %bb.xi ], [ 0, %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 3 uses
  %i.ccn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i268, i64 %.sroa.0.04.i.i.i.i.i275
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 40 ; 2 uses
  %i.ccp = load atomic i64, ptr %i.cco acquire, align 8, !noalias !173963
  %i.ccq = and i64 %i.ccp, 2
  %i.ccr = icmp eq i64 %i.ccq, 0
  br i1 %i.ccr, label %bb.xg, label %.lr.ph.i2.i.i.i.i.1

bb.xg:                                            ; preds = %.lr.ph.i2.i.i.i.i
  %i.ccs = atomicrmw or ptr %i.cco, i64 4 acq_rel, align 8, !noalias !173963
  %i.cct = and i64 %i.ccs, 2
  %i.ccu = icmp eq i64 %i.cct, 0
  br i1 %i.ccu, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i2.i.i.i.i.1

.lr.ph.i2.i.i.i.i.1:                              ; preds = %bb.xg, %.lr.ph.i2.i.i.i.i
  %i.ccv = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i275, 2 ; 2 uses
  %i.ccw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i268, i64 %.sroa.0.04.i.i.i.i.i275
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 88 ; 2 uses
  %i.ccy = load atomic i64, ptr %i.ccx acquire, align 8, !noalias !173963
  %i.ccz = and i64 %i.ccy, 2
  %i.cda = icmp eq i64 %i.ccz, 0
  br i1 %i.cda, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %.lr.ph.i2.i.i.i.i.1
  %i.cdb = atomicrmw or ptr %i.ccx, i64 4 acq_rel, align 8, !noalias !173963
  %i.cdc = and i64 %i.cdb, 2
  %i.cdd = icmp eq i64 %i.cdc, 0
  br i1 %i.cdd, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.xi

bb.xi:                                            ; preds = %bb.xh, %.lr.ph.i2.i.i.i.i.1
  %exitcond.not.i.i.i.i.i276.1 = icmp eq i64 %i.ccv, 30
  br i1 %exitcond.not.i.i.i.i.i276.1, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i2.i.i.i.i

bb.xj:                                            ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.cde = atomicrmw or ptr %i.cbz, i64 2 acq_rel, align 8, !noalias !173963
  %i.cdf = and i64 %i.cde, 4
  %i.cdg = icmp eq i64 %i.cdf, 0
  br i1 %i.cdg, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.xk

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i: ; preds = %bb.xm, %bb.xi, %bb.xk
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i.i.i268, i64 noundef 1496, i64 noundef 8) #68, !noalias !173963
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.xk:                                            ; preds = %bb.xj
  %i.cdh = icmp samesign ult i64 %i.cae, 29
  br i1 %i.cdh, label %.lr.ph.i4.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i

.lr.ph.i4.i.i.i.i:                                ; preds = %bb.xk, %bb.xm
  %.sroa.0.04.i5.i.i.i.i = phi i64 [ %i.cdi, %bb.xm ], [ %i.ccl, %bb.xk ] ; 2 uses
  %i.cdi = add nuw nsw i64 %.sroa.0.04.i5.i.i.i.i, 1 ; 2 uses
  %i.cdj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i268, i64 %.sroa.0.04.i5.i.i.i.i
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdj, i64 40 ; 2 uses
  %i.cdl = load atomic i64, ptr %i.cdk acquire, align 8, !noalias !173963
  %i.cdm = and i64 %i.cdl, 2
  %i.cdn = icmp eq i64 %i.cdm, 0
  br i1 %i.cdn, label %bb.xl, label %bb.xm

bb.xl:                                            ; preds = %.lr.ph.i4.i.i.i.i
  %i.cdo = atomicrmw or ptr %i.cdk, i64 4 acq_rel, align 8, !noalias !173963
  %i.cdp = and i64 %i.cdo, 2
  %i.cdq = icmp eq i64 %i.cdp, 0
  br i1 %i.cdq, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %.lr.ph.i4.i.i.i.i
  %exitcond.not.i6.i.i.i.i = icmp eq i64 %i.cdi, 30
  br i1 %exitcond.not.i6.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i4.i.i.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.xl, %bb.xg, %bb.xh, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, %bb.xj
  %i.cdr = icmp eq i16 %.sroa.018.0.copyload.i.i.i, -1
  br i1 %i.cdr, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.xn

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.wx
  %i.cds = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 1, ptr %i.cds, align 2, !alias.scope !173962, !noalias !173836
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.xn:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.417.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.419.i.i.i, i64 38, i1 false), !noalias !173836
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.xn, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sink.i56.i = phi i16 [ -1, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ -1, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i ], [ %.sroa.018.0.copyload.i.i.i, %bb.xn ] ; 2 uses
  store i16 %.sink.i56.i, ptr %i.bxs, align 8, !alias.scope !173962, !noalias !173836
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.i.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.xo:                                            ; preds = %bb.vy
  call void @llvm.experimental.noalias.scope.decl(metadata !173964)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.739.i.i.i)
  %i.cdt = cmpxchg ptr %.val34.i197, i32 0, i32 1 acquire monotonic, align 4, !noalias !173965
  %i.cdu = extractvalue { i32, i1 } %i.cdt, 1
  br i1 %i.cdu, label %.noexc68.i, label %bb.xp, !prof !439

bb.xp:                                            ; preds = %bb.xo
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val34.i197)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i198

.noexc68.i:                                       ; preds = %bb.xp, %bb.xo
  %i.cdv = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !173966
  %i.cdw = and i64 %i.cdv, 9223372036854775807
  %i.cdx = icmp eq i64 %i.cdw, 0
  br i1 %i.cdx, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i199, label %bb.xq, !prof !439

bb.xq:                                            ; preds = %.noexc68.i
  %i.cdy = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc69.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i198

.noexc69.i:                                       ; preds = %bb.xq
  %i.cdz = xor i1 %i.cdy, true
  %i.cea = zext i1 %i.cdz to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i199

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i199: ; preds = %.noexc69.i, %.noexc68.i
  %.sroa.01.0.i.i.i15.i.i = phi i8 [ %i.cea, %.noexc69.i ], [ 0, %.noexc68.i ] ; 3 uses
  %i.ceb = getelementptr inbounds nuw i8, ptr %.val34.i197, i64 4 ; 3 uses
  %i.cec = load atomic i8, ptr %i.ceb monotonic, align 1, !noalias !173965
  %.not.i.i51.i = icmp eq i8 %i.cec, 0
  br i1 %.not.i.i51.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i200, label %bb.xr, !prof !439

bb.xr:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !173967
  store ptr %.val34.i197, ptr %i.ay, align 8, !noalias !173967
  %i.ced = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 %.sroa.01.0.i.i.i15.i.i, ptr %i.ced, align 8, !noalias !173967
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3277) #72
          to label %bb.xt unwind label %bb.xs, !noalias !173968

bb.xs:                                            ; preds = %bb.xr
  %i.cee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #73
          to label %.body62.i unwind label %bb.xu, !noalias !173968

bb.xt:                                            ; preds = %bb.xr
  unreachable

bb.xu:                                            ; preds = %bb.xs
  %i.cef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !173968
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i200: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i199
end_hunk_2
begin_hunk_3_@_RNvMs9_NtNtCsgczF5crJ4sT_3std4sync4mpscINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ck = load ptr, ptr %i.ci, align 8, !alias.scope !215000, !noalias !215001, !nonnull !416, !noundef !416 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !215002, !noundef !416
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.ce
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !215000, !noalias !215001, !noundef !416
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cq = cmpxchg ptr %i.cp, i64 0, i64 %i.co acq_rel acquire, align 8, !noalias !215002
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.cq, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !215000, !noalias !215001, !noundef !416 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store atomic ptr %i.ct, ptr %i.cv release, align 8, !noalias !215002
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cw = load ptr, ptr %i.cr, align 8, !noalias !215002, !nonnull !416, !noundef !416
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.cy = atomicrmw xchg ptr %i.cx, i32 1 release, align 4, !noalias !215002
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.ae, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.da = invoke noundef zeroext i1 @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.cx)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.w, !noalias !214993 ; 0 uses

_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %i.db = add nuw nsw i64 %.sroa.02.012.i.i.i.i.i.i, 1
  %i.dc = icmp eq ptr %i.cj, %i.ch
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.dd = icmp samesign ult i64 %.sroa.02.012.i.i.i.i.i.i, %i.ca
  tail call void @llvm.assume(i1 %i.dd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215003)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215004)
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.sroa.02.012.i.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !215005 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !215005
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = xor i64 %.sroa.02.012.i.i.i.i.i.i, -1
  %i.dh = add nsw i64 %i.ca, %i.dg
  %i.di = mul nuw nsw i64 %i.dh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.df, i64 %i.di, i1 false), !noalias !215006
  %i.dj = add nsw i64 %i.ca, -1                   ; 2 uses
  store i64 %i.dj, ptr %i.bz, align 8, !alias.scope !215007, !noalias !215008
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %bb.af, !prof !542

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.012.i.i.i.i.i.i, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3201) #72
          to label %.noexc5.i.i.i.i unwind label %bb.w, !noalias !214993

.noexc5.i.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i
  unreachable

bb.af:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, i64 16, i1 false), !noalias !215009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !214997, !noalias !215009
  %i.dk = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 1 release, align 8, !noalias !215010
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7context5InnerE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i unwind label %bb.w, !noalias !214993

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.ag, %bb.af, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !214993
  invoke fastcc void @_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.by)
          to label %bb.ah unwind label %bb.w, !noalias !214993

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.dm = load i64, ptr %i.bz, align 8, !noalias !214993, !noundef !416 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 384307168202282326
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 304
  %i.dq = load i64, ptr %i.dp, align 16, !noalias !214993, !noundef !416 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = zext i1 %i.ds to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.dt, %bb.ai ], [ 0, %bb.ah ]
  store atomic i8 %.sroa.0.0.i.i.i.i, ptr %i.be seq_cst, align 8, !noalias !214993
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  br i1 %i.bv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !214993
  %i.dv = and i64 %i.du, 9223372036854775807
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.am, !prof !439

bb.am:                                            ; preds = %bb.al
  %i.dx = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc3.i.i.i unwind label %bb.aq, !noalias !214993

.noexc3.i.i.i:                                    ; preds = %bb.am
  br i1 %i.dx, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.noexc3.i.i.i
  store atomic i8 1, ptr %i.bp monotonic, align 4, !noalias !214993
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.an, %.noexc3.i.i.i, %bb.al, %bb.ak
  %i.dy = atomicrmw xchg ptr %i.bd, i32 0 release, align 4, !noalias !214993
  %i.dz = icmp eq i32 %i.dy, 2
  br i1 %i.dz, label %bb.ao, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !426

bb.ao:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.bd)
          to label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.aq, !noalias !214993

bb.ap:                                            ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !214993
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.r, %bb.q
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.aq, %bb.w, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.aq ], [ %i.bs, %bb.t ], [ %i.bu, %bb.w ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.e) #73
          to label %common.resume.i unwind label %bb.ar, !noalias !214993

bb.ar:                                            ; preds = %.body.i.i.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !214993
  unreachable

common.resume.i:                                  ; preds = %bb.dg, %bb.cq, %bb.cp, %bb.cb, %.body.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ic, %bb.cb ], [ %lpad.phi.i.i, %bb.cq ], [ %lpad.thr_comm.i.i, %bb.dg ], [ %lpad.phi.i.i, %bb.cp ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ao, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %bb.o
  %.sroa.03.0.copyload4.i.i = load i64, ptr %i.e, align 8, !noalias !214992 ; 2 uses
  %.sroa.65.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx6.i.i, i64 24, i1 false), !noalias !214992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !214993
  %i.ed = icmp eq i64 %.sroa.03.0.copyload4.i.i, -1
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ee, align 8, !alias.scope !214992
  br label %bb.au

bb.at:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.i.i, i64 24, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge.i.i = phi i64 [ %.sroa.03.0.copyload4.i.i, %bb.at ], [ -1, %bb.as ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !214992
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.av:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215011)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  %i.ef = load atomic i64, ptr %.8.val acquire, align 8, !noalias !215012
  %i.eg = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.eh = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !215012
  %i.ei = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.av
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.av ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 15 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.eh, %bb.av ], [ %.sroa.012.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 8 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.ef, %bb.av ], [ %.sroa.07.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 6 uses
  %i.ej = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.ek = and i64 %i.ej, 31                       ; 5 uses
  %i.el = icmp eq i64 %i.ek, 31
  br i1 %i.el, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.backedge.i.i.i
  %i.em = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.em, label %bb.ax, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i.i6.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i.i.i6.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.preheader

.lr.ph.i.i.i7.i.preheader:                        ; preds = %bb.ax
  %i.en = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter145 = and i32 %i.en, 7                 ; 3 uses
  %i.eo = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.eo, label %.lr.ph.i.i.i7.i.epil.preheader, label %.lr.ph.i.i.i7.i.preheader.new

.lr.ph.i.i.i7.i.preheader.new:                    ; preds = %.lr.ph.i.i.i7.i.preheader
  %unroll_iter149 = and i32 %i.en, 56
  br label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i, %.lr.ph.i.i.i7.i.preheader.new
  %niter150 = phi i32 [ 0, %.lr.ph.i.i.i7.i.preheader.new ], [ %niter150.next.7, %.lr.ph.i.i.i7.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter150.next.7 = add i32 %niter150, 8         ; 2 uses
  %niter150.ncmp.7 = icmp eq i32 %niter150.next.7, %unroll_iter149
  br i1 %niter150.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i

bb.ay:                                            ; preds = %.backedge.i.i.i
  %i.ep = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.eq = and i64 %.sroa.07.0.i.i.i, 1
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.az, label %bb.bc

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i: ; preds = %bb.bd, %bb.aw
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !215012
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i
  %lcmp.mod147.not = icmp eq i32 %xtraiter145, 0
  br i1 %lcmp.mod147.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.epil.preheader

.lr.ph.i.i.i7.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter145, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.i.i7.i.epil

.lr.ph.i.i.i7.i.epil:                             ; preds = %.lr.ph.i.i.i7.i.epil, %.lr.ph.i.i.i7.i.epil.preheader
  %epil.iter146 = phi i32 [ 0, %.lr.ph.i.i.i7.i.epil.preheader ], [ %epil.iter146.next, %.lr.ph.i.i.i7.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter146.next = add i32 %epil.iter146, 1   ; 2 uses
  %epil.iter146.cmp.not = icmp eq i32 %epil.iter146.next, %xtraiter145
  br i1 %epil.iter146.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.epil, !llvm.loop !214942

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod141.not = icmp eq i32 %xtraiter139, 0
  br i1 %lcmp.mod141.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod142 = icmp ne i32 %xtraiter139, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter140 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter140.next, %.lr.ph.i19.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter140.next = add i32 %epil.iter140, 1   ; 2 uses
  %epil.iter140.cmp.not = icmp eq i32 %epil.iter140.next, %xtraiter139
  br i1 %epil.iter140.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !214943

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.epil, %bb.be, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i, %bb.ax
  %i.es = load atomic i64, ptr %.8.val acquire, align 8, !noalias !215012
  %i.et = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !215012
  %.sroa.0.1.i.i5.i = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.az:                                            ; preds = %bb.ay
  fence seq_cst
  %i.eu = load atomic i64, ptr %i.ei monotonic, align 8, !noalias !215012 ; 3 uses
  %i.ev = lshr i64 %i.eu, 1
  %i.ew = icmp eq i64 %i.ej, %i.ev
  br i1 %i.ew, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.unshifted.i.i.i = xor i64 %i.eu, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ult i64 %.not.unshifted.i.i.i, 64
  %1 = add i64 %.sroa.07.0.i.i.i, 3
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %i.ep, i64 %1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ex = and i64 %i.eu, 1
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  %.sroa.01.0.i.i1.i = phi i64 [ %i.ep, %bb.ay ], [ %spec.select.i.i.i, %bb.ba ] ; 2 uses
  %i.ez = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.ez, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fa = icmp ult i32 %.sroa.0.034.i.i.i, 7
  br i1 %i.fa, label %bb.be, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i

bb.be:                                            ; preds = %bb.bd
  %.not.i18.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i18.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.preheader

.lr.ph.i19.i.i.i.preheader:                       ; preds = %bb.be
  %i.fb = mul nuw i32 %.sroa.0.034.i.i.i, %.sroa.0.034.i.i.i ; 2 uses
  %xtraiter139 = and i32 %i.fb, 7                 ; 3 uses
  %i.fc = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.fc, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter143 = and i32 %i.fb, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter144 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter144.next.7, %.lr.ph.i19.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter144.next.7 = add i32 %niter144, 8         ; 2 uses
  %niter144.ncmp.7 = icmp eq i32 %niter144.next.7, %unroll_iter143
  br i1 %niter144.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit122.unr-lcssa, label %.lr.ph.i19.i.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.fd = cmpxchg weak ptr %.8.val, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i1.i seq_cst acquire, align 8, !noalias !215012
  %.sroa.18.0.in.i.i.i2.i = extractvalue { i64, i1 } %i.fd, 1
  br i1 %.sroa.18.0.in.i.i.i2.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.0.0.i.i.i.i3.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %i.fe = mul nuw nsw i32 %.sroa.0.0.i.i.i.i3.i, %.sroa.0.0.i.i.i.i3.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.bg
  %xtraiter133 = and i32 %i.fe, 5                 ; 3 uses
  %i.ff = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ff, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter137 = and i32 %i.fe, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i4.i.unr-lcssa:          ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod135.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod135.not, label %._crit_edge.loopexit.i.i.i4.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i4.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod136 = icmp ne i32 %xtraiter133, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter134 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter134.next, %.lr.ph.i24.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter134.next = add i32 %epil.iter134, 1   ; 2 uses
  %epil.iter134.cmp.not = icmp eq i32 %epil.iter134.next, %xtraiter133
  br i1 %epil.iter134.cmp.not, label %._crit_edge.loopexit.i.i.i4.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !214944

._crit_edge.loopexit.i.i.i4.i:                    ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i4.i.unr-lcssa
  %i.fg = add i32 %.sroa.0.034.i.i.i, 1
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter138 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter138.next.7, %.lr.ph.i24.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter138.next.7 = add i32 %niter138, 8         ; 2 uses
  %niter138.ncmp.7 = icmp eq i32 %niter138.next.7, %unroll_iter137
  br i1 %niter138.ncmp.7, label %._crit_edge.loopexit.i.i.i4.i.unr-lcssa, label %.lr.ph.i24.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i4.i, %bb.bg
  %i.fh = phi i32 [ %i.fg, %._crit_edge.loopexit.i.i.i4.i ], [ 1, %bb.bg ]
  %i.fi = load atomic i64, ptr %.8.val acquire, align 8, !noalias !215012
  %i.fj = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !215012
  br label %.backedge.i.i.i.backedge

.backedge.i.i.i.backedge:                         ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i
  %.sroa.0.034.i.i.i.be = phi i32 [ %.sroa.0.1.i.i5.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.fh, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i ]
  %.sroa.012.0.i.i.i.be = phi ptr [ %i.et, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.fj, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i ]
  %.sroa.07.0.i.i.i.be = phi i64 [ %i.es, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i ], [ %i.fi, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i ]
  br label %.backedge.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fk = icmp eq i64 %i.ek, 30
  br i1 %i.fk, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.fl = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !215012 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.bi, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.fq, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.bi ] ; 6 uses
  %i.fn = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.fn, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i27.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !215012
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.bk:                                            ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fo = mul nuw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter151 = and i32 %i.fo, 7                 ; 3 uses
  %i.fp = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter155 = and i32 %i.fo, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter156 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter156.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %niter156.next.7 = add i32 %niter156, 8         ; 2 uses
  %niter156.ncmp.7 = icmp eq i32 %niter156.next.7, %unroll_iter155
  br i1 %niter156.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod153.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod154 = icmp ne i32 %xtraiter151, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter152 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter152.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215012
  %epil.iter152.next = add i32 %epil.iter152, 1   ; 2 uses
  %epil.iter152.cmp.not = icmp eq i32 %epil.iter152.next, %xtraiter151
  br i1 %epil.iter152.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !214945

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.bk, %bb.bj
  %i.fq = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.fr = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !215012 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.bi
  %.lcssa.i.i.i.i = phi ptr [ %i.fl, %bb.bi ], [ %i.fr, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.ft = and i64 %.sroa.01.0.i.i1.i, -2
  %i.fu = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !215012
  %2 = icmp eq ptr %i.fu, null
  %spec.select17.v.i.i.i = select i1 %2, i64 2, i64 3
  %spec.select17.i.i.i = add i64 %spec.select17.v.i.i.i, %i.ft
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.eg release, align 8, !noalias !215012
  store atomic i64 %spec.select17.i.i.i, ptr %.8.val release, align 8, !noalias !215012
  br label %bb.bl

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bb
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.fv, align 8, !alias.scope !215013
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bl:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.bh
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %i.fw, i64 %i.ek ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 3 uses
  %i.fz = load atomic i64, ptr %i.fy acquire, align 8, !noalias !215014
  %i.ga = and i64 %i.fz, 1
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.bl, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.gf, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.bl ] ; 6 uses
  %i.gc = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.gc, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i3.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !215014
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.bn
  %i.gd = mul nuw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter157 = and i32 %i.gd, 7                 ; 3 uses
  %i.ge = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.ge, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter161 = and i32 %i.gd, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter162 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter162.next.7, %.lr.ph.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  %niter162.next.7 = add i32 %niter162, 8         ; 2 uses
  %niter162.ncmp.7 = icmp eq i32 %niter162.next.7, %unroll_iter161
  br i1 %niter162.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod159.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod159.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod160 = icmp ne i32 %xtraiter157, 0
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter158 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter158.next, %.lr.ph.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !215014
  %epil.iter158.next = add i32 %epil.iter158, 1   ; 2 uses
  %epil.iter158.cmp.not = icmp eq i32 %epil.iter158.next, %xtraiter157
  br i1 %epil.iter158.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !214948

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.bn, %bb.bm
  %i.gf = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.gg = load atomic i64, ptr %i.fy acquire, align 8, !noalias !215014
  %i.gh = and i64 %i.gg, 1
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, %bb.bl
  %.sroa.015.0.copyload.i.i = load i64, ptr %i.fx, align 8, !noalias !215014 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i.i, i64 24, i1 false), !noalias !215013
  %i.gj = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 31
  br i1 %i.gk, label %.lr.ph.i2.i.i.i, label %bb.br

.lr.ph.i2.i.i.i:                                  ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.bq
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.gt, %bb.bq ], [ 0, %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40 ; 2 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8, !noalias !215014
  %i.go = and i64 %i.gn, 2
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bo, label %.lr.ph.i2.i.i.i.1

bb.bo:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.gq = atomicrmw or ptr %i.gm, i64 4 acq_rel, align 8, !noalias !215014
  %i.gr = and i64 %i.gq, 2
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.bo, %.lr.ph.i2.i.i.i
  %i.gt = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 80 ; 2 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8, !noalias !215014
  %i.gx = and i64 %i.gw, 2
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.gz = atomicrmw or ptr %i.gv, i64 4 acq_rel, align 8, !noalias !215014
  %i.ha = and i64 %i.gz, 2
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i2.i.i.1 = icmp eq i64 %i.gt, 30
  br i1 %exitcond.not.i.i2.i.i.1, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i2.i.i.i

bb.br:                                            ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.hc = atomicrmw or ptr %i.fy, i64 2 acq_rel, align 8, !noalias !215014
  %i.hd = and i64 %i.hc, 4
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bs

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %bb.bu, %bb.bq, %bb.bs
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i, i64 noundef 1248, i64 noundef 8) #68, !noalias !215014
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.hf = icmp samesign ult i64 %i.ek, 29
  br i1 %i.hf, label %.lr.ph.i4.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.bs, %bb.bu
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.hg, %bb.bu ], [ %i.gj, %bb.bs ] ; 2 uses
  %i.hg = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40 ; 2 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8, !noalias !215014
  %i.hk = and i64 %i.hj, 2
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.hm = atomicrmw or ptr %i.hi, i64 4 acq_rel, align 8, !noalias !215014
  %i.hn = and i64 %i.hm, 2
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph.i4.i.i.i
  %exitcond.not.i6.i.i.i = icmp eq i64 %i.hg, 30
  br i1 %exitcond.not.i6.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i4.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bt, %bb.bo, %bb.bp, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, %bb.br
  %i.hp = icmp eq i64 %.sroa.015.0.copyload.i.i, -1
  br i1 %i.hp, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, label %bb.bv

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %bb.bb
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hq, align 8, !alias.scope !215013
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bv:                                            ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.i.i, i64 24, i1 false)
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.bv, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sink.i = phi i64 [ -1, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ -1, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %.sroa.015.0.copyload.i.i, %bb.bv ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !215013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215015)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.736.i.i)
  %i.hr = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !215016
  %i.hs = extractvalue { i32, i1 } %i.hr, 1
  br i1 %i.hs, label %bb.by, label %bb.bx, !prof !439

bb.bx:                                            ; preds = %bb.bw
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val), !noalias !215016
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ht = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !215016
  %i.hu = and i64 %i.ht, 9223372036854775807
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bz, !prof !439

bb.bz:                                            ; preds = %bb.by
  %i.hw = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !215016
  %i.hx = xor i1 %i.hw, true
  %i.hy = zext i1 %i.hx to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bz, %bb.by
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.hy, %bb.bz ], [ 0, %bb.by ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
end_hunk_3
