Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.034?download=true
inline.NumInlined: 3417
inline.NumDeleted: 1659
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB6_10Collection19do_query_batch_impl0Csl8OoimOLbh_6qdrant:bb.a
  %i.ah = load i32, ptr %i.ag, align 8, !range !48, !noundef !12
  store i64 %i.af, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %i.al = invoke { i64, i32 } @_RNvMNtNtCsjZG7hsAZr3B_5tokio4time7instantNtB2_7Instant3now()
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %bb.co

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit37: ; preds = %bb.g, %bb.cm, %bb.cn, %bb.d
  %.pn22 = phi { ptr, i32 } [ %i.an, %bb.d ], [ %.pn19.pn, %bb.cm ], [ %.pn19.pn, %bb.cn ], [ %i.aw, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am) #21
          to label %bb.cx unwind label %bb.p

bb.d:                                             ; preds = %bb.cw, %bb.cl, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit37

bb.e:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ap = extractvalue { i64, i32 } %i.al, 0
  %i.aq = extractvalue { i64, i32 } %i.al, 1
  store i64 %i.ap, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i32 %i.aq, ptr %i.ar, align 8
  store i8 0, ptr %i.t, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 1, ptr %i.g, align 8, !noalias !2774
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.at, align 8, !noalias !2774
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !2775
  %i.au = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 40, 105) 40, i64 noundef 8) #20, !noalias !2775 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.i, !prof !28

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24
          to label %.noexc.i unwind label %bb.g, !noalias !2774

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit37 unwind label %bb.h, !noalias !2774

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2774
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2774
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.au, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.az = load ptr, ptr %i.v, align 8, !nonnull !12, !align !13, !noundef !12
  %i.ba = atomicrmw add ptr %i.au, i64 1 monotonic, align 8
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ad, align 8
  %i.bd = load i32, ptr %i.ai, align 8, !range !48, !noundef !12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  %i.be = load ptr, ptr %i.aj, align 8, !alias.scope !2776, !noalias !2777, !nonnull !12, !noundef !12 ; 2 uses
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !2778
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2776, !noalias !2777, !nonnull !12, !noundef !12 ; 2 uses
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !noalias !2778
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bm = load i8, ptr %i.bl, align 8, !range !36, !alias.scope !2776, !noalias !2777, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2776, !noalias !2777, !nonnull !12, !noundef !12 ; 2 uses
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8, !noalias !2778
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %.thread

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

.thread:                                          ; preds = %bb.m
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1253.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 208
  store <2 x i64> %i.aa, ptr %i.br, align 8
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i64 %i.bc, ptr %.sroa.950.0..sroa_idx, align 8
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  store i32 %i.bd, ptr %.sroa.1051.0..sroa_idx, align 8
  %.sroa.1152.sroa.8.0..sroa.1152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.be, ptr %.sroa.1152.sroa.8.0..sroa.1152.0..sroa_idx.sroa_idx, align 8
  %.sroa.1152.sroa.9.0..sroa.1152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr %i.bi, ptr %.sroa.1152.sroa.9.0..sroa.1152.0..sroa_idx.sroa_idx, align 8
  %.sroa.1152.sroa.10.0..sroa.1152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %i.bo, ptr %.sroa.1152.sroa.10.0..sroa.1152.0..sroa_idx.sroa_idx, align 8
  %.sroa.1152.sroa.11.0..sroa.1152.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store i8 %i.bm, ptr %.sroa.1152.sroa.11.0..sroa.1152.0..sroa_idx.sroa_idx, align 8
  %.sroa.1354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.az, ptr %.sroa.1354.0..sroa_idx, align 8
  %.sroa.1455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.au, ptr %.sroa.1455.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.ac, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.962)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 440
  br label %bb.u

bb.p:                                             ; preds = %bb.cn, %bb.dd, %bb.db, %bb.cp, %.body31, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit37
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #23
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #23
  unreachable

