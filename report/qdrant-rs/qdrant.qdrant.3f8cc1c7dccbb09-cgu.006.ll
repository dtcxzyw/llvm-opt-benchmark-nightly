Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.006?download=true
inline.NumInlined: 9333
inline.NumDeleted: 3748
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet6update0Csl8OoimOLbh_6qdrant:bb.a
  unreachable

bb.au:                                            ; preds = %.body496.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit280.i
  %i.in = phi ptr [ %i.aop, %.body496.i ], [ %i.gy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit280.i ] ; 2 uses
  %i.io = phi ptr [ %i.aoq, %.body496.i ], [ %i.gz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit280.i ] ; 2 uses
  %.pn213.pn.i = phi { ptr, i32 } [ %.pn213.i, %.body496.i ], [ %.pn44.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsPYQCUnoTxQ_10collection6shards12remote_shard11RemoteShardEEECsl8OoimOLbh_6qdrant.exit280.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 1817
  %i.iq = load i8, ptr %i.ip, align 1, !range !28, !noalias !13101, !noundef !17
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.nz, label %bb.mh

bb.av:                                            ; preds = %bb.as, %bb.u
  %i.is = phi ptr [ %i.gy, %bb.as ], [ %i.fv, %bb.u ] ; 19 uses
  %i.it = phi ptr [ %i.gz, %bb.as ], [ %i.fu, %bb.u ] ; 18 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 1832 ; 3 uses
  %i.iv = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.iu, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ax unwind label %bb.aw, !noalias !13102 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.iu) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i unwind label %bb.at, !noalias !13102

bb.ax:                                            ; preds = %bb.av
  %i.ix = extractvalue { ptr, ptr } %i.iv, 0      ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %.thread275, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iz = extractvalue { ptr, ptr } %i.iv, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 1820
  store i8 1, ptr %i.ja, align 4, !noalias !13101
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 1360
  store ptr %i.ix, ptr %i.jb, align 8, !noalias !13101
  %i.jc = getelementptr i8, ptr %1, i64 1368      ; 4 uses
  store ptr %i.iz, ptr %i.jc, align 8, !noalias !13101
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 1920
  %i.je = load i8, ptr %i.jd, align 8, !range !21, !noalias !13101, !noundef !17
  %cond.i281.i = icmp eq i8 %i.je, 3
  br i1 %cond.i281.i, label %bb.az, label %bb.bg

bb.az:                                            ; preds = %bb.ay
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 1912
  %i.jg = load i8, ptr %i.jf, align 8, !range !21, !noalias !13101, !noundef !17
  %cond.i.i282.i = icmp eq i8 %i.jg, 3
  br i1 %cond.i.i282.i, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 1848
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.jh)
          to label %bb.bd unwind label %bb.bb, !noalias !13102

