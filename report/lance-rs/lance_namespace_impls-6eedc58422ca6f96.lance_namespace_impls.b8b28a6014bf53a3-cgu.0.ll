Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_impls-6eedc58422ca6f96.lance_namespace_impls.b8b28a6014bf53a3-cgu.0?download=true
inline.NumInlined: 73518
inline.NumDeleted: 27553
loop-unroll.NumCompletelyUnrolled: 88
loop-unroll.NumRuntimeUnrolled: 193
loop-unroll.NumUnrolled: 285
begin_hunk_0_@_RNCNvMs4_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_9BaseCacheNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB15_16CachedReaderDataE21retry_interrupted_ops0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.v = load atomic i64, ptr %.val26 monotonic, align 8, !noalias !148170
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
  %i.ac = load i64, ptr %i.w, align 16, !noalias !148170, !noundef !409
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %.sroa.04.0.i.i.i        ; 3 uses
  %i.af = load i64, ptr %i.x, align 8, !noalias !148170, !noundef !409
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %.sroa.04.0.i.i.i, %i.ag
  %i.ai = load ptr, ptr %i.y, align 8, !noalias !148170, !nonnull !409, !noundef !409
  %i.aj = load i64, ptr %i.z, align 16, !noalias !148170, !noundef !409
  %i.ak = icmp ult i64 %i.ae, %i.aj
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %i.ae ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !148170 ; 3 uses
  %i.ao = add i64 %.sroa.04.0.i.i.i, 1
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i
  %i.aq = icmp eq i64 %i.an, %.sroa.04.0.i.i.i
  br i1 %i.aq, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i
  %i.ar = add nuw i64 %i.ae, 1
  %i.as = load i64, ptr %i.ab, align 128, !noalias !148170, !noundef !409
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.au = icmp ult i32 %.sroa.0.023.i.i.i, 7
  br i1 %i.au, label %.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %.loopexit.i.i.i.i
  %i.av = icmp ult i32 %.sroa.0.023.i.i.i, 11
  br i1 %i.av, label %.loopexit.i.thread.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.i, %.preheader.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i32 [ %i.aw, %.preheader.i.i.i.i ], [ 0, %bb.i ]
  %i.aw = add nuw nsw i32 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !148170
  %.sroa.0.0.highbits.i.i.i.i = lshr i32 %i.aw, %.sroa.0.023.i.i.i
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i, 0
  br i1 %i.ax, label %.preheader.i.i.i.i, label %.loopexit.i.thread.i.i.i

.loopexit.i.thread.i.i.i:                         ; preds = %.preheader.i.i.i.i, %.noexc30
  %i.ay = add nuw nsw i32 %.sroa.0.023.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i: ; preds = %.loopexit.i.thread.i.i.i, %.noexc30
  %.sroa.0.2.i.i.i = phi i32 [ %i.ay, %.loopexit.i.thread.i.i.i ], [ %.sroa.0.023.i.i.i, %.noexc30 ]
  %i.az = load atomic i64, ptr %.val26 monotonic, align 16, !noalias !148170
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge

bb.j:                                             ; preds = %bb.g
  fence seq_cst
  %i.ba = load atomic i64, ptr %i.aa monotonic, align 16, !noalias !148170 ; 2 uses
  %i.bb = load i64, ptr %i.w, align 16, !noalias !148170, !noundef !409 ; 2 uses
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
  %i.bh = load atomic i64, ptr %.val26 monotonic, align 16, !noalias !148170
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.backedge

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.02.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.bi, %bb.l ]
  %i.bi = add nuw nsw i32 %.sroa.0.02.i.i.i.i, 1  ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !148170
  %.sroa.0.0.highbits.i13.i.i.i = lshr i32 %i.bi, %.sroa.0.0.i.i.i.i.i
  %i.bj = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i, 0
  br i1 %i.bj, label %bb.l, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.bk = and i64 %i.bb, %i.ba
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.sink.split, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i

bb.n:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.x, align 8, !noalias !148170, !noundef !409
  %i.bn = add i64 %i.bm, %i.ah
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  %.sroa.01.0.i.i.i = phi i64 [ %i.bn, %bb.n ], [ %i.an, %bb.h ]
  %i.bo = cmpxchg weak ptr %.val26, i64 %.sroa.04.0.i.i.i, i64 %.sroa.01.0.i.i.i seq_cst monotonic, align 8, !noalias !148170 ; 2 uses
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
  call void @llvm.x86.sse2.pause(), !noalias !148170
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
          to label %.body unwind label %bb.u, !noalias !148171

bb.t:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.bv = load i64, ptr %i.x, align 8, !noalias !148170, !noundef !409
  %i.bw = add i64 %i.bv, %.sroa.04.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !148171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false), !noalias !148171
  store atomic i64 %i.bw, ptr %i.bu release, align 8, !noalias !148171
  %i.bx = getelementptr inbounds nuw i8, ptr %.val26, i64 256
  invoke fastcc void @_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bx)
          to label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.s, !noalias !148171

bb.u:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !148171
  unreachable

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.t
  %.sroa.04.0.copyload5.i.i = load i16, ptr %i.d, align 8, !noalias !148172 ; 2 uses
  %.sroa.66.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.0..sroa_idx7.i.i, i64 62, i1 false), !noalias !148172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !148171
  %i.bz = icmp eq i16 %.sroa.04.0.copyload5.i.i, -2
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.ca, align 2, !alias.scope !148172
  br label %bb.x

bb.w:                                             ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.66.i.i, i64 62, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %storemerge.i.i = phi i16 [ %.sroa.04.0.copyload5.i.i, %bb.w ], [ -2, %bb.v ] ; 2 uses
  store i16 %storemerge.i.i, ptr %0, align 8, !alias.scope !148172
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.y:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !148173)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i.i)
  %i.cb = load atomic i64, ptr %.val26 acquire, align 8, !noalias !148174
  %i.cc = getelementptr inbounds nuw i8, ptr %.val26, i64 8 ; 5 uses
  %i.cd = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !148174
  %i.ce = getelementptr inbounds nuw i8, ptr %.val26, i64 128
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.y
  %.sroa.0.032.i.i.i = phi i32 [ 0, %bb.y ], [ %.sroa.0.032.i.i.i.be, %.backedge.i.i.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i.i = phi ptr [ %i.cd, %bb.y ], [ %.sroa.014.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 8 uses
  %.sroa.05.0.i.i.i = phi i64 [ %i.cb, %bb.y ], [ %.sroa.05.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 5 uses
  %i.cf = lshr i64 %.sroa.05.0.i.i.i, 1           ; 2 uses
  %i.cg = and i64 %i.cf, 31                       ; 5 uses
  %i.ch = icmp eq i64 %i.cg, 31
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.backedge.i.i.i
  %i.ci = icmp ult i32 %.sroa.0.032.i.i.i, 7
  br i1 %i.ci, label %.preheader.i.i.i12.i, label %.loopexit.i.i.i8.i

.loopexit.i.i.i8.i:                               ; preds = %bb.z
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %.loopexit.i.i.i8.i
  %i.cj = icmp ult i32 %.sroa.0.032.i.i.i, 11
  br i1 %i.cj, label %.loopexit.i.thread.i.i11.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i

.preheader.i.i.i12.i:                             ; preds = %bb.z, %.preheader.i.i.i12.i
  %.sroa.0.03.i.i.i13.i = phi i32 [ %i.ck, %.preheader.i.i.i12.i ], [ 0, %bb.z ]
  %i.ck = add nuw nsw i32 %.sroa.0.03.i.i.i13.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !148174
  %.sroa.0.0.highbits.i.i.i14.i = lshr i32 %i.ck, %.sroa.0.032.i.i.i
  %i.cl = icmp eq i32 %.sroa.0.0.highbits.i.i.i14.i, 0
  br i1 %i.cl, label %.preheader.i.i.i12.i, label %.loopexit.i.thread.i.i11.i

.loopexit.i.thread.i.i11.i:                       ; preds = %.preheader.i.i.i12.i, %.noexc31
  %i.cm = add nuw nsw i32 %.sroa.0.032.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i: ; preds = %.loopexit.i.thread.i.i11.i, %.noexc31
  %.sroa.0.2.i.i10.i = phi i32 [ %i.cm, %.loopexit.i.thread.i.i11.i ], [ %.sroa.0.032.i.i.i, %.noexc31 ]
  %i.cn = load atomic i64, ptr %.val26 acquire, align 8, !noalias !148174
  %i.co = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !148174
  br label %.backedge.i.i.i.backedge

bb.aa:                                            ; preds = %.backedge.i.i.i
  %i.cp = add i64 %.sroa.05.0.i.i.i, 2            ; 2 uses
  %i.cq = and i64 %.sroa.05.0.i.i.i, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  fence seq_cst
  %i.cs = load atomic i64, ptr %i.ce monotonic, align 8, !noalias !148174 ; 3 uses
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = icmp eq i64 %i.cf, %i.ct
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.unshifted.i.i.i = xor i64 %i.cs, %.sroa.05.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %2 = zext i1 %.not.i.i.i to i64
  %spec.select.i.i7.i = or disjoint i64 %i.cp, %2
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
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %.loopexit.i20.i.i.i
  %i.cz = icmp ult i32 %.sroa.0.032.i.i.i, 11
  br i1 %i.cz, label %.loopexit.i20.thread.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i

.preheader.i21.i.i.i:                             ; preds = %bb.af, %.preheader.i21.i.i.i
  %.sroa.0.03.i22.i.i.i = phi i32 [ %i.da, %.preheader.i21.i.i.i ], [ 0, %bb.af ]
  %i.da = add nuw nsw i32 %.sroa.0.03.i22.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !148174
  %.sroa.0.0.highbits.i23.i.i.i = lshr i32 %i.da, %.sroa.0.032.i.i.i
  %i.db = icmp eq i32 %.sroa.0.0.highbits.i23.i.i.i, 0
  br i1 %i.db, label %.preheader.i21.i.i.i, label %.loopexit.i20.thread.i.i.i

.loopexit.i20.thread.i.i.i:                       ; preds = %.preheader.i21.i.i.i, %.noexc32
  %i.dc = add nuw nsw i32 %.sroa.0.032.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i: ; preds = %.loopexit.i20.thread.i.i.i, %.noexc32
  %.sroa.0.3.i.i.i = phi i32 [ %i.dc, %.loopexit.i20.thread.i.i.i ], [ %.sroa.0.032.i.i.i, %.noexc32 ]
  %i.dd = load atomic i64, ptr %.val26 acquire, align 8, !noalias !148174
  %i.de = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !148174
  br label %.backedge.i.i.i.backedge

bb.ag:                                            ; preds = %bb.ae
  %i.df = cmpxchg weak ptr %.val26, i64 %.sroa.05.0.i.i.i, i64 %.sroa.01.0.i.i1.i seq_cst acquire, align 8, !noalias !148174 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i = extractvalue { i64, i1 } %i.df, 1
  %.sroa.01.0.i.i.i3.i = extractvalue { i64, i1 } %i.df, 0
  br i1 %.sroa.18.0.in.i.i.i2.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !148174
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
  call void @llvm.x86.sse2.pause(), !noalias !148174
  %.sroa.0.0.highbits.i25.i.i.i = lshr i32 %i.dj, %.sroa.0.0.i.i.i.i4.i
  %i.dk = icmp eq i32 %.sroa.0.0.highbits.i25.i.i.i, 0
  br i1 %i.dk, label %bb.ai, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i

bb.aj:                                            ; preds = %bb.ag
  %i.dl = icmp eq i64 %i.cg, 30
  br i1 %i.dl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load atomic ptr, ptr %.sroa.014.0.i.i.i acquire, align 8, !noalias !148174 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %.lr.ph.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i
  %.sroa.0.02.i26.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ], [ 0, %bb.ak ] ; 5 uses
  %i.do = icmp ult i32 %.sroa.0.02.i26.i.i.i, 7
  br i1 %i.do, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %.loopexit.i.i.i.i.i
  %i.dp = icmp ult i32 %.sroa.0.02.i26.i.i.i, 11
  br i1 %i.dp, label %.loopexit.i.thread.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i32 [ %i.dq, %.preheader.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ]
  %i.dq = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !148174
  %.sroa.0.0.highbits.i.i.i.i.i = lshr i32 %i.dq, %.sroa.0.02.i26.i.i.i
  %i.dr = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i, 0
  br i1 %i.dr, label %.preheader.i.i.i.i.i, label %.loopexit.i.thread.i.i.i.i

.loopexit.i.thread.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i, %.noexc33
  %i.ds = add nuw nsw i32 %.sroa.0.02.i26.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i: ; preds = %.loopexit.i.thread.i.i.i.i, %.noexc33
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.ds, %.loopexit.i.thread.i.i.i.i ], [ %.sroa.0.02.i26.i.i.i, %.noexc33 ]
  %i.dt = load atomic ptr, ptr %.sroa.014.0.i.i.i acquire, align 8, !noalias !148174 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.lr.ph.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i, %bb.ak
  %.lcssa.i.i.i.i = phi ptr [ %i.dm, %bb.ak ], [ %i.dt, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ] ; 2 uses
  %i.dv = and i64 %.sroa.01.0.i.i1.i, -2
  %3 = add i64 %i.dv, 2
  %i.dw = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !148174
  %4 = icmp ne ptr %i.dw, null
  %5 = zext i1 %4 to i64
  %spec.select19.i.i.i = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.cc release, align 8, !noalias !148174
  store atomic i64 %spec.select19.i.i.i, ptr %.val26 release, align 8, !noalias !148174
  br label %bb.al

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.dx, align 2, !alias.scope !148175
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.al:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.aj
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i, i64 8
  %i.dz = getelementptr inbounds nuw [72 x i8], ptr %i.dy, i64 %i.cg ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64 ; 3 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !noalias !148176
  %i.ec = and i64 %i.eb, 1
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i.i2.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i2.i.i:                                  ; preds = %bb.al, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i
  %.sroa.0.02.i.i3.i.i = phi i32 [ %.sroa.0.1.i.i6.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i ], [ 0, %bb.al ] ; 5 uses
  %i.ee = icmp ult i32 %.sroa.0.02.i.i3.i.i, 7
  br i1 %i.ee, label %.preheader.i.i.i8.i.i, label %.loopexit.i.i.i4.i.i

.loopexit.i.i.i4.i.i:                             ; preds = %.lr.ph.i.i2.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %.loopexit.i.i.i4.i.i
  %i.ef = icmp ult i32 %.sroa.0.02.i.i3.i.i, 11
  br i1 %i.ef, label %.loopexit.i.thread.i.i7.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i

.preheader.i.i.i8.i.i:                            ; preds = %.lr.ph.i.i2.i.i, %.preheader.i.i.i8.i.i
  %.sroa.0.03.i.i.i9.i.i = phi i32 [ %i.eg, %.preheader.i.i.i8.i.i ], [ 0, %.lr.ph.i.i2.i.i ]
  %i.eg = add nuw nsw i32 %.sroa.0.03.i.i.i9.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !148176
  %.sroa.0.0.highbits.i.i.i10.i.i = lshr i32 %i.eg, %.sroa.0.02.i.i3.i.i
  %i.eh = icmp eq i32 %.sroa.0.0.highbits.i.i.i10.i.i, 0
  br i1 %i.eh, label %.preheader.i.i.i8.i.i, label %.loopexit.i.thread.i.i7.i.i

.loopexit.i.thread.i.i7.i.i:                      ; preds = %.preheader.i.i.i8.i.i, %.noexc34
  %i.ei = add nuw nsw i32 %.sroa.0.02.i.i3.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i: ; preds = %.loopexit.i.thread.i.i7.i.i, %.noexc34
  %.sroa.0.1.i.i6.i.i = phi i32 [ %i.ei, %.loopexit.i.thread.i.i7.i.i ], [ %.sroa.0.02.i.i3.i.i, %.noexc34 ]
  %i.ej = load atomic i64, ptr %i.ea acquire, align 8, !noalias !148176
  %i.ek = and i64 %i.ej, 1
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph.i.i2.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i, %bb.al
  %.sroa.018.0.copyload.i.i = load i16, ptr %i.dz, align 8, !noalias !148176 ; 2 uses
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.419.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.419.0..sroa_idx.i.i, i64 62, i1 false), !noalias !148175
  %i.em = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %i.en = icmp eq i64 %i.em, 31
  br i1 %i.en, label %.lr.ph.i2.i.i.i, label %bb.ap

