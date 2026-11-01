Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.008?download=true
inline.NumInlined: 9683
inline.NumDeleted: 3881
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNCNvMNtCsPYQCUnoTxQ_10collection9wal_deltaNtB4_14RecoverableWal14recovery_point0Csl8OoimOLbh_6qdrant:bb.a
bb.w:                                             ; preds = %bb.t, %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9snapshotsNtB6_10Collection19assert_shard_exists0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !46, !noundef !20
  switch i8 %i.d, label %default.unreachable16 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable16:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !20, !align !19, !noundef !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = load i32, ptr %i.g, align 8, !noundef !20
  store i32 %i.h, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.v, %bb.o, %bb.n, %bb.t, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.m, %bb.g ], [ %i.y, %bb.n ], [ %i.an, %bb.v ], [ %i.y, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn9

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #25
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.k) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit unwind label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %bb.j

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit13, %bb.i
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit13 ], [ 3, %bb.i ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  store ptr %i.n, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load i8, ptr %i.r, align 8, !range !46, !noundef !20
  %cond.i = icmp eq i8 %i.s, 3
  br i1 %cond.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i8, ptr %i.t, align 8, !range !46, !noundef !20
  %cond.i.i = icmp eq i8 %i.u, 3
  br i1 %cond.i.i, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i8, ptr %i.v, align 8, !range !46, !noundef !20
  %cond.i.i.i = icmp eq i8 %i.w, 3
  br i1 %cond.i.i.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.x)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i.i.i.i = load ptr, ptr %i.z, align 8, !align !19, !noundef !20 ; 2 uses
  %i.aa = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr i8, ptr %1, i64 48
  %.val3.i.i.i.i = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !20, !noundef !20
  invoke void %i.ad(ptr noundef %.val3.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit unwind label %bb.r, !inline_history !2

bb.p:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.ae, align 8, !align !19, !noundef !20 ; 2 uses
  %i.af = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.af, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr i8, ptr %1, i64 48
  %.val1.i.i.i.i = load ptr, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !20, !noundef !20
  invoke void %i.ai(ptr noundef %.val1.i.i.i.i)
          to label %bb.s unwind label %bb.v, !inline_history !68

bb.r:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.j, %bb.k, %bb.l, %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !noundef !20
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB2_11ShardHolder19assert_shard_exists(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 8 %i.p, i32 noundef %i.al)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit unwind label %bb.w

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit13 unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit13: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  br label %common.ret

bb.w:                                             ; preds = %bb.t, %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6common17snapshots_managerNtB4_22SnapshotStorageManager10store_file0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 12 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.323.i.sroa.10.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.425.i.i.i = alloca [16 x i8], align 8    ; 6 uses
  %.sroa.3.i.sroa.16.i.i = alloca [24 x i8], align 8 ; 8 uses
  %.sroa.5.i.i.i = alloca [120 x i8], align 8     ; 7 uses
  %i.k = alloca [200 x i8], align 8               ; 14 uses
  %i.l = alloca [200 x i8], align 8               ; 19 uses
  %i.m = alloca [136 x i8], align 8               ; 12 uses
  %i.n = alloca [136 x i8], align 8               ; 7 uses
  %.sroa.19.i.i = alloca [12 x i8], align 8       ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.3.sroa.8.i.i = alloca [40 x i8], align 8 ; 9 uses
  %.sroa.869.sroa.11.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.970.i.i = alloca [16 x i8], align 8      ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [96 x i8], align 8                ; 19 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 9 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %i.x = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.383.i.sroa.4.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.y = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.765.i.sroa.8.i.i = alloca [48 x i8], align 8 ; 12 uses
  %i.z = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.3.i.sroa.4.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.aa = alloca [72 x i8], align 8               ; 10 uses
  %i.ab = alloca [64 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [72 x i8], align 8               ; 7 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  %i.aj = alloca [48 x i8], align 8               ; 13 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 5 uses
  %i.ao = alloca [176 x i8], align 8              ; 8 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [72 x i8], align 8               ; 9 uses
  %i.as = alloca [48 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [80 x i8], align 8               ; 9 uses
  %i.av = alloca [48 x i8], align 8               ; 21 uses
  %.sroa.5296.i.i = alloca [48 x i8], align 8     ; 9 uses
  %.sroa.11293.sroa.6.i.i = alloca [48 x i8], align 8 ; 8 uses
  %.sroa.10285.i.i = alloca [48 x i8], align 8    ; 9 uses
  %i.aw = alloca [56 x i8], align 8               ; 15 uses
  %.sroa.3276.i.i = alloca [64 x i8], align 8     ; 7 uses
  %i.ax = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.10263.i.i = alloca [40 x i8], align 8    ; 8 uses
  %i.ay = alloca [32 x i8], align 8               ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 8 uses
  %i.ba = alloca [32 x i8], align 8               ; 13 uses
  %.sroa.6244.i.i = alloca [32 x i8], align 8     ; 8 uses
  %.sroa.8239.sroa.6.i.i = alloca [32 x i8], align 8 ; 10 uses
  %.sroa.5214.i.i = alloca [48 x i8], align 8     ; 7 uses
  %i.bb = alloca [72 x i8], align 8               ; 10 uses
  %.sroa.16.i.i = alloca [24 x i8], align 8       ; 8 uses
  %i.bc = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 7 uses
  %i.bd = alloca [72 x i8], align 8               ; 16 uses
  %.sroa.14103.i = alloca [12 x i8], align 8      ; 8 uses
  %.sroa.3.i = alloca [40 x i8], align 8          ; 7 uses
  %.sroa.1166.i = alloca [40 x i8], align 8       ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [32 x i8], align 8               ; 13 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 8 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [16 x i8], align 8               ; 4 uses
  %.sroa.4.i.i.i = alloca [160 x i8], align 8     ; 7 uses
  %i.bn = alloca [176 x i8], align 8              ; 8 uses
  %i.bo = alloca [24 x i8], align 8               ; 6 uses
  %i.bp = alloca [72 x i8], align 8               ; 11 uses
  %i.bq = alloca [24 x i8], align 8               ; 10 uses
  %i.br = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.960.i.i = alloca [160 x i8], align 8     ; 8 uses
  %i.bs = alloca [16 x i8], align 8               ; 4 uses
  %i.bt = alloca [32 x i8], align 8               ; 7 uses
  %i.bu = alloca [16 x i8], align 8               ; 4 uses
  %i.bv = alloca [16 x i8], align 8               ; 4 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [24 x i8], align 8               ; 11 uses
  %i.by = alloca [48 x i8], align 8               ; 7 uses
  %i.bz = alloca [48 x i8], align 8               ; 5 uses
  %i.ca = alloca [24 x i8], align 8               ; 8 uses
  %i.cb = alloca [24 x i8], align 8               ; 8 uses
  %i.cc = alloca [16 x i8], align 8               ; 4 uses
  %i.cd = alloca [32 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 10 uses
  %i.cf = alloca [48 x i8], align 8               ; 7 uses
  %i.cg = alloca [48 x i8], align 8               ; 5 uses
  %i.ch = alloca [32 x i8], align 8               ; 8 uses
  %i.ci = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.518.i.i = alloca [40 x i8], align 8      ; 9 uses
  %i.cj = alloca [32 x i8], align 8               ; 8 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 5 uses
  %i.cn = alloca [48 x i8], align 8               ; 6 uses
  %i.co = alloca [48 x i8], align 8               ; 10 uses
  %i.cp = alloca [16 x i8], align 8               ; 6 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [24 x i8], align 8               ; 5 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [48 x i8], align 8               ; 6 uses
  %i.cu = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.410.i.i = alloca [112 x i8], align 8     ; 6 uses
  %i.cv = alloca [24 x i8], align 8               ; 5 uses
  %i.cw = alloca [128 x i8], align 8              ; 7 uses
  %i.cx = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.4.i.i = alloca [88 x i8], align 8        ; 6 uses
  %i.cy = alloca [112 x i8], align 8              ; 9 uses
  %i.cz = alloca [72 x i8], align 8               ; 31 uses
  %.sroa.9326.i = alloca [64 x i8], align 8       ; 7 uses
  %i.da = alloca [48 x i8], align 8               ; 5 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [32 x i8], align 8               ; 9 uses
  %i.dd = alloca [24 x i8], align 8               ; 5 uses
  %i.de = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.3300.i = alloca [40 x i8], align 8       ; 7 uses
  %.sroa.12297.i = alloca [40 x i8], align 8      ; 8 uses
  %i.df = alloca [128 x i8], align 8              ; 5 uses
  %.sroa.6272.i = alloca [112 x i8], align 8      ; 7 uses
  %.sroa.9268.i = alloca [112 x i8], align 8      ; 7 uses
  %i.dg = alloca [24 x i8], align 8               ; 8 uses
  %i.dh = alloca [24 x i8], align 8               ; 5 uses
  %i.di = alloca [24 x i8], align 8               ; 9 uses
  %i.dj = alloca [24 x i8], align 8               ; 5 uses
  %i.dk = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 3 uses
  %.sroa.10100 = alloca [64 x i8], align 8        ; 8 uses
  %.sroa.1480 = alloca [64 x i8], align 8         ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 8, !range !44, !noundef !20
  switch i8 %i.dm, label %default.unreachable204 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.os
  ]

default.unreachable204:                           ; preds = %bb.zp, %bb.zi, %bb.vc, %bb.uw, %bb.tv, %bb.to, %bb.tg, %bb.sx, %bb.ss, %bb.sd, %bb.qf, %bb.pb, %bb.ov, %bb.os, %bb.nk, %bb.ml, %bb.mg, %bb.mc, %bb.lw, %bb.ll, %bb.kq, %bb.kj, %bb.jl, %bb.ib, %bb.gv, %bb.fa, %bb.es, %bb.ep, %_RNCINvNtCs3TE53SMfxyL_6fs_err5tokio6renameRNtNtCsG258MDvU3F_3std4path4PathBE_E0Csl8OoimOLbh_6qdrant.exit.thread.i.i, %bb.di, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.aq, %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.dn = load ptr, ptr %1, align 8, !nonnull !20, !align !19, !noundef !20 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !20, !noundef !20 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !20 ; 3 uses
  store ptr %i.dq, ptr %i.do, align 8, !captures !81
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.ds, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !20, !noundef !20 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !20 ; 3 uses
  store ptr %i.dw, ptr %i.du, align 8, !captures !81
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.dn, align 8, !noundef !20
  %.not = icmp eq ptr %i.ea, null
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br i1 %.not, label %.thread205, label %.thread209

.thread205:                                       ; preds = %bb.b
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.dq, ptr %.sroa.774.0..sroa_idx, align 8
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 %i.ds, ptr %.sroa.875.0..sroa_idx, align 8
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.dw, ptr %.sroa.976.0..sroa_idx, align 8
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i64 %i.dy, ptr %.sroa.1077.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.dn, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 380
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3300.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6272.i)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 380
  br label %bb.f

.thread209:                                       ; preds = %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.dn, ptr %i.ed, align 8
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.dq, ptr %.sroa.791.0..sroa_idx, align 8
  %.sroa.892.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ds, ptr %.sroa.892.0..sroa_idx, align 8
  %.sroa.993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dw, ptr %.sroa.993.0..sroa_idx, align 8
  %.sroa.1094.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.dy, ptr %.sroa.1094.0..sroa_idx, align 8
  %.sroa.1296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection6common17snapshots_managerNtB4_22SnapshotStorageManager10store_file0Csl8OoimOLbh_6qdrant:bb.a
  %.sroa.3.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.3.i.sroa.14.0.copyload.i.i, ptr %.sroa.3.sroa.7.0..sroa_idx.i.i, align 8, !noalias !10930
  %.sroa.3.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.8.i.i, i64 24, i1 false), !noalias !10930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10931
  store ptr %i.i, ptr %i.g, align 8, !noalias !10931
  %.sroa.42.0..sroa_idx.i.i.i44.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1e_Cs20yfr1g8LCf_12object_storeNtB6_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i44.i, align 8, !noalias !10931
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @282, ptr noundef nonnull %i.g)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i45.i unwind label %bb.aau, !noalias !10932