bb.bb:                                            ; preds = %bb.ba
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %.val2.i.i.i283.i = load ptr, ptr %i.jj, align 8, !noalias !13101, !align !16, !noundef !17 ; 2 uses
  %i.jk = icmp eq ptr %.val2.i.i.i283.i, null
  br i1 %i.jk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jl = getelementptr i8, ptr %1, i64 1864
  %.val3.i.i.i284.i = load ptr, ptr %i.jl, align 8, !noalias !13101
  %i.jm = getelementptr inbounds nuw i8, ptr %.val2.i.i.i283.i, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !13102, !nonnull !17, !noundef !17
  invoke void %i.jn(ptr noundef %.val3.i.i.i284.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i unwind label %bb.bf, !noalias !13102, !inline_history !0

bb.bd:                                            ; preds = %bb.ba
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %.val.i.i.i286.i = load ptr, ptr %i.jo, align 8, !noalias !13101, !align !16, !noundef !17 ; 2 uses
  %i.jp = icmp eq ptr %.val.i.i.i286.i, null
  br i1 %i.jp, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jq = getelementptr i8, ptr %1, i64 1864
  %.val1.i.i.i287.i = load ptr, ptr %i.jq, align 8, !noalias !13101
  %i.jr = getelementptr inbounds nuw i8, ptr %.val.i.i.i286.i, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !13102, !nonnull !17, !noundef !17
  invoke void %i.js(ptr noundef %.val1.i.i.i287.i)
          to label %bb.bg unwind label %bb.nd, !noalias !13102, !inline_history !30

bb.bf:                                            ; preds = %bb.bc
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13102
  unreachable

bb.bg:                                            ; preds = %bb.be, %bb.bd, %bb.az, %bb.ay
  %.val223.i = load ptr, ptr %i.jc, align 8, !noalias !13101, !noundef !17
  %.val235.i = load i64, ptr %.val223.i, align 8, !range !43, !noalias !13102, !noundef !17
  %i.ju = icmp ne i64 %.val235.i, -1
  %i.jv = zext i1 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 1352
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !13101, !noundef !17
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 1376
  %i.jz = add i64 %i.jx, %i.jv
  store i64 %i.jz, ptr %i.jy, align 8, !noalias !13101
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 6 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 1384 ; 5 uses
  %i.kd = invoke noundef i64 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet12this_peer_id(ptr noundef nonnull align 8 %i.kb)
          to label %bb.bi unwind label %bb.bl, !noalias !13102 ; 2 uses

bb.bh:                                            ; preds = %bb.cn, %bb.bl
  %i.ke = phi ptr [ %i.nr, %bb.cn ], [ %i.is, %bb.bl ] ; 2 uses
  %i.kf = phi ptr [ %i.ns, %bb.cn ], [ %i.it, %bb.bl ] ; 2 uses
  %.pn208.pn.i = phi { ptr, i32 } [ %.pn208.i, %bb.cn ], [ %i.kl, %bb.bl ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 1820
  %i.kh = load i8, ptr %i.kg, align 4, !range !28, !noalias !13101, !noundef !17
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.nx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEEECsl8OoimOLbh_6qdrant.exit502.i

bb.bi:                                            ; preds = %bb.bg
  store i64 %i.kd, ptr %i.kc, align 8, !noalias !13101
  %.val222.i = load ptr, ptr %i.jc, align 8, !noalias !13101, !noundef !17
  %.val234.i = load i64, ptr %.val222.i, align 8, !range !43, !noalias !13102, !noundef !17
  %.not.i84 = icmp eq i64 %.val234.i, -1
  br i1 %.not.i84, label %.thread829.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kj = load ptr, ptr %i.ka, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.kk = invoke noundef zeroext i1 @_RNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB4_15ShardReplicaSet17is_peer_updatable(ptr noundef nonnull align 8 %i.kj, i64 noundef %i.kd)
          to label %bb.bk unwind label %bb.bl, !noalias !13102

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.kk, label %bb.bm, label %.thread829.i

bb.bl:                                            ; preds = %bb.bj, %bb.bg
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bm:                                            ; preds = %bb.bk
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %.val236.i = load i64, ptr %i.km, align 8, !range !55, !noalias !13101, !noundef !17 ; 3 uses
  %i.kn = icmp ne i64 %.val236.i, 7
  call void @llvm.assume(i1 %i.kn)
  %i.ko = add nsw i64 %.val236.i, -5
  %i.kp = icmp samesign ugt i64 %.val236.i, 4
  %i.kq = select i1 %i.kp, i64 %i.ko, i64 2
  switch i64 %i.kq, label %bb.bn [
    i64 0, label %bb.bo
    i64 1, label %bb.bp
    i64 2, label %bb.bp
    i64 3, label %.thread
    i64 4, label %.thread
  ]

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.kr = getelementptr i8, ptr %1, i64 1024
  %.val237.i = load i64, ptr %i.kr, align 8, !noalias !13101 ; 3 uses
  %i.ks = icmp ne i64 %.val237.i, 4
  call void @llvm.assume(i1 %i.ks)
  %i.kt = add nsw i64 %.val237.i, -3
  %i.ku = icmp sgt i64 %.val237.i, 2
  %i.kv = select i1 %i.ku, i64 %i.kt, i64 1
  switch i64 %i.kv, label %bb.bn [
    i64 0, label %bb.bp
    i64 1, label %bb.bp
    i64 2, label %.thread
    i64 3, label %.thread
    i64 4, label %.thread
    i64 5, label %bb.bp
    i64 6, label %.thread
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bm, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !13106
  %i.kw = invoke noundef nonnull align 8 ptr @_RNvNtCs5QaNqjAn6vc_5shard5quota6global()
          to label %.noexc291.i unwind label %bb.nb, !noalias !13102

.noexc291.i:                                      ; preds = %bb.bp
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !13107, !nonnull !17, !noundef !17
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  invoke void @_RNvMs_NtNtNtCs5QaNqjAn6vc_5shard5quota7manager7enforceNtB6_12QuotaManager12check_update(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bh, ptr noundef nonnull align 8 %i.ky)
          to label %.noexc292.i unwind label %bb.nb, !noalias !13102

.noexc292.i:                                      ; preds = %.noexc291.i
  %i.kz = load i64, ptr %i.bh, align 8, !range !26, !noalias !13106, !noundef !17 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.kz, -1             ; 3 uses
  br i1 %.not.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.noexc292.i
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i.i, i64 24, i1 false), !noalias !13108
  br label %bb.br

.thread:                                          ; preds = %bb.bm, %bb.bm, %bb.bo, %bb.bo, %bb.bo, %bb.bo
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store i64 -1, ptr %i.la, align 8, !alias.scope !13109, !noalias !13101
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 1819
  store i8 1, ptr %i.lb, align 1, !noalias !13101
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 1813
  store i8 1, ptr %i.lc, align 1, !noalias !13101
  %3 = getelementptr i8, ptr %1, i64 1344
  %.val239.i273 = load i64, ptr %3, align 8, !noalias !13101, !noundef !17
  %4 = icmp ult i64 %.val239.i273, 67818912035696881
  call void @llvm.assume(i1 %4)
  br label %bb.bs

bb.br:                                            ; preds = %.noexc292.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !13106
  %.sroa.7522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7522.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13110)
  store i64 %i.kz, ptr %i.ld, align 8, !alias.scope !13111, !noalias !13101
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 1819 ; 2 uses
  store i8 1, ptr %i.le, align 1, !noalias !13101
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 1813
  %i.lg = zext i1 %.not.i.i.i to i8
  store i8 %i.lg, ptr %i.lf, align 1, !noalias !13101
  %i.lh = getelementptr i8, ptr %1, i64 1344
  %.val239.i = load i64, ptr %i.lh, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %i.li = icmp ult i64 %.val239.i, 67818912035696881
  call void @llvm.assume(i1 %i.li)
  %i.lj = icmp ne i64 %.val239.i, 0
  %brmerge.i = or i1 %.not.i.i.i, %i.lj
  br i1 %brmerge.i, label %bb.bs, label %bb.bt

.thread829.i:                                     ; preds = %bb.bi, %bb.bk
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1392
  store i64 -1, ptr %i.lk, align 8, !alias.scope !13109, !noalias !13101
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 1819
  store i8 1, ptr %i.ll, align 1, !noalias !13101
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 1813
  store i8 0, ptr %i.lm, align 1, !noalias !13101
  %i.ln = getelementptr i8, ptr %1, i64 1344
  %.val239831.i = load i64, ptr %i.ln, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %i.lo = icmp ult i64 %.val239831.i, 67818912035696881
  call void @llvm.assume(i1 %i.lo)
  %i.lp = icmp eq i64 %.val239831.i, 0
  br i1 %i.lp, label %.thread836.i, label %bb.bs

bb.bs:                                            ; preds = %.thread, %.thread829.i, %bb.br
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 1288 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.ls = invoke noundef i64 @_RNvMs0_NtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set9clock_setNtB5_10ClockGuard9tick_once(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lr)
          to label %bb.ca unwind label %bb.cb, !noalias !13102

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !13101
  store i8 0, ptr %i.le, align 1, !noalias !13101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %i.ld, i64 32, i1 false), !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !13101
  invoke void @_RNvXsi_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.da)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorINtB5_4IntoNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4intoCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.bu, !noalias !13102