.lr.ph.i2.i.i.i:                                  ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.ao
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.ew, %bb.ao ], [ 0, %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [72 x i8], ptr %.sroa.014.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72 ; 2 uses
  %i.eq = load atomic i64, ptr %i.ep acquire, align 8, !noalias !148176
  %i.er = and i64 %i.eq, 2
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.am, label %.lr.ph.i2.i.i.i.1

bb.am:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.et = atomicrmw or ptr %i.ep, i64 4 acq_rel, align 8, !noalias !148176
  %i.eu = and i64 %i.et, 2
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.am, %.lr.ph.i2.i.i.i
  %i.ew = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.ex = getelementptr inbounds nuw [72 x i8], ptr %.sroa.014.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 144 ; 2 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8, !noalias !148176
  %i.fa = and i64 %i.ez, 2
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.fc = atomicrmw or ptr %i.ey, i64 4 acq_rel, align 8, !noalias !148176
  %i.fd = and i64 %i.fc, 2
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ew, 30
  br i1 %exitcond.not.i.i.i.i.1, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i2.i.i.i

bb.ap:                                            ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.ff = atomicrmw or ptr %i.ea, i64 2 acq_rel, align 8, !noalias !148176
  %i.fg = and i64 %i.ff, 4
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.aq

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %bb.as, %bb.ao, %bb.aq
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i.i, i64 noundef 2240, i64 noundef 8) #68, !noalias !148176
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.fi = icmp samesign ult i64 %i.cg, 29
  br i1 %i.fi, label %.lr.ph.i4.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Q_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.aq, %bb.as
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.fj, %bb.as ], [ %i.em, %bb.aq ] ; 2 uses
  %i.fj = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %.sroa.014.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72 ; 2 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8, !noalias !148176
  %i.fn = and i64 %i.fm, 2
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.fp = atomicrmw or ptr %i.fl, i64 4 acq_rel, align 8, !noalias !148176
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
  store i8 1, ptr %i.ft, align 2, !alias.scope !148175
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.at:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.417.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.419.i.i, i64 62, i1 false)
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.at, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sink.i = phi i16 [ -2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ -2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %.sroa.018.0.copyload.i.i, %bb.at ] ; 2 uses
  store i16 %.sink.i, ptr %0, align 8, !alias.scope !148175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtCskTBvlRM5ILY_4moka6future13InterruptedOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1N_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.au:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !148177)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.739.i.i)
  %i.fu = cmpxchg ptr %.val26, i32 0, i32 1 acquire monotonic, align 4, !noalias !148178
  %i.fv = extractvalue { i32, i1 } %i.fu, 1
  br i1 %i.fv, label %.noexc35, label %bb.av, !prof !432

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val26)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.av, %bb.au
  %i.fw = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !148178
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.aw, !prof !432

bb.aw:                                            ; preds = %.noexc35
  %i.fz = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.aw
  %i.ga = xor i1 %i.fz, true
  %i.gb = zext i1 %i.ga to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %.noexc36, %.noexc35
  %.sroa.01.0.i.i.i15.i = phi i8 [ %i.gb, %.noexc36 ], [ 0, %.noexc35 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val26, i64 4 ; 3 uses
  %i.gd = load atomic i8, ptr %i.gc monotonic, align 1, !noalias !148178
  %.not.i.i = icmp eq i8 %i.gd, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.ax, !prof !432

bb.ax:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !148179
  store ptr %.val26, ptr %i.b, align 8, !noalias !148179
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i15.i, ptr %i.ge, align 8, !noalias !148179
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3277) #72
          to label %bb.az unwind label %bb.ay, !noalias !148180

bb.ay:                                            ; preds = %bb.ax
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #73
          to label %.body unwind label %bb.ba, !noalias !148180

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !148180
end_hunk_0
begin_hunk_1_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.xx = getelementptr inbounds nuw i8, ptr %.val25.i, i64 392 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.val25.i, i64 408
  %i.xz = getelementptr inbounds nuw i8, ptr %.val25.i, i64 416
  %i.ya = getelementptr inbounds nuw i8, ptr %.val25.i, i64 128
  %i.yb = getelementptr inbounds nuw i8, ptr %.val25.i, i64 384
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge, %bb.fc
  %.sroa.0.023.i.i.i.i = phi i32 [ 0, %bb.fc ], [ %.sroa.0.023.i.i.i.i.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge ] ; 11 uses
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.xv, %bb.fc ], [ %.sroa.04.0.i.i.i.i.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge ] ; 7 uses
  %i.yc = load i64, ptr %i.xw, align 16, !noalias !169624, !noundef !409
  %i.yd = add i64 %i.yc, -1
  %i.ye = and i64 %i.yd, %.sroa.04.0.i.i.i.i      ; 3 uses
  %i.yf = load i64, ptr %i.xx, align 8, !noalias !169624, !noundef !409
  %i.yg = sub i64 0, %i.yf
  %i.yh = and i64 %.sroa.04.0.i.i.i.i, %i.yg
  %i.yi = load ptr, ptr %i.xy, align 8, !noalias !169624, !nonnull !409, !noundef !409
  %i.yj = load i64, ptr %i.xz, align 16, !noalias !169624, !noundef !409
  %i.yk = icmp ult i64 %i.ye, %i.yj
  call void @llvm.assume(i1 %i.yk)
  %i.yl = getelementptr inbounds nuw [24 x i8], ptr %i.yi, i64 %i.ye ; 5 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yn = load atomic i64, ptr %i.ym acquire, align 8, !noalias !169624 ; 3 uses
  %i.yo = add i64 %.sroa.04.0.i.i.i.i, 1
  %i.yp = icmp eq i64 %i.yo, %i.yn
  br i1 %i.yp, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i
  %i.yq = icmp eq i64 %i.yn, %.sroa.04.0.i.i.i.i
  br i1 %i.yq, label %bb.fg, label %bb.ff

bb.fe:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i
  %i.yr = add nuw i64 %i.ye, 1
  %i.ys = load i64, ptr %i.yb, align 128, !noalias !169624, !noundef !409
  %i.yt = icmp ult i64 %i.yr, %i.ys
  br i1 %i.yt, label %bb.fl, label %bb.fk

bb.ff:                                            ; preds = %bb.fd
  %i.yu = icmp ult i32 %.sroa.0.023.i.i.i.i, 7
  br i1 %i.yu, label %.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.ff
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %.loopexit.i.i.i.i.i
  %i.yv = icmp ult i32 %.sroa.0.023.i.i.i.i, 11
  br i1 %i.yv, label %.loopexit.i.thread.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ff, %.preheader.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i32 [ %i.yw, %.preheader.i.i.i.i.i ], [ 0, %bb.ff ]
  %i.yw = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169624
  %.sroa.0.0.highbits.i.i.i.i.i = lshr i32 %i.yw, %.sroa.0.023.i.i.i.i
  %i.yx = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i, 0
  br i1 %i.yx, label %.preheader.i.i.i.i.i, label %.loopexit.i.thread.i.i.i.i

.loopexit.i.thread.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i, %.noexc.i
  %i.yy = add nuw nsw i32 %.sroa.0.023.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i: ; preds = %.loopexit.i.thread.i.i.i.i, %.noexc.i
  %.sroa.0.2.i.i.i.i = phi i32 [ %i.yy, %.loopexit.i.thread.i.i.i.i ], [ %.sroa.0.023.i.i.i.i, %.noexc.i ]
  %i.yz = load atomic i64, ptr %.val25.i monotonic, align 16, !noalias !169624
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge

bb.fg:                                            ; preds = %bb.fd
  fence seq_cst
  %i.za = load atomic i64, ptr %i.ya monotonic, align 16, !noalias !169624 ; 2 uses
  %i.zb = load i64, ptr %i.xw, align 16, !noalias !169624, !noundef !409 ; 2 uses
  %i.zc = xor i64 %i.zb, -1
  %i.zd = and i64 %i.za, %i.zc
  %i.ze = icmp eq i64 %i.zd, %.sroa.04.0.i.i.i.i
  br i1 %i.ze, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i, i32 6)
  br label %bb.fi

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i: ; preds = %bb.fi
  %i.zf = icmp ult i32 %.sroa.0.023.i.i.i.i, 7
  %i.zg = zext i1 %i.zf to i32
  %spec.select.i.i.i.i183 = add nuw nsw i32 %.sroa.0.023.i.i.i.i, %i.zg
  %i.zh = load atomic i64, ptr %.val25.i monotonic, align 16, !noalias !169624
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge

bb.fi:                                            ; preds = %bb.fi, %bb.fh
  %.sroa.0.02.i.i.i.i.i = phi i32 [ 0, %bb.fh ], [ %i.zi, %bb.fi ]
  %i.zi = add nuw nsw i32 %.sroa.0.02.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169624
  %.sroa.0.0.highbits.i13.i.i.i.i = lshr i32 %i.zi, %.sroa.0.0.i.i.i.i.i.i
  %i.zj = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i.i, 0
  br i1 %i.zj, label %bb.fi, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i

bb.fj:                                            ; preds = %bb.fg
  %i.zk = and i64 %i.zb, %i.za
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.fk:                                            ; preds = %bb.fe
  %i.zm = load i64, ptr %i.xx, align 8, !noalias !169624, !noundef !409
  %i.zn = add i64 %i.zm, %i.yh
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fe
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.zn, %bb.fk ], [ %i.yn, %bb.fe ]
  %i.zo = cmpxchg weak ptr %.val25.i, i64 %.sroa.04.0.i.i.i.i, i64 %.sroa.01.0.i.i.i.i seq_cst monotonic, align 8, !noalias !169624 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.zo, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.zo, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %.sroa.0.0.i.i14.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i, i32 6)
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fo
  %i.zp = icmp ult i32 %.sroa.0.023.i.i.i.i, 7
  %i.zq = zext i1 %i.zp to i32
  %spec.select24.i.i.i.i = add nuw nsw i32 %.sroa.0.023.i.i.i.i, %i.zq
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i.backedge: ; preds = %bb.fn, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i
  %.sroa.0.023.i.i.i.i.be = phi i32 [ %.sroa.0.2.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ], [ %spec.select.i.i.i.i183, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i ], [ %spec.select24.i.i.i.i, %bb.fn ]
  %.sroa.04.0.i.i.i.i.be = phi i64 [ %i.yz, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i ], [ %i.zh, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i, %bb.fn ]
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i

bb.fo:                                            ; preds = %bb.fo, %bb.fm
  %.sroa.0.02.i15.i.i.i.i = phi i32 [ 0, %bb.fm ], [ %i.zr, %bb.fo ]
  %i.zr = add nuw nsw i32 %.sroa.0.02.i15.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169624
  %.sroa.0.0.highbits.i16.i.i.i.i = lshr i32 %i.zr, %.sroa.0.0.i.i14.i.i.i.i
  %i.zs = icmp eq i32 %.sroa.0.0.highbits.i16.i.i.i.i, 0
  br i1 %i.zs, label %bb.fo, label %bb.fn

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i.i)
  br label %bb.fs

bb.fp:                                            ; preds = %bb.fq
  %i.zt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1t_16CachedReaderDataEECsfR8GmIBoxTX_21lance_namespace_impls(i8 %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.57.0.copyload.i.i.i.i) #73
          to label %.body.i177 unwind label %bb.fr, !noalias !169625

bb.fq:                                            ; preds = %bb.fl
  %i.zu = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.zv = load i64, ptr %i.xx, align 8, !noalias !169624, !noundef !409
  %i.zw = add i64 %i.zv, %.sroa.04.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.65.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.sroa.06.0.copyload.i.i.i.i = load i8, ptr %i.yl, align 8, !noalias !169625 ; 4 uses
  %.sroa.4.0..0.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..0.val.sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !169625
  %.sroa.57.0..0.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %.sroa.57.0.copyload.i.i.i.i = load ptr, ptr %.sroa.57.0..0.val.sroa_idx.i.i.i.i, align 8, !noalias !169625 ; 2 uses
  store atomic i64 %i.zw, ptr %i.zu release, align 8, !noalias !169625
  %i.zx = getelementptr inbounds nuw i8, ptr %.val25.i, i64 256
  invoke fastcc void @_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.zx)
          to label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.fp, !noalias !169625