bb.aau:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i45.i, %bb.aat
  %i.cep = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs20yfr1g8LCf_12object_store5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #24
          to label %.body24.i.i unwind label %bb.aav, !noalias !10932

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i45.i: ; preds = %bb.aat
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10931
  invoke void @_RINvMsa_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB6_15CollectionError13service_errorNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %_RNCNCNvNtNtCsPYQCUnoTxQ_10collection10operations20snapshot_storage_ops24get_snapshot_description00Csl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.aau, !noalias !10933

bb.aav:                                           ; preds = %bb.aau
  %i.ceq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !10932
  unreachable

_RNCNCNvNtNtCsPYQCUnoTxQ_10collection10operations20snapshot_storage_ops24get_snapshot_description00Csl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i45.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs20yfr1g8LCf_12object_store5ErrorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i)
          to label %bb.abn unwind label %bb.aar, !noalias !10920

bb.aaw:                                           ; preds = %bb.aas
  %.sroa.574.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.574.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.sroa.8.i.i, i64 40, i1 false), !noalias !10919
  store i64 %i.cdc, ptr %i.r, align 8, !noalias !10919
  %.sroa.4.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.3.i.sroa.0.0.copyload.i36.i, ptr %.sroa.4.0..sroa_idx.i42.i, align 8, !noalias !10919
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3.i.sroa.6.0.copyload.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10919
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.3.i.sroa.8.0.copyload.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10919
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.3.i.sroa.10.0.copyload.i.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10919
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %.sroa.3.i.sroa.12.0.copyload.i.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10919
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 %.sroa.3.i.sroa.14.0.copyload.i.i, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10919
  %i.cer = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cer)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.aax, !noalias !10920

