Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.004?download=true
inline.NumInlined: 20024
inline.NumDeleted: 7135
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNCNvNtNtCsl8OoimOLbh_6qdrant6common9snapshots39try_take_partial_snapshot_recovery_lock0B7_:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.dc = load i8, ptr %i.db, align 8, !range !27, !noalias !43580, !noundef !25
  %i.dd = trunc nuw i8 %i.dc to i1
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB2_11ShardHolder39try_take_partial_snapshot_recovery_lock(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.cd, i32 noundef %i.da, i1 noundef zeroext %i.dd)
          to label %bb.av unwind label %bb.au, !noalias !43581

bb.au:                                            ; preds = %bb.at
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.body.i unwind label %bb.ax, !noalias !43581

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.az unwind label %bb.aw, !noalias !43581

bb.aw:                                            ; preds = %bb.av
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ax:                                            ; preds = %bb.au, %bb.ah
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !43581
  unreachable

bb.ay:                                            ; preds = %bb.af, %bb.ae
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.az:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43580
  %.sroa.0110.0.copyload111 = load i64, ptr %i.b, align 8, !noalias !43582 ; 3 uses
  %.sroa.8112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8112, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8112.0..sroa_idx113, i64 40, i1 false), !noalias !43582
  store i8 1, ptr %i.bx, align 1, !noalias !43580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.di = icmp eq i64 %.sroa.0110.0.copyload111, -2
  br i1 %i.di, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread126, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8112)
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3116, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8112, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8112)
  %.not.i55 = icmp eq i64 %.sroa.0110.0.copyload111, -1
  br i1 %.not.i55, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.3116.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3116, i64 24
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3116.32..sroa_idx, i64 16, i1 false)
  %.sroa.5118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5118.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3116, i64 24, i1 false)
  store i64 %.sroa.0110.0.copyload111, ptr %i.a, align 8, !noalias !43584
  invoke void @_RNvXs0_NtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB5_12StorageErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bl unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3116, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43585)
  call void @llvm.experimental.noalias.scope.decl(metadata !43586)
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !43587, !nonnull !25, !noundef !25
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !43587
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.be, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit58

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dj) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit58 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock17owned_write_guard21OwnedRwLockWriteGuarduEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit58: ; preds = %bb.bd, %bb.be
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i32 -1, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 8, !range !40, !alias.scope !43588, !noundef !25
  %i.dr = icmp eq i64 %i.dq, -1
  br i1 %i.dr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage4rbac14CollectionPassECsl8OoimOLbh_6qdrant.exit, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit58
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i60.invoke unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.body36 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i60.invoke: ; preds = %bb.bg, %bb.x
  %i.du = phi ptr [ %i.bd, %bb.x ], [ %i.dp, %bb.bg ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage4rbac14CollectionPassECsl8OoimOLbh_6qdrant.exit unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i60.invoke
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body36

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage4rbac14CollectionPassECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i60.invoke, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit66, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br label %common.ret

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bn, %bb.v, %bb.u, %.body.thread, %.body, %bb.h, %bb.bf
  %.pn20.pn = phi { ptr, i32 } [ %i.dn, %bb.bf ], [ %.pn18, %bb.v ], [ %i.ec, %bb.bn ], [ %.pn18, %bb.u ], [ %.pn2.i, %.body.thread ], [ %i.at, %.body ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage4rbac14CollectionPassECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dw) #26
          to label %.body36 unwind label %bb.aa

bb.bk:                                            ; preds = %bb.bc
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.bl:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43583
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43589)
  call void @llvm.experimental.noalias.scope.decl(metadata !43590)
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !43591, !nonnull !25, !noundef !25
  %i.ea = atomicrmw sub ptr %i.dz, i64 1 release, align 8, !noalias !43591
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit66

bb.bm:                                            ; preds = %bb.bl
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dy) #28
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit66 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEECsl8OoimOLbh_6qdrant.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update27check_collection_size_limit0Csl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.1260 = alloca [32 x i8], align 8         ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.535 = alloca [32 x i8], align 8          ; 2 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !range !36, !noundef !25
  switch i8 %i.f, label %default.unreachable75 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