bb.fr:                                            ; preds = %bb.fp
  %i.zy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !169625
  unreachable

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i, i64 7, i1 false), !noalias !169626
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %i.zz = icmp eq i8 %.sroa.06.0.copyload.i.i.i.i, 2
  br i1 %i.zz, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  store i8 1, ptr %.sroa.443.0..sroa_idx.i.i.i, align 1, !alias.scope !169626
  store i8 2, ptr %i.bq, align 8, !alias.scope !169626
  br label %bb.fu

bb.ft:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.443.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.i.i.i, i64 7, i1 false)
  store i8 %.sroa.06.0.copyload.i.i.i.i, ptr %i.bq, align 8, !alias.scope !169626
  store ptr %.sroa.57.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i175, align 8, !alias.scope !169626
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.pr159.i = phi i8 [ %.sroa.06.0.copyload.i.i.i.i, %bb.ft ], [ 2, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.fv:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !169627)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i1.i.i)
  %i.aaa = load atomic i64, ptr %.val25.i acquire, align 8, !noalias !169628
  %i.aab = getelementptr inbounds nuw i8, ptr %.val25.i, i64 8 ; 5 uses
  %i.aac = load atomic ptr, ptr %i.aab acquire, align 8, !noalias !169628
  %i.aad = getelementptr inbounds nuw i8, ptr %.val25.i, i64 128
  br label %.backedge.i.i.i.i182

.backedge.i.i.i.i182:                             ; preds = %.backedge.i.i.i.i182.backedge, %bb.fv
  %.sroa.0.032.i.i.i.i = phi i32 [ 0, %bb.fv ], [ %.sroa.0.032.i.i.i.i.be, %.backedge.i.i.i.i182.backedge ] ; 13 uses
  %.sroa.014.0.i.i.i.i = phi ptr [ %i.aac, %bb.fv ], [ %.sroa.014.0.i.i.i.i.be, %.backedge.i.i.i.i182.backedge ] ; 8 uses
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.aaa, %bb.fv ], [ %.sroa.05.0.i.i.i.i.be, %.backedge.i.i.i.i182.backedge ] ; 5 uses
  %i.aae = lshr i64 %.sroa.05.0.i.i.i.i, 1        ; 2 uses
  %i.aaf = and i64 %i.aae, 31                     ; 5 uses
  %i.aag = icmp eq i64 %i.aaf, 31
  br i1 %i.aag, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.backedge.i.i.i.i182
  %i.aah = icmp ult i32 %.sroa.0.032.i.i.i.i, 7
  br i1 %i.aah, label %.preheader.i.i.i16.i.i, label %.loopexit.i.i.i12.i.i

.loopexit.i.i.i12.i.i:                            ; preds = %bb.fw
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc32.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32.i:                                       ; preds = %.loopexit.i.i.i12.i.i
  %i.aai = icmp ult i32 %.sroa.0.032.i.i.i.i, 11
  br i1 %i.aai, label %.loopexit.i.thread.i.i15.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i

.preheader.i.i.i16.i.i:                           ; preds = %bb.fw, %.preheader.i.i.i16.i.i
  %.sroa.0.03.i.i.i17.i.i = phi i32 [ %i.aaj, %.preheader.i.i.i16.i.i ], [ 0, %bb.fw ]
  %i.aaj = add nuw nsw i32 %.sroa.0.03.i.i.i17.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169628
  %.sroa.0.0.highbits.i.i.i18.i.i = lshr i32 %i.aaj, %.sroa.0.032.i.i.i.i
  %i.aak = icmp eq i32 %.sroa.0.0.highbits.i.i.i18.i.i, 0
  br i1 %i.aak, label %.preheader.i.i.i16.i.i, label %.loopexit.i.thread.i.i15.i.i

.loopexit.i.thread.i.i15.i.i:                     ; preds = %.preheader.i.i.i16.i.i, %.noexc32.i
  %i.aal = add nuw nsw i32 %.sroa.0.032.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i: ; preds = %.loopexit.i.thread.i.i15.i.i, %.noexc32.i
  %.sroa.0.2.i.i14.i.i = phi i32 [ %i.aal, %.loopexit.i.thread.i.i15.i.i ], [ %.sroa.0.032.i.i.i.i, %.noexc32.i ]
  %i.aam = load atomic i64, ptr %.val25.i acquire, align 8, !noalias !169628
  %i.aan = load atomic ptr, ptr %i.aab acquire, align 8, !noalias !169628
  br label %.backedge.i.i.i.i182.backedge

bb.fx:                                            ; preds = %.backedge.i.i.i.i182
  %i.aao = add i64 %.sroa.05.0.i.i.i.i, 2         ; 2 uses
  %i.aap = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.aaq = icmp eq i64 %i.aap, 0
  br i1 %i.aaq, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  fence seq_cst
  %i.aar = load atomic i64, ptr %i.aad monotonic, align 8, !noalias !169628 ; 3 uses
  %i.aas = lshr i64 %i.aar, 1
  %i.aat = icmp eq i64 %i.aae, %i.aas
  br i1 %i.aat, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not.unshifted.i.i.i.i = xor i64 %i.aar, %.sroa.05.0.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i.i, 63
  %2 = zext i1 %.not.i.i.i.i to i64
  %spec.select.i.i11.i.i = or disjoint i64 %i.aao, %2
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fy
  %i.aau = and i64 %i.aar, 1
  %i.aav = icmp eq i64 %i.aau, 0
  br i1 %i.aav, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.gb:                                            ; preds = %bb.fz, %bb.fx
  %.sroa.01.0.i.i2.i.i = phi i64 [ %i.aao, %bb.fx ], [ %spec.select.i.i11.i.i, %bb.fz ] ; 2 uses
  %i.aaw = icmp eq ptr %.sroa.014.0.i.i.i.i, null
  br i1 %i.aaw, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aax = icmp ult i32 %.sroa.0.032.i.i.i.i, 7
  br i1 %i.aax, label %.preheader.i21.i.i.i.i, label %.loopexit.i20.i.i.i.i

.loopexit.i20.i.i.i.i:                            ; preds = %bb.gc
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33.i:                                       ; preds = %.loopexit.i20.i.i.i.i
  %i.aay = icmp ult i32 %.sroa.0.032.i.i.i.i, 11
  br i1 %i.aay, label %.loopexit.i20.thread.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i

.preheader.i21.i.i.i.i:                           ; preds = %bb.gc, %.preheader.i21.i.i.i.i
  %.sroa.0.03.i22.i.i.i.i = phi i32 [ %i.aaz, %.preheader.i21.i.i.i.i ], [ 0, %bb.gc ]
  %i.aaz = add nuw nsw i32 %.sroa.0.03.i22.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169628
  %.sroa.0.0.highbits.i23.i.i.i.i = lshr i32 %i.aaz, %.sroa.0.032.i.i.i.i
  %i.aba = icmp eq i32 %.sroa.0.0.highbits.i23.i.i.i.i, 0
  br i1 %i.aba, label %.preheader.i21.i.i.i.i, label %.loopexit.i20.thread.i.i.i.i

.loopexit.i20.thread.i.i.i.i:                     ; preds = %.preheader.i21.i.i.i.i, %.noexc33.i
  %i.abb = add nuw nsw i32 %.sroa.0.032.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i: ; preds = %.loopexit.i20.thread.i.i.i.i, %.noexc33.i
  %.sroa.0.3.i.i.i.i = phi i32 [ %i.abb, %.loopexit.i20.thread.i.i.i.i ], [ %.sroa.0.032.i.i.i.i, %.noexc33.i ]
  %i.abc = load atomic i64, ptr %.val25.i acquire, align 8, !noalias !169628
  %i.abd = load atomic ptr, ptr %i.aab acquire, align 8, !noalias !169628
  br label %.backedge.i.i.i.i182.backedge

bb.gd:                                            ; preds = %bb.gb
  %i.abe = cmpxchg weak ptr %.val25.i, i64 %.sroa.05.0.i.i.i.i, i64 %.sroa.01.0.i.i2.i.i seq_cst acquire, align 8, !noalias !169628 ; 2 uses
  %.sroa.18.0.in.i.i.i3.i.i = extractvalue { i64, i1 } %i.abe, 1
  %.sroa.01.0.i.i.i4.i.i = extractvalue { i64, i1 } %i.abe, 0
  br i1 %.sroa.18.0.in.i.i.i3.i.i, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.abf = load atomic ptr, ptr %i.aab acquire, align 8, !noalias !169628
  %.sroa.0.0.i.i.i.i5.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.032.i.i.i.i, i32 6)
  br label %bb.gf

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i: ; preds = %bb.gf
  %i.abg = icmp ult i32 %.sroa.0.032.i.i.i.i, 7
  %i.abh = zext i1 %i.abg to i32
  %spec.select33.i.i.i.i = add nuw nsw i32 %.sroa.0.032.i.i.i.i, %i.abh
  br label %.backedge.i.i.i.i182.backedge

.backedge.i.i.i.i182.backedge:                    ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i
  %.sroa.0.032.i.i.i.i.be = phi i32 [ %spec.select33.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i ], [ %.sroa.0.2.i.i14.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i ], [ %.sroa.0.3.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i ]
  %.sroa.014.0.i.i.i.i.be = phi ptr [ %i.abf, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i ], [ %i.aan, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i ], [ %i.abd, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i ]
  %.sroa.05.0.i.i.i.i.be = phi i64 [ %.sroa.01.0.i.i.i4.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i ], [ %i.aam, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i13.i.i ], [ %i.abc, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i ]
  br label %.backedge.i.i.i.i182

bb.gf:                                            ; preds = %bb.gf, %bb.ge
  %.sroa.0.02.i.i.i6.i.i = phi i32 [ 0, %bb.ge ], [ %i.abi, %bb.gf ]
  %i.abi = add nuw nsw i32 %.sroa.0.02.i.i.i6.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169628
  %.sroa.0.0.highbits.i25.i.i.i.i = lshr i32 %i.abi, %.sroa.0.0.i.i.i.i5.i.i
  %i.abj = icmp eq i32 %.sroa.0.0.highbits.i25.i.i.i.i, 0
  br i1 %i.abj, label %bb.gf, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i7.i.i