bb.aax:                                           ; preds = %bb.aaw
  %i.ces = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cer)
          to label %.body29.i.i unwind label %bb.aay, !noalias !10920

bb.aay:                                           ; preds = %bb.aax
  %i.cet = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !10920
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.aaw
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cer)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs20yfr1g8LCf_12object_store4path4PathECsl8OoimOLbh_6qdrant.exit.i43.i unwind label %bb.aaz, !noalias !10920

bb.aaz:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i
  %i.ceu = landingpad { ptr, i32 }
          cleanup
  br label %.body29.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs20yfr1g8LCf_12object_store4path4PathECsl8OoimOLbh_6qdrant.exit.i43.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10919
  %i.cev = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.cew = load ptr, ptr %i.cev, align 8, !noalias !10919, !nonnull !20, !noundef !20
  %i.cex = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cey = load i64, ptr %i.cex, align 8, !noalias !10919, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10934
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cew, i64 noundef %i.cey)
          to label %bb.aba unwind label %.sink.split.i.i, !noalias !10920

bb.aba:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs20yfr1g8LCf_12object_store4path4PathECsl8OoimOLbh_6qdrant.exit.i43.i
  %i.cez = load i64, ptr %i.f, align 8, !range !23, !noalias !10934, !noundef !20
  %i.cfa = trunc nuw i64 %i.cez to i1
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cfc = load ptr, ptr %i.cfb, align 8, !noalias !10934, !nonnull !20
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cfe = load i64, ptr %i.cfd, align 8, !noalias !10934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10934
  br i1 %i.cfa, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %bb.aba
  %i.cff = load i64, ptr %i.cex, align 8, !noalias !10919, !noundef !20
  %i.cfg = load ptr, ptr %i.cev, align 8, !noalias !10919, !nonnull !20, !noundef !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10936
  store ptr %i.cfg, ptr %i.d, align 8, !noalias !10936
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.cff, ptr %i.cfh, align 8, !noalias !10936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10936
  store ptr %i.d, ptr %i.c, align 8, !noalias !10936
  %.sroa.42.0..sroa_idx.i.i34.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1b_NtCsG258MDvU3F_3std4pathNtB6_7DisplayNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i34.i.i, align 8, !noalias !10936
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cfi, ptr noundef nonnull @283, ptr noundef nonnull %i.c)
          to label %bb.abm unwind label %.sink.split.i.i, !noalias !10920