.body31:                                          ; preds = %bb.bv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit53.i
  %i.bv = phi ptr [ %i.gf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit53.i ], [ %i.bw, %bb.bv ]
  %.pn7 = phi { ptr, i32 } [ %.pn30.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit53.i ], [ %i.hh, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.962)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtBI_10Collection31batch_query_shards_concurrently0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bv) #21
          to label %bb.cm unwind label %bb.p

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !18, !noalias !2779
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.962)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 3 uses
  switch i8 %.pre, label %default.unreachable104 [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 4, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2779
  br label %bb.bg

bb.u:                                             ; preds = %.thread, %bb.s
  %i.by = phi ptr [ %i.bt, %.thread ], [ %i.bx, %bb.s ]
  %i.bz = phi ptr [ %i.bs, %.thread ], [ %i.bw, %bb.s ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 441
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 1, ptr %i.ca, align 1, !noalias !2779
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !2779
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cg = load i64, ptr %i.bz, align 8, !range !17, !noalias !2779, !noundef !12
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !2779
  store i64 %i.cg, ptr %i.cf, align 8, !noalias !2779
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 %i.ci, ptr %i.cj, align 8, !noalias !2779
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !2779, !nonnull !12, !align !13, !noundef !12
  store ptr %i.cm, ptr %i.ck, align 8, !noalias !2779, !captures !50
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cp = load i64, ptr %i.co, align 8, !noalias !2779
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cr = load i32, ptr %i.cq, align 8, !range !48, !noalias !2779, !noundef !12
  store i64 %i.cp, ptr %i.cn, align 8, !noalias !2779
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i32 %i.cr, ptr %i.cs, align 8, !noalias !2779
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false), !noalias !2779
  %3 = load <2 x ptr>, ptr %i.cb, align 8, !noalias !2779
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %3, <2 x i64> <i64 360, i64 0>
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %5, ptr %i.cc, align 8, !noalias !2779
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2779
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #23
          to label %.noexc29 unwind label %bb.bv

.noexc29:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #23
          to label %.noexc30 unwind label %bb.bv

.noexc30:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.s
  %i.cv = phi ptr [ %i.by, %bb.u ], [ %i.bx, %bb.s ] ; 15 uses
  %i.cw = phi ptr [ %i.bz, %bb.u ], [ %i.bw, %bb.s ] ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  %i.cy = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %bb.y, !noalias !2780 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cx) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i unwind label %bb.ay, !noalias !2780

bb.z:                                             ; preds = %bb.x
  %i.da = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.bw, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = extractvalue { ptr, ptr } %i.cy, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  store ptr %i.da, ptr %i.dd, align 8, !noalias !2779
  %i.de = getelementptr i8, ptr %1, i64 408       ; 2 uses
  store ptr %i.dc, ptr %i.de, align 8, !noalias !2779
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.dg = load i8, ptr %i.df, align 8, !range !25, !noalias !2779, !noundef !12
  %cond.i.i = icmp eq i8 %i.dg, 3
  br i1 %cond.i.i, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.di = load i8, ptr %i.dh, align 8, !range !25, !noalias !2779, !noundef !12
  %cond.i.i.i = icmp eq i8 %i.di, 3
  br i1 %cond.i.i.i, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.dk = load i8, ptr %i.dj, align 8, !range !25, !noalias !2779, !noundef !12
  %cond.i.i.i.i = icmp eq i8 %i.dk, 3
  br i1 %cond.i.i.i.i, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.dl)
          to label %bb.ag unwind label %bb.ae, !noalias !2780