default.unreachable75:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !25, !align !32, !noundef !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !25, !align !32, !noundef !25 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 8
  %i.m = load i64, ptr %i.k, align 8, !range !29, !noundef !25
  store <2 x i64> %i.l, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.o, align 8
  %i.q = load i64, ptr %i.o, align 8, !range !29, !noundef !25
  store <2 x i64> %i.p, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 160 ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 8
  %i.u = load i64, ptr %i.s, align 8, !range !29, !noundef !25
  store <2 x i64> %i.t, ptr %i.r, align 8
  %i.v = or i64 %i.q, %i.m
  %or.cond.i = icmp ne i64 %i.v, 0
  %3 = trunc nuw i64 %i.u to i1
  %4 = or i1 %or.cond.i, %3
  br i1 %4, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.w, align 8
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 0, ptr %.sroa.1032.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.g, %bb.m, %bb.s, %bb.y, %bb.ad
  %.pn14.pn = phi { ptr, i32 } [ %i.bc, %bb.ad ], [ %i.ar, %bb.s ], [ %i.ay, %bb.y ], [ %i.y, %bb.g ], [ %i.ag, %bb.m ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn14.pn

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #29
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  invoke fastcc void @_RNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtB4_10Collection26estimated_collection_stats0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.x) #26
          to label %.body unwind label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.d, align 8, !range !109, !noundef !25 ; 3 uses
  %i.aa = icmp eq i64 %i.z, -2
  br i1 %i.aa, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.ah, %bb.i
  %storemerge = phi i8 [ 3, %bb.i ], [ 1, %bb.ah ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ac = load i8, ptr %i.ab, align 8, !range !36, !noundef !25
  %cond.i = icmp eq i8 %i.ac, 3
  br i1 %cond.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.ae = load i8, ptr %i.ad, align 1, !range !36, !noundef !25
  %cond.i.i = icmp eq i8 %i.ae, 3
  br i1 %cond.i.i, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection30estimate_collection_size_stats0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.af)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.ah, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.ai, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n, %bb.k, %bb.j
  %.not.i = icmp eq i64 %i.z, -1
  br i1 %.not.i, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit
  %.not4 = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not4, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !29, !noundef !25
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update34check_collection_vector_size_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.an, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !range !29, !noundef !25
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.w, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43601)
  %i.as = load i64, ptr %i.c, align 8, !range !54, !alias.scope !43602, !noalias !43601, !noundef !25 ; 2 uses
  %.not.i17 = icmp eq i64 %i.as, -1
  br i1 %.not.i17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t
  %.sroa.8.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx41, align 8, !alias.scope !43603
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx41.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx41.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.w:                                             ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update35check_collection_payload_size_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %i.au, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.aa, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !range !29, !noundef !25
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.ac, label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43604)
  %i.az = load i64, ptr %i.b, align 8, !range !54, !alias.scope !43605, !noalias !43604, !noundef !25 ; 2 uses
  %.not.i18 = icmp eq i64 %i.az, -1
  br i1 %.not.i18, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ab:                                            ; preds = %bb.z
  %.sroa.846.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.846.sroa.0.0.copyload = load ptr, ptr %.sroa.846.0..sroa_idx47, align 8, !alias.scope !43606
  %.sroa.846.sroa.6.0..sroa.846.0..sroa_idx47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.846.sroa.6.0..sroa.846.0..sroa_idx47.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update35check_collection_points_count_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.bb, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43607)
  %i.bd = load i64, ptr %i.a, align 8, !range !54, !alias.scope !43608, !noalias !43607, !noundef !25 ; 2 uses
  %.not.i20 = icmp eq i64 %i.bd, -1
  br i1 %.not.i20, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.sroa.852.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.852.sroa.0.0.copyload = load ptr, ptr %.sroa.852.0..sroa_idx53, align 8, !alias.scope !43609
  %.sroa.852.sroa.6.0..sroa.852.0..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.852.sroa.6.0..sroa.852.0..sroa_idx53.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