bb.abc:                                           ; preds = %bb.aba
  invoke void @_RNvNtNtCsPYQCUnoTxQ_10collection10operations20snapshot_storage_ops12get_filename(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cfc, i64 noundef %i.cfe)
          to label %bb.abd unwind label %.sink.split.i.i, !noalias !10920

.sink.split.i.i:                                  ; preds = %bb.abc, %bb.abb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs20yfr1g8LCf_12object_store4path4PathECsl8OoimOLbh_6qdrant.exit.i43.i
  %i.cfj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10919
  br label %bb.abj

bb.abd:                                           ; preds = %bb.abc
  call void @llvm.experimental.noalias.scope.decl(metadata !10937)
  %i.cfk = load i64, ptr %i.o, align 8, !range !49, !alias.scope !10938, !noalias !10919, !noundef !20 ; 2 uses
  %.not.i37.i.i = icmp eq i64 %i.cfk, -1
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.877.sroa.0.0.copyload121.i.i = load ptr, ptr %i.cfl, align 8, !alias.scope !10939, !noalias !10919 ; 4 uses
  %.sroa.877.sroa.8.0..sroa_idx123.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.877.sroa.8.0.copyload124.i.i = load i64, ptr %.sroa.877.sroa.8.0..sroa_idx123.i.i, align 8, !alias.scope !10939, !noalias !10919 ; 2 uses
  br i1 %.not.i37.i.i, label %bb.abe, label %bb.abk