bb.ae:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val2.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !2779, !align !13, !noundef !12 ; 2 uses
  %i.do = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.do, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr i8, ptr %1, i64 496
  %.val3.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !noalias !2779
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !2780, !nonnull !12, !noundef !12
  invoke void %i.dr(ptr noundef %.val3.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i unwind label %bb.ai, !noalias !2780, !inline_history !1

bb.ag:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !2779, !align !13, !noundef !12 ; 2 uses
  %i.dt = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.dt, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = getelementptr i8, ptr %1, i64 496
  %.val1.i.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !2779
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !2780, !nonnull !12, !noundef !12
  invoke void %i.dw(ptr noundef %.val1.i.i.i.i.i)
          to label %bb.ak unwind label %bb.aj, !noalias !2780, !inline_history !38

bb.ai:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2780
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.858.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2779
  %.val.i = load ptr, ptr %i.de, align 8, !noalias !2779, !noundef !12
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !2779, !nonnull !12, !align !13, !noundef !12
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB2_11ShardHolder13select_shards(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea)
          to label %bb.am unwind label %bb.al, !noalias !2780

bb.al:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.858.i)
  br label %.body48.i

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2781)
  %i.ec = load i64, ptr %i.f, align 8, !range !26, !alias.scope !2782, !noalias !2783, !noundef !12 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ec, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.858.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false), !alias.scope !2784, !noalias !2779
  br i1 %.not.i.i, label %bb.an, label %bb.az

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2779
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.858.i, i64 24, i1 false), !noalias !2779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.858.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2779
  %i.ef = getelementptr i8, ptr %1, i64 424       ; 2 uses
  %.val34.i = load ptr, ptr %i.ef, align 8, !noalias !2779, !nonnull !12, !noundef !12 ; 2 uses
  %i.eg = getelementptr i8, ptr %1, i64 432       ; 3 uses
  %.val35.i = load i64, ptr %i.eg, align 8, !noalias !2779, !noundef !12
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.val34.i, i64 %.val35.i
  invoke void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBb_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB1W_10collection5queryNtB4b_10Collection31batch_query_shards_concurrently00ENtCs9XvERIT2X68_9itertools9Itertools6uniqueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noundef nonnull %.val34.i, ptr noundef nonnull %i.eh)
          to label %bb.ap unwind label %bb.ao, !noalias !2780

bb.ao:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ej = invoke noundef i64 @_RNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB5_6UniqueINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtB14_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB2Q_10collection5queryNtB56_10Collection31batch_query_shards_concurrently00EENtNtNtB12_6traits8iterator8Iterator5countCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e)
          to label %bb.as unwind label %bb.ar, !noalias !2780

bb.aq:                                            ; preds = %bb.ar, %bb.ao
  %.pn12.i = phi { ptr, i32 } [ %i.ek, %bb.ar ], [ %i.ei, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2779
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2779
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 441
  store i8 0, ptr %i.el, align 1, !noalias !2779
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !noalias !2779, !nonnull !12, !noundef !12
  %.val36.i = load i64, ptr %i.eg, align 8, !noalias !2779, !noundef !12 ; 2 uses
  %i.eo = icmp ult i64 %.val36.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp eq i64 %i.ej, 1
  %i.eq = invoke noundef nonnull ptr @_RNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB4_10Collection43modify_shard_query_for_undersampling_limits(ptr noundef nonnull %i.en, i64 noundef %.val36.i, i1 noundef zeroext %i.ep)
          to label %bb.at unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit39.i, !noalias !2780

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit39.i: ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit.i

bb.at:                                            ; preds = %bb.as
  store ptr %i.eq, ptr %i.em, align 8, !noalias !2779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2779
  %.val32.i = load ptr, ptr %i.ef, align 8, !noalias !2779, !nonnull !12, !noundef !12 ; 2 uses
  %.val33.i = load i64, ptr %i.eg, align 8, !noalias !2779, !noundef !12
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val32.i, i64 %.val33.i
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ev = load ptr, ptr %i.dz, align 8, !noalias !2779, !nonnull !12, !align !13, !noundef !12
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  store ptr %.val32.i, ptr %i.d, align 8, !alias.scope !2786, !noalias !2787
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.es, ptr %i.ey, align 8, !alias.scope !2786, !noalias !2787
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.em, ptr %i.ez, align 8, !alias.scope !2788, !noalias !2779
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.et, ptr %.sroa.565.0..sroa_idx.i, align 8, !alias.scope !2788, !noalias !2779
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB1s_11ShardHolder15stop_gracefully000ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant:bb.a
bb.cd:                                            ; preds = %bb.cc
  %i.gn = landingpad { ptr, i32 }
          cleanup
  %.val31.i.i.i = load ptr, ptr %i.gl, align 8, !noalias !6427
  %i.go = getelementptr i8, ptr %0, i64 1504
  %.val32.i.i.i = load ptr, ptr %i.go, align 8, !noalias !6427, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant(ptr %.val31.i.i.i, ptr nonnull %.val32.i.i.i) #21
          to label %.body57.i.i.i unwind label %bb.bg

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.gm, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6427
  br label %bb.cr

bb.cg:                                            ; preds = %bb.ce
  %.val.i.i.i = load ptr, ptr %i.gl, align 8, !noalias !6427 ; 5 uses
  %i.gp = getelementptr i8, ptr %0, i64 1504
  %.val30.i.i.i = load ptr, ptr %i.gp, align 8, !noalias !6427, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  %i.gq = load ptr, ptr %.val30.i.i.i, align 8, !invariant.load !12 ; 2 uses
  %.not.i.i55.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i55.i.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke void %i.gq(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.gr = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !14, !invariant.load !12 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit59.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gu = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !range !15, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.gs, i64 noundef range(i64 1, 536870913) %i.gv) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit59.i.i.i

bb.ck:                                            ; preds = %bb.ch
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !range !14, !invariant.load !12 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %.body57.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ha = getelementptr inbounds nuw i8, ptr %.val30.i.i.i, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !range !15, !invariant.load !12
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.gy, i64 noundef range(i64 1, 536870913) %i.hb) #20
  br label %.body57.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECsl8OoimOLbh_6qdrant.exit59.i.i.i: ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6427
  br label %bb.at