bb.gg:                                            ; preds = %bb.gd
  %i.abk = icmp eq i64 %i.aaf, 30
  br i1 %i.abk, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.abl = load atomic ptr, ptr %.sroa.014.0.i.i.i.i acquire, align 8, !noalias !169628 ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null
  br i1 %i.abm, label %.lr.ph.i.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.gh, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i
  %.sroa.0.02.i26.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i ], [ 0, %bb.gh ] ; 5 uses
  %i.abn = icmp ult i32 %.sroa.0.02.i26.i.i.i.i, 7
  br i1 %i.abn, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34.i:                                       ; preds = %.loopexit.i.i.i.i.i.i
  %i.abo = icmp ult i32 %.sroa.0.02.i26.i.i.i.i, 11
  br i1 %i.abo, label %.loopexit.i.thread.i.i.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i32 [ %i.abp, %.preheader.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.abp = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169628
  %.sroa.0.0.highbits.i.i.i.i.i.i = lshr i32 %i.abp, %.sroa.0.02.i26.i.i.i.i
  %i.abq = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i.i, 0
  br i1 %i.abq, label %.preheader.i.i.i.i.i.i, label %.loopexit.i.thread.i.i.i.i.i

.loopexit.i.thread.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i, %.noexc34.i
  %i.abr = add nuw nsw i32 %.sroa.0.02.i26.i.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i: ; preds = %.loopexit.i.thread.i.i.i.i.i, %.noexc34.i
  %.sroa.0.1.i.i.i.i.i = phi i32 [ %i.abr, %.loopexit.i.thread.i.i.i.i.i ], [ %.sroa.0.02.i26.i.i.i.i, %.noexc34.i ]
  %i.abs = load atomic ptr, ptr %.sroa.014.0.i.i.i.i acquire, align 8, !noalias !169628 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %.lr.ph.i.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i, %bb.gh
  %.lcssa.i.i.i.i.i = phi ptr [ %i.abl, %bb.gh ], [ %i.abs, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i ] ; 2 uses
  %i.abu = and i64 %.sroa.01.0.i.i2.i.i, -2
  %3 = add i64 %i.abu, 2
  %i.abv = load atomic ptr, ptr %.lcssa.i.i.i.i.i monotonic, align 8, !noalias !169628
  %4 = icmp ne ptr %i.abv, null
  %5 = zext i1 %4 to i64
  %spec.select19.i.i.i.i = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.aab release, align 8, !noalias !169628
  store atomic i64 %spec.select19.i.i.i.i, ptr %.val25.i release, align 8, !noalias !169628
  br label %bb.gi

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.ga
  store i8 0, ptr %.sroa.443.0..sroa_idx.i.i.i, align 1, !alias.scope !169629
  store i8 2, ptr %i.bq, align 8, !alias.scope !169629
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.gi:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.gg
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i, i64 8
  %i.abx = getelementptr inbounds nuw [24 x i8], ptr %i.abw, i64 %i.aaf ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16 ; 3 uses
  %i.abz = load atomic i64, ptr %i.aby acquire, align 8, !noalias !169630
  %i.aca = and i64 %i.abz, 1
  %i.acb = icmp eq i64 %i.aca, 0
  br i1 %i.acb, label %.lr.ph.i.i2.i.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i2.i.i.i:                                ; preds = %bb.gi, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i
  %.sroa.0.02.i.i3.i.i.i = phi i32 [ %.sroa.0.1.i.i6.i.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i ], [ 0, %bb.gi ] ; 5 uses
  %i.acc = icmp ult i32 %.sroa.0.02.i.i3.i.i.i, 7
  br i1 %i.acc, label %.preheader.i.i.i8.i.i.i, label %.loopexit.i.i.i4.i.i.i

.loopexit.i.i.i4.i.i.i:                           ; preds = %.lr.ph.i.i2.i.i.i
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35.i:                                       ; preds = %.loopexit.i.i.i4.i.i.i
  %i.acd = icmp ult i32 %.sroa.0.02.i.i3.i.i.i, 11
  br i1 %i.acd, label %.loopexit.i.thread.i.i7.i.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i

.preheader.i.i.i8.i.i.i:                          ; preds = %.lr.ph.i.i2.i.i.i, %.preheader.i.i.i8.i.i.i
  %.sroa.0.03.i.i.i9.i.i.i = phi i32 [ %i.ace, %.preheader.i.i.i8.i.i.i ], [ 0, %.lr.ph.i.i2.i.i.i ]
  %i.ace = add nuw nsw i32 %.sroa.0.03.i.i.i9.i.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169630
  %.sroa.0.0.highbits.i.i.i10.i.i.i = lshr i32 %i.ace, %.sroa.0.02.i.i3.i.i.i
  %i.acf = icmp eq i32 %.sroa.0.0.highbits.i.i.i10.i.i.i, 0
  br i1 %i.acf, label %.preheader.i.i.i8.i.i.i, label %.loopexit.i.thread.i.i7.i.i.i

.loopexit.i.thread.i.i7.i.i.i:                    ; preds = %.preheader.i.i.i8.i.i.i, %.noexc35.i
  %i.acg = add nuw nsw i32 %.sroa.0.02.i.i3.i.i.i, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i: ; preds = %.loopexit.i.thread.i.i7.i.i.i, %.noexc35.i
  %.sroa.0.1.i.i6.i.i.i = phi i32 [ %i.acg, %.loopexit.i.thread.i.i7.i.i.i ], [ %.sroa.0.02.i.i3.i.i.i, %.noexc35.i ]
  %i.ach = load atomic i64, ptr %i.aby acquire, align 8, !noalias !169630
  %i.aci = and i64 %i.ach, 1
  %i.acj = icmp eq i64 %i.aci, 0
  br i1 %i.acj, label %.lr.ph.i.i2.i.i.i, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i, %bb.gi
  %.sroa.06.0.copyload.i.i8.i.i = load i8, ptr %i.abx, align 8, !noalias !169630 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i1.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !169629
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %.sroa.57.0.copyload.i.i9.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i.i.i.i, align 8, !noalias !169630
  %i.ack = add nuw nsw i64 %i.aaf, 1              ; 2 uses
  %i.acl = icmp eq i64 %i.ack, 31
  br i1 %i.acl, label %.lr.ph.i3.i.i.i.i, label %bb.gm

.lr.ph.i3.i.i.i.i:                                ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.gl
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.acu, %bb.gl ], [ 0, %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 3 uses
  %i.acm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24 ; 2 uses
  %i.aco = load atomic i64, ptr %i.acn acquire, align 8, !noalias !169630
  %i.acp = and i64 %i.aco, 2
  %i.acq = icmp eq i64 %i.acp, 0
  br i1 %i.acq, label %bb.gj, label %.lr.ph.i3.i.i.i.i.1

bb.gj:                                            ; preds = %.lr.ph.i3.i.i.i.i
  %i.acr = atomicrmw or ptr %i.acn, i64 4 acq_rel, align 8, !noalias !169630
  %i.acs = and i64 %i.acr, 2
  %i.act = icmp eq i64 %i.acs, 0
  br i1 %i.act, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i3.i.i.i.i.1

.lr.ph.i3.i.i.i.i.1:                              ; preds = %bb.gj, %.lr.ph.i3.i.i.i.i
  %i.acu = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i, 2 ; 2 uses
  %i.acv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 48 ; 2 uses
  %i.acx = load atomic i64, ptr %i.acw acquire, align 8, !noalias !169630
  %i.acy = and i64 %i.acx, 2
  %i.acz = icmp eq i64 %i.acy, 0
  br i1 %i.acz, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %.lr.ph.i3.i.i.i.i.1
  %i.ada = atomicrmw or ptr %i.acw, i64 4 acq_rel, align 8, !noalias !169630
  %i.adb = and i64 %i.ada, 2
  %i.adc = icmp eq i64 %i.adb, 0
  br i1 %i.adc, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %.lr.ph.i3.i.i.i.i.1
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.acu, 30
  br i1 %exitcond.not.i.i.i.i.i.1, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i3.i.i.i.i

bb.gm:                                            ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.add = atomicrmw or ptr %i.aby, i64 2 acq_rel, align 8, !noalias !169630
  %i.ade = and i64 %i.add, 4
  %i.adf = icmp eq i64 %i.ade, 0
  br i1 %i.adf, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.gn

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i: ; preds = %bb.gp, %bb.gl, %bb.gn
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i.i.i, i64 noundef 752, i64 noundef 8) #68, !noalias !169630
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.adg = icmp samesign ult i64 %i.aaf, 29
  br i1 %i.adg, label %.lr.ph.i5.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i

.lr.ph.i5.i.i.i.i:                                ; preds = %bb.gn, %bb.gp
  %.sroa.0.04.i6.i.i.i.i = phi i64 [ %i.adh, %bb.gp ], [ %i.ack, %bb.gn ] ; 2 uses
  %i.adh = add nuw nsw i64 %.sroa.0.04.i6.i.i.i.i, 1 ; 2 uses
  %i.adi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.014.0.i.i.i.i, i64 %.sroa.0.04.i6.i.i.i.i
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 24 ; 2 uses
  %i.adk = load atomic i64, ptr %i.adj acquire, align 8, !noalias !169630
  %i.adl = and i64 %i.adk, 2
  %i.adm = icmp eq i64 %i.adl, 0
  br i1 %i.adm, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %.lr.ph.i5.i.i.i.i
  %i.adn = atomicrmw or ptr %i.adj, i64 4 acq_rel, align 8, !noalias !169630
  %i.ado = and i64 %i.adn, 2
  %i.adp = icmp eq i64 %i.ado, 0
  br i1 %i.adp, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go, %.lr.ph.i5.i.i.i.i
  %exitcond.not.i7.i.i.i.i = icmp eq i64 %i.adh, 30
  br i1 %exitcond.not.i7.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i5.i.i.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.go, %bb.gj, %bb.gk, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1W_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, %bb.gm
  %i.adq = icmp eq i8 %.sroa.06.0.copyload.i.i8.i.i, 2
  br i1 %i.adq, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.gq

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.ga
  store i8 1, ptr %.sroa.443.0..sroa_idx.i.i.i, align 1, !alias.scope !169629
  store i8 2, ptr %i.bq, align 8, !alias.scope !169629
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.gq:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.443.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i1.i.i, i64 7, i1 false)
  store i8 %.sroa.06.0.copyload.i.i8.i.i, ptr %i.bq, align 8, !alias.scope !169629
  store ptr %.sroa.57.0.copyload.i.i9.i.i, ptr %.sroa.7.0..sroa_idx.i.i175, align 8, !alias.scope !169629
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.gq, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.pr160.i = phi i8 [ %.sroa.06.0.copyload.i.i8.i.i, %bb.gq ], [ 2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i ], [ 2, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1Z_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i1.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent6ReadOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1T_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.gr:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !169631)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i.i.i)
  %i.adr = cmpxchg ptr %.val25.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !169632
  %i.ads = extractvalue { i32, i1 } %i.adr, 1
  br i1 %i.ads, label %.noexc36.i, label %bb.gs, !prof !432

bb.gs:                                            ; preds = %bb.gr
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val25.i)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36.i:                                       ; preds = %bb.gs, %bb.gr
  %i.adt = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !169632
  %i.adu = and i64 %i.adt, 9223372036854775807
  %i.adv = icmp eq i64 %i.adu, 0
  br i1 %i.adv, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.gt, !prof !432

bb.gt:                                            ; preds = %.noexc36.i
  %i.adw = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37.i:                                       ; preds = %bb.gt
  %i.adx = xor i1 %i.adw, true
  %i.ady = zext i1 %i.adx to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %.noexc37.i, %.noexc36.i
  %.sroa.01.0.i.i.i19.i.i = phi i8 [ %i.ady, %.noexc37.i ], [ 0, %.noexc36.i ] ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.val25.i, i64 4 ; 3 uses
  %i.aea = load atomic i8, ptr %i.adz monotonic, align 1, !noalias !169632
  %.not.i.i.i = icmp eq i8 %i.aea, 0
  br i1 %.not.i.i.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.gu, !prof !432

bb.gu:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !169633
  store ptr %.val25.i, ptr %i.bn, align 8, !noalias !169633
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.01.0.i.i.i19.i.i, ptr %i.aeb, align 8, !noalias !169633
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3277) #72
          to label %bb.gw unwind label %bb.gv, !noalias !169634

bb.gv:                                            ; preds = %bb.gu
  %i.aec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bn) #73
          to label %.body.i177 unwind label %bb.gx, !noalias !169634

bb.gw:                                            ; preds = %bb.gu
  unreachable

bb.gx:                                            ; preds = %bb.gv
  %i.aed = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNCNvMsc_NtNtCskTBvlRM5ILY_4moka6future10base_cacheINtB7_5InnerNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB11_16CachedReaderDataNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE20do_run_pending_tasks0CsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !169766)
  %i.bxi = load atomic i64, ptr %.val34.i200 monotonic, align 8, !noalias !169767
  %i.bxj = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 400 ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 392 ; 3 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 408
  %i.bxm = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 416
  %i.bxn = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 128
  %i.bxo = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 384
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge, %bb.ut
  %.sroa.0.023.i.i.i.i304 = phi i32 [ 0, %bb.ut ], [ %.sroa.0.023.i.i.i.i304.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge ] ; 11 uses
  %.sroa.04.0.i.i.i.i305 = phi i64 [ %i.bxi, %bb.ut ], [ %.sroa.04.0.i.i.i.i305.be, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge ] ; 7 uses
  %i.bxp = load i64, ptr %i.bxj, align 16, !noalias !169767, !noundef !409
  %i.bxq = add i64 %i.bxp, -1
  %i.bxr = and i64 %i.bxq, %.sroa.04.0.i.i.i.i305 ; 3 uses
  %i.bxs = load i64, ptr %i.bxk, align 8, !noalias !169767, !noundef !409
  %i.bxt = sub i64 0, %i.bxs
  %i.bxu = and i64 %.sroa.04.0.i.i.i.i305, %i.bxt
  %i.bxv = load ptr, ptr %i.bxl, align 8, !noalias !169767, !nonnull !409, !noundef !409
  %i.bxw = load i64, ptr %i.bxm, align 16, !noalias !169767, !noundef !409
  %i.bxx = icmp ult i64 %i.bxr, %i.bxw
  call void @llvm.assume(i1 %i.bxx)
  %i.bxy = getelementptr inbounds nuw [48 x i8], ptr %i.bxv, i64 %i.bxr ; 3 uses
  %i.bxz = load atomic i64, ptr %i.bxy acquire, align 8, !noalias !169767 ; 3 uses
  %i.bya = add i64 %.sroa.04.0.i.i.i.i305, 1
  %i.byb = icmp eq i64 %i.bya, %i.bxz
  br i1 %i.byb, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309
  %i.byc = icmp eq i64 %i.bxz, %.sroa.04.0.i.i.i.i305
  br i1 %i.byc, label %bb.ux, label %bb.uw

bb.uv:                                            ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309
  %i.byd = add nuw i64 %i.bxr, 1
  %i.bye = load i64, ptr %i.bxo, align 128, !noalias !169767, !noundef !409
  %i.byf = icmp ult i64 %i.byd, %i.bye
  br i1 %i.byf, label %bb.vc, label %bb.vb

bb.uw:                                            ; preds = %bb.uu
  %i.byg = icmp ult i32 %.sroa.0.023.i.i.i.i304, 7
  br i1 %i.byg, label %.preheader.i.i.i.i57.i, label %.loopexit.i.i.i.i.i306

.loopexit.i.i.i.i.i306:                           ; preds = %bb.uw
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc61.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61.i:                                       ; preds = %.loopexit.i.i.i.i.i306
  %i.byh = icmp ult i32 %.sroa.0.023.i.i.i.i304, 11
  br i1 %i.byh, label %.loopexit.i.thread.i.i.i.i312, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i307

.preheader.i.i.i.i57.i:                           ; preds = %bb.uw, %.preheader.i.i.i.i57.i
  %.sroa.0.03.i.i.i.i.i313 = phi i32 [ %i.byi, %.preheader.i.i.i.i57.i ], [ 0, %bb.uw ]
  %i.byi = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i313, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169767
  %.sroa.0.0.highbits.i.i.i.i.i314 = lshr i32 %i.byi, %.sroa.0.023.i.i.i.i304
  %i.byj = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i314, 0
  br i1 %i.byj, label %.preheader.i.i.i.i57.i, label %.loopexit.i.thread.i.i.i.i312

.loopexit.i.thread.i.i.i.i312:                    ; preds = %.preheader.i.i.i.i57.i, %.noexc61.i
  %i.byk = add nuw nsw i32 %.sroa.0.023.i.i.i.i304, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i307

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i307: ; preds = %.loopexit.i.thread.i.i.i.i312, %.noexc61.i
  %.sroa.0.2.i.i.i.i308 = phi i32 [ %i.byk, %.loopexit.i.thread.i.i.i.i312 ], [ %.sroa.0.023.i.i.i.i304, %.noexc61.i ]
  %i.byl = load atomic i64, ptr %.val34.i200 monotonic, align 16, !noalias !169767
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge

bb.ux:                                            ; preds = %bb.uu
  fence seq_cst
  %i.bym = load atomic i64, ptr %i.bxn monotonic, align 16, !noalias !169767 ; 2 uses
  %i.byn = load i64, ptr %i.bxj, align 16, !noalias !169767, !noundef !409 ; 2 uses
  %i.byo = xor i64 %i.byn, -1
  %i.byp = and i64 %i.bym, %i.byo
  %i.byq = icmp eq i64 %i.byp, %.sroa.04.0.i.i.i.i305
  br i1 %i.byq, label %bb.va, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %.sroa.0.0.i.i.i.i.i.i315 = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i304, i32 6)
  br label %bb.uz

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i318: ; preds = %bb.uz
  %i.byr = icmp ult i32 %.sroa.0.023.i.i.i.i304, 7
  %i.bys = zext i1 %i.byr to i32
  %spec.select.i.i.i58.i = add nuw nsw i32 %.sroa.0.023.i.i.i.i304, %i.bys
  %i.byt = load atomic i64, ptr %.val34.i200 monotonic, align 16, !noalias !169767
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge

bb.uz:                                            ; preds = %bb.uz, %bb.uy
  %.sroa.0.02.i.i.i.i.i316 = phi i32 [ 0, %bb.uy ], [ %i.byu, %bb.uz ]
  %i.byu = add nuw nsw i32 %.sroa.0.02.i.i.i.i.i316, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169767
  %.sroa.0.0.highbits.i13.i.i.i.i317 = lshr i32 %i.byu, %.sroa.0.0.i.i.i.i.i.i315
  %i.byv = icmp eq i32 %.sroa.0.0.highbits.i13.i.i.i.i317, 0
  br i1 %i.byv, label %bb.uz, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i318

bb.va:                                            ; preds = %bb.ux
  %i.byw = and i64 %i.byn, %i.bym
  %i.byx = icmp eq i64 %i.byw, 0
  br i1 %i.byx, label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.sink.split.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.vb:                                            ; preds = %bb.uv
  %i.byy = load i64, ptr %i.bxk, align 8, !noalias !169767, !noundef !409
  %i.byz = add i64 %i.byy, %i.bxu
  br label %bb.vc

bb.vc:                                            ; preds = %bb.vb, %bb.uv
  %.sroa.01.0.i.i.i60.i = phi i64 [ %i.byz, %bb.vb ], [ %i.bxz, %bb.uv ]
  %i.bza = cmpxchg weak ptr %.val34.i200, i64 %.sroa.04.0.i.i.i.i305, i64 %.sroa.01.0.i.i.i60.i seq_cst monotonic, align 8, !noalias !169767 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i319 = extractvalue { i64, i1 } %i.bza, 1
  %.sroa.01.0.i.i.i.i.i320 = extractvalue { i64, i1 } %i.bza, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i319, label %bb.vh, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %.sroa.0.0.i.i14.i.i.i.i321 = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.023.i.i.i.i304, i32 6)
  br label %bb.vf

bb.ve:                                            ; preds = %bb.vf
  %i.bzb = icmp ult i32 %.sroa.0.023.i.i.i.i304, 7
  %i.bzc = zext i1 %i.bzb to i32
  %spec.select24.i.i.i.i324 = add nuw nsw i32 %.sroa.0.023.i.i.i.i304, %i.bzc
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309.backedge: ; preds = %bb.ve, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i318, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i307
  %.sroa.0.023.i.i.i.i304.be = phi i32 [ %.sroa.0.2.i.i.i.i308, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i307 ], [ %spec.select.i.i.i58.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i318 ], [ %spec.select24.i.i.i.i324, %bb.ve ]
  %.sroa.04.0.i.i.i.i305.be = phi i64 [ %i.byl, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i307 ], [ %i.byt, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i.i.i318 ], [ %.sroa.01.0.i.i.i.i.i320, %bb.ve ]
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit17.i.i.i.i309

bb.vf:                                            ; preds = %bb.vf, %bb.vd
  %.sroa.0.02.i15.i.i.i.i322 = phi i32 [ 0, %bb.vd ], [ %i.bzd, %bb.vf ]
  %i.bzd = add nuw nsw i32 %.sroa.0.02.i15.i.i.i.i322, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169767
  %.sroa.0.0.highbits.i16.i.i.i.i323 = lshr i32 %i.bzd, %.sroa.0.0.i.i14.i.i.i.i321
  %i.bze = icmp eq i32 %.sroa.0.0.highbits.i16.i.i.i.i323, 0
  br i1 %i.bze, label %bb.vf, label %bb.ve

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %bb.va
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i)
  br label %bb.vj

bb.vg:                                            ; preds = %bb.vh
  %i.bzf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1u_16CachedReaderDataEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(40) %i.ba) #73
          to label %.body62.i unwind label %bb.vi, !noalias !169768

bb.vh:                                            ; preds = %bb.vc
  %i.bzg = load i64, ptr %i.bxk, align 8, !noalias !169767, !noundef !409
  %i.bzh = add i64 %i.bzg, %.sroa.04.0.i.i.i.i305
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !169769
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bxy, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bzi, i64 40, i1 false), !noalias !169768
  store atomic i64 %i.bzh, ptr %i.bxy release, align 8, !noalias !169768
  %i.bzj = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 256
  invoke fastcc void @_RNvMs0_NtCs40Ppcsylqp4_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bzj)
          to label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i unwind label %bb.vg, !noalias !169768

bb.vi:                                            ; preds = %bb.vg
  %i.bzk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !169768
  unreachable

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.vh
  %.sroa.04.0.copyload5.i.i.i = load i16, ptr %i.ba, align 8, !noalias !169770 ; 2 uses
  %.sroa.66.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.0..sroa_idx7.i.i.i, i64 38, i1 false), !noalias !169770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !169769
  %i.bzl = icmp eq i16 %.sroa.04.0.copyload5.i.i.i, -1
  br i1 %i.bzl, label %bb.vj, label %bb.vk

bb.vj:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i
  %i.bzm = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 1, ptr %i.bzm, align 2, !alias.scope !169771, !noalias !169662
  br label %bb.vl

bb.vk:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors5arrayINtB4_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.66.i.i.i, i64 38, i1 false), !noalias !169662
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %storemerge.i.i59.i = phi i16 [ %.sroa.04.0.copyload5.i.i.i, %bb.vk ], [ -1, %bb.vj ] ; 2 uses
  store i16 %storemerge.i.i59.i, ptr %i.bxg, align 8, !alias.scope !169771, !noalias !169662
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.vm:                                            ; preds = %bb.us
  call void @llvm.experimental.noalias.scope.decl(metadata !169772)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419.i.i.i)
  %i.bzn = load atomic i64, ptr %.val34.i200 acquire, align 8, !noalias !169773
  %i.bzo = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 8 ; 5 uses
  %i.bzp = load atomic ptr, ptr %i.bzo acquire, align 8, !noalias !169773
  %i.bzq = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 128
  br label %.backedge.i.i.i55.i

.backedge.i.i.i55.i:                              ; preds = %.backedge.i.i.i55.i.backedge, %bb.vm
  %.sroa.0.032.i.i.i.i265 = phi i32 [ 0, %bb.vm ], [ %.sroa.0.032.i.i.i.i265.be, %.backedge.i.i.i55.i.backedge ] ; 13 uses
  %.sroa.014.0.i.i.i.i266 = phi ptr [ %i.bzp, %bb.vm ], [ %.sroa.014.0.i.i.i.i266.be, %.backedge.i.i.i55.i.backedge ] ; 7 uses
  %.sroa.05.0.i.i.i.i267 = phi i64 [ %i.bzn, %bb.vm ], [ %.sroa.05.0.i.i.i.i267.be, %.backedge.i.i.i55.i.backedge ] ; 5 uses
  %i.bzr = lshr i64 %.sroa.05.0.i.i.i.i267, 1     ; 2 uses
  %i.bzs = and i64 %i.bzr, 31                     ; 5 uses
  %i.bzt = icmp eq i64 %i.bzs, 31
  br i1 %i.bzt, label %bb.vn, label %bb.vo

bb.vn:                                            ; preds = %.backedge.i.i.i55.i
  %i.bzu = icmp ult i32 %.sroa.0.032.i.i.i.i265, 7
  br i1 %i.bzu, label %.preheader.i.i.i12.i.i, label %.loopexit.i.i.i8.i.i

.loopexit.i.i.i8.i.i:                             ; preds = %bb.vn
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc64.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64.i:                                       ; preds = %.loopexit.i.i.i8.i.i
  %i.bzv = icmp ult i32 %.sroa.0.032.i.i.i.i265, 11
  br i1 %i.bzv, label %.loopexit.i.thread.i.i11.i.i, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i

.preheader.i.i.i12.i.i:                           ; preds = %bb.vn, %.preheader.i.i.i12.i.i
  %.sroa.0.03.i.i.i13.i.i = phi i32 [ %i.bzw, %.preheader.i.i.i12.i.i ], [ 0, %bb.vn ]
  %i.bzw = add nuw nsw i32 %.sroa.0.03.i.i.i13.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169773
  %.sroa.0.0.highbits.i.i.i14.i.i = lshr i32 %i.bzw, %.sroa.0.032.i.i.i.i265
  %i.bzx = icmp eq i32 %.sroa.0.0.highbits.i.i.i14.i.i, 0
  br i1 %i.bzx, label %.preheader.i.i.i12.i.i, label %.loopexit.i.thread.i.i11.i.i

.loopexit.i.thread.i.i11.i.i:                     ; preds = %.preheader.i.i.i12.i.i, %.noexc64.i
  %i.bzy = add nuw nsw i32 %.sroa.0.032.i.i.i.i265, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i: ; preds = %.loopexit.i.thread.i.i11.i.i, %.noexc64.i
  %.sroa.0.2.i.i10.i.i = phi i32 [ %i.bzy, %.loopexit.i.thread.i.i11.i.i ], [ %.sroa.0.032.i.i.i.i265, %.noexc64.i ]
  %i.bzz = load atomic i64, ptr %.val34.i200 acquire, align 8, !noalias !169773
  %i.caa = load atomic ptr, ptr %i.bzo acquire, align 8, !noalias !169773
  br label %.backedge.i.i.i55.i.backedge

bb.vo:                                            ; preds = %.backedge.i.i.i55.i
  %i.cab = add i64 %.sroa.05.0.i.i.i.i267, 2      ; 2 uses
  %i.cac = and i64 %.sroa.05.0.i.i.i.i267, 1
  %i.cad = icmp eq i64 %i.cac, 0
  br i1 %i.cad, label %bb.vp, label %bb.vs

bb.vp:                                            ; preds = %bb.vo
  fence seq_cst
  %i.cae = load atomic i64, ptr %i.bzq monotonic, align 8, !noalias !169773 ; 3 uses
  %i.caf = lshr i64 %i.cae, 1
  %i.cag = icmp eq i64 %i.bzr, %i.caf
  br i1 %i.cag, label %bb.vr, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %.not.unshifted.i.i.i.i302 = xor i64 %i.cae, %.sroa.05.0.i.i.i.i267
  %.not.i.i.i.i303 = icmp ugt i64 %.not.unshifted.i.i.i.i302, 63
  %6 = zext i1 %.not.i.i.i.i303 to i64
  %spec.select.i.i7.i.i = or disjoint i64 %i.cab, %6
  br label %bb.vs

bb.vr:                                            ; preds = %bb.vp
  %i.cah = and i64 %i.cae, 1
  %i.cai = icmp eq i64 %i.cah, 0
  br i1 %i.cai, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i

bb.vs:                                            ; preds = %bb.vq, %bb.vo
  %.sroa.01.0.i.i1.i.i = phi i64 [ %i.cab, %bb.vo ], [ %spec.select.i.i7.i.i, %bb.vq ] ; 2 uses
  %i.caj = icmp eq ptr %.sroa.014.0.i.i.i.i266, null
  br i1 %i.caj, label %bb.vt, label %bb.vu

bb.vt:                                            ; preds = %bb.vs
  %i.cak = icmp ult i32 %.sroa.0.032.i.i.i.i265, 7
  br i1 %i.cak, label %.preheader.i21.i.i.i.i299, label %.loopexit.i20.i.i.i.i295

.loopexit.i20.i.i.i.i295:                         ; preds = %bb.vt
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc65.i:                                       ; preds = %.loopexit.i20.i.i.i.i295
  %i.cal = icmp ult i32 %.sroa.0.032.i.i.i.i265, 11
  br i1 %i.cal, label %.loopexit.i20.thread.i.i.i.i298, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296

.preheader.i21.i.i.i.i299:                        ; preds = %bb.vt, %.preheader.i21.i.i.i.i299
  %.sroa.0.03.i22.i.i.i.i300 = phi i32 [ %i.cam, %.preheader.i21.i.i.i.i299 ], [ 0, %bb.vt ]
  %i.cam = add nuw nsw i32 %.sroa.0.03.i22.i.i.i.i300, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169773
  %.sroa.0.0.highbits.i23.i.i.i.i301 = lshr i32 %i.cam, %.sroa.0.032.i.i.i.i265
  %i.can = icmp eq i32 %.sroa.0.0.highbits.i23.i.i.i.i301, 0
  br i1 %i.can, label %.preheader.i21.i.i.i.i299, label %.loopexit.i20.thread.i.i.i.i298

.loopexit.i20.thread.i.i.i.i298:                  ; preds = %.preheader.i21.i.i.i.i299, %.noexc65.i
  %i.cao = add nuw nsw i32 %.sroa.0.032.i.i.i.i265, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296: ; preds = %.loopexit.i20.thread.i.i.i.i298, %.noexc65.i
  %.sroa.0.3.i.i.i.i297 = phi i32 [ %i.cao, %.loopexit.i20.thread.i.i.i.i298 ], [ %.sroa.0.032.i.i.i.i265, %.noexc65.i ]
  %i.cap = load atomic i64, ptr %.val34.i200 acquire, align 8, !noalias !169773
  %i.caq = load atomic ptr, ptr %i.bzo acquire, align 8, !noalias !169773
  br label %.backedge.i.i.i55.i.backedge

bb.vu:                                            ; preds = %bb.vs
  %i.car = cmpxchg weak ptr %.val34.i200, i64 %.sroa.05.0.i.i.i.i267, i64 %.sroa.01.0.i.i1.i.i seq_cst acquire, align 8, !noalias !169773 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i = extractvalue { i64, i1 } %i.car, 1
  %.sroa.01.0.i.i.i3.i.i = extractvalue { i64, i1 } %i.car, 0
  br i1 %.sroa.18.0.in.i.i.i2.i.i, label %bb.vx, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.cas = load atomic ptr, ptr %i.bzo acquire, align 8, !noalias !169773
  %.sroa.0.0.i.i.i.i4.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.032.i.i.i.i265, i32 6)
  br label %bb.vw

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i: ; preds = %bb.vw
  %i.cat = icmp ult i32 %.sroa.0.032.i.i.i.i265, 7
  %i.cau = zext i1 %i.cat to i32
  %spec.select33.i.i.i.i269 = add nuw nsw i32 %.sroa.0.032.i.i.i.i265, %i.cau
  br label %.backedge.i.i.i55.i.backedge