bb.abe:                                           ; preds = %bb.abd
  %.sroa.877.sroa.9.0..sroa_idx126.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.877.sroa.9.0.copyload127.i.i = load i64, ptr %.sroa.877.sroa.9.0..sroa_idx126.i.i, align 8, !alias.scope !10939, !noalias !10919 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10919
  store ptr %.sroa.877.sroa.0.0.copyload121.i.i, ptr %i.p, align 8, !noalias !10919
  %.sroa.4129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.877.sroa.8.0.copyload124.i.i, ptr %.sroa.4129.0..sroa_idx.i.i, align 8, !noalias !10919
  %.sroa.5130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.877.sroa.9.0.copyload127.i.i, ptr %.sroa.5130.0..sroa_idx.i.i, align 8, !noalias !10919
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.cfn = load i64, ptr %i.cfm, align 8, !noalias !10919, !noundef !20
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.cfo, i64 12, i1 false), !noalias !10941
  %i.cfp = ptrtoint ptr %.sroa.877.sroa.0.0.copyload121.i.i to i64
  %i.cfq = inttoptr i64 %.sroa.877.sroa.9.0.copyload127.i.i to ptr
  invoke void @_RNvMNtNtCs3bXQNzrqeHk_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_offset(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef 0)
          to label %.noexc39.i.i unwind label %bb.abg, !noalias !10920

.noexc39.i.i:                                     ; preds = %bb.abe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10940
  %i.cfr = load i32, ptr %i.b, align 4, !noalias !10940, !noundef !20
  %.not.i38.i.i = icmp eq i32 %i.cfr, 0
  br i1 %.not.i38.i.i, label %bb.abf, label %bb.abh, !prof !41

bb.abf:                                           ; preds = %.noexc39.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @638, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @640) #25
          to label %.noexc40.i.i unwind label %bb.abg, !noalias !10920

.noexc40.i.i:                                     ; preds = %bb.abf
  unreachable

bb.abg:                                           ; preds = %bb.abf, %bb.abe
  %i.cfs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #24
          to label %bb.abj unwind label %bb.abi, !noalias !10920

bb.abh:                                           ; preds = %.noexc39.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.19.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !noalias !10919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10919
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs20yfr1g8LCf_12object_store10ObjectMetaECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r)
          to label %bb.abs unwind label %bb.abq, !noalias !10920

