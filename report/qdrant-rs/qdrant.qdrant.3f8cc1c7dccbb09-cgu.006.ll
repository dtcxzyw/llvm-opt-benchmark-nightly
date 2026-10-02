Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.006?download=true
inline.NumInlined: 9333
inline.NumDeleted: 3748
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set6updateNtB6_15ShardReplicaSet34check_operation_write_rate_limiter0Csl8OoimOLbh_6qdrant:bb.a
.noexc25.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.body.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.bk)
          to label %.body.thread.i unwind label %bb.dl, !noalias !13023

bb.t:                                             ; preds = %bb.p
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 15 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !range !21, !noalias !13025
  switch i8 %.pre.i.i, label %default.unreachable52 [
    i8 0, label %._crit_edge65.i
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

._crit_edge65.i:                                  ; preds = %bb.t
  %.phi.trans.insert66.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.pre67.i = load ptr, ptr %.phi.trans.insert66.i, align 8, !noalias !13025
  %.phi.trans.insert68.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre69.i = load ptr, ptr %.phi.trans.insert68.i, align 8, !noalias !13025
  %.phi.trans.insert70.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre71.i = load ptr, ptr %.phi.trans.insert70.i, align 8, !noalias !13025
  br label %bb.v

bb.u:                                             ; preds = %bb.x
  unreachable

bb.v:                                             ; preds = %._crit_edge65.i, %.thread.i.i
  %i.bl = phi ptr [ %i.az, %.thread.i.i ], [ %i.ag, %._crit_edge65.i ] ; 4 uses
  %i.bm = phi ptr [ %i.ba, %.thread.i.i ], [ %i.af, %._crit_edge65.i ] ; 4 uses
  %i.bn = phi ptr [ %i.be, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge65.i ] ; 4 uses
  %i.bo = phi ptr [ %i.bb, %.thread.i.i ], [ %.pre71.i, %._crit_edge65.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bc, %.thread.i.i ], [ %.pre69.i, %._crit_edge65.i ]
  %i.bq = phi ptr [ %i.bd, %.thread.i.i ], [ %.pre67.i, %._crit_edge65.i ] ; 2 uses
  %i.br = phi ptr [ %.sroa.10.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge65.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13025
  invoke void @_RNvXNtNtCsPYQCUnoTxQ_10collection10operations16operation_effectNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsNtB2_27EstimateOperationEffectArea20estimate_effect_area(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.bp)
          to label %bb.x unwind label %bb.w, !noalias !13026

.body.thread.i.i:                                 ; preds = %bb.df, %.body17.i.i.i, %.body.i.i.i, %bb.w
  %i.bs = phi ptr [ %i.bl, %bb.w ], [ %i.bl, %.body.i.i.i ], [ %i.kk, %bb.df ], [ %i.co, %.body17.i.i.i ]
  %i.bt = phi ptr [ %i.bm, %bb.w ], [ %i.bm, %.body.i.i.i ], [ %i.kl, %bb.df ], [ %i.cp, %.body17.i.i.i ]
  %i.bu = phi ptr [ %i.bn, %bb.w ], [ %i.bn, %.body.i.i.i ], [ %i.km, %bb.df ], [ %i.cq, %.body17.i.i.i ]
  %i.bv = phi ptr [ %i.br, %bb.w ], [ %i.br, %.body.i.i.i ], [ %i.kn, %bb.df ], [ %i.cr, %.body17.i.i.i ]
  %.pn13.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.w ], [ %.pn11.i.i.i, %.body.i.i.i ], [ %i.kr, %bb.df ], [ %.pn5.i.i.i, %.body17.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13025
  store i8 2, ptr %i.bv, align 8, !noalias !13025
  br label %.body.thread.i

bb.w:                                             ; preds = %bb.v
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.x:                                             ; preds = %bb.v
  %i.bx = load i64, ptr %i.g, align 8, !range !13027, !noalias !13025, !noundef !17 ; 2 uses
  %i.by = icmp ne i64 %i.bx, -9223372036854775807
  call void @llvm.assume(i1 %i.by)
  %i.bz = xor i64 %i.bx, -9223372036854775808     ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 3
  %i.cb = select i1 %i.ca, i64 %i.bz, i64 1       ; 2 uses
  switch i64 %i.cb, label %bb.u [
    i64 0, label %.thread58.i.i
    i64 1, label %bb.y
    i64 2, label %.thread70.i.i.i
  ]

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !13025
  %i.cc = invoke { ptr, i64 } @_RNvXs2_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.aa unwind label %bb.z, !noalias !13026

bb.z:                                             ; preds = %bb.y
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #24
          to label %.body.i.i.i unwind label %bb.af, !noalias !13026

bb.aa:                                            ; preds = %bb.y
  %i.ce = extractvalue { ptr, i64 } %i.cc, 1
  %i.cf = load i64, ptr %i.f, align 8, !range !23, !alias.scope !13028, !noalias !13025, !noundef !17
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.ac, !noalias !13026

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i.i unwind label %bb.ad, !noalias !13026

bb.ad:                                            ; preds = %bb.ac
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13026
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i unwind label %bb.ae, !noalias !13026

.body.i.i.i:                                      ; preds = %bb.ae, %bb.ac, %bb.z
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.cj, %bb.ae ], [ %i.ch, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13025
  br label %.body.thread.i.i

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CowSNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13025
  br label %.thread58.i.i

bb.af:                                            ; preds = %.body17.i.i.i, %bb.z
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13029
  unreachable

.thread70.i.i.i:                                  ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !13025, !nonnull !17, !align !16, !noundef !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.bq, ptr %i.cn, align 8, !noalias !13025
  %.sroa.733.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.bo, ptr %.sroa.733.0..sroa_idx.i.i.i, align 8, !noalias !13025
  %.sroa.834.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.cm, ptr %.sroa.834.0..sroa_idx.i.i.i, align 8, !noalias !13025
  %.sroa.935.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i8 0, ptr %.sroa.935.0..sroa_idx.i.i.i, align 8, !noalias !13025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13025
  br label %bb.ak

bb.ag:                                            ; preds = %bb.t
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
          to label %.noexc17.i.i unwind label %.body.i.i, !noalias !13023

.noexc17.i.i:                                     ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.t
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #26
          to label %.noexc18.i.i unwind label %.body.i.i, !noalias !13023

.noexc18.i.i:                                     ; preds = %bb.ah
  unreachable

.body17.i.i.i:                                    ; preds = %bb.dc, %.body.i.i.i.i
  %i.co = phi ptr [ %i.ds, %.body.i.i.i.i ], [ %i.ag, %bb.dc ]
  %i.cp = phi ptr [ %i.dt, %.body.i.i.i.i ], [ %i.af, %bb.dc ]
  %i.cq = phi ptr [ %i.du, %.body.i.i.i.i ], [ %.phi.trans.insert.i, %bb.dc ]
  %i.cr = phi ptr [ %i.dv, %.body.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.dc ]
  %i.cs = phi ptr [ %i.dx, %.body.i.i.i.i ], [ %i.ct, %bb.dc ]
  %.pn5.i.i.i = phi { ptr, i32 } [ %.pn14.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.kf, %bb.dc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards5shardNtBG_5Shard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.cs) #24
          to label %.body.thread.i.i unwind label %bb.af, !noalias !13029

bb.ai:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13025
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 12 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !34, !noalias !13030
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13025
  switch i8 %.pre.i.i.i, label %default.unreachable52 [
    i8 0, label %._crit_edge74.i.i
    i8 1, label %bb.ao
    i8 2, label %bb.ap
    i8 3, label %bb.aq
    i8 4, label %bb.bb
    i8 5, label %bb.bs
    i8 6, label %bb.cj
  ]

._crit_edge74.i.i:                                ; preds = %bb.ai
  %.phi.trans.insert76.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre77.i.i = load ptr, ptr %.phi.trans.insert76.i.i, align 8, !noalias !13030
  %.phi.trans.insert78.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre75.i.i = load ptr, ptr %i.ct, align 8, !noalias !13030
  %.pre79.i.i = load ptr, ptr %.phi.trans.insert78.i.i, align 8, !noalias !13030
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  unreachable

bb.ak:                                            ; preds = %._crit_edge74.i.i, %.thread70.i.i.i
  %i.cu = phi ptr [ %i.bl, %.thread70.i.i.i ], [ %i.ag, %._crit_edge74.i.i ] ; 6 uses
  %i.cv = phi ptr [ %i.bm, %.thread70.i.i.i ], [ %i.af, %._crit_edge74.i.i ] ; 6 uses
  %i.cw = phi ptr [ %i.bn, %.thread70.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge74.i.i ] ; 6 uses
  %i.cx = phi ptr [ %i.br, %.thread70.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge74.i.i ] ; 6 uses
  %i.cy = phi ptr [ %i.bo, %.thread70.i.i.i ], [ %.pre79.i.i, %._crit_edge74.i.i ] ; 7 uses
  %i.cz = phi ptr [ %i.cm, %.thread70.i.i.i ], [ %.pre77.i.i, %._crit_edge74.i.i ] ; 8 uses
  %i.da = phi ptr [ %i.bq, %.thread70.i.i.i ], [ %.pre75.i.i, %._crit_edge74.i.i ] ; 8 uses
  %i.db = phi ptr [ %.sroa.935.0..sroa_idx.i.i.i, %.thread70.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge74.i.i ] ; 6 uses
  %i.dc = phi ptr [ %i.cn, %.thread70.i.i.i ], [ %i.ct, %._crit_edge74.i.i ] ; 6 uses
  %i.dd = load i64, ptr %i.da, align 8, !range !35, !noalias !13031, !noundef !17 ; 3 uses
  %i.de = icmp ne i64 %i.dd, 4
  call void @llvm.assume(i1 %i.de)
  %i.df = add nsw i64 %i.dd, -2
  %.inv.i.i.i.i = icmp samesign ult i64 %i.dd, 2
  %i.dg = select i1 %.inv.i.i.i.i, i64 2, i64 %i.df
  switch i64 %i.dg, label %bb.aj [
    i64 0, label %bb.am
    i64 1, label %.thread.i.i.i.i
    i64 2, label %.thread130.i.i.i.i
    i64 3, label %.thread131.i.i.i.i
    i64 4, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  invoke void @_RNvMNtNtCsPYQCUnoTxQ_10collection6shards11dummy_shardNtB2_10DummyShard20estimate_cardinality(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) %i.cz)
          to label %bb.dd unwind label %bb.an, !noalias !13031

bb.am:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.cz, ptr %i.dj, align 8, !noalias !13030
  %.sroa.876.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.di, ptr %.sroa.876.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.cy, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 154
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 2, !noalias !13030
  br label %bb.aq

.thread.i.i.i.i:                                  ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %3 = insertelement <2 x ptr> poison, ptr %i.da, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.cy, i64 1
  %5 = getelementptr inbounds nuw i8, <2 x ptr> %4, <2 x i64> <i64 8, i64 0>
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !noalias !13030
  %.sroa.784.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.cy, ptr %.sroa.784.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.885.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.cz, ptr %.sroa.885.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.1087.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i8 0, ptr %.sroa.1087.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13030
  br label %bb.bc

.thread130.i.i.i.i:                               ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.da, ptr %i.dm, align 8, !noalias !13030
  %.sroa.796.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.cy, ptr %.sroa.796.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.897.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.cz, ptr %.sroa.897.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.1099.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i8 0, ptr %.sroa.1099.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13030
  %i.dn = insertelement <2 x ptr> poison, ptr %i.da, i64 0
  %i.do = insertelement <2 x ptr> %i.dn, ptr %i.cy, i64 1
  br label %bb.bt

.thread131.i.i.i.i:                               ; preds = %bb.ak
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !noalias !13030
  %.sroa.7108.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.cy, ptr %.sroa.7108.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.8109.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.cz, ptr %.sroa.8109.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  %.sroa.10111.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i8 0, ptr %.sroa.10111.0..sroa_idx.i.i.i.i, align 8, !noalias !13030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13030
  br label %bb.ck

bb.an:                                            ; preds = %bb.al
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body61.i.i.i.i, %.body39.i.i.i.i, %.body18.i.i.i.i, %.body.i.i.i.i.i, %bb.ar, %bb.an
  %i.ds = phi ptr [ %i.cu, %bb.an ], [ %i.dy, %bb.ar ], [ %i.et, %.body18.i.i.i.i ], [ %i.gl, %.body39.i.i.i.i ], [ %i.dy, %.body.i.i.i.i.i ], [ %i.id, %.body61.i.i.i.i ]
  %i.dt = phi ptr [ %i.cv, %bb.an ], [ %i.dz, %bb.ar ], [ %i.eu, %.body18.i.i.i.i ], [ %i.gm, %.body39.i.i.i.i ], [ %i.dz, %.body.i.i.i.i.i ], [ %i.ie, %.body61.i.i.i.i ]
  %i.du = phi ptr [ %i.cw, %bb.an ], [ %i.ea, %bb.ar ], [ %i.ev, %.body18.i.i.i.i ], [ %i.gn, %.body39.i.i.i.i ], [ %i.ea, %.body.i.i.i.i.i ], [ %i.if, %.body61.i.i.i.i ]
  %i.dv = phi ptr [ %i.cx, %bb.an ], [ %i.eb, %bb.ar ], [ %i.ew, %.body18.i.i.i.i ], [ %i.go, %.body39.i.i.i.i ], [ %i.eb, %.body.i.i.i.i.i ], [ %i.ig, %.body61.i.i.i.i ]
  %i.dw = phi ptr [ %i.db, %bb.an ], [ %i.ec, %bb.ar ], [ %i.ex, %.body18.i.i.i.i ], [ %i.gp, %.body39.i.i.i.i ], [ %i.ec, %.body.i.i.i.i.i ], [ %i.ih, %.body61.i.i.i.i ]
  %i.dx = phi ptr [ %i.dc, %bb.an ], [ %i.ed, %bb.ar ], [ %i.ey, %.body18.i.i.i.i ], [ %i.gq, %.body39.i.i.i.i ], [ %i.ed, %.body.i.i.i.i.i ], [ %i.ii, %.body61.i.i.i.i ]
  %.pn14.pn.i.i.i.i = phi { ptr, i32 } [ %i.dr, %bb.an ], [ %i.ef, %bb.ar ], [ %.pn8.i.i.i.i, %.body18.i.i.i.i ], [ %.pn4.i.i.i.i, %.body39.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.i.i.i.i, %.body61.i.i.i.i ]
  store i8 2, ptr %i.dw, align 8, !noalias !13030
  br label %.body17.i.i.i

bb.ao:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #26
          to label %.noexc19.i.i.i unwind label %bb.dc, !noalias !13026

.noexc19.i.i.i:                                   ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #26
          to label %.noexc20.i.i.i unwind label %bb.dc, !noalias !13026

.noexc20.i.i.i:                                   ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.am, %bb.ai
  %i.dy = phi ptr [ %i.cu, %bb.am ], [ %i.ag, %bb.ai ] ; 5 uses
  %i.dz = phi ptr [ %i.cv, %bb.am ], [ %i.af, %bb.ai ] ; 4 uses
  %i.ea = phi ptr [ %i.cw, %bb.am ], [ %.phi.trans.insert.i, %bb.ai ] ; 5 uses
  %i.eb = phi ptr [ %i.cx, %bb.am ], [ %.phi.trans.insert.i.i, %bb.ai ] ; 5 uses
  %i.ec = phi ptr [ %i.db, %bb.am ], [ %.phi.trans.insert.i.i.i, %bb.ai ] ; 5 uses
  %i.ed = phi ptr [ %i.dc, %bb.am ], [ %i.ct, %bb.ai ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13030
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4_10LocalShard20estimate_cardinality0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.e, ptr noundef nonnull align 8 %i.ee, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.as unwind label %bb.ar, !noalias !13032

bb.ar:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13030
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ee) #24
          to label %.body.i.i.i.i unwind label %bb.ba, !noalias !13032

bb.as:                                            ; preds = %bb.aq
  %i.eg = load i64, ptr %i.e, align 8, !range !24, !noalias !13030, !noundef !17
  %i.eh = icmp eq i64 %i.eg, 2
  br i1 %i.eh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13030
  br label %.thread.i.i.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13030
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.ej = load i8, ptr %i.ei, align 2, !range !21, !noalias !13030, !noundef !17
  %cond.i.i.i.i.i = icmp eq i8 %i.ej, 3
  br i1 %cond.i.i.i.i.i, label %bb.av, label %bb.dd

bb.av:                                            ; preds = %bb.au
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1X_6common15operation_error14OperationErrorEENtNtNtB1k_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %bb.ax unwind label %bb.aw, !noalias !13032

bb.aw:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %.body.i.i.i.i.i unwind label %bb.ay, !noalias !13032

bb.ax:                                            ; preds = %bb.av
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.az, !noalias !13032

bb.ay:                                            ; preds = %bb.aw
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13032
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.az, %bb.aw
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.en, %bb.az ], [ %i.el, %bb.aw ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 0, ptr %i.eo, align 8, !noalias !13030
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 153
  store i8 0, ptr %i.ep, align 1, !noalias !13030
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i8 0, ptr %i.eq, align 8, !noalias !13030
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 153
  store i8 0, ptr %i.er, align 1, !noalias !13030
  br label %bb.dd

bb.ba:                                            ; preds = %.body61.i.i.i.i, %.body39.i.i.i.i, %.body18.i.i.i.i, %bb.ar
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13032
  unreachable

.body18.i.i.i.i:                                  ; preds = %bb.bp, %.body.i17.i.i.i.i
  %i.et = phi ptr [ %i.fn, %.body.i17.i.i.i.i ], [ %i.ag, %bb.bp ]
  %i.eu = phi ptr [ %i.fo, %.body.i17.i.i.i.i ], [ %i.af, %bb.bp ]
  %i.ev = phi ptr [ %i.fp, %.body.i17.i.i.i.i ], [ %.phi.trans.insert.i, %bb.bp ]
  %i.ew = phi ptr [ %i.fq, %.body.i17.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.bp ]
  %i.ex = phi ptr [ %i.fr, %.body.i17.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.bp ]
  %i.ey = phi ptr [ %i.fs, %.body.i17.i.i.i.i ], [ %i.ct, %bb.bp ]
  %i.ez = phi ptr [ %i.fu, %.body.i17.i.i.i.i ], [ %i.fa, %bb.bp ]
  %.pn8.i.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i.i, %.body.i17.i.i.i.i ], [ %i.gk, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13030
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11proxy_shardNtBG_10ProxyShard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ez) #24
          to label %.body.i.i.i.i unwind label %bb.ba, !noalias !13032

bb.bb:                                            ; preds = %bb.ai
  %.phi.trans.insert127.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %.pre128.i.i.i.i = load i8, ptr %.phi.trans.insert127.i.i.i.i, align 8, !range !21, !noalias !13033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13030
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13034)
  switch i8 %.pre128.i.i.i.i, label %default.unreachable52 [
    i8 0, label %._crit_edge63.i.i.i
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.bf
  ]

