Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.030?download=true
inline.NumInlined: 3562
inline.NumDeleted: 1643
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB6_10Collection19do_query_batch_impl0Csl8OoimOLbh_6qdrant:bb.a
  %i.ah = load i32, ptr %i.ag, align 8, !range !48, !noundef !11
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 1, ptr %i.g, align 8, !noalias !2896
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.at, align 8, !noalias !2896
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !2897
  %i.au = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 40, 105) 40, i64 noundef 8) #20, !noalias !2897 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.i, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #24
          to label %.noexc.i unwind label %bb.g, !noalias !2896

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit37 unwind label %bb.h, !noalias !2896

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2896
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2896
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.au, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.az = load ptr, ptr %i.v, align 8, !nonnull !11, !align !12, !noundef !11
  %i.ba = atomicrmw add ptr %i.au, i64 1 monotonic, align 8
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ad, align 8
  %i.bd = load i32, ptr %i.ai, align 8, !range !48, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %i.be = load ptr, ptr %i.aj, align 8, !alias.scope !2898, !noalias !2899, !nonnull !11, !noundef !11 ; 2 uses
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !2900
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2898, !noalias !2899, !nonnull !11, !noundef !11 ; 2 uses
  %i.bj = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !noalias !2900
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.m

bb.l:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bm = load i8, ptr %i.bl, align 8, !range !35, !alias.scope !2898, !noalias !2899, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2898, !noalias !2899, !nonnull !11, !noundef !11 ; 2 uses
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8, !noalias !2900
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
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #23
  unreachable

bb.r:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #23
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
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !17, !noalias !2901
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2901
  br label %bb.bg

bb.u:                                             ; preds = %.thread, %bb.s
  %i.by = phi ptr [ %i.bt, %.thread ], [ %i.bx, %bb.s ]
  %i.bz = phi ptr [ %i.bs, %.thread ], [ %i.bw, %bb.s ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 441
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i8 1, ptr %i.ca, align 1, !noalias !2901
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !noalias !2901
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cg = load i64, ptr %i.bz, align 8, !range !16, !noalias !2901, !noundef !11
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !2901
  store i64 %i.cg, ptr %i.cf, align 8, !noalias !2901
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i64 %i.ci, ptr %i.cj, align 8, !noalias !2901
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !2901, !nonnull !11, !align !12, !noundef !11
  store ptr %i.cm, ptr %i.ck, align 8, !noalias !2901, !captures !50
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cp = load i64, ptr %i.co, align 8, !noalias !2901
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cr = load i32, ptr %i.cq, align 8, !range !48, !noalias !2901, !noundef !11
  store i64 %i.cp, ptr %i.cn, align 8, !noalias !2901
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i32 %i.cr, ptr %i.cs, align 8, !noalias !2901
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 240
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false), !noalias !2901
  %3 = load <2 x ptr>, ptr %i.cb, align 8, !noalias !2901
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %3, <2 x i64> <i64 360, i64 0>
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %5, ptr %i.cc, align 8, !noalias !2901
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2901
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #23
          to label %.noexc29 unwind label %bb.bv

.noexc29:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.s
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #23
          to label %.noexc30 unwind label %bb.bv

.noexc30:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.s
  %i.cv = phi ptr [ %i.by, %bb.u ], [ %i.bx, %bb.s ] ; 15 uses
  %i.cw = phi ptr [ %i.bz, %bb.u ], [ %i.bw, %bb.s ] ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  %i.cy = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cx, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.z unwind label %bb.y, !noalias !2902 ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cx) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i unwind label %bb.ay, !noalias !2902

bb.z:                                             ; preds = %bb.x
  %i.da = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.bw, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = extractvalue { ptr, ptr } %i.cy, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  store ptr %i.da, ptr %i.dd, align 8, !noalias !2901
  %i.de = getelementptr i8, ptr %1, i64 408       ; 2 uses
  store ptr %i.dc, ptr %i.de, align 8, !noalias !2901
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.dg = load i8, ptr %i.df, align 8, !range !24, !noalias !2901, !noundef !11
  %cond.i.i = icmp eq i8 %i.dg, 3
  br i1 %cond.i.i, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.di = load i8, ptr %i.dh, align 8, !range !24, !noalias !2901, !noundef !11
  %cond.i.i.i = icmp eq i8 %i.di, 3
  br i1 %cond.i.i.i, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.dk = load i8, ptr %i.dj, align 8, !range !24, !noalias !2901, !noundef !11
  %cond.i.i.i.i = icmp eq i8 %i.dk, 3
  br i1 %cond.i.i.i.i, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.dl)
          to label %bb.ag unwind label %bb.ae, !noalias !2902