.body43.i.i:                                      ; preds = %bb.abq, %bb.abo, %.body29.i.i, %.body24.i.i, %bb.zk
  %i.cft = phi ptr [ %i.cct, %.body29.i.i ], [ %i.cct, %bb.abq ], [ %i.cct, %bb.abo ], [ %i.cap, %bb.zk ], [ %i.cej, %.body24.i.i ]
  %i.cfu = phi ptr [ %i.ccu, %.body29.i.i ], [ %i.ccu, %bb.abq ], [ %i.ccu, %bb.abo ], [ %i.caq, %bb.zk ], [ %i.cek, %.body24.i.i ]
  %i.cfv = phi ptr [ %i.ccv, %.body29.i.i ], [ %i.ccv, %bb.abq ], [ %i.ccv, %bb.abo ], [ %i.cav, %bb.zk ], [ %i.cel, %.body24.i.i ]
  %i.cfw = phi ptr [ %i.ccw, %.body29.i.i ], [ %i.ccw, %bb.abq ], [ %i.ccw, %bb.abo ], [ %i.caw, %bb.zk ], [ %i.cem, %.body24.i.i ]
  %.pn18.pn.i.i = phi { ptr, i32 } [ %.pn11.pn.pn.pn.i.i, %.body29.i.i ], [ %i.cge, %bb.abq ], [ %i.cgc, %bb.abo ], [ %i.caz, %bb.zk ], [ %.pn5.i.i, %.body24.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10919
  store i8 2, ptr %i.cfv, align 8, !noalias !10919
  br label %.body52.i

bb.abi:                                           ; preds = %.body29.i.i, %bb.abg, %.body24.i.i, %.body.i33.i
  %i.cfx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !10920
  unreachable

bb.abj:                                           ; preds = %bb.abg, %.sink.split.i.i
  %.pn11.pn.pn.i.i = phi { ptr, i32 } [ %i.cfs, %bb.abg ], [ %i.cfj, %.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10919
  br label %.body29.i.i

bb.abk:                                           ; preds = %bb.abd
  %3 = load <4 x i64>, ptr %.sroa.877.sroa.8.0..sroa_idx123.i.i, align 8, !alias.scope !10939, !noalias !10919
  br label %bb.abl

bb.abl:                                           ; preds = %bb.abm, %bb.abk
  %.sroa.10106.2.i.i = phi ptr [ %.sroa.877.sroa.0.0.copyload121.i.i, %bb.abk ], [ %.sroa.792.0.copyload.i.i, %bb.abm ]
  %.sroa.6104.2.i.i = phi i64 [ %i.cfk, %bb.abk ], [ -9223372036854775797, %bb.abm ]
  %i.cfy = phi <4 x i64> [ %3, %bb.abk ], [ %i.cfz, %bb.abm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10919
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs20yfr1g8LCf_12object_store10ObjectMetaECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r)
          to label %.thread123.i unwind label %bb.abq, !noalias !10920

bb.abm:                                           ; preds = %bb.abb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10936
  %.sroa.792.0.copyload.i.i = load ptr, ptr %i.cfi, align 8, !noalias !10942
  %.sroa.1093.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cfz = load <4 x i64>, ptr %.sroa.1093.0..sroa_idx.i.i, align 8, !noalias !10942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10935
  br label %bb.abl

.body29.i.i:                                      ; preds = %bb.abj, %bb.aaz, %bb.aax
  %.pn11.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn11.pn.pn.i.i, %bb.abj ], [ %i.ceu, %bb.aaz ], [ %i.ces, %bb.aax ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs20yfr1g8LCf_12object_store10ObjectMetaECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.r) #24
          to label %.body43.i.i unwind label %bb.abi, !noalias !10920

bb.abn:                                           ; preds = %_RNCNCNvNtNtCsPYQCUnoTxQ_10collection10operations20snapshot_storage_ops24get_snapshot_description00Csl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10929
  %.sroa.1351.sroa.0.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !10943
  %.sroa.1351.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1351.sroa.13.0.copyload.i.i = load ptr, ptr %.sroa.1351.sroa.13.0..sroa_idx.i.i, align 8, !noalias !10943
  %.sroa.1351.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.cga = load <4 x i64>, ptr %.sroa.1351.sroa.15.0..sroa_idx.i.i, align 8, !noalias !10943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10929
  %i.cgb = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cgb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i unwind label %bb.abo, !noalias !10920

bb.abo:                                           ; preds = %bb.abn
  %i.cgc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cgb)
          to label %.body43.i.i unwind label %bb.abp, !noalias !10920

bb.abp:                                           ; preds = %bb.abo
  %i.cgd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !10920
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i: ; preds = %bb.abn
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cgb)
          to label %.thread123.i unwind label %bb.abq, !noalias !10920

bb.abq:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i, %bb.abl, %bb.abh
  %i.cge = landingpad { ptr, i32 }
          cleanup
  br label %.body43.i.i

bb.abr:                                           ; preds = %bb.zo, %bb.zn
  %i.cgf = landingpad { ptr, i32 }
          cleanup
  br label %.body52.i

.body52.i:                                        ; preds = %bb.abr, %.body43.i.i
  %i.cgg = phi ptr [ %i.avr, %bb.abr ], [ %i.cft, %.body43.i.i ]
  %i.cgh = phi ptr [ %i.avq, %bb.abr ], [ %i.cfu, %.body43.i.i ]
  %i.cgi = phi ptr [ %i.cao, %bb.abr ], [ %i.cfw, %.body43.i.i ]
  %eh.lpad-body53.i = phi { ptr, i32 } [ %i.cgf, %bb.abr ], [ %.pn18.pn.i.i, %.body43.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14103.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsPYQCUnoTxQ_10collection10operations20snapshot_storage_ops24get_snapshot_description0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cgi) #24
          to label %.body25.i unwind label %bb.yw, !noalias !10819