.backedge.i.i.i55.i.backedge:                     ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i
  %.sroa.0.032.i.i.i.i265.be = phi i32 [ %spec.select33.i.i.i.i269, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i ], [ %.sroa.0.2.i.i10.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i ], [ %.sroa.0.3.i.i.i.i297, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296 ]
  %.sroa.014.0.i.i.i.i266.be = phi ptr [ %i.cas, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i ], [ %i.caa, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i ], [ %i.caq, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296 ]
  %.sroa.05.0.i.i.i.i267.be = phi i64 [ %.sroa.01.0.i.i.i3.i.i, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i ], [ %i.bzz, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i9.i.i ], [ %i.cap, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i.i.i.i296 ]
  br label %.backedge.i.i.i55.i

bb.vw:                                            ; preds = %bb.vw, %bb.vv
  %.sroa.0.02.i.i.i5.i.i = phi i32 [ 0, %bb.vv ], [ %i.cav, %bb.vw ]
  %i.cav = add nuw nsw i32 %.sroa.0.02.i.i.i5.i.i, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169773
  %.sroa.0.0.highbits.i25.i.i.i.i268 = lshr i32 %i.cav, %.sroa.0.0.i.i.i.i4.i.i
  %i.caw = icmp eq i32 %.sroa.0.0.highbits.i25.i.i.i.i268, 0
  br i1 %i.caw, label %bb.vw, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i.i6.i.i

bb.vx:                                            ; preds = %bb.vu
  %i.cax = icmp eq i64 %i.bzs, 30
  br i1 %i.cax, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.cay = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i.i.i266, i64 1488 ; 2 uses
  %i.caz = load atomic ptr, ptr %i.cay acquire, align 8, !noalias !169773 ; 2 uses
  %i.cba = icmp eq ptr %i.caz, null
  br i1 %i.cba, label %.lr.ph.i.i.i.i.i286, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i.i.i.i286:                              ; preds = %bb.vy, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289
  %.sroa.0.02.i26.i.i.i.i287 = phi i32 [ %.sroa.0.1.i.i.i.i.i290, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289 ], [ 0, %bb.vy ] ; 5 uses
  %i.cbb = icmp ult i32 %.sroa.0.02.i26.i.i.i.i287, 7
  br i1 %i.cbb, label %.preheader.i.i.i.i.i.i292, label %.loopexit.i.i.i.i.i.i288

.loopexit.i.i.i.i.i.i288:                         ; preds = %.lr.ph.i.i.i.i.i286
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc66.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66.i:                                       ; preds = %.loopexit.i.i.i.i.i.i288
  %i.cbc = icmp ult i32 %.sroa.0.02.i26.i.i.i.i287, 11
  br i1 %i.cbc, label %.loopexit.i.thread.i.i.i.i.i291, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289

.preheader.i.i.i.i.i.i292:                        ; preds = %.lr.ph.i.i.i.i.i286, %.preheader.i.i.i.i.i.i292
  %.sroa.0.03.i.i.i.i.i.i293 = phi i32 [ %i.cbd, %.preheader.i.i.i.i.i.i292 ], [ 0, %.lr.ph.i.i.i.i.i286 ]
  %i.cbd = add nuw nsw i32 %.sroa.0.03.i.i.i.i.i.i293, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169773
  %.sroa.0.0.highbits.i.i.i.i.i.i294 = lshr i32 %i.cbd, %.sroa.0.02.i26.i.i.i.i287
  %i.cbe = icmp eq i32 %.sroa.0.0.highbits.i.i.i.i.i.i294, 0
  br i1 %i.cbe, label %.preheader.i.i.i.i.i.i292, label %.loopexit.i.thread.i.i.i.i.i291

.loopexit.i.thread.i.i.i.i.i291:                  ; preds = %.preheader.i.i.i.i.i.i292, %.noexc66.i
  %i.cbf = add nuw nsw i32 %.sroa.0.02.i26.i.i.i.i287, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289: ; preds = %.loopexit.i.thread.i.i.i.i.i291, %.noexc66.i
  %.sroa.0.1.i.i.i.i.i290 = phi i32 [ %i.cbf, %.loopexit.i.thread.i.i.i.i.i291 ], [ %.sroa.0.02.i26.i.i.i.i287, %.noexc66.i ]
  %i.cbg = load atomic ptr, ptr %i.cay acquire, align 8, !noalias !169773 ; 2 uses
  %i.cbh = icmp eq ptr %i.cbg, null
  br i1 %i.cbh, label %.lr.ph.i.i.i.i.i286, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289, %bb.vy
  %.lcssa.i.i.i.i.i284 = phi ptr [ %i.caz, %bb.vy ], [ %i.cbg, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i.i.i.i289 ] ; 2 uses
  %i.cbi = and i64 %.sroa.01.0.i.i1.i.i, -2
  %7 = add i64 %i.cbi, 2
  %i.cbj = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i284, i64 1488
  %i.cbk = load atomic ptr, ptr %i.cbj monotonic, align 8, !noalias !169773
  %8 = icmp ne ptr %i.cbk, null
  %9 = zext i1 %8 to i64
  %spec.select19.i.i.i.i285 = or disjoint i64 %7, %9
  store atomic ptr %.lcssa.i.i.i.i.i284, ptr %i.bzo release, align 8, !noalias !169773
  store atomic i64 %spec.select19.i.i.i.i285, ptr %.val34.i200 release, align 8, !noalias !169773
  br label %bb.vz

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.vr
  %i.cbl = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 0, ptr %i.cbl, align 2, !alias.scope !169774, !noalias !169662
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.vz:                                            ; preds = %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.vx
  %i.cbm = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i266, i64 %i.bzs ; 3 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 40 ; 3 uses
  %i.cbo = load atomic i64, ptr %i.cbn acquire, align 8, !noalias !169775
  %i.cbp = and i64 %i.cbo, 1
  %i.cbq = icmp eq i64 %i.cbp, 0
  br i1 %i.cbq, label %.lr.ph.i.i2.i.i.i275, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

.lr.ph.i.i2.i.i.i275:                             ; preds = %bb.vz, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i278
  %.sroa.0.02.i.i3.i.i.i276 = phi i32 [ %.sroa.0.1.i.i6.i.i.i279, %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i278 ], [ 0, %bb.vz ] ; 5 uses
  %i.cbr = icmp ult i32 %.sroa.0.02.i.i3.i.i.i276, 7
  br i1 %i.cbr, label %.preheader.i.i.i8.i.i.i281, label %.loopexit.i.i.i4.i.i.i277

.loopexit.i.i.i4.i.i.i277:                        ; preds = %.lr.ph.i.i2.i.i.i275
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now()
          to label %.noexc67.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67.i:                                       ; preds = %.loopexit.i.i.i4.i.i.i277
  %i.cbs = icmp ult i32 %.sroa.0.02.i.i3.i.i.i276, 11
  br i1 %i.cbs, label %.loopexit.i.thread.i.i7.i.i.i280, label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i278

.preheader.i.i.i8.i.i.i281:                       ; preds = %.lr.ph.i.i2.i.i.i275, %.preheader.i.i.i8.i.i.i281
  %.sroa.0.03.i.i.i9.i.i.i282 = phi i32 [ %i.cbt, %.preheader.i.i.i8.i.i.i281 ], [ 0, %.lr.ph.i.i2.i.i.i275 ]
  %i.cbt = add nuw nsw i32 %.sroa.0.03.i.i.i9.i.i.i282, 1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !169775
  %.sroa.0.0.highbits.i.i.i10.i.i.i283 = lshr i32 %i.cbt, %.sroa.0.02.i.i3.i.i.i276
  %i.cbu = icmp eq i32 %.sroa.0.0.highbits.i.i.i10.i.i.i283, 0
  br i1 %i.cbu, label %.preheader.i.i.i8.i.i.i281, label %.loopexit.i.thread.i.i7.i.i.i280

.loopexit.i.thread.i.i7.i.i.i280:                 ; preds = %.preheader.i.i.i8.i.i.i281, %.noexc67.i
  %i.cbv = add nuw nsw i32 %.sroa.0.02.i.i3.i.i.i276, 1
  br label %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i278

_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i278: ; preds = %.loopexit.i.thread.i.i7.i.i.i280, %.noexc67.i
  %.sroa.0.1.i.i6.i.i.i279 = phi i32 [ %i.cbv, %.loopexit.i.thread.i.i7.i.i.i280 ], [ %.sroa.0.02.i.i3.i.i.i276, %.noexc67.i ]
  %i.cbw = load atomic i64, ptr %i.cbn acquire, align 8, !noalias !169775
  %i.cbx = and i64 %i.cbw, 1
  %i.cby = icmp eq i64 %i.cbx, 0
  br i1 %i.cby, label %.lr.ph.i.i2.i.i.i275, label %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNvMNtCsmwebYWU4SQ_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5.i.i.i278, %bb.vz
  %.sroa.018.0.copyload.i.i.i = load i16, ptr %i.cbm, align 8, !noalias !169775 ; 2 uses
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cbm, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.419.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.419.0..sroa_idx.i.i.i, i64 38, i1 false), !noalias !169774
  %i.cbz = add nuw nsw i64 %i.bzs, 1              ; 2 uses
  %i.cca = icmp eq i64 %i.cbz, 31
  br i1 %i.cca, label %.lr.ph.i2.i.i.i.i, label %bb.wd

.lr.ph.i2.i.i.i.i:                                ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, %bb.wc
  %.sroa.0.04.i.i.i.i.i273 = phi i64 [ %i.ccj, %bb.wc ], [ 0, %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i ] ; 3 uses
  %i.ccb = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i266, i64 %.sroa.0.04.i.i.i.i.i273
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.ccb, i64 40 ; 2 uses
  %i.ccd = load atomic i64, ptr %i.ccc acquire, align 8, !noalias !169775
  %i.cce = and i64 %i.ccd, 2
  %i.ccf = icmp eq i64 %i.cce, 0
  br i1 %i.ccf, label %bb.wa, label %.lr.ph.i2.i.i.i.i.1

bb.wa:                                            ; preds = %.lr.ph.i2.i.i.i.i
  %i.ccg = atomicrmw or ptr %i.ccc, i64 4 acq_rel, align 8, !noalias !169775
  %i.cch = and i64 %i.ccg, 2
  %i.cci = icmp eq i64 %i.cch, 0
  br i1 %i.cci, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %.lr.ph.i2.i.i.i.i.1

.lr.ph.i2.i.i.i.i.1:                              ; preds = %bb.wa, %.lr.ph.i2.i.i.i.i
  %i.ccj = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i273, 2 ; 2 uses
  %i.cck = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i266, i64 %.sroa.0.04.i.i.i.i.i273
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cck, i64 88 ; 2 uses
  %i.ccm = load atomic i64, ptr %i.ccl acquire, align 8, !noalias !169775
  %i.ccn = and i64 %i.ccm, 2
  %i.cco = icmp eq i64 %i.ccn, 0
  br i1 %i.cco, label %bb.wb, label %bb.wc

bb.wb:                                            ; preds = %.lr.ph.i2.i.i.i.i.1
  %i.ccp = atomicrmw or ptr %i.ccl, i64 4 acq_rel, align 8, !noalias !169775
  %i.ccq = and i64 %i.ccp, 2
  %i.ccr = icmp eq i64 %i.ccq, 0
  br i1 %i.ccr, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.wc

bb.wc:                                            ; preds = %bb.wb, %.lr.ph.i2.i.i.i.i.1
  %exitcond.not.i.i.i.i.i274.1 = icmp eq i64 %i.ccj, 30
  br i1 %exitcond.not.i.i.i.i.i274.1, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i2.i.i.i.i

bb.wd:                                            ; preds = %_RNvMNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB2_4SlotINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.ccs = atomicrmw or ptr %i.cbn, i64 2 acq_rel, align 8, !noalias !169775
  %i.cct = and i64 %i.ccs, 4
  %i.ccu = icmp eq i64 %i.cct, 0
  br i1 %i.ccu, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.we

_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i: ; preds = %bb.wg, %bb.wc, %bb.we
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i.i.i.i266, i64 noundef 1496, i64 noundef 8) #68, !noalias !169775
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

bb.we:                                            ; preds = %bb.wd
  %i.ccv = icmp samesign ult i64 %i.bzs, 29
  br i1 %i.ccv, label %.lr.ph.i4.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i

.lr.ph.i4.i.i.i.i:                                ; preds = %bb.we, %bb.wg
  %.sroa.0.04.i5.i.i.i.i = phi i64 [ %i.ccw, %bb.wg ], [ %i.cbz, %bb.we ] ; 2 uses
  %i.ccw = add nuw nsw i64 %.sroa.0.04.i5.i.i.i.i, 1 ; 2 uses
  %i.ccx = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.0.i.i.i.i266, i64 %.sroa.0.04.i5.i.i.i.i
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 40 ; 2 uses
  %i.ccz = load atomic i64, ptr %i.ccy acquire, align 8, !noalias !169775
  %i.cda = and i64 %i.ccz, 2
  %i.cdb = icmp eq i64 %i.cda, 0
  br i1 %i.cdb, label %bb.wf, label %bb.wg

bb.wf:                                            ; preds = %.lr.ph.i4.i.i.i.i
  %i.cdc = atomicrmw or ptr %i.ccy, i64 4 acq_rel, align 8, !noalias !169775
  %i.cdd = and i64 %i.cdc, 2
  %i.cde = icmp eq i64 %i.cdd, 0
  br i1 %i.cde, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, label %bb.wg