._crit_edge63.i.i.i:                              ; preds = %bb.bb
  %.phi.trans.insert65.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre66.i.i.i = load ptr, ptr %.phi.trans.insert65.i.i.i, align 8, !noalias !13033
  %i.fb = load <2 x ptr>, ptr %i.fa, align 8, !noalias !13033
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge63.i.i.i, %.thread.i.i.i.i
  %i.fc = phi ptr [ %i.cu, %.thread.i.i.i.i ], [ %i.ag, %._crit_edge63.i.i.i ]
  %i.fd = phi ptr [ %i.cv, %.thread.i.i.i.i ], [ %i.af, %._crit_edge63.i.i.i ]
  %i.fe = phi ptr [ %i.cw, %.thread.i.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge63.i.i.i ]
  %i.ff = phi ptr [ %i.cx, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge63.i.i.i ]
  %i.fg = phi ptr [ %i.db, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge63.i.i.i ]
  %i.fh = phi ptr [ %i.dc, %.thread.i.i.i.i ], [ %i.ct, %._crit_edge63.i.i.i ]
  %i.fi = phi ptr [ %i.cz, %.thread.i.i.i.i ], [ %.pre66.i.i.i, %._crit_edge63.i.i.i ]
  %i.fj = phi ptr [ %.sroa.1087.0..sroa_idx.i.i.i.i, %.thread.i.i.i.i ], [ %.phi.trans.insert127.i.i.i.i, %._crit_edge63.i.i.i ]
  %i.fk = phi ptr [ %i.dl, %.thread.i.i.i.i ], [ %i.fa, %._crit_edge63.i.i.i ]
  %i.fl = phi <2 x ptr> [ %5, %.thread.i.i.i.i ], [ %i.fb, %._crit_edge63.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.fi, ptr %i.fm, align 8, !noalias !13033
  %.sroa.810.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <2 x ptr> %i.fl, ptr %.sroa.810.0..sroa_idx.i.i.i.i.i, align 8, !noalias !13033
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 178
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 2, !noalias !13033
  br label %bb.bf

.body.i17.i.i.i.i:                                ; preds = %.body.i.i.i.i.i.i, %bb.bg
  %.pn4.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.fw, %bb.bg ]
  store i8 2, ptr %i.ft, align 8, !noalias !13033
  br label %.body18.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #26
          to label %.noexc.i.i.i.i unwind label %bb.bp, !noalias !13031