bb.cm:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(720) %i.dk)
          to label %bb.cs unwind label %bb.co

bb.cn:                                            ; preds = %bb.cp, %bb.co, %bb.bh
  %i.hc = phi ptr [ %i.dg, %bb.co ], [ %i.ek, %bb.cp ], [ %i.ek, %bb.bh ]
  %i.hd = phi ptr [ %i.dh, %bb.co ], [ %i.el, %bb.cp ], [ %i.el, %bb.bh ]
  %i.he = phi ptr [ %i.di, %bb.co ], [ %i.em, %bb.cp ], [ %i.em, %bb.bh ]
  %i.hf = phi ptr [ %i.dj, %bb.co ], [ %i.en, %bb.cp ], [ %i.en, %bb.bh ]
  %.pn28.i.i.i = phi { ptr, i32 } [ %i.hg, %bb.co ], [ %.pn23.pn.i.i.i, %bb.cp ], [ %.pn23.pn.i.i.i, %bb.bh ]
  store i8 2, ptr %i.he, align 8, !noalias !6427
  br label %.body20.i.i

bb.co:                                            ; preds = %bb.cm
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cp:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(720) %i.eo) #21
          to label %bb.cn unwind label %bb.bg

bb.cq:                                            ; preds = %bb.av, %bb.au
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i

bb.cr:                                            ; preds = %bb.cf, %bb.bv, %bb.bl, %bb.az
  %i.hi = phi ptr [ %i.er, %bb.bl ], [ %i.fm, %bb.bv ], [ %i.gh, %bb.cf ], [ %i.do, %bb.az ]
  %i.hj = phi ptr [ %i.et, %bb.bl ], [ %i.fo, %bb.bv ], [ %i.gj, %bb.cf ], [ %i.dq, %bb.az ]
  %.sink.i.ph.i.i = phi i8 [ 4, %bb.bl ], [ 5, %bb.bv ], [ 6, %bb.cf ], [ 3, %bb.az ]
  store i8 %.sink.i.ph.i.i, ptr %i.hj, align 8, !noalias !6427
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736.i.i)
  br label %bb.dc