bb.wg:                                            ; preds = %bb.wf, %.lr.ph.i4.i.i.i.i
  %exitcond.not.i6.i.i.i.i = icmp eq i64 %i.ccw, 30
  br i1 %exitcond.not.i6.i.i.i.i, label %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, label %.lr.ph.i4.i.i.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %bb.wf, %bb.wa, %bb.wb, %_RNvMs_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB4_5BlockINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1X_16CachedReaderDataEE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i.i, %bb.wd
  %i.cdf = icmp eq i16 %.sroa.018.0.copyload.i.i.i, -1
  br i1 %i.cdf, label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, label %bb.wh

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i: ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.vr
  %i.cdg = getelementptr inbounds nuw i8, ptr %0, i64 282
  store i8 1, ptr %i.cdg, align 2, !alias.scope !169774, !noalias !169662
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.wh:                                            ; preds = %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.417.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.419.i.i.i, i64 38, i1 false), !noalias !169662
  br label %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.wh, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %.sink.i56.i = phi i16 [ -1, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ], [ -1, %_RNvMs1_NtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4listINtB5_7ChannelINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB20_16CachedReaderDataEE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i ], [ %.sroa.018.0.copyload.i.i.i, %bb.wh ] ; 2 uses
  store i16 %.sink.i56.i, ptr %i.bxg, align 8, !alias.scope !169774, !noalias !169662
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419.i.i.i)
  br label %_RNvMsa_NtCs40Ppcsylqp4_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCskTBvlRM5ILY_4moka6common10concurrent7WriteOpNtNtNtCsjjbR6Jfsbqw_8lance_io5uring6reader8CacheKeyNtB1U_16CachedReaderDataEE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.wi:                                            ; preds = %bb.us
  call void @llvm.experimental.noalias.scope.decl(metadata !169776)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.739.i.i.i)
  %i.cdh = cmpxchg ptr %.val34.i200, i32 0, i32 1 acquire monotonic, align 4, !noalias !169777
  %i.cdi = extractvalue { i32, i1 } %i.cdh, 1
  br i1 %i.cdi, label %.noexc68.i, label %bb.wj, !prof !432

bb.wj:                                            ; preds = %bb.wi
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.val34.i200)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68.i:                                       ; preds = %bb.wj, %bb.wi
  %i.cdj = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !169778
  %i.cdk = and i64 %i.cdj, 9223372036854775807
  %i.cdl = icmp eq i64 %i.cdk, 0
  br i1 %i.cdl, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i201, label %bb.wk, !prof !432

bb.wk:                                            ; preds = %.noexc68.i
  %i.cdm = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc69.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69.i:                                       ; preds = %bb.wk
  %i.cdn = xor i1 %i.cdm, true
  %i.cdo = zext i1 %i.cdn to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i201

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i201: ; preds = %.noexc69.i, %.noexc68.i
  %.sroa.01.0.i.i.i15.i.i = phi i8 [ %i.cdo, %.noexc69.i ], [ 0, %.noexc68.i ] ; 3 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %.val34.i200, i64 4 ; 3 uses
  %i.cdq = load atomic i8, ptr %i.cdp monotonic, align 1, !noalias !169777
  %.not.i.i51.i = icmp eq i8 %i.cdq, 0
  br i1 %.not.i.i51.i, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i202, label %bb.wl, !prof !432

bb.wl:                                            ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !169779
  store ptr %.val34.i200, ptr %i.ay, align 8, !noalias !169779
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 %.sroa.01.0.i.i.i15.i.i, ptr %i.cdr, align 8, !noalias !169779
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3132, i64 noundef 43, ptr noundef nonnull %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3150, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3277) #72
          to label %bb.wn unwind label %bb.wm, !noalias !169780

bb.wm:                                            ; preds = %bb.wl
  %i.cds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsgczF5crJ4sT_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEEECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #73
          to label %.body62.i unwind label %bb.wo, !noalias !169780

bb.wn:                                            ; preds = %bb.wl
  unreachable

bb.wo:                                            ; preds = %bb.wm
  %i.cdt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !169780
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex10MutexGuardNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i202: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtCs40Ppcsylqp4_17crossbeam_channel7flavors4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i201
end_hunk_2
begin_hunk_3_@_RNvMs9_NtNtCsgczF5crJ4sT_3std4sync4mpscINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls:bb.a
  %i.ck = load ptr, ptr %i.ci, align 8, !alias.scope !209630, !noalias !209631, !nonnull !409, !noundef !409 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !209632, !noundef !409
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.ce
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !209630, !noalias !209631, !noundef !409
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cq = cmpxchg ptr %i.cp, i64 0, i64 %i.co acq_rel acquire, align 8, !noalias !209632
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.cq, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !209630, !noalias !209631, !noundef !409 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store atomic ptr %i.ct, ptr %i.cv release, align 8, !noalias !209632
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cw = load ptr, ptr %i.cr, align 8, !noalias !209632, !nonnull !409, !noundef !409
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.cy = atomicrmw xchg ptr %i.cx, i32 1 release, align 4, !noalias !209632
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %bb.ae, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.da = invoke noundef zeroext i1 @_RNvNtNtNtNtCsgczF5crJ4sT_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.cx)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i unwind label %bb.w, !noalias !209624 ; 0 uses

_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %i.db = add nuw nsw i64 %.sroa.02.012.i.i.i.i.i.i, 1
  %i.dc = icmp eq ptr %i.cj, %i.ch
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.dd = icmp samesign ult i64 %.sroa.02.012.i.i.i.i.i.i, %i.ca
  tail call void @llvm.assume(i1 %i.dd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209633)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209634)
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.sroa.02.012.i.i.i.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i = load ptr, ptr %i.de, align 8, !noalias !209635 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, i64 16, i1 false), !noalias !209635
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = xor i64 %.sroa.02.012.i.i.i.i.i.i, -1
  %i.dh = add nsw i64 %i.ca, %i.dg
  %i.di = mul nuw nsw i64 %i.dh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr nonnull align 8 %i.df, i64 %i.di, i1 false), !noalias !209636
  %i.dj = add nsw i64 %i.ca, -1                   ; 2 uses
  store i64 %i.dj, ptr %i.bz, align 8, !alias.scope !209637, !noalias !209624
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i, label %bb.af, !prof !535

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  invoke void @_RNvNvMs_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %.sroa.02.012.i.i.i.i.i.i, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3201) #72
          to label %.noexc5.i.i.i.i unwind label %bb.w, !noalias !209624

.noexc5.i.i.i.i:                                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i.i.i.i.i
  unreachable

bb.af:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryE10try_removeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i.i, i64 16, i1 false), !noalias !209638
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  store ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, ptr %i.d, align 8, !alias.scope !209628, !noalias !209624
  %i.dk = atomicrmw add ptr %.sroa.0.0.copyload1.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !209639
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc7context5InnerE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i unwind label %bb.w, !noalias !209624

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i: ; preds = %_RNCNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i.i.i, %bb.ag, %bb.af, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !209624
  invoke fastcc void @_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.by)
          to label %bb.ah unwind label %bb.w, !noalias !209624

bb.ah:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgczF5crJ4sT_3std4sync4mpmc5waker5EntryEECsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i.i
  %i.dm = load i64, ptr %i.bz, align 8, !noalias !209624, !noundef !409 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 384307168202282326
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i64 %i.dm, 0
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.8.val, i64 304
  %i.dq = load i64, ptr %i.dp, align 16, !noalias !209624, !noundef !409 ; 2 uses
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  %i.dt = zext i1 %i.ds to i8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.dt, %bb.ai ], [ 0, %bb.ah ]
  store atomic i8 %.sroa.0.0.i.i.i.i, ptr %i.be seq_cst, align 8, !noalias !209624
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.x
  br i1 %i.bv, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !209624
  %i.dv = and i64 %i.du, 9223372036854775807
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.am, !prof !432

bb.am:                                            ; preds = %bb.al
  %i.dx = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc3.i.i.i unwind label %bb.aq, !noalias !209624

.noexc3.i.i.i:                                    ; preds = %bb.am
  br i1 %i.dx, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.noexc3.i.i.i
  store atomic i8 1, ptr %i.bp monotonic, align 4, !noalias !209624
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.an, %.noexc3.i.i.i, %bb.al, %bb.ak
  %i.dy = atomicrmw xchg ptr %i.bd, i32 0 release, align 4, !noalias !209624
  %i.dz = icmp eq i32 %i.dy, 2
  br i1 %i.dz, label %bb.ao, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, !prof !419

bb.ao:                                            ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.bd)
          to label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i unwind label %bb.aq, !noalias !209624

bb.ap:                                            ; preds = %bb.w
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !209624
  unreachable

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.r, %bb.q
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.aq, %bb.w, %bb.t
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.eb, %bb.aq ], [ %i.bs, %bb.t ], [ %i.bu, %bb.w ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsECsfR8GmIBoxTX_21lance_namespace_impls(ptr noalias noundef align 8 dereferenceable(32) %i.e) #73
          to label %common.resume.i unwind label %bb.ar, !noalias !209624

bb.ar:                                            ; preds = %.body.i.i.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #74, !noalias !209624
  unreachable

common.resume.i:                                  ; preds = %bb.df, %bb.cp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cb, %.body.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ic, %bb.cb ], [ %lpad.loopexit.split-lp128, %bb.cp ], [ %lpad.thr_comm.i.i, %bb.df ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.ao, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %bb.o
  %.sroa.03.0.copyload4.i.i = load i64, ptr %i.e, align 8, !noalias !209623 ; 2 uses
  %.sroa.65.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.0..sroa_idx6.i.i, i64 24, i1 false), !noalias !209623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !209624
  %i.ed = icmp eq i64 %.sroa.03.0.copyload4.i.i, -1
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ee, align 8, !alias.scope !209623
  br label %bb.au

bb.at:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.65.i.i, i64 24, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge.i.i = phi i64 [ %.sroa.03.0.copyload4.i.i, %bb.at ], [ -1, %bb.as ]
  store i64 %storemerge.i.i, ptr %0, align 8, !alias.scope !209623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.65.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.av:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209640)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i.i)
  %i.ef = load atomic i64, ptr %.8.val acquire, align 8, !noalias !209641
  %i.eg = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.eh = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !209641
  %i.ei = getelementptr inbounds nuw i8, ptr %.8.val, i64 128
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.backedge, %bb.av
  %.sroa.0.034.i.i.i = phi i32 [ 0, %bb.av ], [ %.sroa.0.034.i.i.i.be, %.backedge.i.i.i.backedge ] ; 15 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.eh, %bb.av ], [ %.sroa.012.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 8 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.ef, %bb.av ], [ %.sroa.07.0.i.i.i.be, %.backedge.i.i.i.backedge ] ; 5 uses
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
  %xtraiter147 = and i32 %i.en, 7                 ; 3 uses
  %i.eo = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.eo, label %.lr.ph.i.i.i7.i.epil.preheader, label %.lr.ph.i.i.i7.i.preheader.new