.noexc.i.i.i.i:                                   ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #26
          to label %.noexc20.i.i.i.i unwind label %bb.bp, !noalias !13031

.noexc20.i.i.i.i:                                 ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bc, %bb.bb
  %i.fn = phi ptr [ %i.fc, %bb.bc ], [ %i.ag, %bb.bb ] ; 3 uses
  %i.fo = phi ptr [ %i.fd, %bb.bc ], [ %i.af, %bb.bb ] ; 2 uses
  %i.fp = phi ptr [ %i.fe, %bb.bc ], [ %.phi.trans.insert.i, %bb.bb ] ; 3 uses
  %i.fq = phi ptr [ %i.ff, %bb.bc ], [ %.phi.trans.insert.i.i, %bb.bb ] ; 3 uses
  %i.fr = phi ptr [ %i.fg, %bb.bc ], [ %.phi.trans.insert.i.i.i, %bb.bb ] ; 3 uses
  %i.fs = phi ptr [ %i.fh, %bb.bc ], [ %i.ct, %bb.bb ] ; 2 uses
  %i.ft = phi ptr [ %i.fj, %bb.bc ], [ %.phi.trans.insert127.i.i.i.i, %bb.bb ] ; 3 uses
  %i.fu = phi ptr [ %i.fk, %bb.bc ], [ %i.fa, %bb.bb ]
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtB4_10LocalShard20estimate_cardinality0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull align 8 %i.fv, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.bh unwind label %bb.bg, !noalias !13032