.thread123.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i, %bb.abl, %bb.zm
  %i.cgj = phi ptr [ %i.cct, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %i.cap, %bb.zm ], [ %i.cct, %bb.abl ]
  %i.cgk = phi ptr [ %i.ccu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %i.caq, %bb.zm ], [ %i.ccu, %bb.abl ]
  %i.cgl = phi ptr [ %i.ccv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %i.cav, %bb.zm ], [ %i.ccv, %bb.abl ]
  %i.cgm = phi ptr [ %i.ccw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %i.caw, %bb.zm ], [ %i.ccw, %bb.abl ]
  %.sroa.10106.1.i.ph.i = phi ptr [ %.sroa.1351.sroa.13.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %.sroa.1162.sroa.0.0.copyload132.i.i, %bb.zm ], [ %.sroa.10106.2.i.i, %bb.abl ]
  %.sroa.6104.1.i.ph.i = phi i64 [ %.sroa.1351.sroa.0.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %i.cba, %bb.zm ], [ %.sroa.6104.2.i.i, %bb.abl ]
  %i.cgn = phi <4 x i64> [ %i.cga, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i42.i.i ], [ %i.cbh, %bb.zm ], [ %i.cfy, %bb.abl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14103.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.19.i.i, i64 12, i1 false), !noalias !10944
  store i8 1, ptr %i.cgl, align 8, !noalias !10919
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.8.i.i)
  br label %bb.abu

bb.abs:                                           ; preds = %bb.abh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14103.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.19.i.i, i64 12, i1 false), !noalias !10944
  store i8 1, ptr %i.ccv, align 8, !noalias !10919
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.sroa.8.i.i)
  %i.cgo = icmp eq ptr %.sroa.877.sroa.0.0.copyload121.i.i, inttoptr (i64 -2 to ptr)
  %i.cgp = insertelement <4 x i64> <i64 -1, i64 undef, i64 undef, i64 poison>, i64 %i.cfn, i64 3
  br i1 %i.cgo, label %bb.abt, label %bb.abu

bb.abt:                                           ; preds = %bb.abs, %.thread113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14103.i)
  br label %.thread110

bb.abu:                                           ; preds = %bb.abs, %.thread123.i
  %i.cgq = phi ptr [ %i.cgj, %.thread123.i ], [ %i.cct, %bb.abs ] ; 2 uses
  %i.cgr = phi ptr [ %i.cgk, %.thread123.i ], [ %i.ccu, %bb.abs ] ; 2 uses
  %i.cgs = phi ptr [ %i.cgm, %.thread123.i ], [ %i.ccw, %bb.abs ]
  %.sroa.0102.1.i137.i = phi i64 [ -1, %.thread123.i ], [ %i.cfp, %bb.abs ]
  %.sroa.6104.1.i136.i = phi i64 [ %.sroa.6104.1.i.ph.i, %.thread123.i ], [ %.sroa.877.sroa.8.0.copyload124.i.i, %bb.abs ]
  %.sroa.10106.1.i135.i = phi ptr [ %.sroa.10106.1.i.ph.i, %.thread123.i ], [ %i.cfq, %bb.abs ]
  %i.cgt = phi <4 x i64> [ %i.cgn, %.thread123.i ], [ %i.cgp, %bb.abs ]
  store i64 %.sroa.0102.1.i137.i, ptr %i.bd, align 8, !noalias !10812
  %.sroa.897.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  store i64 %.sroa.6104.1.i136.i, ptr %.sroa.897.0..sroa_idx.i, align 8, !noalias !10812
  %.sroa.998.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %.sroa.10106.1.i135.i, ptr %.sroa.998.0..sroa_idx.i, align 8, !noalias !10812
  %.sroa.1099.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store <4 x i64> %i.cgt, ptr %.sroa.1099.0..sroa_idx.i, align 8, !noalias !10812
  %.sroa.14103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14103.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.14103.i, i64 12, i1 false), !noalias !10812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14103.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsPYQCUnoTxQ_10collection10operations20snapshot_storage_ops24get_snapshot_description0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cgs)
          to label %bb.abx unwind label %bb.abv, !noalias !10819