.lr.ph.i.i.i7.i.preheader.new:                    ; preds = %.lr.ph.i.i.i7.i.preheader
  %unroll_iter151 = and i32 %i.en, 56
  br label %.lr.ph.i.i.i7.i

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i7.i, %.lr.ph.i.i.i7.i.preheader.new
  %niter152 = phi i32 [ 0, %.lr.ph.i.i.i7.i.preheader.new ], [ %niter152.next.7, %.lr.ph.i.i.i7.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %niter152.next.7 = add i32 %niter152, 8         ; 2 uses
  %niter152.ncmp.7 = icmp eq i32 %niter152.next.7, %unroll_iter151
  br i1 %niter152.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i

bb.ay:                                            ; preds = %.backedge.i.i.i
  %i.ep = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.eq = and i64 %.sroa.07.0.i.i.i, 1
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.az, label %bb.bc

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i: ; preds = %bb.bd, %bb.aw
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !209641
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i
  %lcmp.mod149.not = icmp eq i32 %xtraiter147, 0
  br i1 %lcmp.mod149.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.epil.preheader

.lr.ph.i.i.i7.i.epil.preheader:                   ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.preheader
  %lcmp.mod150 = icmp ne i32 %xtraiter147, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %.lr.ph.i.i.i7.i.epil

.lr.ph.i.i.i7.i.epil:                             ; preds = %.lr.ph.i.i.i7.i.epil, %.lr.ph.i.i.i7.i.epil.preheader
  %epil.iter148 = phi i32 [ 0, %.lr.ph.i.i.i7.i.epil.preheader ], [ %epil.iter148.next, %.lr.ph.i.i.i7.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %epil.iter148.next = add i32 %epil.iter148, 1   ; 2 uses
  %epil.iter148.cmp.not = icmp eq i32 %epil.iter148.next, %xtraiter147
  br i1 %epil.iter148.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i.i.i7.i.epil, !llvm.loop !209573

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit123.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod143.not = icmp eq i32 %xtraiter141, 0
  br i1 %lcmp.mod143.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit123.unr-lcssa, %.lr.ph.i19.i.i.i.preheader
  %lcmp.mod144 = icmp ne i32 %xtraiter141, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.i19.i.i.i.epil

.lr.ph.i19.i.i.i.epil:                            ; preds = %.lr.ph.i19.i.i.i.epil, %.lr.ph.i19.i.i.i.epil.preheader
  %epil.iter142 = phi i32 [ 0, %.lr.ph.i19.i.i.i.epil.preheader ], [ %epil.iter142.next, %.lr.ph.i19.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %epil.iter142.next = add i32 %epil.iter142, 1   ; 2 uses
  %epil.iter142.cmp.not = icmp eq i32 %epil.iter142.next, %xtraiter141
  br i1 %epil.iter142.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i, label %.lr.ph.i19.i.i.i.epil, !llvm.loop !209574

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit123.unr-lcssa, %.lr.ph.i19.i.i.i.epil, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.epil, %bb.be, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i.i.i, %bb.ax
  %i.es = load atomic i64, ptr %.8.val acquire, align 8, !noalias !209641
  %i.et = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !209641
  %.sroa.0.1.i.i5.i = add i32 %.sroa.0.034.i.i.i, 1
  br label %.backedge.i.i.i.backedge

bb.az:                                            ; preds = %bb.ay
  fence seq_cst
  %i.eu = load atomic i64, ptr %i.ei monotonic, align 8, !noalias !209641 ; 3 uses
  %i.ev = lshr i64 %i.eu, 1
  %i.ew = icmp eq i64 %i.ej, %i.ev
  br i1 %i.ew, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.unshifted.i.i.i = xor i64 %i.eu, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %1 = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.ep, %1
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
  %xtraiter141 = and i32 %i.fb, 7                 ; 3 uses
  %i.fc = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.fc, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.preheader.new

.lr.ph.i19.i.i.i.preheader.new:                   ; preds = %.lr.ph.i19.i.i.i.preheader
  %unroll_iter145 = and i32 %i.fb, 56
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.i.i.i.preheader.new
  %niter146 = phi i32 [ 0, %.lr.ph.i19.i.i.i.preheader.new ], [ %niter146.next.7, %.lr.ph.i19.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %niter146.next.7 = add i32 %niter146, 8         ; 2 uses
  %niter146.ncmp.7 = icmp eq i32 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.i.i.loopexit123.unr-lcssa, label %.lr.ph.i19.i.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.fd = cmpxchg weak ptr %.8.val, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i1.i seq_cst acquire, align 8, !noalias !209641
  %.sroa.18.0.in.i.i.i2.i = extractvalue { i64, i1 } %i.fd, 1
  br i1 %.sroa.18.0.in.i.i.i2.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.0.0.i.i.i.i3.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i, i32 6) ; 2 uses
  %i.fe = mul nuw nsw i32 %.sroa.0.0.i.i.i.i3.i, %.sroa.0.0.i.i.i.i3.i ; 2 uses
  %.not.i23.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i, 0
  br i1 %.not.i23.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i, label %.lr.ph.i24.i.i.i.preheader

.lr.ph.i24.i.i.i.preheader:                       ; preds = %bb.bg
  %xtraiter135 = and i32 %i.fe, 5                 ; 3 uses
  %i.ff = icmp ult i32 %.sroa.0.034.i.i.i, 3
  br i1 %i.ff, label %.lr.ph.i24.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.preheader.new

.lr.ph.i24.i.i.i.preheader.new:                   ; preds = %.lr.ph.i24.i.i.i.preheader
  %unroll_iter139 = and i32 %i.fe, 56
  br label %.lr.ph.i24.i.i.i

._crit_edge.loopexit.i.i.i4.i.unr-lcssa:          ; preds = %.lr.ph.i24.i.i.i
  %lcmp.mod137.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %._crit_edge.loopexit.i.i.i4.i, label %.lr.ph.i24.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i4.i.unr-lcssa, %.lr.ph.i24.i.i.i.preheader
  %lcmp.mod138 = icmp ne i32 %xtraiter135, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.i24.i.i.i.epil

.lr.ph.i24.i.i.i.epil:                            ; preds = %.lr.ph.i24.i.i.i.epil, %.lr.ph.i24.i.i.i.epil.preheader
  %epil.iter136 = phi i32 [ 0, %.lr.ph.i24.i.i.i.epil.preheader ], [ %epil.iter136.next, %.lr.ph.i24.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %epil.iter136.next = add i32 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i32 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %._crit_edge.loopexit.i.i.i4.i, label %.lr.ph.i24.i.i.i.epil, !llvm.loop !209575

._crit_edge.loopexit.i.i.i4.i:                    ; preds = %.lr.ph.i24.i.i.i.epil, %._crit_edge.loopexit.i.i.i4.i.unr-lcssa
  %i.fg = add i32 %.sroa.0.034.i.i.i, 1
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i

.lr.ph.i24.i.i.i:                                 ; preds = %.lr.ph.i24.i.i.i, %.lr.ph.i24.i.i.i.preheader.new
  %niter140 = phi i32 [ 0, %.lr.ph.i24.i.i.i.preheader.new ], [ %niter140.next.7, %.lr.ph.i24.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %niter140.next.7 = add i32 %niter140, 8         ; 2 uses
  %niter140.ncmp.7 = icmp eq i32 %niter140.next.7, %unroll_iter139
  br i1 %niter140.ncmp.7, label %._crit_edge.loopexit.i.i.i4.i.unr-lcssa, label %.lr.ph.i24.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.i: ; preds = %._crit_edge.loopexit.i.i.i4.i, %bb.bg
  %i.fh = phi i32 [ %i.fg, %._crit_edge.loopexit.i.i.i4.i ], [ 1, %bb.bg ]
  %i.fi = load atomic i64, ptr %.8.val acquire, align 8, !noalias !209641
  %i.fj = load atomic ptr, ptr %i.eg acquire, align 8, !noalias !209641
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
  %i.fl = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !209641 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.bi, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i28.i.i.i = phi i32 [ %i.fq, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.bi ] ; 6 uses
  %i.fn = icmp ult i32 %.sroa.0.02.i28.i.i.i, 7
  br i1 %i.fn, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i27.i.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !209641
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i

bb.bk:                                            ; preds = %.lr.ph.i27.i.i.i
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fo = mul nuw i32 %.sroa.0.02.i28.i.i.i, %.sroa.0.02.i28.i.i.i ; 2 uses
  %xtraiter153 = and i32 %i.fo, 7                 ; 3 uses
  %i.fp = icmp ult i32 %.sroa.0.02.i28.i.i.i, 3
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter157 = and i32 %i.fo, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter158 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter158.next.7, %.lr.ph.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %niter158.next.7 = add i32 %niter158, 8         ; 2 uses
  %niter158.ncmp.7 = icmp eq i32 %niter158.next.7, %unroll_iter157
  br i1 %niter158.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod155.not = icmp eq i32 %xtraiter153, 0
  br i1 %lcmp.mod155.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod156 = icmp ne i32 %xtraiter153, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter154 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter154.next, %.lr.ph.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209641
  %epil.iter154.next = add i32 %epil.iter154, 1   ; 2 uses
  %epil.iter154.cmp.not = icmp eq i32 %epil.iter154.next, %xtraiter153
  br i1 %epil.iter154.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !209576

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.bk, %bb.bj
  %i.fq = add i32 %.sroa.0.02.i28.i.i.i, 1
  %i.fr = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !209641 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %.lr.ph.i27.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.bi
  %.lcssa.i.i.i.i = phi ptr [ %i.fl, %bb.bi ], [ %i.fr, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.ft = and i64 %.sroa.01.0.i.i1.i, -2
  %2 = add i64 %i.ft, 2
  %i.fu = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !209641
  %3 = icmp ne ptr %i.fu, null
  %4 = zext i1 %3 to i64
  %spec.select17.i.i.i = or disjoint i64 %2, %4
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.eg release, align 8, !noalias !209641
  store atomic i64 %spec.select17.i.i.i, ptr %.8.val release, align 8, !noalias !209641
  br label %bb.bl

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bb
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.fv, align 8, !alias.scope !209642
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bl:                                            ; preds = %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE9wait_nextCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.bh
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %i.fw, i64 %i.ek ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 3 uses
  %i.fz = load atomic i64, ptr %i.fy acquire, align 8, !noalias !209643
  %i.ga = and i64 %i.fz, 1
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

.lr.ph.i.i3.i.i:                                  ; preds = %bb.bl, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i
  %.sroa.0.02.i.i4.i.i = phi i32 [ %i.gf, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i ], [ 0, %bb.bl ] ; 6 uses
  %i.gc = icmp ult i32 %.sroa.0.02.i.i4.i.i, 7
  br i1 %i.gc, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i3.i.i
  tail call void @_RNvNtNtCsgczF5crJ4sT_3std6thread9functions9yield_now(), !noalias !209643
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i3.i.i
  %.not.i.i.i6.i.i = icmp eq i32 %.sroa.0.02.i.i4.i.i, 0
  br i1 %.not.i.i.i6.i.i, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.preheader

.lr.ph.i.i.i7.i.i.preheader:                      ; preds = %bb.bn
  %i.gd = mul nuw i32 %.sroa.0.02.i.i4.i.i, %.sroa.0.02.i.i4.i.i ; 2 uses
  %xtraiter159 = and i32 %i.gd, 7                 ; 3 uses
  %i.ge = icmp ult i32 %.sroa.0.02.i.i4.i.i, 3
  br i1 %i.ge, label %.lr.ph.i.i.i7.i.i.epil.preheader, label %.lr.ph.i.i.i7.i.i.preheader.new

.lr.ph.i.i.i7.i.i.preheader.new:                  ; preds = %.lr.ph.i.i.i7.i.i.preheader
  %unroll_iter163 = and i32 %i.gd, 56
  br label %.lr.ph.i.i.i7.i.i

.lr.ph.i.i.i7.i.i:                                ; preds = %.lr.ph.i.i.i7.i.i, %.lr.ph.i.i.i7.i.i.preheader.new
  %niter164 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.preheader.new ], [ %niter164.next.7, %.lr.ph.i.i.i7.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  %niter164.next.7 = add i32 %niter164, 8         ; 2 uses
  %niter164.ncmp.7 = icmp eq i32 %niter164.next.7, %unroll_iter163
  br i1 %niter164.ncmp.7, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i7.i.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7.i.i
  %lcmp.mod161.not = icmp eq i32 %xtraiter159, 0
  br i1 %lcmp.mod161.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil.preheader

.lr.ph.i.i.i7.i.i.epil.preheader:                 ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.preheader
  %lcmp.mod162 = icmp ne i32 %xtraiter159, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %.lr.ph.i.i.i7.i.i.epil

.lr.ph.i.i.i7.i.i.epil:                           ; preds = %.lr.ph.i.i.i7.i.i.epil, %.lr.ph.i.i.i7.i.i.epil.preheader
  %epil.iter160 = phi i32 [ 0, %.lr.ph.i.i.i7.i.i.epil.preheader ], [ %epil.iter160.next, %.lr.ph.i.i.i7.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !209643
  %epil.iter160.next = add i32 %epil.iter160, 1   ; 2 uses
  %epil.iter160.cmp.not = icmp eq i32 %epil.iter160.next, %xtraiter159
  br i1 %epil.iter160.cmp.not, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, label %.lr.ph.i.i.i7.i.i.epil, !llvm.loop !209579

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i7.i.i.epil, %bb.bn, %bb.bm
  %i.gf = add i32 %.sroa.0.02.i.i4.i.i, 1
  %i.gg = load atomic i64, ptr %i.fy acquire, align 8, !noalias !209643
  %i.gh = and i64 %i.gg, 1
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %.lr.ph.i.i3.i.i, label %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i

_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.i.i, %bb.bl
  %.sroa.015.0.copyload.i.i = load i64, ptr %i.fx, align 8, !noalias !209643 ; 2 uses
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i.i, i64 24, i1 false), !noalias !209642
  %i.gj = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 31
  br i1 %i.gk, label %.lr.ph.i2.i.i.i, label %bb.br

.lr.ph.i2.i.i.i:                                  ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i, %bb.bq
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.gt, %bb.bq ], [ 0, %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40 ; 2 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8, !noalias !209643
  %i.go = and i64 %i.gn, 2
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bo, label %.lr.ph.i2.i.i.i.1

bb.bo:                                            ; preds = %.lr.ph.i2.i.i.i
  %i.gq = atomicrmw or ptr %i.gm, i64 4 acq_rel, align 8, !noalias !209643
  %i.gr = and i64 %i.gq, 2
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %.lr.ph.i2.i.i.i.1

.lr.ph.i2.i.i.i.1:                                ; preds = %bb.bo, %.lr.ph.i2.i.i.i
  %i.gt = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 2  ; 2 uses
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 80 ; 2 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8, !noalias !209643
  %i.gx = and i64 %i.gw, 2
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.i2.i.i.i.1
  %i.gz = atomicrmw or ptr %i.gv, i64 4 acq_rel, align 8, !noalias !209643
  %i.ha = and i64 %i.gz, 2
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.lr.ph.i2.i.i.i.1
  %exitcond.not.i.i2.i.i.1 = icmp eq i64 %i.gt, 30
  br i1 %exitcond.not.i.i2.i.i.1, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i, label %.lr.ph.i2.i.i.i

bb.br:                                            ; preds = %_RNvMNtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB2_4SlotNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10wait_writeCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i.i
  %i.hc = atomicrmw or ptr %i.fy, i64 2 acq_rel, align 8, !noalias !209643
  %i.hd = and i64 %i.hc, 4
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bs

_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i: ; preds = %bb.bu, %bb.bq, %bb.bs
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i, i64 noundef 1248, i64 noundef 8) #68, !noalias !209643
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.hf = icmp samesign ult i64 %i.ek, 29
  br i1 %i.hf, label %.lr.ph.i4.i.i.i, label %_RNvMs_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB4_5BlockNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE7destroyCsfR8GmIBoxTX_21lance_namespace_impls.exit.sink.split.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.bs, %bb.bu
  %.sroa.0.04.i5.i.i.i = phi i64 [ %i.hg, %bb.bu ], [ %i.gj, %bb.bs ] ; 2 uses
  %i.hg = add nuw nsw i64 %.sroa.0.04.i5.i.i.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [40 x i8], ptr %.sroa.012.0.i.i.i, i64 %.sroa.0.04.i5.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 40 ; 2 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8, !noalias !209643
  %i.hk = and i64 %i.hj, 2
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.hm = atomicrmw or ptr %i.hi, i64 4 acq_rel, align 8, !noalias !209643
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
  store i8 1, ptr %i.hq, align 8, !alias.scope !209642
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

bb.bv:                                            ; preds = %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.i.i, i64 24, i1 false)
  br label %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i

_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i: ; preds = %bb.bv, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i
  %.sink.i = phi i64 [ -1, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE10start_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i ], [ -1, %_RNvMs1_NtNtNtCsgczF5crJ4sT_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE4readCsfR8GmIBoxTX_21lance_namespace_impls.exit.thread.i.i ], [ %.sroa.015.0.copyload.i.i, %bb.bv ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !209642
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i.i)
  br label %_RNvMsg_NtNtCsgczF5crJ4sT_3std4sync4mpmcINtB5_8ReceiverNtNtNtCshkPeWWG1flk_5lance7dataset5utils14CapturedRowIdsE8try_recvCsfR8GmIBoxTX_21lance_namespace_impls.exit

bb.bw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209644)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.736.i.i)
  %i.hr = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !209645
  %i.hs = extractvalue { i32, i1 } %i.hr, 1
  br i1 %i.hs, label %bb.by, label %bb.bx, !prof !432

bb.bx:                                            ; preds = %bb.bw
  tail call void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val), !noalias !209645
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ht = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !209645
  %i.hu = and i64 %i.ht, 9223372036854775807
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i, label %bb.bz, !prof !432

bb.bz:                                            ; preds = %bb.by
  %i.hw = tail call noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path(), !noalias !209645
  %i.hx = xor i1 %i.hw, true
  %i.hy = zext i1 %i.hx to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsfR8GmIBoxTX_21lance_namespace_impls.exit.i.i: ; preds = %bb.bz, %bb.by
  %.sroa.01.0.i.i.i.i = phi i8 [ %i.hy, %bb.bz ], [ 0, %bb.by ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
end_hunk_3