bb.bg:                                            ; preds = %bb.bf
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11local_shardNtBG_10LocalShard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.fv) #24
          to label %.body.i17.i.i.i.i unwind label %bb.bo, !noalias !13035

bb.bh:                                            ; preds = %bb.bf
  %i.fx = load i64, ptr %i.d, align 8, !range !24, !alias.scope !13034, !noalias !13036, !noundef !17
  %i.fy = icmp eq i64 %i.fx, 2
  br i1 %i.fy, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.ga = load i8, ptr %i.fz, align 2, !range !21, !noalias !13033, !noundef !17
  %cond.i.i.i.i.i.i = icmp eq i8 %i.ga, 3
  br i1 %cond.i.i.i.i.i.i, label %bb.bj, label %bb.br

bb.bj:                                            ; preds = %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  invoke void @_RNvXNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_dropINtB2_17AbortOnDropHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1X_6common15operation_error14OperationErrorEENtNtNtB1k_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %bb.bl unwind label %bb.bk, !noalias !13035

bb.bk:                                            ; preds = %bb.bj
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %.body.i.i.i.i.i.i unwind label %bb.bm, !noalias !13035

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB1N_6common15operation_error14OperationErrorEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i unwind label %bb.bn, !noalias !13035

bb.bm:                                            ; preds = %bb.bk
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13035
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.bn, %bb.bk
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ge, %bb.bn ], [ %i.gc, %bb.bk ]
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.gf, align 8, !noalias !13033
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 0, ptr %i.gg, align 1, !noalias !13033
  br label %.body.i17.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i: ; preds = %bb.bl
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.gh, align 8, !noalias !13033
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 0, ptr %i.gi, align 1, !noalias !13033
  br label %bb.br