bb.bu:                                            ; preds = %bb.bt
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !13101
  br label %bb.cm

_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorINtB5_4IntoNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4intoCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.bt
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lu, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false), !noalias !13101
  store i64 -1, ptr %i.bj, align 8, !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !13101
  br label %bb.bz

.thread836.i:                                     ; preds = %.thread829.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !13101
  %i.lv = load ptr, ptr %i.ka, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !13101
  store ptr %i.lw, ptr %i.cv, align 8, !noalias !13101
  %.sroa.5524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.5524.0..sroa_idx.i, align 8, !noalias !13101
  %i.lx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.kc, ptr %i.lx, align 8, !noalias !13101
  %.sroa.5526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.5526.0..sroa_idx.i, align 8, !noalias !13101
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cw, ptr noundef nonnull @137, ptr noundef nonnull %i.cv)
          to label %_RNvNtCsexYYUdYSQU6_5alloc3fmt6format.exit169 unwind label %bb.bv

bb.bv:                                            ; preds = %.thread836.i
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !13101
  br label %bb.bw

_RNvNtCsexYYUdYSQU6_5alloc3fmt6format.exit169:    ; preds = %.thread836.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !13101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !alias.scope !13112, !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !13101
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cy, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cx)
          to label %bb.by unwind label %bb.bx, !noalias !13102

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %.pn63.i = phi { ptr, i32 } [ %i.lz, %bb.bx ], [ %i.ly, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !13101
  br label %bb.cm

bb.bx:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc3fmt6format.exit169
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.by:                                            ; preds = %_RNvNtCsexYYUdYSQU6_5alloc3fmt6format.exit169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !13101
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 48, i1 false), !noalias !13101
  store i64 -1, ptr %i.bj, align 8, !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !13101
  br label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit493.i, %bb.by, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorINtB5_4IntoNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4intoCsl8OoimOLbh_6qdrant.exit.i
  %i.mb = phi ptr [ %i.rt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit493.i ], [ %i.is, %bb.by ], [ %i.is, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorINtB5_4IntoNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4intoCsl8OoimOLbh_6qdrant.exit.i ] ; 7 uses
  %i.mc = phi ptr [ %i.ru, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit493.i ], [ %i.it, %bb.by ], [ %i.it, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorINtB5_4IntoNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4intoCsl8OoimOLbh_6qdrant.exit.i ] ; 7 uses
  %.sroa.0209.0.copyload210405 = phi i64 [ %.sroa.0209.0.copyload210406, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit493.i ], [ -1, %bb.by ], [ -1, %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs5QaNqjAn6vc_5shard5quota5error10QuotaErrorINtB5_4IntoNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4intoCsl8OoimOLbh_6qdrant.exit.i ]
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 1392 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !range !26, !noalias !13101, !noundef !17
  %.not207.i = icmp eq i64 %i.me, -1
  br i1 %.not207.i, label %bb.mz, label %bb.my