bb.cs:                                            ; preds = %bb.cm, %bb.at
  store i8 1, ptr %i.di, align 8, !noalias !6427
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard15stop_gracefully0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.dj)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.736.i.i)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cu, %bb.w
  %i.hm = phi ptr [ %i.dg, %bb.cu ], [ %i.x, %bb.w ] ; 2 uses
  %i.hn = phi ptr [ %i.dh, %bb.cu ], [ %i.y, %bb.w ] ; 2 uses
  %i.ho = phi ptr [ %i.hl, %bb.cu ], [ %i.ad, %bb.w ]
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho)
          to label %bb.cw unwind label %bb.y

bb.cv:                                            ; preds = %bb.i, %bb.h
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cw:                                            ; preds = %.invoke.i.i
  store i8 1, ptr %i.hm, align 8, !noalias !6423
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet15stop_gracefully0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.hn)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.cy:                                            ; preds = %bb.cw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6430)
  %i.hr = load ptr, ptr %0, align 8, !alias.scope !6431, !noalias !6419, !nonnull !12, !noundef !12
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !6431
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.cz, label %_RNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB8_11ShardHolder15stop_gracefully000Csl8OoimOLbh_6qdrant.exit.thread

bb.cz:                                            ; preds = %bb.cy
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #22
          to label %_RNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB8_11ShardHolder15stop_gracefully000Csl8OoimOLbh_6qdrant.exit.thread unwind label %bb.da

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.da, %bb.c, %bb.b
  %.pn9.i = phi { ptr, i32 } [ %i.hu, %bb.da ], [ %.pn7.i, %bb.c ], [ %.pn7.i, %bb.b ]
  store i8 2, ptr %i.h, align 8, !noalias !6419
  resume { ptr, i32 } %.pn9.i

bb.da:                                            ; preds = %bb.cz
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEECsl8OoimOLbh_6qdrant.exit.i

bb.db:                                            ; preds = %.body.i, %bb.c
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.dc:                                            ; preds = %bb.cr, %bb.m
  %i.hw = phi ptr [ %i.x, %bb.m ], [ %i.hi, %bb.cr ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.m ], [ 4, %bb.cr ]
  store i8 %.sink.i.ph.i, ptr %i.hw, align 8, !noalias !6423
  br label %_RNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB8_11ShardHolder15stop_gracefully000Csl8OoimOLbh_6qdrant.exit.thread

_RNCNCNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB8_11ShardHolder15stop_gracefully000Csl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.cy, %bb.cz, %bb.dc
  %storemerge = phi i8 [ 3, %bb.dc ], [ 1, %bb.cz ], [ 1, %bb.cy ]
  %i.hx = phi i64 [ 1, %bb.dc ], [ 0, %bb.cz ], [ 0, %bb.cy ]
  store i8 %storemerge, ptr %i.h, align 8, !noalias !6419
  %i.hy = insertvalue { i64, i64 } poison, i64 %i.hx, 0
  %i.hz = insertvalue { i64, i64 } %i.hy, i64 %i.g, 1
  ret { i64, i64 } %i.hz
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB1o_15ShardReplicaSet28on_strict_mode_config_update0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !range !25, !noalias !6437, !noundef !12
  switch i8 %i.f, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.b
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6437
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6437
  %3 = load <2 x ptr>, ptr %1, align 8, !noalias !6437
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %3, <2 x i64> <i64 432, i64 0>
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %5, ptr %i.g, align 8, !noalias !6437
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !6437
  br label %bb.f

.body.i:                                          ; preds = %bb.u, %bb.t, %bb.q, %bb.m, %bb.l, %bb.g
  %.pn9.i = phi { ptr, i32 } [ %i.ai, %bb.u ], [ %i.q, %bb.l ], [ %i.ah, %bb.t ], [ %i.i, %bb.g ], [ %i.ac, %bb.q ], [ %i.q, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6437
  store i8 2, ptr %i.e, align 8, !noalias !6437
  resume { ptr, i32 } %.pn9.i

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #23, !noalias !6437
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #23, !noalias !6437
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6437
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  invoke fastcc void @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g, !noalias !6438

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6437
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEE5write0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.h) #21
          to label %.body.i unwind label %bb.v, !noalias !6438