bb.bo:                                            ; preds = %bb.bg
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13035
  unreachable

bb.bp:                                            ; preds = %bb.be, %bb.bd
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i.i.i

bb.bq:                                            ; preds = %bb.bh
  store i8 3, ptr %i.ft, align 8, !noalias !13033
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13030
  br label %.thread.i.i.i

bb.br:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5o4a4rbYuNS_10tokio_util4task13abort_on_drop17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationNtNtNtB2d_6common15operation_error14OperationErrorEEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i, %bb.bi
  store i8 1, ptr %i.ft, align 8, !noalias !13033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !13030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13030
  br label %bb.dd

.body39.i.i.i.i:                                  ; preds = %bb.cg, %.body.i28.i.i.i.i
  %i.gl = phi ptr [ %i.hf, %.body.i28.i.i.i.i ], [ %i.ag, %bb.cg ]
  %i.gm = phi ptr [ %i.hg, %.body.i28.i.i.i.i ], [ %i.af, %bb.cg ]
  %i.gn = phi ptr [ %i.hh, %.body.i28.i.i.i.i ], [ %.phi.trans.insert.i, %bb.cg ]
  %i.go = phi ptr [ %i.hi, %.body.i28.i.i.i.i ], [ %.phi.trans.insert.i.i, %bb.cg ]
  %i.gp = phi ptr [ %i.hj, %.body.i28.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.cg ]
  %i.gq = phi ptr [ %i.hk, %.body.i28.i.i.i.i ], [ %i.ct, %bb.cg ]
  %i.gr = phi ptr [ %i.hm, %.body.i28.i.i.i.i ], [ %i.gs, %bb.cg ]
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %.pn4.i29.i.i.i.i, %.body.i28.i.i.i.i ], [ %i.ic, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13030
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards19forward_proxy_shardNtBI_17ForwardProxyShard20estimate_cardinality0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.gr) #24
          to label %.body.i.i.i.i unwind label %bb.ba, !noalias !13032