bb.abv:                                           ; preds = %bb.ys, %bb.abu, %bb.zh, %bb.zg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i18
  %i.cgu = phi ptr [ %i.bze, %bb.ys ], [ %i.cgq, %bb.abu ], [ %i.bzp, %bb.zh ], [ %i.bzp, %bb.zg ], [ %i.bzp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i18 ]
  %i.cgv = phi ptr [ %i.bzf, %bb.ys ], [ %i.cgr, %bb.abu ], [ %i.bzq, %bb.zh ], [ %i.bzq, %bb.zg ], [ %i.bzq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvNtNtCsjZG7hsAZr3B_5tokio2fs11remove_file11remove_fileRNtNtCsG258MDvU3F_3std4path4PathE00ECsl8OoimOLbh_6qdrant.exit.i.i.i.i18 ]
  %i.cgw = landingpad { ptr, i32 }
          cleanup
  br label %.body25.i

bb.abw:                                           ; preds = %bb.ou, %bb.ot
  %i.cgx = landingpad { ptr, i32 }
          cleanup
  br label %.body69

.body69:                                          ; preds = %.body25.i, %bb.abw
  %i.cgy = phi ptr [ %i.avq, %bb.abw ], [ %i.bzo, %.body25.i ]
  %eh.lpad-body70 = phi { ptr, i32 } [ %i.cgx, %bb.abw ], [ %.pn21.pn.i, %.body25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10100)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsPYQCUnoTxQ_10collection6common17snapshots_managerNtBJ_20SnapshotStorageCloud10store_file0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cgy) #24
          to label %bb.or unwind label %bb.oq

.thread110:                                       ; preds = %bb.yr, %bb.abt, %bb.yz
  %i.cgz = phi ptr [ %i.bzp, %bb.yz ], [ %i.bzd, %bb.yr ], [ %i.cct, %bb.abt ]
  %.sink.i13.ph = phi i8 [ 4, %bb.yz ], [ 3, %bb.yr ], [ 5, %bb.abt ]
  store i8 %.sink.i13.ph, ptr %i.cgz, align 8, !noalias !10812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  br label %bb.aby

.thread115:                                       ; preds = %bb.zh, %bb.yv
  %i.cha = phi ptr [ %i.bzp, %bb.zh ], [ %i.bze, %bb.yv ]
  %i.chb = phi ptr [ %i.bzq, %bb.zh ], [ %i.bzf, %bb.yv ]
  store i64 -1, ptr %i.bd, align 8, !noalias !10812
  %.sroa.10100.0..sroa_idx101117 = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10100, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10100.0..sroa_idx101117, i64 64, i1 false), !noalias !10945
  store i8 1, ptr %i.cha, align 8, !noalias !10812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  br label %bb.abz

bb.abx:                                           ; preds = %bb.abu
  %.sroa.098.0.copyload99.pr = load i64, ptr %i.bd, align 8, !noalias !10945 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10100, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.897.0..sroa_idx.i, i64 64, i1 false), !noalias !10945
  store i8 1, ptr %i.cgq, align 8, !noalias !10812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  %i.chc = icmp eq i64 %.sroa.098.0.copyload99.pr, -2
  br i1 %i.chc, label %bb.aby, label %bb.abz

bb.aby:                                           ; preds = %.thread110, %bb.abx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10100)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.abz:                                           ; preds = %.thread115, %bb.abx
  %i.chd = phi ptr [ %i.chb, %.thread115 ], [ %i.cgr, %bb.abx ]
  %.sroa.098.0.copyload99118 = phi i64 [ -1, %.thread115 ], [ %.sroa.098.0.copyload99.pr, %bb.abx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10100, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10100)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs0_NtNtCsPYQCUnoTxQ_10collection6common17snapshots_managerNtBJ_20SnapshotStorageCloud10store_file0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.chd)
          to label %bb.op unwind label %bb.aca

bb.aca:                                           ; preds = %bb.oo, %bb.abz
  %i.che = landingpad { ptr, i32 }
          cleanup
  br label %bb.or
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4_10LocalShard12plunge_async0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 2 uses
  %.sroa.835 = alloca [64 x i8], align 8          ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 330 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !range !46, !noundef !20
  switch i8 %i.g, label %default.unreachable56 [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
end_hunk_1
