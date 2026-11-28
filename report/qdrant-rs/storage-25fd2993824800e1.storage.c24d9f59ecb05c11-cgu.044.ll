Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.044?download=true
inline.NumInlined: 721
inline.NumDeleted: 382
begin_hunk_0_@_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneINtNtNtB7_10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB28_14ChannelService20await_commit_on_peer0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsgGgPqgSfnMH_7storage:bb.a
    i8 4, label %bb.bz
  ]

._crit_edge192.i.i.i.i.i.i.i.i:                   ; preds = %bb.bd
  %.pre193.i.i.i.i.i.i.i.i = load ptr, ptr %i.jt, align 8, !noalias !1412
  %.phi.trans.insert194.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.pre195.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert194.i.i.i.i.i.i.i.i, align 8, !noalias !1412
  br label %bb.be

bb.be:                                            ; preds = %._crit_edge192.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i
  %i.ju = phi ptr [ %i.iw, %.thread.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.jv = phi ptr [ %i.ix, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.bw, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.jw = phi ptr [ %i.iy, %.thread.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert103.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.jx = phi ptr [ %i.iz, %.thread.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.jy = phi ptr [ %i.ja, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.ey, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.jz = phi ptr [ %i.jb, %.thread.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.ka = phi ptr [ %i.jc, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.ia, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.kb = phi ptr [ %i.jf, %.thread.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.kc = phi ptr [ %i.jg, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.iv, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.kd = phi ptr [ %i.jd, %.thread.i.i.i.i.i.i.i.i.i ], [ %.pre195.i.i.i.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.ke = phi ptr [ %i.je, %.thread.i.i.i.i.i.i.i.i.i ], [ %.pre193.i.i.i.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.kf = phi ptr [ %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i.i, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.kg = phi ptr [ %i.jj, %.thread.i.i.i.i.i.i.i.i.i ], [ %i.jt, %._crit_edge192.i.i.i.i.i.i.i.i ]
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 560
  store ptr %i.kd, ptr %i.kh, align 8, !noalias !1412
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 208
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 592
  store ptr %i.ki, ptr %i.kj, align 8, !noalias !1412
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 680
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1412
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.ck, !noalias !1413

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bd
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.ck, !noalias !1413

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.kk = phi ptr [ %i.ju, %bb.be ], [ %.phi.trans.insert.i.i.i.i, %bb.bd ] ; 9 uses
  %i.kl = phi ptr [ %i.jv, %bb.be ], [ %i.bw, %bb.bd ] ; 8 uses
  %i.km = phi ptr [ %i.jw, %bb.be ], [ %.phi.trans.insert103.i.i.i.i.i, %bb.bd ] ; 9 uses
  %i.kn = phi ptr [ %i.jx, %bb.be ], [ %.phi.trans.insert.i.i.i.i.i.i, %bb.bd ] ; 9 uses
  %i.ko = phi ptr [ %i.jy, %bb.be ], [ %i.ey, %bb.bd ] ; 8 uses
  %i.kp = phi ptr [ %i.jz, %bb.be ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.bd ] ; 9 uses
  %i.kq = phi ptr [ %i.ka, %bb.be ], [ %i.ia, %bb.bd ] ; 8 uses
  %i.kr = phi ptr [ %i.kb, %bb.be ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.bd ] ; 9 uses
  %i.ks = phi ptr [ %i.kc, %bb.be ], [ %i.iv, %bb.bd ] ; 8 uses
  %i.kt = phi ptr [ %i.kf, %bb.be ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i.i, %bb.bd ] ; 9 uses
  %i.ku = phi ptr [ %i.kg, %bb.be ], [ %i.jt, %bb.bd ] ; 8 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.kw = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEE4read0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.kv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bj unwind label %bb.bi, !noalias !1413 ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEE4read0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.kv) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.by, !noalias !1413

bb.bj:                                            ; preds = %bb.bh
  %i.ky = extractvalue { ptr, ptr } %i.kw, 0      ; 2 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.cl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.la = extractvalue { ptr, ptr } %i.kw, 1
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr %i.ky, ptr %i.lb, align 8, !noalias !1412
  %i.lc = getelementptr i8, ptr %1, i64 576       ; 2 uses
  store ptr %i.la, ptr %i.lc, align 8, !noalias !1412
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.le = load i8, ptr %i.ld, align 8, !range !23, !noalias !1412, !noundef !11
  %cond.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.le, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.lg = load i8, ptr %i.lf, align 8, !range !23, !noalias !1412, !noundef !11
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lg, 3
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 608
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.lh)
          to label %bb.bp unwind label %bb.bn, !noalias !1413

bb.bn:                                            ; preds = %bb.bm
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lj, align 8, !noalias !1412, !align !12, !noundef !11 ; 2 uses
  %i.lk = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.lk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ll = getelementptr i8, ptr %1, i64 624
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ll, align 8, !noalias !1412
  %i.lm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1413, !nonnull !11, !noundef !11
  invoke void %i.ln(ptr noundef %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.br, !noalias !1413, !inline_history !2

bb.bp:                                            ; preds = %bb.bm
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 616
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lo, align 8, !noalias !1412, !align !12, !noundef !11 ; 2 uses
  %i.lp = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.lp, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lq = getelementptr i8, ptr %1, i64 624
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lq, align 8, !noalias !1412
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !1413, !nonnull !11, !noundef !11
  invoke void %i.ls(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.bs unwind label %bb.cj, !noalias !1413, !inline_history !4

bb.br:                                            ; preds = %bb.bo
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1413
  unreachable

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bl, %bb.bk
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lc, align 8, !noalias !1412, !noundef !11 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !1412, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.lx = load i64, ptr %i.lw, align 8, !alias.scope !1414, !noalias !1413, !noundef !11
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.ma = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.lz, ptr noundef nonnull align 8 %i.lv)
          to label %.noexc26.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1413 ; 2 uses

.noexc26.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.mb = lshr i64 %i.ma, 57
  %i.mc = trunc nuw nsw i64 %i.mb to i8
  %i.md = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !1417, !noalias !1413, !noundef !11 ; 2 uses
  %i.mf = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1417, !noalias !1413, !nonnull !11, !noundef !11 ; 2 uses
  %i.mg = insertelement <16 x i8> poison, i8 %i.mc, i64 0
  %i.mh = shufflevector <16 x i8> %i.mg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %.noexc26.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc26.i.i.i.i.i.i.i.i.i.i ], [ %i.my, %bb.bw ]
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ma, %.noexc26.i.i.i.i.i.i.i.i.i.i ], [ %i.mz, %bb.bw ]
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.me ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.mi, align 1, !noalias !1418 ; 2 uses
  %i.mj = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.mh
  %i.mk = bitcast <16 x i1> %i.mj to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.mk, 0
  br i1 %.not.i.not30.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bu, %bb.bv
  %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.mx, %bb.bv ], [ %i.mk, %bb.bu ] ; 3 uses
  %i.ml = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.mm = zext nneg i16 %i.ml to i64
  %i.mn = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.mm
  %i.mo = and i64 %i.mn, %i.me
  %i.mp = sub nsw i64 0, %i.mo
  %i.mq = getelementptr inbounds [464 x i8], ptr %i.mf, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -464
  %i.ms = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs577yCKf7gy3_4http3uri3UriINtB2_10EquivalentBq_E10equivalentCsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.lv, ptr noundef nonnull align 8 %i.mr)
          to label %.noexc27.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1419

.noexc27.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ms, label %bb.bx, label %bb.bv, !prof !19

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.bv, %bb.bu
  %i.mt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.mu = bitcast <16 x i1> %i.mt to i16
  %i.mv = icmp eq i16 %i.mu, 0
  br i1 %i.mv, label %bb.bw, label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i, !prof !20

bb.bv:                                            ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i
  %i.mw = add i16 %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.mx = and i16 %i.mw, %.sroa.06.0.i31.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.mx, 0
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.my = add i64 %.sroa.9.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 16 ; 2 uses
  %i.mz = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.my
  br label %bb.bu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ch, %14, %bb.ca
  %3 = phi ptr [ %i.oa, %bb.ca ], [ %i.oa, %14 ], [ %i.oa, %bb.ch ], [ %i.kk, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %4 = phi ptr [ %i.ob, %bb.ca ], [ %i.ob, %14 ], [ %i.ob, %bb.ch ], [ %i.kl, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %5 = phi ptr [ %i.oc, %bb.ca ], [ %i.oc, %14 ], [ %i.oc, %bb.ch ], [ %i.km, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %6 = phi ptr [ %i.od, %bb.ca ], [ %i.od, %14 ], [ %i.od, %bb.ch ], [ %i.kn, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %7 = phi ptr [ %i.oe, %bb.ca ], [ %i.oe, %14 ], [ %i.oe, %bb.ch ], [ %i.ko, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %8 = phi ptr [ %i.of, %bb.ca ], [ %i.of, %14 ], [ %i.of, %bb.ch ], [ %i.kp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %9 = phi ptr [ %i.og, %bb.ca ], [ %i.og, %14 ], [ %i.og, %bb.ch ], [ %i.kq, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %10 = phi ptr [ %i.oh, %bb.ca ], [ %i.oh, %14 ], [ %i.oh, %bb.ch ], [ %i.kr, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %11 = phi ptr [ %i.oi, %bb.ca ], [ %i.oi, %14 ], [ %i.oi, %bb.ch ], [ %i.ks, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %12 = phi ptr [ %i.oj, %bb.ca ], [ %i.oj, %14 ], [ %i.oj, %bb.ch ], [ %i.kt, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %13 = phi ptr [ %i.ok, %bb.ca ], [ %i.ok, %14 ], [ %i.ok, %bb.ch ], [ %i.ku, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn21.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.om, %bb.ca ], [ %i.om, %14 ], [ %i.oy, %bb.ch ], [ %lpad.loopexit.split-lp120, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.na)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.by, !noalias !1413

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bt
  %lpad.loopexit.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i, %bb.bs
  %i.nb = phi ptr [ %i.kk, %bb.bs ], [ %i.oa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kk, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nc = phi ptr [ %i.kl, %bb.bs ], [ %i.ob, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kl, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nd = phi ptr [ %i.km, %bb.bs ], [ %i.oc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.km, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ne = phi ptr [ %i.kn, %bb.bs ], [ %i.od, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kn, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nf = phi ptr [ %i.ko, %bb.bs ], [ %i.oe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.ko, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ng = phi ptr [ %i.kp, %bb.bs ], [ %i.of, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kp, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nh = phi ptr [ %i.kq, %bb.bs ], [ %i.og, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.05.i.i.i.sroa.7.0.i.i.i.i.i.i.i = phi i8 [ undef, %bb.bs ], [ %.sroa.010.i.i.i.sroa.7.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.i.i.i.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.bs ], [ %.sroa.010.i.i.i.sroa.6.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.i.i.i.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ undef, %bb.bs ], [ %.sroa.010.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ni = phi ptr [ %i.kr, %bb.bs ], [ %i.oh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kr, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nj = phi ptr [ %i.ks, %bb.bs ], [ %i.oi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.ks, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.nk = phi ptr [ %i.kt, %bb.bs ], [ %i.oj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.kt, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nl = phi ptr [ %i.ku, %bb.bs ], [ %i.ok, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ %i.ku, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.bs ], [ %.sroa.312.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.2.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ -2, %bb.bs ], [ %i.ot, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i ], [ -2, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 568
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.nm)
          to label %bb.cm unwind label %bb.cj, !noalias !1413

bb.bx:                                            ; preds = %.noexc27.i.i.i.i.i.i.i.i.i.i
  %i.nn = getelementptr inbounds i8, ptr %i.mq, i64 -376
  %.sroa.745.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3648
  store ptr %i.nn, ptr %.sroa.745.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1412
  %.sroa.947.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3657
  store i8 0, ptr %.sroa.947.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1412
  br label %bb.bz

bb.by:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i, %bb.bi
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body32.i.i.i.i.i.i.i.i.i.i

.body32.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cc, %bb.by
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1413
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i, %bb.bo, %bb.bn, %bb.bi
  %i.np = phi ptr [ %i.pa, %bb.cj ], [ %3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kk, %bb.bn ], [ %i.kk, %bb.bi ], [ %i.kk, %bb.bo ]
  %i.nq = phi ptr [ %i.pb, %bb.cj ], [ %4, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kl, %bb.bn ], [ %i.kl, %bb.bi ], [ %i.kl, %bb.bo ]
  %i.nr = phi ptr [ %i.pc, %bb.cj ], [ %5, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.km, %bb.bn ], [ %i.km, %bb.bi ], [ %i.km, %bb.bo ]
  %i.ns = phi ptr [ %i.pd, %bb.cj ], [ %6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kn, %bb.bn ], [ %i.kn, %bb.bi ], [ %i.kn, %bb.bo ]
  %i.nt = phi ptr [ %i.pe, %bb.cj ], [ %7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ko, %bb.bn ], [ %i.ko, %bb.bi ], [ %i.ko, %bb.bo ]
  %i.nu = phi ptr [ %i.pf, %bb.cj ], [ %8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kp, %bb.bn ], [ %i.kp, %bb.bi ], [ %i.kp, %bb.bo ]
  %i.nv = phi ptr [ %i.pg, %bb.cj ], [ %9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %bb.bn ], [ %i.kq, %bb.bi ], [ %i.kq, %bb.bo ]
  %i.nw = phi ptr [ %i.ph, %bb.cj ], [ %10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kr, %bb.bn ], [ %i.kr, %bb.bi ], [ %i.kr, %bb.bo ]
  %i.nx = phi ptr [ %i.pi, %bb.cj ], [ %11, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ks, %bb.bn ], [ %i.ks, %bb.bi ], [ %i.ks, %bb.bo ]
  %i.ny = phi ptr [ %i.pj, %bb.cj ], [ %12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.kt, %bb.bn ], [ %i.kt, %bb.bi ], [ %i.kt, %bb.bo ]
  %i.nz = phi ptr [ %i.pk, %bb.cj ], [ %13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ku, %bb.bn ], [ %i.ku, %bb.bi ], [ %i.ku, %bb.bo ]
  %.pn24.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pl, %bb.cj ], [ %.pn21.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.li, %bb.bn ], [ %i.kx, %bb.bi ], [ %i.li, %bb.bo ]
  store i8 2, ptr %i.ny, align 8, !noalias !1412
  br label %.body.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx, %bb.bd
  %i.oa = phi ptr [ %i.kk, %bb.bx ], [ %.phi.trans.insert.i.i.i.i, %bb.bd ] ; 5 uses
  %i.ob = phi ptr [ %i.kl, %bb.bx ], [ %i.bw, %bb.bd ] ; 4 uses
  %i.oc = phi ptr [ %i.km, %bb.bx ], [ %.phi.trans.insert103.i.i.i.i.i, %bb.bd ] ; 5 uses
  %i.od = phi ptr [ %i.kn, %bb.bx ], [ %.phi.trans.insert.i.i.i.i.i.i, %bb.bd ] ; 5 uses
  %i.oe = phi ptr [ %i.ko, %bb.bx ], [ %i.ey, %bb.bd ] ; 4 uses
  %i.of = phi ptr [ %i.kp, %bb.bx ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.bd ] ; 5 uses
  %i.og = phi ptr [ %i.kq, %bb.bx ], [ %i.ia, %bb.bd ] ; 4 uses
  %i.oh = phi ptr [ %i.kr, %bb.bx ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.bd ] ; 5 uses
  %i.oi = phi ptr [ %i.ks, %bb.bx ], [ %i.iv, %bb.bd ] ; 4 uses
  %i.oj = phi ptr [ %i.kt, %bb.bx ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i.i, %bb.bd ] ; 5 uses
  %i.ok = phi ptr [ %i.ku, %bb.bx ], [ %i.jt, %bb.bd ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1412
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 592
  invoke fastcc void @_RNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtB4_18DynamicChannelPool6choose0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.x, ptr noundef nonnull align 8 %i.ol, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cd unwind label %bb.ca, !noalias !1413

bb.ca:                                            ; preds = %bb.bz
  %i.om = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1412
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 3657
  %i.oo = load i8, ptr %i.on, align 1, !range !23, !noalias !1412, !noundef !11
  %cond.i31.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.oo, 3
  br i1 %cond.i31.i.i.i.i.i.i.i.i.i.i, label %bb.cb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.op)
          to label %14 unwind label %bb.cc, !noalias !1413

bb.cc:                                            ; preds = %bb.cb
  %i.oq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 3656
  store i8 0, ptr %i.or, align 8, !noalias !1412
  br label %.body32.i.i.i.i.i.i.i.i.i.i

14:                                               ; preds = %bb.cb
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3656
  store i8 0, ptr %15, align 8, !noalias !1412
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.bz
  %i.os = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ot = load i32, ptr %i.os, align 8, !range !18, !noalias !1412, !noundef !11 ; 2 uses
  %i.ou = icmp eq i32 %i.ot, -2
  br i1 %i.ou, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1412
  br label %bb.cl

bb.cf:                                            ; preds = %bb.cd
  %.sroa.010.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !1412
  %.sroa.010.i.i.i.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.010.i.i.i.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.i.i.i.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1412
  %.sroa.010.i.i.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.010.i.i.i.sroa.7.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.010.i.i.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1412
  %.sroa.010.i.i.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.010.i.i.i.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.010.i.i.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1412
  %.sroa.312.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %.sroa.312.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.312.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1412
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 3657
  %i.ow = load i8, ptr %i.ov, align 1, !range !23, !noalias !1412, !noundef !11
  %cond.i34.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ow, 3
  br i1 %cond.i34.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 632
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ox)
          to label %bb.ci unwind label %bb.ch, !noalias !1413

bb.ch:                                            ; preds = %bb.cg
  %i.oy = landingpad { ptr, i32 }
          cleanup
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 3656
  store i8 0, ptr %16, align 8, !noalias !1412
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 3656
  store i8 0, ptr %i.oz, align 8, !noalias !1412
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit37.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i.i.i.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.010.i.i.i.sroa.8.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1412
  br label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i

bb.cj:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i, %bb.bq
  %i.pa = phi ptr [ %i.nb, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kk, %bb.bq ]
  %i.pb = phi ptr [ %i.nc, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kl, %bb.bq ]
  %i.pc = phi ptr [ %i.nd, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.km, %bb.bq ]
  %i.pd = phi ptr [ %i.ne, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kn, %bb.bq ]
  %i.pe = phi ptr [ %i.nf, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ko, %bb.bq ]
  %i.pf = phi ptr [ %i.ng, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kp, %bb.bq ]
  %i.pg = phi ptr [ %i.nh, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kq, %bb.bq ]
  %i.ph = phi ptr [ %i.ni, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kr, %bb.bq ]
  %i.pi = phi ptr [ %i.nj, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ks, %bb.bq ]
  %i.pj = phi ptr [ %i.nk, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.kt, %bb.bq ]
  %i.pk = phi ptr [ %i.nl, %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ku, %bb.bq ]
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.bg, %bb.bf
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.ck, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  %i.pn = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.ck ], [ %i.np, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.po = phi ptr [ %i.bw, %bb.ck ], [ %i.nq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pp = phi ptr [ %.phi.trans.insert103.i.i.i.i.i, %bb.ck ], [ %i.nr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pq = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i, %bb.ck ], [ %i.ns, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pr = phi ptr [ %i.ey, %bb.ck ], [ %i.nt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ps = phi ptr [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.ck ], [ %i.nu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pt = phi ptr [ %i.ia, %bb.ck ], [ %i.nv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pu = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.ck ], [ %i.nw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pv = phi ptr [ %i.iv, %bb.ck ], [ %i.nx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.pw = phi ptr [ %i.jt, %bb.ck ], [ %i.nz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %eh.lpad-body.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pm, %bb.ck ], [ %.pn24.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool18get_pooled_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.pw) #17
          to label %bb.ba unwind label %bb.ct, !noalias !1411

bb.cl:                                            ; preds = %bb.ce, %bb.bj
  %i.px = phi ptr [ %i.kk, %bb.bj ], [ %i.oa, %bb.ce ]
  %i.py = phi ptr [ %i.km, %bb.bj ], [ %i.oc, %bb.ce ]
  %i.pz = phi ptr [ %i.kn, %bb.bj ], [ %i.od, %bb.ce ]
  %i.qa = phi ptr [ %i.kp, %bb.bj ], [ %i.of, %bb.ce ]
  %i.qb = phi ptr [ %i.kr, %bb.bj ], [ %i.oh, %bb.ce ]
  %i.qc = phi ptr [ %i.kt, %bb.bj ], [ %i.oj, %bb.ce ]
  %.sink.i.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 3, %bb.bj ], [ 4, %bb.ce ]
  store i8 %.sink.i.ph.i.i.i.i.i.i.i.i.i, ptr %i.qc, align 8, !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i.i.sroa.8.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i.i.sroa.8.i.i.i.i.i.i.i)
  br label %bb.hy

bb.cm:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE3getB13_ECsgGgPqgSfnMH_7storage.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.036.i.i.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.05.i.i.i.sroa.8.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1410
  store i8 1, ptr %i.nk, align 8, !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i.i.sroa.8.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i.i.sroa.8.i.i.i.i.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool18get_pooled_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.nl)
          to label %bb.co unwind label %bb.cn, !noalias !1411

bb.cn:                                            ; preds = %bb.cm
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.co:                                            ; preds = %bb.cm
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.2.0.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.049.i.i.sroa.9.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.036.i.i.sroa.8.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1410
  br label %bb.hz

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045.i.i.i.i.i.i.i.i.i)
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.qf = load ptr, ptr %i.qe, align 8, !noalias !1410, !nonnull !11, !align !12, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1410
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.qh = load ptr, ptr %i.qg, align 8, !noalias !1410, !nonnull !11, !align !12, !noundef !11
  invoke fastcc void @_RNvXsr_NtCs577yCKf7gy3_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.y, ptr noundef nonnull align 8 %i.qh)
          to label %.thread78.i.i.i.i.i.i.i.i.i unwind label %bb.cr, !noalias !1411

bb.cr:                                            ; preds = %bb.cq
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1410
  br label %bb.cs

.thread78.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.045.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false), !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.nl, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.045.i.i.i.i.i.i.i.i.i, i64 88, i1 false), !noalias !1410
  %.sroa.746.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %i.qf, ptr %.sroa.746.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1410
  %.sroa.947.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 2 uses
  store i8 0, ptr %.sroa.947.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1410
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6115.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13121.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15123.i.i.i.i.i.i.i.i.i.i)
  br label %.thread.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.hv, %.body31.i.i.i.i.i.i.i.i.i, %bb.cr
  %i.qk = phi ptr [ %i.aqb, %bb.hv ], [ %i.apl, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.nb, %bb.cr ]
  %i.ql = phi ptr [ %i.aqc, %bb.hv ], [ %i.apm, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.nc, %bb.cr ]
  %i.qm = phi ptr [ %i.aqd, %bb.hv ], [ %i.apn, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.nd, %bb.cr ]
  %i.qn = phi ptr [ %i.aqe, %bb.hv ], [ %i.apo, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.ne, %bb.cr ]
  %i.qo = phi ptr [ %i.aqf, %bb.hv ], [ %i.app, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.nf, %bb.cr ]
  %i.qp = phi ptr [ %i.aqg, %bb.hv ], [ %i.apq, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.ng, %bb.cr ]
  %i.qq = phi ptr [ %i.aqh, %bb.hv ], [ %i.apr, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.nh, %bb.cr ]
  %i.qr = phi ptr [ %i.aqi, %bb.hv ], [ %i.aps, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.ni, %bb.cr ]
  %i.qs = phi ptr [ %i.aqj, %bb.hv ], [ %i.apt, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.nj, %bb.cr ]
  %.pn17.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aqm, %bb.hv ], [ %eh.lpad-body32.i.i.i.i.i.i.i.i.i, %.body31.i.i.i.i.i.i.i.i.i ], [ %i.qi, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i.i.i.i.i.i.i.i.i)
  br label %bb.ba

bb.ct:                                            ; preds = %.body31.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1411
  unreachable

bb.cu:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert65.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 760 ; 14 uses
  %.pre66.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, align 8, !range !28, !noalias !1420
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6115.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13121.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15123.i.i.i.i.i.i.i.i.i.i)
  switch i8 %.pre66.i.i.i.i.i.i.i.i.i, label %default.unreachable97 [
    i8 0, label %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i
    i8 1, label %bb.cw
    i8 2, label %bb.cx
    i8 3, label %bb.cy
    i8 4, label %bb.ec
    i8 5, label %bb.cv
    i8 6, label %bb.he
  ]

..thread.i.i_crit_edge.i.i.i.i.i.i.i.i:           ; preds = %bb.cu
  %.phi.trans.insert196.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  %.pre197.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert196.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  br label %.thread.i.i.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1420
  br label %bb.gh

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i, %.thread78.i.i.i.i.i.i.i.i.i
  %i.qv = phi ptr [ %i.nb, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.qw = phi ptr [ %i.nc, %.thread78.i.i.i.i.i.i.i.i.i ], [ %i.bw, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.qx = phi ptr [ %i.nd, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert103.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.qy = phi ptr [ %i.ne, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.qz = phi ptr [ %i.nf, %.thread78.i.i.i.i.i.i.i.i.i ], [ %i.ey, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.ra = phi ptr [ %i.ng, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.rb = phi ptr [ %i.nh, %.thread78.i.i.i.i.i.i.i.i.i ], [ %i.ia, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.rc = phi ptr [ %i.ni, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.rd = phi ptr [ %i.nj, %.thread78.i.i.i.i.i.i.i.i.i ], [ %i.iv, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.re = phi ptr [ %i.qf, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.pre197.i.i.i.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.rf = phi ptr [ %.sroa.947.0..sroa_idx.i.i.i.i.i.i.i.i.i, %.thread78.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ]
  %i.rg = phi ptr [ %i.qj, %.thread78.i.i.i.i.i.i.i.i.i ], [ %i.qu, %..thread.i.i_crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 761
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 762
  store i8 0, ptr %i.ri, align 2, !noalias !1420
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 640
  store ptr %i.re, ptr %i.rj, align 8, !noalias !1420
  store i8 1, ptr %i.rh, align 1, !noalias !1420
  %i.rk = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.rk, ptr noundef nonnull align 8 dereferenceable(88) %i.rg, i64 88, i1 false), !noalias !1420
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 208 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  store ptr %i.rl, ptr %i.rm, align 8, !noalias !1420
  %.sroa.8.0..sroa_idx.i28.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i28.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #20
          to label %.noexc29.i.i.i.i.i.i.i.i.i unwind label %bb.hs, !noalias !1421

.noexc29.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %bb.cu
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #20
          to label %.noexc30.i.i.i.i.i.i.i.i.i unwind label %bb.hs, !noalias !1421

end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneINtNtNtB7_10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB28_14ChannelService20await_commit_on_peer0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsgGgPqgSfnMH_7storage:bb.a
          to label %.body.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dn, !noalias !1426, !inline_history !2

bb.dl:                                            ; preds = %bb.di
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 792
  %.val.i.i.i.i26.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ty, align 8, !noalias !1424, !align !12, !noundef !11 ; 2 uses
  %i.tz = icmp eq ptr %.val.i.i.i.i26.i.i.i.i.i.i.i.i.i, null
  br i1 %i.tz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ua = getelementptr i8, ptr %1, i64 800
  %.val1.i.i.i.i27.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ua, align 8, !noalias !1424
  %i.ub = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i26.i.i.i.i.i.i.i.i.i, i64 24
  %i.uc = load ptr, ptr %i.ub, align 8, !noalias !1426, !nonnull !11, !noundef !11
  invoke void %i.uc(ptr noundef %.val1.i.i.i.i27.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.do, !noalias !1426, !inline_history !3

bb.dn:                                            ; preds = %bb.dk
  %i.ud = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1426
  unreachable

bb.do:                                            ; preds = %bb.dp, %bb.dm
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm, %bb.dl
  %i.uf = trunc nuw i8 %i.tp to i1
  br i1 %i.uf, label %bb.dp, label %bb.dv

bb.dp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20
          to label %.noexc11.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.do, !noalias !1426

.noexc11.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dg
  %i.ug = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1426
  unreachable

bb.dr:                                            ; preds = %bb.de, %bb.dd
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.dr, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ui = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.dr ], [ %i.sz, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uj = phi ptr [ %i.bw, %bb.dr ], [ %i.ta, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uk = phi ptr [ %.phi.trans.insert103.i.i.i.i.i, %bb.dr ], [ %i.tb, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ul = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i, %bb.dr ], [ %i.tc, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.um = phi ptr [ %i.ey, %bb.dr ], [ %i.td, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.un = phi ptr [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.dr ], [ %i.te, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uo = phi ptr [ %i.ia, %bb.dr ], [ %i.tf, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.up = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.dr ], [ %i.tg, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uq = phi ptr [ %i.iv, %bb.dr ], [ %i.th, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ur = phi ptr [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %bb.dr ], [ %i.ti, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.us = phi ptr [ %i.qu, %bb.dr ], [ %i.tj, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ut = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, %bb.dr ], [ %i.tk, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uu = phi ptr [ %i.rn, %bb.dr ], [ %i.tl, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uv = phi ptr [ %i.sd, %bb.dr ], [ %i.tn, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.uh, %bb.dr ], [ %.pn7.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEE5write00ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.uv) #17
          to label %.body10.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ds, !noalias !1427

bb.ds:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.uw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1427
  unreachable

bb.dt:                                            ; preds = %bb.da, %bb.cz
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.dt, %.body10.i.i.i.i.i.i.i.i.i.i.i
  %i.uy = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.dt ], [ %i.ui, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.uz = phi ptr [ %i.bw, %bb.dt ], [ %i.uj, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.va = phi ptr [ %.phi.trans.insert103.i.i.i.i.i, %bb.dt ], [ %i.uk, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vb = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i, %bb.dt ], [ %i.ul, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vc = phi ptr [ %i.ey, %bb.dt ], [ %i.um, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vd = phi ptr [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.dt ], [ %i.un, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ve = phi ptr [ %i.ia, %bb.dt ], [ %i.uo, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vf = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.dt ], [ %i.up, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vg = phi ptr [ %i.iv, %bb.dt ], [ %i.uq, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vh = phi ptr [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %bb.dt ], [ %i.ur, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vi = phi ptr [ %i.qu, %bb.dt ], [ %i.us, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vj = phi ptr [ %i.rn, %bb.dt ], [ %i.uu, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ux, %bb.dt ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %.body10.i.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEE5write0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.vj) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.eb, !noalias !1421

bb.du:                                            ; preds = %bb.dh
  store i8 3, ptr %i.tm, align 8, !noalias !1424
  store i8 3, ptr %i.tk, align 8, !noalias !1422
  br label %bb.ht

bb.dv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vk = load ptr, ptr %i.tn, align 8, !noalias !1424, !nonnull !11, !align !12, !noundef !11 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 40
  %i.vm = load i32, ptr %i.vl, align 8, !noalias !1426, !noundef !11
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 48 ; 2 uses
  store i8 1, ptr %i.tm, align 8, !noalias !1424
  store i8 1, ptr %i.tk, align 8, !noalias !1422
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 736
  store ptr %i.vk, ptr %i.vo, align 8, !noalias !1420
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 744
  store ptr %i.vn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.590.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i32 %i.vm, ptr %.sroa.590.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.vq = invoke noundef align 8 ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE7get_mutBO_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.vn, ptr noundef nonnull align 8 %i.vp)
          to label %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE7get_mutB13_ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.dw, !noalias !1421 ; 2 uses

bb.dw:                                            ; preds = %bb.dv
  %i.vr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i

_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE7get_mutB13_ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dv
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE7get_mutB13_ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0102.i.i.i.i.i.i.i.i.i.i)
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !1420, !nonnull !11, !align !12, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1420
  invoke fastcc void @_RNvXsr_NtCs577yCKf7gy3_4http3uriNtB5_3UriNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.w, ptr noundef nonnull align 8 %i.vp)
          to label %.thread219.i.i.i.i.i.i.i.i.i.i unwind label %bb.dy, !noalias !1421

bb.dy:                                            ; preds = %bb.dx
  %i.vu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1420
  br label %bb.dz

.thread219.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0102.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.tl, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0102.i.i.i.i.i.i.i.i.i.i, i64 88, i1 false), !noalias !1420
  store ptr %i.vt, ptr %i.tk, align 8, !noalias !1420
  %.sroa.10105.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4488 ; 2 uses
  store i8 0, ptr %.sroa.10105.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9108.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i.i.i.i.i.i.i.i)
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 768
  br label %bb.ed

bb.dz:                                            ; preds = %.body56.i.i.i.i.i.i.i.i.i.i, %bb.dy
  %i.vw = phi ptr [ %i.air, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.sz, %bb.dy ]
  %i.vx = phi ptr [ %i.ais, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.ta, %bb.dy ]
  %i.vy = phi ptr [ %i.ait, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.tb, %bb.dy ]
  %i.vz = phi ptr [ %i.aiu, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.tc, %bb.dy ]
  %i.wa = phi ptr [ %i.aiv, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.td, %bb.dy ]
  %i.wb = phi ptr [ %i.aiw, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.te, %bb.dy ]
  %i.wc = phi ptr [ %i.aix, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.tf, %bb.dy ]
  %i.wd = phi ptr [ %i.aiy, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.tg, %bb.dy ]
  %i.we = phi ptr [ %i.aiz, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.th, %bb.dy ]
  %i.wf = phi ptr [ %i.aja, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.ti, %bb.dy ]
  %i.wg = phi ptr [ %i.ajb, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.tj, %bb.dy ]
  %.pn23.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body57.i.i.i.i.i.i.i.i.i.i, %.body56.i.i.i.i.i.i.i.i.i.i ], [ %i.vu, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0102.i.i.i.i.i.i.i.i.i.i)
  br label %bb.gg

bb.ea:                                            ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE7get_mutB13_ECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.7164.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3824
  store ptr %i.vq, ptr %.sroa.7164.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.9166.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3833
  store i8 0, ptr %.sroa.9166.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1420
  br label %bb.he

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hn, %bb.hi, %bb.hf, %bb.gg, %bb.dw
  %i.wh = phi ptr [ %i.sz, %bb.dw ], [ %i.aka, %bb.gg ], [ %i.aoe, %bb.hi ], [ %i.aoe, %bb.hn ], [ %i.aoe, %bb.hf ]
  %i.wi = phi ptr [ %i.ta, %bb.dw ], [ %i.akb, %bb.gg ], [ %i.aof, %bb.hi ], [ %i.aof, %bb.hn ], [ %i.aof, %bb.hf ]
  %i.wj = phi ptr [ %i.tb, %bb.dw ], [ %i.akc, %bb.gg ], [ %i.aog, %bb.hi ], [ %i.aog, %bb.hn ], [ %i.aog, %bb.hf ]
  %i.wk = phi ptr [ %i.tc, %bb.dw ], [ %i.akd, %bb.gg ], [ %i.aoh, %bb.hi ], [ %i.aoh, %bb.hn ], [ %i.aoh, %bb.hf ]
  %i.wl = phi ptr [ %i.td, %bb.dw ], [ %i.ake, %bb.gg ], [ %i.aoi, %bb.hi ], [ %i.aoi, %bb.hn ], [ %i.aoi, %bb.hf ]
  %i.wm = phi ptr [ %i.te, %bb.dw ], [ %i.akf, %bb.gg ], [ %i.aoj, %bb.hi ], [ %i.aoj, %bb.hn ], [ %i.aoj, %bb.hf ]
  %i.wn = phi ptr [ %i.tf, %bb.dw ], [ %i.akg, %bb.gg ], [ %i.aok, %bb.hi ], [ %i.aok, %bb.hn ], [ %i.aok, %bb.hf ]
  %i.wo = phi ptr [ %i.tg, %bb.dw ], [ %i.akh, %bb.gg ], [ %i.aol, %bb.hi ], [ %i.aol, %bb.hn ], [ %i.aol, %bb.hf ]
  %i.wp = phi ptr [ %i.th, %bb.dw ], [ %i.aki, %bb.gg ], [ %i.aom, %bb.hi ], [ %i.aom, %bb.hn ], [ %i.aom, %bb.hf ]
  %i.wq = phi ptr [ %i.ti, %bb.dw ], [ %i.akj, %bb.gg ], [ %i.aon, %bb.hi ], [ %i.aon, %bb.hn ], [ %i.aon, %bb.hf ]
  %i.wr = phi ptr [ %i.tj, %bb.dw ], [ %i.akk, %bb.gg ], [ %i.aoo, %bb.hi ], [ %i.aoo, %bb.hn ], [ %i.aoo, %bb.hf ]
  %.pn30.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.vr, %bb.dw ], [ %.pn23.pn.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %i.aoq, %bb.hi ], [ %i.apc, %bb.hn ], [ %i.aoq, %bb.hf ]
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 736
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ws)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.eb, !noalias !1421

bb.eb:                                            ; preds = %bb.hr, %bb.hd, %bb.gv, %.body56.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body65.i.i.i.i.i.i.i.i.i.i

.body65.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.hh, %bb.gk, %bb.eb
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1421
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i
  %i.wu = phi ptr [ %i.amr, %bb.gz ], [ %i.wh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.uy, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wv = phi ptr [ %i.ams, %bb.gz ], [ %i.wi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.uz, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ww = phi ptr [ %i.amt, %bb.gz ], [ %i.wj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.va, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wx = phi ptr [ %i.amu, %bb.gz ], [ %i.wk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vb, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wy = phi ptr [ %i.amv, %bb.gz ], [ %i.wl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vc, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.wz = phi ptr [ %i.amw, %bb.gz ], [ %i.wm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vd, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xa = phi ptr [ %i.amx, %bb.gz ], [ %i.wn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.ve, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xb = phi ptr [ %i.amy, %bb.gz ], [ %i.wo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vf, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xc = phi ptr [ %i.amz, %bb.gz ], [ %i.wp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vg, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xd = phi ptr [ %i.ana, %bb.gz ], [ %i.wq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vh, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xe = phi ptr [ %i.anb, %bb.gz ], [ %i.wr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %i.vi, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn33.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.anc, %bb.gz ], [ %.pn30.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 761
  %i.xg = load i8, ptr %i.xf, align 1, !range !26, !noalias !1420, !noundef !11
  %i.xh = trunc nuw i8 %i.xg to i1
  br i1 %i.xh, label %bb.hr, label %bb.ha

bb.ec:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0102.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert198.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4488 ; 5 uses
  %.pre199.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert198.i.i.i.i.i.i.i.i.i.i, align 8, !range !23, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9108.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i.i.i.i.i.i.i.i.i)
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 5 uses
  switch i8 %.pre199.i.i.i.i.i.i.i.i.i.i, label %default.unreachable97 [
    i8 0, label %bb.ed
    i8 1, label %bb.ei
    i8 2, label %bb.ej
    i8 3, label %bb.ek
  ]

bb.ed:                                            ; preds = %bb.ec, %.thread219.i.i.i.i.i.i.i.i.i.i
  %i.xj = phi ptr [ %i.sz, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xk = phi ptr [ %i.ta, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %i.bw, %bb.ec ] ; 2 uses
  %i.xl = phi ptr [ %i.tb, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert103.i.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xm = phi ptr [ %i.tc, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xn = phi ptr [ %i.td, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %i.ey, %bb.ec ] ; 2 uses
  %i.xo = phi ptr [ %i.te, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xp = phi ptr [ %i.tf, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %i.ia, %bb.ec ] ; 2 uses
  %i.xq = phi ptr [ %i.tg, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xr = phi ptr [ %i.th, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %bb.ec ] ; 2 uses
  %i.xs = phi ptr [ %i.ti, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xt = phi ptr [ %i.tj, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %i.qu, %bb.ec ] ; 2 uses
  %i.xu = phi ptr [ %.sroa.10105.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert198.i.i.i.i.i.i.i.i.i.i, %bb.ec ] ; 2 uses
  %i.xv = phi ptr [ %i.vv, %.thread219.i.i.i.i.i.i.i.i.i.i ], [ %i.xi, %bb.ec ] ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.xx = load ptr, ptr %i.xw, align 8, !noalias !1428, !nonnull !11, !align !12, !noundef !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.xv, i64 88, i1 false), !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i.i.i.i.i)
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 184
  %i.xz = load i64, ptr %i.xy, align 8, !noalias !1429, !noundef !11 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 192
  %i.yb = load i32, ptr %i.ya, align 8, !range !31, !noalias !1429, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1428
  invoke fastcc void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigENtNtB7_5clone5Clone5cloneCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.xx)
          to label %.thread.i55.i.i.i.i.i.i.i.i.i.i unwind label %bb.ee, !noalias !1429

bb.ee:                                            ; preds = %bb.ed
  %i.yc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1428
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.p) #17
          to label %bb.eg unwind label %bb.ef, !noalias !1429

.thread.i55.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.ed
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 200
  %i.ye = load i64, ptr %i.yd, align 8, !range !1430, !noalias !1429, !noundef !11 ; 2 uses
  %.sroa.9.176..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i.i.i.i.i.i.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %.sroa.9.176..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.p, i64 88, i1 false), !alias.scope !1431, !noalias !1428
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.yf, ptr noundef nonnull align 8 dereferenceable(144) %i.o, i64 144, i1 false), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1428
  %.sroa.1221.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.1221.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.9.i.i.i.i.i.i.i.i.i.i.i, i64 92, i1 false), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i.i.i.i.i)
  %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  store i64 86400, ptr %.sroa.716.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  %.sroa.817.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1016
  store i32 0, ptr %.sroa.817.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  %.sroa.1019.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store i64 %i.xz, ptr %.sroa.1019.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  %.sroa.1120.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store i32 %i.yb, ptr %.sroa.1120.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  %.sroa.1322.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  store i64 1024, ptr %.sroa.1322.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  store i64 %i.ye, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4480 ; 2 uses
  store i8 0, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.353.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.550.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.548.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.el

bb.ef:                                            ; preds = %.body.i51.i.i.i.i.i.i.i.i.i.i, %bb.ee
  %i.yg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !1429
  unreachable

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.fz, %.body.i51.i.i.i.i.i.i.i.i.i.i, %bb.eg
  %i.yh = phi ptr [ %i.ahz, %bb.fz ], [ %i.ahl, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xj, %bb.eg ]
  %i.yi = phi ptr [ %i.aia, %bb.fz ], [ %i.ahm, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xk, %bb.eg ]
  %i.yj = phi ptr [ %i.aib, %bb.fz ], [ %i.ahn, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xl, %bb.eg ]
  %i.yk = phi ptr [ %i.aic, %bb.fz ], [ %i.aho, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xm, %bb.eg ]
  %i.yl = phi ptr [ %i.aid, %bb.fz ], [ %i.ahp, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xn, %bb.eg ]
  %i.ym = phi ptr [ %i.aie, %bb.fz ], [ %i.ahq, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xo, %bb.eg ]
  %i.yn = phi ptr [ %i.aif, %bb.fz ], [ %i.ahr, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xp, %bb.eg ]
  %i.yo = phi ptr [ %i.aig, %bb.fz ], [ %i.ahs, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xq, %bb.eg ]
  %i.yp = phi ptr [ %i.aih, %bb.fz ], [ %i.aht, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xr, %bb.eg ]
  %i.yq = phi ptr [ %i.aii, %bb.fz ], [ %i.ahu, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xs, %bb.eg ]
  %i.yr = phi ptr [ %i.aij, %bb.fz ], [ %i.ahv, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xt, %bb.eg ]
  %i.ys = phi ptr [ %i.aik, %bb.fz ], [ %i.ahw, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xu, %bb.eg ]
  %i.yt = phi ptr [ %i.ail, %bb.fz ], [ %i.ahx, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.xv, %bb.eg ]
  %.pn9.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aip, %bb.fz ], [ %eh.lpad-body.i52.i.i.i.i.i.i.i.i.i.i, %.body.i51.i.i.i.i.i.i.i.i.i.i ], [ %i.yc, %bb.eg ]
  store i8 2, ptr %i.ys, align 8, !noalias !1428
  br label %.body56.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.ec
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #20
          to label %.noexc58.i.i.i.i.i.i.i.i.i.i unwind label %bb.ga, !noalias !1429

.noexc58.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %bb.ec
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #20
          to label %.noexc59.i.i.i.i.i.i.i.i.i.i unwind label %bb.ga, !noalias !1429

.noexc59.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ej
  unreachable

bb.ek:                                            ; preds = %bb.ec
  %.phi.trans.insert.i48.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4480 ; 3 uses
  %.pre.i49.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i48.i.i.i.i.i.i.i.i.i.i, align 8, !range !23, !noalias !1432
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.353.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.550.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.548.i.i.i.i.i.i.i.i.i.i.i.i)
  switch i8 %.pre.i49.i.i.i.i.i.i.i.i.i.i, label %default.unreachable97 [
    i8 0, label %._crit_edge200.i.i.i.i.i.i.i.i.i.i
    i8 1, label %bb.eq
    i8 2, label %bb.er
    i8 3, label %bb.es
  ]

._crit_edge200.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ek
  %.phi.trans.insert201.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %.pre202.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert201.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1432
  %.phi.trans.insert203.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %.pre204.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert203.i.i.i.i.i.i.i.i.i.i, align 8, !range !31, !noalias !1432
  %.phi.trans.insert205.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %.pre206.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert205.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1432
  %.phi.trans.insert207.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.pre208.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert207.i.i.i.i.i.i.i.i.i.i, align 8, !range !31, !noalias !1432
  %.phi.trans.insert209.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.pre210.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert209.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1432
  %.phi.trans.insert211.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.pre212.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert211.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1432
  br label %bb.el

bb.el:                                            ; preds = %._crit_edge200.i.i.i.i.i.i.i.i.i.i, %.thread.i55.i.i.i.i.i.i.i.i.i.i
  %i.yv = phi ptr [ %i.xj, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yw = phi ptr [ %i.xk, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %i.bw, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yx = phi ptr [ %i.xl, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert103.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yy = phi ptr [ %i.xm, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.yz = phi ptr [ %i.xn, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %i.ey, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.za = phi ptr [ %i.xo, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zb = phi ptr [ %i.xp, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %i.ia, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zc = phi ptr [ %i.xq, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zd = phi ptr [ %i.xr, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ze = phi ptr [ %i.xs, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zf = phi ptr [ %i.xt, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %i.qu, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zg = phi ptr [ %i.xu, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.phi.trans.insert198.i.i.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zh = phi ptr [ %i.xv, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %i.xi, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zi = phi i64 [ %i.ye, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.pre212.i.i.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.zj = phi i64 [ 1024, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.pre210.i.i.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ]
  %i.zk = phi i32 [ %i.yb, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.pre208.i.i.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ]
  %i.zl = phi i64 [ %i.xz, %.thread.i55.i.i.i.i.i.i.i.i.i.i ], [ %.pre206.i.i.i.i.i.i.i.i.i.i, %._crit_edge200.i.i.i.i.i.i.i.i.i.i ]
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCsiHzErX7aQFk_12futures_util6future14try_maybe_doneINtB5_12TryMaybeDoneINtNtNtB7_10try_future11into_future10IntoFutureNCNvMNtNtCsPYQCUnoTxQ_10collection6shards15channel_serviceNtB28_14ChannelService20await_commit_on_peer0EENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsgGgPqgSfnMH_7storage:bb.a
  %.sroa.353.i.i.i.i.i.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.i.i.i.i.i.sroa.7.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.353.i.i.i.i.i.sroa.7.0.copyload.i.i.i.i.i.i.i, %bb.ff ] ; 2 uses
  %.sroa.353.i.i.i.i.i.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.3.i.i.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.353.i.i.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.ff ] ; 2 uses
  %.sroa.353.i.i.i.i.i.sroa.8.0.i.i.i.i.i.i.i = phi i8 [ %.sroa.3.i.i.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.353.i.i.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i, %bb.ff ] ; 2 uses
  %i.aig = phi ptr [ %i.acg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aav, %bb.ff ] ; 4 uses
  %i.aih = phi ptr [ %i.ach, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aaw, %bb.ff ] ; 3 uses
  %i.aii = phi ptr [ %i.aci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aax, %bb.ff ] ; 4 uses
  %i.aij = phi ptr [ %i.acj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aay, %bb.ff ] ; 3 uses
  %i.aik = phi ptr [ %i.ack, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aaz, %bb.ff ] ; 3 uses
  %i.ail = phi ptr [ %i.acl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aba, %bb.ff ] ; 3 uses
  %i.aim = phi ptr [ %i.acm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abb, %bb.ff ]
  %i.ain = phi ptr [ %i.acn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abc, %bb.ff ]
  %.sroa.758.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aef, %bb.ff ]
  %.sroa.657.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aed, %bb.ff ]
  %.sroa.555.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aeb, %bb.ff ]
  %.sroa.454.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adz, %bb.ff ]
  %.sroa.051.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ -2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel3tls15ClientTlsConfigEECsgGgPqgSfnMH_7storage.exit27.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ff ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.353.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9108.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !1448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.14.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i, i64 92, i1 false), !noalias !1448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %.sroa.16.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(111) %.sroa.550.i.i.i.i.i.i.i.i.i.i.i.i, i64 111, i1 false), !noalias !1448
  %i.aio = icmp eq i64 %.sroa.051.0.i.i.i.i.i.i.i.i.i.i.i.i, -3
  store i8 1, ptr %i.aim, align 8, !noalias !1432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.353.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.550.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.548.i.i.i.i.i.i.i.i.i.i.i.i)
  br i1 %i.aio, label %bb.gb, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool3new0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ain)
          to label %bb.gc unwind label %bb.fz, !noalias !1429

bb.fz:                                            ; preds = %bb.fy
  %i.aip = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.ga:                                            ; preds = %bb.ej, %bb.ei
  %i.aiq = landingpad { ptr, i32 }
          cleanup
  br label %.body56.i.i.i.i.i.i.i.i.i.i

.body56.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.ga, %bb.eh
  %i.air = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.ga ], [ %i.yh, %bb.eh ]
  %i.ais = phi ptr [ %i.bw, %bb.ga ], [ %i.yi, %bb.eh ]
  %i.ait = phi ptr [ %.phi.trans.insert103.i.i.i.i.i, %bb.ga ], [ %i.yj, %bb.eh ]
  %i.aiu = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i, %bb.ga ], [ %i.yk, %bb.eh ]
  %i.aiv = phi ptr [ %i.ey, %bb.ga ], [ %i.yl, %bb.eh ]
  %i.aiw = phi ptr [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.ga ], [ %i.ym, %bb.eh ]
  %i.aix = phi ptr [ %i.ia, %bb.ga ], [ %i.yn, %bb.eh ]
  %i.aiy = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.ga ], [ %i.yo, %bb.eh ]
  %i.aiz = phi ptr [ %i.iv, %bb.ga ], [ %i.yp, %bb.eh ]
  %i.aja = phi ptr [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %bb.ga ], [ %i.yq, %bb.eh ]
  %i.ajb = phi ptr [ %i.qu, %bb.ga ], [ %i.yr, %bb.eh ]
  %i.ajc = phi ptr [ %i.xi, %bb.ga ], [ %i.yt, %bb.eh ]
  %eh.lpad-body57.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aiq, %bb.ga ], [ %.pn9.i.i.i.i.i.i.i.i.i.i.i, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9108.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i.i.i.i.i.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool18__init_pool_for_uri0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ajc) #17
          to label %bb.dz unwind label %bb.eb, !noalias !1421

bb.gb:                                            ; preds = %bb.fx, %.thread29.i.i.i.i.i.i.i.i.i.i.i
  %i.ajd = phi ptr [ %i.abz, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahz, %bb.fx ]
  %i.aje = phi ptr [ %i.acb, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aib, %bb.fx ]
  %i.ajf = phi ptr [ %i.acc, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aic, %bb.fx ]
  %i.ajg = phi ptr [ %i.ace, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aie, %bb.fx ]
  %i.ajh = phi ptr [ %i.acg, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aig, %bb.fx ]
  %i.aji = phi ptr [ %i.aci, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aii, %bb.fx ]
  %i.ajj = phi ptr [ %i.ack, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aik, %bb.fx ]
  store i8 3, ptr %i.ajj, align 8, !noalias !1428
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9108.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0102.i.i.i.i.i.i.i.i.i.i)
  br label %bb.ht

bb.gc:                                            ; preds = %bb.fy
  store i8 1, ptr %i.aik, align 8, !noalias !1428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.i.i.sroa.9.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6115.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9108.i.i.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.13121.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.14.i.i.i.i.i.i.i.i.i.i, i64 92, i1 false), !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %.sroa.15123.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(111) %.sroa.16.i.i.i.i.i.i.i.i.i.i, i64 111, i1 false), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8107.i.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9108.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i.i.i.i.i.i.i.i.i)
  %i.ajk = icmp eq i64 %.sroa.051.0.i.i.i.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.ajk, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5126.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5126.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6115.i.i.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11132.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.11132.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.13121.i.i.i.i.i.i.i.i.i.i, i64 92, i1 false), !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13134.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %.sroa.13134.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(111) %.sroa.15123.i.i.i.i.i.i.i.i.i.i, i64 111, i1 false), !noalias !1420
  %i.ajl = getelementptr inbounds nuw i8, ptr %1, i64 762
  store i8 1, ptr %i.ajl, align 2, !noalias !1420
  store i64 %.sroa.051.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ail, align 8, !noalias !1420
  %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %.sroa.353.i.i.i.i.i.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.4125.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.4125.i.i.i.sroa.4.0..sroa.4125.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i64 %.sroa.353.i.i.i.i.i.sroa.7.0.i.i.i.i.i.i.i, ptr %.sroa.4125.i.i.i.sroa.4.0..sroa.4125.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.4125.i.i.i.sroa.5.0..sroa.4125.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 792
  store i8 %.sroa.353.i.i.i.i.i.sroa.8.0.i.i.i.i.i.i.i, ptr %.sroa.4125.i.i.i.sroa.5.0..sroa.4125.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.4125.i.i.i.sroa.6.0..sroa.4125.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4125.i.i.i.sroa.6.0..sroa.4125.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.i.i.sroa.9.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1396
  %.sroa.5126.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5126.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5126.i.i.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !1420
  %.sroa.6127.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  store i64 %.sroa.454.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6127.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.7128.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 920
  store i32 %.sroa.555.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.7128.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.9130.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 928
  store i64 %.sroa.657.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.9130.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.10131.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 936
  store i32 %.sroa.758.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.10131.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.11132.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.11132.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.11132.i.i.i.i.i.i.i.i.i.i, i64 92, i1 false), !noalias !1420
  %.sroa.12.0..sroa_idx133.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  store i8 0, ptr %.sroa.12.0..sroa_idx133.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.13134.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %.sroa.13134.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(111) %.sroa.13134.i.i.i.i.i.i.i.i.i.i, i64 111, i1 false), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5126.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11132.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13134.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0102.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1420
  %.sroa.8148.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4200
  store ptr %i.ail, ptr %.sroa.8148.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.10150.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4209
  store i8 0, ptr %.sroa.10150.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 1, !noalias !1420
  br label %bb.gh

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.sink.split.i.i.i.i.i.i.i.i.i.i.a: ; preds = %bb.gp, %bb.gj
  %.pn20.ph.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.alj, %bb.gp ], [ %i.aky, %bb.gj ]
  %i.ajm = getelementptr inbounds nuw i8, ptr %1, i64 4208
  store i8 0, ptr %i.ajm, align 8, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.ge:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.i.i.i.sroa.9.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0102.i.i.i.i.i.i.i.i.i.i)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gx, %bb.ge
  %i.ajn = phi ptr [ %i.ahz, %bb.ge ], [ %i.akm, %bb.gx ] ; 3 uses
  %i.ajo = phi ptr [ %i.aia, %bb.ge ], [ %i.akn, %bb.gx ] ; 3 uses
  %i.ajp = phi ptr [ %i.aib, %bb.ge ], [ %i.ako, %bb.gx ] ; 3 uses
  %i.ajq = phi ptr [ %i.aic, %bb.ge ], [ %i.akp, %bb.gx ] ; 3 uses
  %i.ajr = phi ptr [ %i.aid, %bb.ge ], [ %i.akq, %bb.gx ] ; 3 uses
  %i.ajs = phi ptr [ %i.aie, %bb.ge ], [ %i.akr, %bb.gx ] ; 3 uses
  %i.ajt = phi ptr [ %i.aif, %bb.ge ], [ %i.aks, %bb.gx ] ; 3 uses
  %.sroa.0168.i.i.i.sroa.10.2.i.i.i.i.i.i.i = phi i8 [ %.sroa.353.i.i.i.i.i.sroa.8.0.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.0152.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i, %bb.gx ]
  %.sroa.0168.i.i.i.sroa.9.2.i.i.i.i.i.i.i = phi i64 [ %.sroa.353.i.i.i.i.i.sroa.7.0.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.0152.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i, %bb.gx ]
  %.sroa.0168.i.i.i.sroa.0.2.i.i.i.i.i.i.i = phi ptr [ %.sroa.353.i.i.i.i.i.sroa.0.0.i.i.i.i.i.i.i, %bb.ge ], [ %.sroa.0152.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.gx ]
  %i.aju = phi ptr [ %i.aig, %bb.ge ], [ %i.akt, %bb.gx ] ; 3 uses
  %i.ajv = phi ptr [ %i.aih, %bb.ge ], [ %i.aku, %bb.gx ] ; 3 uses
  %i.ajw = phi ptr [ %i.aii, %bb.ge ], [ %i.akv, %bb.gx ] ; 3 uses
  %i.ajx = phi ptr [ %i.aij, %bb.ge ], [ %i.akw, %bb.gx ] ; 3 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 762
  store i8 0, ptr %i.ajy, align 2, !noalias !1420
  %i.ajz = getelementptr inbounds nuw i8, ptr %1, i64 736
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ajz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i unwind label %bb.gz, !noalias !1421

bb.gg:                                            ; preds = %bb.hd, %bb.gy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i, %bb.dz
  %i.aka = phi ptr [ %i.vw, %bb.dz ], [ %i.akm, %bb.gy ], [ %i.akm, %bb.hd ], [ %i.akm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akb = phi ptr [ %i.vx, %bb.dz ], [ %i.akn, %bb.gy ], [ %i.akn, %bb.hd ], [ %i.akn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akc = phi ptr [ %i.vy, %bb.dz ], [ %i.ako, %bb.gy ], [ %i.ako, %bb.hd ], [ %i.ako, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akd = phi ptr [ %i.vz, %bb.dz ], [ %i.akp, %bb.gy ], [ %i.akp, %bb.hd ], [ %i.akp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ake = phi ptr [ %i.wa, %bb.dz ], [ %i.akq, %bb.gy ], [ %i.akq, %bb.hd ], [ %i.akq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akf = phi ptr [ %i.wb, %bb.dz ], [ %i.akr, %bb.gy ], [ %i.akr, %bb.hd ], [ %i.akr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akg = phi ptr [ %i.wc, %bb.dz ], [ %i.aks, %bb.gy ], [ %i.aks, %bb.hd ], [ %i.aks, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akh = phi ptr [ %i.wd, %bb.dz ], [ %i.akt, %bb.gy ], [ %i.akt, %bb.hd ], [ %i.akt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.aki = phi ptr [ %i.we, %bb.dz ], [ %i.aku, %bb.gy ], [ %i.aku, %bb.hd ], [ %i.aku, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akj = phi ptr [ %i.wf, %bb.dz ], [ %i.akv, %bb.gy ], [ %i.akv, %bb.hd ], [ %i.akv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akk = phi ptr [ %i.wg, %bb.dz ], [ %i.akw, %bb.gy ], [ %i.akw, %bb.hd ], [ %i.akw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %.pn23.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn23.i.i.i.i.i.i.i.i.i.i, %bb.dz ], [ %i.amq, %bb.gy ], [ %.pn20.pn.i.i.i.i.i.i.i.i.i.i, %bb.hd ], [ %.pn20.pn.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.akl = getelementptr inbounds nuw i8, ptr %1, i64 762
  store i8 0, ptr %i.akl, align 2, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i

bb.gh:                                            ; preds = %bb.gd, %bb.cv
  %i.akm = phi ptr [ %i.ahz, %bb.gd ], [ %.phi.trans.insert.i.i.i.i, %bb.cv ] ; 6 uses
  %i.akn = phi ptr [ %i.aia, %bb.gd ], [ %i.bw, %bb.cv ] ; 5 uses
  %i.ako = phi ptr [ %i.aib, %bb.gd ], [ %.phi.trans.insert103.i.i.i.i.i, %bb.cv ] ; 6 uses
  %i.akp = phi ptr [ %i.aic, %bb.gd ], [ %.phi.trans.insert.i.i.i.i.i.i, %bb.cv ] ; 6 uses
  %i.akq = phi ptr [ %i.aid, %bb.gd ], [ %i.ey, %bb.cv ] ; 5 uses
  %i.akr = phi ptr [ %i.aie, %bb.gd ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.cv ] ; 6 uses
  %i.aks = phi ptr [ %i.aif, %bb.gd ], [ %i.ia, %bb.cv ] ; 5 uses
  %i.akt = phi ptr [ %i.aig, %bb.gd ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.cv ] ; 6 uses
  %i.aku = phi ptr [ %i.aih, %bb.gd ], [ %i.iv, %bb.cv ] ; 5 uses
  %i.akv = phi ptr [ %i.aii, %bb.gd ], [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %bb.cv ] ; 6 uses
  %i.akw = phi ptr [ %i.aij, %bb.gd ], [ %i.qu, %bb.cv ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1420
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 1144
  invoke fastcc void @_RNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtB4_18DynamicChannelPool6choose0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u, ptr noundef nonnull align 8 %i.akx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.gl unwind label %bb.gi, !noalias !1421

bb.gi:                                            ; preds = %bb.gh
  %i.aky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1420
  %i.akz = getelementptr inbounds nuw i8, ptr %1, i64 4209
  %i.ala = load i8, ptr %i.akz, align 1, !range !23, !noalias !1420, !noundef !11
  %cond.i64.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ala, 3
  br i1 %cond.i64.i.i.i.i.i.i.i.i.i.i, label %bb.gj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.alb = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.alb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.sink.split.i.i.i.i.i.i.i.i.i.i.a unwind label %bb.gk, !noalias !1421

bb.gk:                                            ; preds = %bb.gj
  %i.alc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4208
  store i8 0, ptr %17, align 8, !noalias !1420
  br label %.body65.i.i.i.i.i.i.i.i.i.i

bb.gl:                                            ; preds = %bb.gh
  %i.ald = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ale = load i32, ptr %i.ald, align 8, !range !18, !noalias !1420, !noundef !11 ; 4 uses
  %i.alf = icmp eq i32 %i.ale, -2
  br i1 %i.alf, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1420
  br label %bb.ht

bb.gn:                                            ; preds = %bb.gl
  %.sroa.0152.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !noalias !1420 ; 3 uses
  %.sroa.0152.i.i.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0152.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0152.i.i.i.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1420 ; 4 uses
  %.sroa.0152.i.i.i.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.0152.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.0152.i.i.i.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1420 ; 3 uses
  %.sroa.0152.i.i.i.sroa.12.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0152.i.i.i.sroa.12.0..sroa_idx.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1420
  %.sroa.5154.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.5154.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5154.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !1420 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1420
  %i.alg = getelementptr inbounds nuw i8, ptr %1, i64 4209
  %i.alh = load i8, ptr %i.alg, align 1, !range !23, !noalias !1420, !noundef !11
  %cond.i67.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.alh, 3
  br i1 %cond.i67.i.i.i.i.i.i.i.i.i.i, label %bb.go, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit70.i.i.i.i.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 1184
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ali)
          to label %bb.gq unwind label %bb.gp, !noalias !1421

bb.gp:                                            ; preds = %bb.go
  %i.alj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.sink.split.i.i.i.i.i.i.i.i.i.i.a

bb.gq:                                            ; preds = %bb.go
  %i.alk = getelementptr inbounds nuw i8, ptr %1, i64 4208
  store i8 0, ptr %i.alk, align 8, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit70.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit70.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gq, %bb.gn
  %i.all = icmp eq i32 %i.ale, -1
  br i1 %i.all, label %bb.gx, label %bb.gr

bb.gr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit70.i.i.i.i.i.i.i.i.i.i
  store ptr %.sroa.0152.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !1420
  %.sroa.0152.i.i.i.sroa.8.0..sroa_idx218.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store i64 %.sroa.0152.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.0152.i.i.i.sroa.8.0..sroa_idx218.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.0152.i.i.i.sroa.10.0..sroa_idx220.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 %.sroa.0152.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.0152.i.i.i.sroa.10.0..sroa_idx220.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.0152.i.i.i.sroa.12.0..sroa_idx222.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0152.i.i.i.sroa.12.0..sroa_idx222.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1420
  %.sroa.4156.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ale, ptr %.sroa.4156.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1420
  %.sroa.5157.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i32 %.sroa.5154.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5157.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1420
  %i.alm = getelementptr i8, ptr %1, i64 744
  %.val.i23.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.alm, align 8, !noalias !1420, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1420
  %i.aln = getelementptr inbounds nuw i8, ptr %1, i64 761
  store i8 0, ptr %i.aln, align 1, !noalias !1420
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(88) %i.alo, i64 88, i1 false), !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1420
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 762 ; 2 uses
  store i8 0, ptr %i.alp, align 2, !noalias !1420
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %i.r, ptr noundef nonnull align 8 dereferenceable(376) %i.alq, i64 376, i1 false), !noalias !1420
  %i.alr = inttoptr i64 %.sroa.0152.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i to ptr ; 2 uses
  invoke void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([376 x i8]) align 8 captures(none) dereferenceable(376) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i23.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(376) %i.r)
          to label %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6insertCsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.gs, !noalias !1421

bb.gs:                                            ; preds = %bb.gr
  %i.als = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1420
  br label %bb.gu

_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6insertCsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1420
  %i.alt = load i64, ptr %i.t, align 8, !range !1449, !alias.scope !1450, !noalias !1420, !noundef !11
  %i.alu = icmp eq i64 %i.alt, -2
  br i1 %i.alu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6insertCsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(376) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.gw, !noalias !1421

bb.gu:                                            ; preds = %bb.gw, %bb.gs
  %.pn18.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.alz, %bb.gw ], [ %i.als, %bb.gs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1420
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 64
  %i.alw = atomicrmw add ptr %i.alv, i64 -1 monotonic, align 8, !noalias !1451 ; 0 uses
  %i.alx = atomicrmw add ptr %i.alr, i64 -1 release, align 8, !noalias !1452
  %i.aly = icmp eq i64 %i.alx, 1
  br i1 %i.aly, label %bb.gv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

bb.gv:                                            ; preds = %bb.gu
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool13ItemWithStatsNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.0152.i.i.i.sroa.8.0..sroa_idx218.i.i.i.i.i.i.i) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.eb, !noalias !1421

bb.gw:                                            ; preds = %bb.gt
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gt, %_RNvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolE6insertCsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1420
  store i8 0, ptr %i.alp, align 2, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ho, %bb.hl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  %i.ama = phi ptr [ %i.akm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aoe, %bb.ho ], [ %i.aoe, %bb.hl ] ; 3 uses
  %i.amb = phi ptr [ %i.akn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aof, %bb.ho ], [ %i.aof, %bb.hl ] ; 3 uses
  %i.amc = phi ptr [ %i.ako, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aog, %bb.ho ], [ %i.aog, %bb.hl ] ; 3 uses
  %i.amd = phi ptr [ %i.akp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aoh, %bb.ho ], [ %i.aoh, %bb.hl ] ; 3 uses
  %i.ame = phi ptr [ %i.akq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aoi, %bb.ho ], [ %i.aoi, %bb.hl ] ; 3 uses
  %i.amf = phi ptr [ %i.akr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aoj, %bb.ho ], [ %i.aoj, %bb.hl ] ; 3 uses
  %i.amg = phi ptr [ %i.aks, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aok, %bb.ho ], [ %i.aok, %bb.hl ] ; 3 uses
  %.sroa.0168.i.i.i.sroa.10.0.i.i.i.i.i.i.i = phi i8 [ %.sroa.0152.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0168.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i, %bb.ho ], [ %.sroa.0168.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i, %bb.hl ]
  %.sroa.0168.i.i.i.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0152.i.i.i.sroa.8.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0168.i.i.i.sroa.9.0.copyload.i.i.i.i.i.i.i, %bb.ho ], [ %.sroa.0168.i.i.i.sroa.9.0.copyload.i.i.i.i.i.i.i, %bb.hl ]
  %.sroa.0168.i.i.i.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0152.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0168.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.ho ], [ %.sroa.0168.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.hl ]
  %i.amh = phi ptr [ %i.akt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aol, %bb.ho ], [ %i.aol, %bb.hl ] ; 3 uses
  %i.ami = phi ptr [ %i.aku, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aom, %bb.ho ], [ %i.aom, %bb.hl ] ; 3 uses
  %i.amj = phi ptr [ %i.akv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aon, %bb.ho ], [ %i.aon, %bb.hl ] ; 3 uses
  %i.amk = phi ptr [ %i.akw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aoo, %bb.ho ], [ %i.aoo, %bb.hl ] ; 3 uses
  %.sroa.5169.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ale, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.aox, %bb.ho ], [ %i.aox, %bb.hl ]
  %.sroa.7174.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5154.0.copyload.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7174.0.copyload178.i.i.i.i.i.i.i.i.i.i, %bb.ho ], [ %.sroa.7174.0.copyload178.i.i.i.i.i.i.i.i.i.i, %bb.hl ]
  %i.aml = getelementptr inbounds nuw i8, ptr %1, i64 736
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aml)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit75.i.i.i.i.i.i.i.i.i.i unwind label %bb.gz, !noalias !1421

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gv, %bb.gu, %bb.gi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.sink.split.i.i.i.i.i.i.i.i.i.i.a
  %.pn20.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn18.i.i.i.i.i.i.i.i.i.i, %bb.gu ], [ %.pn18.i.i.i.i.i.i.i.i.i.i, %bb.gv ], [ %i.aky, %bb.gi ], [ %.pn20.ph.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit.sink.split.i.i.i.i.i.i.i.i.i.i.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1420
  %i.amm = getelementptr inbounds nuw i8, ptr %1, i64 762
  %i.amn = load i8, ptr %i.amm, align 2, !range !26, !noalias !1420, !noundef !11
  %i.amo = trunc nuw i8 %i.amn to i1
  br i1 %i.amo, label %bb.hd, label %bb.gg

bb.gx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit70.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1420
  %i.amp = getelementptr inbounds nuw i8, ptr %1, i64 768
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(376) %i.amp)
          to label %bb.gf unwind label %bb.gy, !noalias !1421

bb.gy:                                            ; preds = %bb.gx
  %i.amq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.gz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i, %bb.gf
  %i.amr = phi ptr [ %i.ama, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajn, %bb.gf ]
  %i.ams = phi ptr [ %i.amb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajo, %bb.gf ]
  %i.amt = phi ptr [ %i.amc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajp, %bb.gf ]
  %i.amu = phi ptr [ %i.amd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajq, %bb.gf ]
  %i.amv = phi ptr [ %i.ame, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajr, %bb.gf ]
  %i.amw = phi ptr [ %i.amf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajs, %bb.gf ]
  %i.amx = phi ptr [ %i.amg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajt, %bb.gf ]
  %i.amy = phi ptr [ %i.amh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.aju, %bb.gf ]
  %i.amz = phi ptr [ %i.ami, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajv, %bb.gf ]
  %i.ana = phi ptr [ %i.amj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajw, %bb.gf ]
  %i.anb = phi ptr [ %i.amk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i ], [ %i.ajx, %bb.gf ]
  %i.anc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gf
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 648
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.and)
          to label %bb.hc unwind label %bb.hb, !noalias !1421

bb.ha:                                            ; preds = %bb.hr, %bb.hb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  %i.ane = phi ptr [ %i.anq, %bb.hb ], [ %i.wu, %bb.hr ], [ %i.wu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.anf = phi ptr [ %i.anr, %bb.hb ], [ %i.wv, %bb.hr ], [ %i.wv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ang = phi ptr [ %i.ans, %bb.hb ], [ %i.ww, %bb.hr ], [ %i.ww, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.anh = phi ptr [ %i.ant, %bb.hb ], [ %i.wx, %bb.hr ], [ %i.wx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ani = phi ptr [ %i.anu, %bb.hb ], [ %i.wy, %bb.hr ], [ %i.wy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.anj = phi ptr [ %i.anv, %bb.hb ], [ %i.wz, %bb.hr ], [ %i.wz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ank = phi ptr [ %i.anw, %bb.hb ], [ %i.xa, %bb.hr ], [ %i.xa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.anl = phi ptr [ %i.anx, %bb.hb ], [ %i.xb, %bb.hr ], [ %i.xb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.anm = phi ptr [ %i.any, %bb.hb ], [ %i.xc, %bb.hr ], [ %i.xc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ann = phi ptr [ %i.anz, %bb.hb ], [ %i.xd, %bb.hr ], [ %i.xd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ano = phi ptr [ %i.aoa, %bb.hb ], [ %i.xe, %bb.hr ], [ %i.xe, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %.pn35.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aob, %bb.hb ], [ %.pn33.i.i.i.i.i.i.i.i.i.i, %bb.hr ], [ %.pn33.i.i.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 761
  store i8 0, ptr %i.anp, align 1, !noalias !1420
  store i8 2, ptr %i.ann, align 8, !noalias !1420
  br label %.body31.i.i.i.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.hq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i
  %i.anq = phi ptr [ %i.ama, %bb.hq ], [ %i.ajn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.anr = phi ptr [ %i.amb, %bb.hq ], [ %i.ajo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.ans = phi ptr [ %i.amc, %bb.hq ], [ %i.ajp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.ant = phi ptr [ %i.amd, %bb.hq ], [ %i.ajq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.anu = phi ptr [ %i.ame, %bb.hq ], [ %i.ajr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.anv = phi ptr [ %i.amf, %bb.hq ], [ %i.ajs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.anw = phi ptr [ %i.amg, %bb.hq ], [ %i.ajt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.anx = phi ptr [ %i.amh, %bb.hq ], [ %i.aju, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.any = phi ptr [ %i.ami, %bb.hq ], [ %i.ajv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.anz = phi ptr [ %i.amj, %bb.hq ], [ %i.ajw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.aoa = phi ptr [ %i.amk, %bb.hq ], [ %i.ajx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i ]
  %i.aob = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.hc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit63.i.i.i.i.i.i.i.i.i.i
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 761
  store i8 0, ptr %i.aoc, align 1, !noalias !1420
  br label %bb.hu

bb.hd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  %i.aod = getelementptr inbounds nuw i8, ptr %1, i64 768
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(376) %i.aod) #17
          to label %bb.gg unwind label %bb.eb, !noalias !1421

bb.he:                                            ; preds = %bb.ea, %bb.cu
  %i.aoe = phi ptr [ %i.sz, %bb.ea ], [ %.phi.trans.insert.i.i.i.i, %bb.cu ] ; 6 uses
  %i.aof = phi ptr [ %i.ta, %bb.ea ], [ %i.bw, %bb.cu ] ; 5 uses
  %i.aog = phi ptr [ %i.tb, %bb.ea ], [ %.phi.trans.insert103.i.i.i.i.i, %bb.cu ] ; 6 uses
  %i.aoh = phi ptr [ %i.tc, %bb.ea ], [ %.phi.trans.insert.i.i.i.i.i.i, %bb.cu ] ; 6 uses
  %i.aoi = phi ptr [ %i.td, %bb.ea ], [ %i.ey, %bb.cu ] ; 5 uses
  %i.aoj = phi ptr [ %i.te, %bb.ea ], [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.cu ] ; 6 uses
  %i.aok = phi ptr [ %i.tf, %bb.ea ], [ %i.ia, %bb.cu ] ; 5 uses
  %i.aol = phi ptr [ %i.tg, %bb.ea ], [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.cu ] ; 6 uses
  %i.aom = phi ptr [ %i.th, %bb.ea ], [ %i.iv, %bb.cu ] ; 5 uses
  %i.aon = phi ptr [ %i.ti, %bb.ea ], [ %.phi.trans.insert65.i.i.i.i.i.i.i.i.i, %bb.cu ] ; 6 uses
  %i.aoo = phi ptr [ %i.tj, %bb.ea ], [ %i.qu, %bb.cu ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1420
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 768
  invoke fastcc void @_RNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtB4_18DynamicChannelPool6choose0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.q, ptr noundef nonnull align 8 %i.aop, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hj unwind label %bb.hf, !noalias !1421

bb.hf:                                            ; preds = %bb.he
  %i.aoq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1420
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 3833
  %i.aos = load i8, ptr %i.aor, align 1, !range !23, !noalias !1420, !noundef !11
  %cond.i76.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aos, 3
  br i1 %cond.i76.i.i.i.i.i.i.i.i.i.i, label %bb.hg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i

bb.hg:                                            ; preds = %bb.hf
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.aot)
          to label %bb.hi unwind label %bb.hh, !noalias !1421

bb.hh:                                            ; preds = %bb.hg
  %i.aou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3832
  store i8 0, ptr %18, align 8, !noalias !1420
  br label %.body65.i.i.i.i.i.i.i.i.i.i

bb.hi:                                            ; preds = %bb.hg
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 3832
  store i8 0, ptr %i.aov, align 8, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i

bb.hj:                                            ; preds = %bb.he
  %i.aow = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aox = load i32, ptr %i.aow, align 8, !range !18, !noalias !1420, !noundef !11 ; 3 uses
  %i.aoy = icmp eq i32 %i.aox, -2
  br i1 %i.aoy, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1420
  br label %bb.ht

bb.hl:                                            ; preds = %bb.hj
  %.sroa.0168.i.i.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !1420 ; 2 uses
  %.sroa.0168.i.i.i.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0168.i.i.i.sroa.9.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.0168.i.i.i.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1420 ; 2 uses
  %.sroa.0168.i.i.i.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0168.i.i.i.sroa.10.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.0168.i.i.i.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1420 ; 2 uses
  %.sroa.0168.i.i.i.sroa.11.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0168.i.i.i.sroa.11.0..sroa_idx.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1420
  %.sroa.7174.0..sroa_idx177.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %.sroa.7174.0.copyload178.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.7174.0..sroa_idx177.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !1420 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1420
  %i.aoz = getelementptr inbounds nuw i8, ptr %1, i64 3833
  %i.apa = load i8, ptr %i.aoz, align 1, !range !23, !noalias !1420, !noundef !11
  %cond.i80.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.apa, 3
  br i1 %cond.i80.i.i.i.i.i.i.i.i.i.i, label %bb.hm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 808
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool17make_grpc_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.apb)
          to label %bb.ho unwind label %bb.hn, !noalias !1421

bb.hn:                                            ; preds = %bb.hm
  %i.apc = landingpad { ptr, i32 }
          cleanup
  %i.apd = getelementptr inbounds nuw i8, ptr %1, i64 3832
  store i8 0, ptr %i.apd, align 8, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit79.i.i.i.i.i.i.i.i.i.i

bb.ho:                                            ; preds = %bb.hm
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 3832
  store i8 0, ptr %i.ape, align 8, !noalias !1420
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit75.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_poolNtBG_18DynamicChannelPool6choose0ECsgGgPqgSfnMH_7storage.exit83.i.i.i.i.i.i.i.i.i.i
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 761 ; 2 uses
  %i.apg = load i8, ptr %i.apf, align 1, !range !26, !noalias !1420, !noundef !11
  %i.aph = trunc nuw i8 %i.apg to i1
  br i1 %i.aph, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.hq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit75.i.i.i.i.i.i.i.i.i.i
  store i8 0, ptr %i.apf, align 1, !noalias !1420
  br label %bb.hu

bb.hq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit75.i.i.i.i.i.i.i.i.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 648
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.api)
          to label %bb.hp unwind label %bb.hb, !noalias !1421

bb.hr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guard16RwLockWriteGuardINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs577yCKf7gy3_4http3uri3UriNtNtNtCshMzyYDJGtjv_3api4grpc20dynamic_channel_pool18DynamicChannelPoolEEECsgGgPqgSfnMH_7storage.exit.i.i.i.i.i.i.i.i.i.i
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 648
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(88) %i.apj) #17
          to label %bb.ha unwind label %bb.eb, !noalias !1421

bb.hs:                                            ; preds = %bb.cx, %bb.cw
  %i.apk = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i.i.i.i.i.i.i.i.i

.body31.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.hs, %bb.ha
  %i.apl = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.hs ], [ %i.ane, %bb.ha ]
  %i.apm = phi ptr [ %i.bw, %bb.hs ], [ %i.anf, %bb.ha ]
  %i.apn = phi ptr [ %.phi.trans.insert103.i.i.i.i.i, %bb.hs ], [ %i.ang, %bb.ha ]
  %i.apo = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i, %bb.hs ], [ %i.anh, %bb.ha ]
  %i.app = phi ptr [ %i.ey, %bb.hs ], [ %i.ani, %bb.ha ]
  %i.apq = phi ptr [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.hs ], [ %i.anj, %bb.ha ]
  %i.apr = phi ptr [ %i.ia, %bb.hs ], [ %i.ank, %bb.ha ]
  %i.aps = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i.i.i, %bb.hs ], [ %i.anl, %bb.ha ]
  %i.apt = phi ptr [ %i.iv, %bb.hs ], [ %i.anm, %bb.ha ]
  %i.apu = phi ptr [ %i.qu, %bb.hs ], [ %i.ano, %bb.ha ]
  %eh.lpad-body32.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.apk, %bb.hs ], [ %.pn35.i.i.i.i.i.i.i.i.i.i, %bb.ha ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool17init_pool_for_uri0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.apu) #17
          to label %bb.cs unwind label %bb.ct, !noalias !1411

bb.ht:                                            ; preds = %bb.hk, %bb.gm, %bb.gb, %bb.du
  %i.apv = phi ptr [ %i.sz, %bb.du ], [ %i.ajd, %bb.gb ], [ %i.akm, %bb.gm ], [ %i.aoe, %bb.hk ]
  %i.apw = phi ptr [ %i.tb, %bb.du ], [ %i.aje, %bb.gb ], [ %i.ako, %bb.gm ], [ %i.aog, %bb.hk ]
  %i.apx = phi ptr [ %i.tc, %bb.du ], [ %i.ajf, %bb.gb ], [ %i.akp, %bb.gm ], [ %i.aoh, %bb.hk ]
  %i.apy = phi ptr [ %i.te, %bb.du ], [ %i.ajg, %bb.gb ], [ %i.akr, %bb.gm ], [ %i.aoj, %bb.hk ]
  %i.apz = phi ptr [ %i.tg, %bb.du ], [ %i.ajh, %bb.gb ], [ %i.akt, %bb.gm ], [ %i.aol, %bb.hk ]
  %i.aqa = phi ptr [ %i.ti, %bb.du ], [ %i.aji, %bb.gb ], [ %i.akv, %bb.gm ], [ %i.aon, %bb.hk ]
  %.sink.i21.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 3, %bb.du ], [ 4, %bb.gb ], [ 5, %bb.gm ], [ 6, %bb.hk ]
  store i8 %.sink.i21.ph.i.i.i.i.i.i.i.i.i, ptr %i.aqa, align 8, !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6115.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13121.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15123.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i.i.i.i.i.i.i.i.i)
  br label %bb.hy

bb.hu:                                            ; preds = %bb.hp, %bb.hc
  %i.aqb = phi ptr [ %i.ajn, %bb.hc ], [ %i.ama, %bb.hp ] ; 2 uses
  %i.aqc = phi ptr [ %i.ajo, %bb.hc ], [ %i.amb, %bb.hp ] ; 2 uses
  %i.aqd = phi ptr [ %i.ajp, %bb.hc ], [ %i.amc, %bb.hp ] ; 2 uses
  %i.aqe = phi ptr [ %i.ajq, %bb.hc ], [ %i.amd, %bb.hp ] ; 2 uses
  %i.aqf = phi ptr [ %i.ajr, %bb.hc ], [ %i.ame, %bb.hp ] ; 2 uses
  %i.aqg = phi ptr [ %i.ajs, %bb.hc ], [ %i.amf, %bb.hp ] ; 2 uses
  %i.aqh = phi ptr [ %i.ajt, %bb.hc ], [ %i.amg, %bb.hp ] ; 2 uses
  %.sroa.0168.i.i.i.sroa.10.1.i.i.i.i.i.i.i = phi i8 [ %.sroa.0168.i.i.i.sroa.10.2.i.i.i.i.i.i.i, %bb.hc ], [ %.sroa.0168.i.i.i.sroa.10.0.i.i.i.i.i.i.i, %bb.hp ]
  %.sroa.0168.i.i.i.sroa.9.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.0168.i.i.i.sroa.9.2.i.i.i.i.i.i.i, %bb.hc ], [ %.sroa.0168.i.i.i.sroa.9.0.i.i.i.i.i.i.i, %bb.hp ]
  %.sroa.0168.i.i.i.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.0168.i.i.i.sroa.0.2.i.i.i.i.i.i.i, %bb.hc ], [ %.sroa.0168.i.i.i.sroa.0.0.i.i.i.i.i.i.i, %bb.hp ]
  %i.aqi = phi ptr [ %i.aju, %bb.hc ], [ %i.amh, %bb.hp ] ; 2 uses
  %i.aqj = phi ptr [ %i.ajv, %bb.hc ], [ %i.ami, %bb.hp ] ; 2 uses
  %i.aqk = phi ptr [ %i.ajw, %bb.hc ], [ %i.amj, %bb.hp ]
  %i.aql = phi ptr [ %i.ajx, %bb.hc ], [ %i.amk, %bb.hp ]
  %.sroa.5169.2.i.i.i.i.i.i.i.i.i.i = phi i32 [ -1, %bb.hc ], [ %.sroa.5169.1.i.i.i.i.i.i.i.i.i.i, %bb.hp ]
  %.sroa.7174.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.hc ], [ %.sroa.7174.0.i.i.i.i.i.i.i.i.i.i, %bb.hp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.049.i.i.sroa.9.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1410
  store i8 1, ptr %i.aqk, align 8, !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0168.i.i.i.sroa.11.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0152.i.i.i.sroa.12.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6115.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13121.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15123.i.i.i.i.i.i.i.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool17init_pool_for_uri0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.aql)
          to label %bb.hw unwind label %bb.hv, !noalias !1411

bb.hv:                                            ; preds = %bb.hu
  %i.aqm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.hw:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.045.i.i.i.i.i.i.i.i.i)
  br label %bb.hz

bb.hx:                                            ; preds = %bb.bc, %bb.bb
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.hx, %bb.ba
  %i.aqo = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.hx ], [ %i.jk, %bb.ba ]
  %i.aqp = phi ptr [ %i.bw, %bb.hx ], [ %i.jl, %bb.ba ]
  %i.aqq = phi ptr [ %.phi.trans.insert103.i.i.i.i.i, %bb.hx ], [ %i.jm, %bb.ba ]
  %i.aqr = phi ptr [ %.phi.trans.insert.i.i.i.i.i.i, %bb.hx ], [ %i.jn, %bb.ba ]
  %i.aqs = phi ptr [ %i.ey, %bb.hx ], [ %i.jo, %bb.ba ]
  %i.aqt = phi ptr [ %.phi.trans.insert278.i.i.i.i.i.i.i, %bb.hx ], [ %i.jp, %bb.ba ]
  %i.aqu = phi ptr [ %i.ia, %bb.hx ], [ %i.jq, %bb.ba ]
  %i.aqv = phi ptr [ %i.iv, %bb.hx ], [ %i.js, %bb.ba ]
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aqn, %bb.hx ], [ %.pn17.pn.i.i.i.i.i.i.i.i.i, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0104.i.sroa.9.i.i.i.i.i.i.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs1_NtNtCshMzyYDJGtjv_3api4grpc22transport_channel_poolNtBJ_20TransportChannelPool28get_or_create_pooled_channel0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.aqv) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCshMzyYDJGtjv_3api4grpc12dynamic_pool11CountedItemNtNtNtCsgOCJwUSa4vG_5tonic9transport7channel7ChannelEECsgGgPqgSfnMH_7storage.exit96.i.i.i.i.i.i.i.i unwind label %bb.ii, !noalias !1409

bb.hy:                                            ; preds = %bb.ht, %bb.cl
  %i.aqw = phi ptr [ %i.px, %bb.cl ], [ %i.apv, %bb.ht ]
  %i.aqx = phi ptr [ %i.py, %bb.cl ], [ %i.apw, %bb.ht ]
  %i.aqy = phi ptr [ %i.pz, %bb.cl ], [ %i.apx, %bb.ht ]
  %i.aqz = phi ptr [ %i.qa, %bb.cl ], [ %i.apy, %bb.ht ]
  %i.ara = phi ptr [ %i.qb, %bb.cl ], [ %i.apz, %bb.ht ]
  %.sink.i.ph.i.i.i.i.i.i.i.i = phi i8 [ 3, %bb.cl ], [ 4, %bb.ht ]
  store i8 %.sink.i.ph.i.i.i.i.i.i.i.i, ptr %i.ara, align 8, !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.049.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.i.i.sroa.8.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0104.i.sroa.9.i.i.i.i.i.i.i)
  br label %bb.kx

bb.hz:                                            ; preds = %bb.hw, %bb.cp
  %i.arb = phi ptr [ %i.aqb, %bb.hw ], [ %i.nb, %bb.cp ] ; 4 uses
  %i.arc = phi ptr [ %i.aqc, %bb.hw ], [ %i.nc, %bb.cp ] ; 4 uses
  %i.ard = phi ptr [ %i.aqd, %bb.hw ], [ %i.nd, %bb.cp ] ; 4 uses
  %i.are = phi ptr [ %i.aqe, %bb.hw ], [ %i.ne, %bb.cp ] ; 4 uses
  %i.arf = phi ptr [ %i.aqf, %bb.hw ], [ %i.nf, %bb.cp ] ; 4 uses
  %i.arg = phi ptr [ %i.aqg, %bb.hw ], [ %i.ng, %bb.cp ] ; 4 uses
  %i.arh = phi ptr [ %i.aqh, %bb.hw ], [ %i.nh, %bb.cp ] ; 4 uses
  %.sroa.049.i.i.sroa.8.0.i.i.i.i.i.i.i = phi i8 [ %.sroa.0168.i.i.i.sroa.10.1.i.i.i.i.i.i.i, %bb.hw ], [ %.sroa.05.i.i.i.sroa.7.0.i.i.i.i.i.i.i, %bb.cp ] ; 2 uses
  %.sroa.049.i.i.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0168.i.i.i.sroa.9.1.i.i.i.i.i.i.i, %bb.hw ], [ %.sroa.05.i.i.i.sroa.6.0.i.i.i.i.i.i.i, %bb.cp ] ; 3 uses
  %.sroa.049.i.i.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0168.i.i.i.sroa.0.1.i.i.i.i.i.i.i, %bb.hw ], [ %.sroa.05.i.i.i.sroa.0.0.i.i.i.i.i.i.i, %bb.cp ] ; 2 uses
  %i.ari = phi ptr [ %i.aqi, %bb.hw ], [ %i.ni, %bb.cp ]
  %i.arj = phi ptr [ %i.aqj, %bb.hw ], [ %i.nj, %bb.cp ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7174.1.i.i.i.i.i.i.i.i.i.i, %bb.hw ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %bb.cp ]
  %.sroa.36.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.5169.2.i.i.i.i.i.i.i.i.i.i, %bb.hw ], [ %.sroa.2.0.i.i.i.i.i.i.i.i.i.i, %bb.cp ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0104.i.sroa.9.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.049.i.i.sroa.9.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1453
  store i8 1, ptr %i.ari, align 8, !noalias !1410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.049.i.i.sroa.9.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.036.i.i.sroa.8.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.i.sroa.7.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0104.i.sroa.9.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1407
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0104.i.sroa.9.i.i.i.i.i.i.i)
  %i.ark = icmp eq i32 %.sroa.36.0.i.i.i.i.i.i.i.i.i, -1
  br i1 %i.ark, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.i.sroa.7.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !1407
end_hunk_2