bb.ae:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val2.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !noalias !2901, !align !12, !noundef !11 ; 2 uses
  %i.do = icmp eq ptr %.val2.i.i.i.i.i, null
  br i1 %i.do, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr i8, ptr %1, i64 496
  %.val3.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !noalias !2901
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !2902, !nonnull !11, !noundef !11
  invoke void %i.dr(ptr noundef %.val3.i.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i unwind label %bb.ai, !noalias !2902, !inline_history !1

bb.ag:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !2901, !align !12, !noundef !11 ; 2 uses
  %i.dt = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.dt, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = getelementptr i8, ptr %1, i64 496
  %.val1.i.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !2901
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !2902, !nonnull !11, !noundef !11
  invoke void %i.dw(ptr noundef %.val1.i.i.i.i.i)
          to label %bb.ak unwind label %bb.aj, !noalias !2902, !inline_history !38

bb.ai:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2902
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit44.i

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.858.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2901
  %.val.i = load ptr, ptr %i.de, align 8, !noalias !2901, !noundef !11
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !2901, !nonnull !11, !align !12, !noundef !11
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB2_11ShardHolder13select_shards(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ea)
          to label %bb.am unwind label %bb.al, !noalias !2902

bb.al:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2901
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.858.i)
  br label %.body48.i

bb.am:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %i.ec = load i64, ptr %i.f, align 8, !range !25, !alias.scope !2904, !noalias !2905, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ec, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.858.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false), !alias.scope !2906, !noalias !2901
  br i1 %.not.i.i, label %bb.an, label %bb.az

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2901
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.858.i, i64 24, i1 false), !noalias !2901
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.858.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2901
  %i.ef = getelementptr i8, ptr %1, i64 424       ; 2 uses
  %.val34.i = load ptr, ptr %i.ef, align 8, !noalias !2901, !nonnull !11, !noundef !11 ; 2 uses
  %i.eg = getelementptr i8, ptr %1, i64 432       ; 3 uses
  %.val35.i = load i64, ptr %i.eg, align 8, !noalias !2901, !noundef !11
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.val34.i, i64 %.val35.i
  invoke void @_RNvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtBb_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB1W_10collection5queryNtB4b_10Collection31batch_query_shards_concurrently00ENtCs9XvERIT2X68_9itertools9Itertools6uniqueCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noundef nonnull %.val34.i, ptr noundef nonnull %i.eh)
          to label %bb.ap unwind label %bb.ao, !noalias !2902

bb.ao:                                            ; preds = %bb.an
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ej = invoke noundef i64 @_RNvXs2_NtCs9XvERIT2X68_9itertools11unique_implINtB5_6UniqueINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB14_5slice4iter4IterTRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set15ShardReplicaSetEINtNtB14_6option6OptionRNtNtCs607s0NAIaWN_7segment5types8ShardKeyEEENCNCNvMNtNtB2Q_10collection5queryNtB56_10Collection31batch_query_shards_concurrently00EENtNtNtB12_6traits8iterator8Iterator5countCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.e)
          to label %bb.as unwind label %bb.ar, !noalias !2902

bb.aq:                                            ; preds = %bb.ar, %bb.ao
  %.pn12.i = phi { ptr, i32 } [ %i.ek, %bb.ar ], [ %i.ei, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2901
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2901
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 441
  store i8 0, ptr %i.el, align 1, !noalias !2901
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !noalias !2901, !nonnull !11, !noundef !11
  %.val36.i = load i64, ptr %i.eg, align 8, !noalias !2901, !noundef !11 ; 2 uses
  %i.eo = icmp ult i64 %.val36.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp eq i64 %i.ej, 1
  %i.eq = invoke noundef nonnull ptr @_RNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB4_10Collection43modify_shard_query_for_undersampling_limits(ptr noundef nonnull %i.en, i64 noundef %.val36.i, i1 noundef zeroext %i.ep)
          to label %bb.at unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit39.i, !noalias !2902

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit39.i: ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtBG_3vec3VecNtNtCs5QaNqjAn6vc_5shard5query17ShardQueryRequestEEECsl8OoimOLbh_6qdrant.exit.i

bb.at:                                            ; preds = %bb.as
  store ptr %i.eq, ptr %i.em, align 8, !noalias !2901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2901
  %.val32.i = load ptr, ptr %i.ef, align 8, !noalias !2901, !nonnull !11, !noundef !11 ; 2 uses
  %.val33.i = load i64, ptr %i.eg, align 8, !noalias !2901, !noundef !11
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.val32.i, i64 %.val33.i
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.ev = load ptr, ptr %i.dz, align 8, !noalias !2901, !nonnull !11, !align !12, !noundef !11
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  store ptr %.val32.i, ptr %i.d, align 8, !alias.scope !2908, !noalias !2909
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.es, ptr %i.ey, align 8, !alias.scope !2908, !noalias !2909
  %i.ez = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.em, ptr %i.ez, align 8, !alias.scope !2910, !noalias !2901
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.et, ptr %.sroa.565.0..sroa_idx.i, align 8, !alias.scope !2910, !noalias !2901
  %.sroa.666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
end_hunk_0