bb.h:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %i.a, align 8, !noalias !6437, !noundef !12
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !6437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6437
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i8, ptr %i.l, align 8, !range !25, !noalias !6437, !noundef !12
  %cond.i.i = icmp eq i8 %i.m, 3
  br i1 %cond.i.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = load i8, ptr %i.n, align 8, !range !25, !noalias !6437, !noundef !12
  %cond.i.i.i = icmp eq i8 %i.o, 3
  br i1 %cond.i.i.i, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.p)
          to label %bb.n unwind label %bb.l, !noalias !6438

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val2.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !6437, !align !13, !noundef !12 ; 2 uses
  %i.s = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.s, label %.body.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %1, i64 56
  %.val3.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !6437
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !6438, !nonnull !12, !noundef !12
  invoke void %i.v(ptr noundef %.val3.i.i.i.i)
          to label %.body.i unwind label %bb.p, !noalias !6438, !inline_history !1

bb.n:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.w, align 8, !noalias !6437, !align !13, !noundef !12 ; 2 uses
  %i.x = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.x, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr i8, ptr %1, i64 56
  %.val1.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !6437
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !6438, !nonnull !12, !noundef !12
  invoke void %i.aa(ptr noundef %.val1.i.i.i.i)
          to label %bb.r unwind label %bb.q, !noalias !6438, !inline_history !66

bb.p:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6438
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !noalias !6437, !noundef !12 ; 2 uses
  %i.ae = load i64, ptr %.val.i, align 8, !range !31, !alias.scope !6439, !noalias !6438, !noundef !12
  %.not.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i, label %.invoke.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !6437, !nonnull !12, !align !13, !noundef !12
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtB2_5Shard28on_strict_mode_config_update(ptr noalias nofree noundef nonnull align 8 dereferenceable(720) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.ag)
          to label %.invoke.i unwind label %bb.t, !noalias !6438

bb.t:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.v, !noalias !6438

.invoke.i:                                        ; preds = %bb.s, %bb.r
  invoke void @_RNvXs3_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock11write_guardINtB5_16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards5shard5ShardEENtNtNtB1n_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.x unwind label %bb.u, !noalias !6438

bb.u:                                             ; preds = %.invoke.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.t, %bb.g
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !6438
  unreachable

bb.w:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6437
  store i8 3, ptr %i.e, align 8, !noalias !6437
  store i64 -2, ptr %0, align 8
  br label %bb.y

bb.x:                                             ; preds = %.invoke.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6437
  store i8 1, ptr %i.e, align 8, !noalias !6437
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsiHzErX7aQFk_12futures_util6stream15futures_orderedINtB5_12OrderWrapperNCNvMsb_NtNtCsjZG7hsAZr3B_5tokio4sync9broadcastINtB1r_8ReceiverINtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEE4recv0ENtNtNtB2p_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6443)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8, !range !25, !noalias !6444, !noundef !12
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !noalias !6444, !nonnull !12, !align !13, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !6444
  %.sroa.712.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %.sroa.712.0..sroa_idx.i, align 8, !noalias !6444
  %i.h = getelementptr i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false), !noalias !6444
  br label %bb.e

.body.i:                                          ; preds = %bb.n, %bb.j, %bb.i, %bb.f
  %.pn4.i = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.j, %bb.f ], [ %i.y, %bb.n ], [ %i.m, %bb.j ]
  store i8 2, ptr %i.d, align 8, !noalias !6444
  resume { ptr, i32 } %.pn4.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #23, !noalias !6444
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #23, !noalias !6444
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs6_NtNtCsjZG7hsAZr3B_5tokio4task4coopINtB5_4CoopINtNtNtB9_4sync9broadcast4RecvINtNtCskKLDkoKarTP_4core6result6ResultbNtNtNtCsgGgPqgSfnMH_7storage15content_manager6errors12StorageErrorEEENtNtNtB1n_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_1