bb.bs:                                            ; preds = %bb.ai
  %.phi.trans.insert124.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %.pre125.i.i.i.i = load i8, ptr %.phi.trans.insert124.i.i.i.i, align 8, !range !21, !noalias !13037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13030
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13038)
  switch i8 %.pre125.i.i.i.i, label %default.unreachable52 [
    i8 0, label %._crit_edge57.i.i.i
    i8 1, label %bb.bu
    i8 2, label %bb.bv
    i8 3, label %bb.bw
  ]

._crit_edge57.i.i.i:                              ; preds = %bb.bs
  %.phi.trans.insert59.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.pre60.i.i.i = load ptr, ptr %.phi.trans.insert59.i.i.i, align 8, !noalias !13037
  %i.gt = load <2 x ptr>, ptr %i.gs, align 8, !noalias !13037
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge57.i.i.i, %.thread130.i.i.i.i
  %i.gu = phi ptr [ %i.cu, %.thread130.i.i.i.i ], [ %i.ag, %._crit_edge57.i.i.i ]
  %i.gv = phi ptr [ %i.cv, %.thread130.i.i.i.i ], [ %i.af, %._crit_edge57.i.i.i ]
  %i.gw = phi ptr [ %i.cw, %.thread130.i.i.i.i ], [ %.phi.trans.insert.i, %._crit_edge57.i.i.i ]
  %i.gx = phi ptr [ %i.cx, %.thread130.i.i.i.i ], [ %.phi.trans.insert.i.i, %._crit_edge57.i.i.i ]
  %i.gy = phi ptr [ %i.db, %.thread130.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge57.i.i.i ]
  %i.gz = phi ptr [ %i.dc, %.thread130.i.i.i.i ], [ %i.ct, %._crit_edge57.i.i.i ]
  %i.ha = phi ptr [ %i.cz, %.thread130.i.i.i.i ], [ %.pre60.i.i.i, %._crit_edge57.i.i.i ]
  %i.hb = phi ptr [ %.sroa.1099.0..sroa_idx.i.i.i.i, %.thread130.i.i.i.i ], [ %.phi.trans.insert124.i.i.i.i, %._crit_edge57.i.i.i ]
  %i.hc = phi ptr [ %i.dm, %.thread130.i.i.i.i ], [ %i.gs, %._crit_edge57.i.i.i ]
  %i.hd = phi <2 x ptr> [ %i.do, %.thread130.i.i.i.i ], [ %i.gt, %._crit_edge57.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.ha, ptr %i.he, align 8, !noalias !13037
  %.sroa.810.0..sroa_idx.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store <2 x ptr> %i.hd, ptr %.sroa.810.0..sroa_idx.i35.i.i.i.i, align 8, !noalias !13037
  %.sroa.11.0..sroa_idx.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 178
  store i8 0, ptr %.sroa.11.0..sroa_idx.i37.i.i.i.i, align 2, !noalias !13037
  br label %bb.bw

.body.i28.i.i.i.i:                                ; preds = %.body.i.i32.i.i.i.i, %bb.bx
  %.pn4.i29.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i33.i.i.i.i, %.body.i.i32.i.i.i.i ], [ %i.ho, %bb.bx ]
  store i8 2, ptr %i.hl, align 8, !noalias !13037
  br label %.body39.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #26
          to label %.noexc41.i.i.i.i unwind label %bb.cg, !noalias !13031