bb.ca:                                            ; preds = %bb.bs
  %i.mf = load i64, ptr %i.kc, align 8, !noalias !13101, !noundef !17
  %i.mg = load ptr, ptr %i.lq, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.mh = getelementptr i8, ptr %i.mg, i64 8
  %.val240.i = load i32, ptr %i.mh, align 8, !noalias !13102, !noundef !17
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 1424 ; 2 uses
  invoke void @_RNvMs1_NtCs5QaNqjAn6vc_5shard10operationsNtB5_8ClockTag3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.mi, i64 noundef %i.mf, i32 noundef %.val240.i, i64 noundef %i.ls)
          to label %bb.cc unwind label %bb.cb, !noalias !13102

bb.cb:                                            ; preds = %bb.ca, %bb.bs
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !13101
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 1822
  store i8 0, ptr %i.mk, align 2, !noalias !13101
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.cu, ptr noundef nonnull align 8 dereferenceable(256) %i.ml, i64 256, i1 false), !noalias !13101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !13101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.mi, i64 32, i1 false), !noalias !13101
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 1456 ; 2 uses
  invoke void @_RINvMs_NtCs5QaNqjAn6vc_5shard10operationsNtB5_21OperationWithClockTag3newNtB5_26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.mm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(256) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ct)
          to label %bb.ce unwind label %bb.cd, !noalias !13102

bb.cd:                                            ; preds = %bb.cc
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !13101
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagECsl8OoimOLbh_6qdrant.exit500.i

bb.ce:                                            ; preds = %bb.cc
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 1816
  store i8 1, ptr %i.mo, align 8, !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !noalias !13101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !13101
  %i.mp = load ptr, ptr %i.ka, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.mq = load i64, ptr %i.kc, align 8, !noalias !13101, !noundef !17
  %i.mr = invoke noundef i8 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet10peer_state(ptr noundef nonnull align 8 %i.mp, i64 noundef %i.mq)
          to label %bb.cf unwind label %bb.cy, !noalias !13102

bb.cf:                                            ; preds = %bb.ce
  %i.ms = icmp eq i8 %i.mr, 4
  br i1 %i.ms, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 1811
  %i.mu = load i8, ptr %i.mt, align 1, !range !32, !noalias !13101, !noundef !17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.sink.i = phi i8 [ %i.mu, %bb.cg ], [ 0, %bb.cf ]
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 1814
  store i8 %.sink.i, ptr %i.mv, align 2, !noalias !13101
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 1813
  %i.mx = load i8, ptr %i.mw, align 1, !range !28, !noalias !13101, !noundef !17
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.ci, label %bb.cz

bb.ci:                                            ; preds = %bb.ch
  %i.mz = load ptr, ptr %i.ka, align 8, !noalias !13101, !nonnull !17, !align !16, !noundef !17
  %i.na = load i64, ptr %i.kc, align 8, !noalias !13101, !noundef !17
  %i.nb = invoke noundef zeroext i1 @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB2_15ShardReplicaSet28peer_is_write_rate_limitable(ptr noundef nonnull align 8 %i.mz, i64 noundef %i.na)
          to label %bb.cj unwind label %bb.cy, !noalias !13102

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.nb, label %bb.ck, label %bb.cz

bb.ck:                                            ; preds = %bb.cj
  %.val221.i = load ptr, ptr %i.jc, align 8, !noalias !13101, !noundef !17 ; 2 uses
  %i.nc = load i64, ptr %.val221.i, align 8, !range !43, !noalias !13102, !noundef !17
  %.not65.i = icmp eq i64 %i.nc, -1
  br i1 %.not65.i, label %bb.cz, label %bb.cl
end_hunk_0