.noexc41.i.i.i.i:                                 ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bs
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #26
          to label %.noexc42.i.i.i.i unwind label %bb.cg, !noalias !13031

.noexc42.i.i.i.i:                                 ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.hf = phi ptr [ %i.gu, %bb.bt ], [ %i.ag, %bb.bs ] ; 3 uses
  %i.hg = phi ptr [ %i.gv, %bb.bt ], [ %i.af, %bb.bs ] ; 2 uses
  %i.hh = phi ptr [ %i.gw, %bb.bt ], [ %.phi.trans.insert.i, %bb.bs ] ; 3 uses
  %i.hi = phi ptr [ %i.gx, %bb.bt ], [ %.phi.trans.insert.i.i, %bb.bs ] ; 3 uses
  %i.hj = phi ptr [ %i.gy, %bb.bt ], [ %.phi.trans.insert.i.i.i, %bb.bs ] ; 3 uses
  %i.hk = phi ptr [ %i.gz, %bb.bt ], [ %i.ct, %bb.bs ] ; 2 uses
  %i.hl = phi ptr [ %i.hb, %bb.bt ], [ %.phi.trans.insert124.i.i.i.i, %bb.bs ] ; 3 uses
  %i.hm = phi ptr [ %i.hc, %bb.bt ], [ %i.gs, %bb.bs ]
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
end_hunk_0
