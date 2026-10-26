Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.15?download=true
inline.NumInlined: 785
inline.NumDeleted: 402
begin_hunk_0_@_RNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_9LastCache3new:bb.a
.noexc105:                                        ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bg
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema6schema6SchemaEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.d) #28
          to label %.body97 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bj:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.an, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.ap, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ew, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.gg, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.al, ptr %.sroa.8.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.bl unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread183.thread209 unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.x

bb.bm:                                            ; preds = %bb.bk
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.gm = trunc nuw i8 %.sroa.035.6 to i1
  br i1 %i.gm, label %bb.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy15TableDefinitionECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(72) %i.af)
          to label %bb.bo unwind label %bb.h

bb.bn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache.exit
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.j

bb.bo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gn = load i64, ptr %i.ag, align 8, !range !15, !alias.scope !1134, !noundef !3
  %i.go = icmp eq i64 %i.gn, -1
  br i1 %i.go, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache24LastCacheValueColumnsArgEBH_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body111 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache24LastCacheValueColumnsArgEBH_.exit unwind label %bb.bs

.body111:                                         ; preds = %bb.dr, %bb.bq, %bb.bs, %bb.g
  %.pn87 = phi { ptr, i32 } [ %.pn85, %bb.g ], [ %i.gp, %bb.bq ], [ %i.gr, %bb.bs ], [ %i.jj, %bb.dr ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #28
          to label %common.resume unwind label %bb.bw

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit.i144, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body111

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache24LastCacheValueColumnsArgEBH_.exit: ; preds = %bb.bo, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.gs = load i64, ptr %i.ah, align 8, !range !15, !alias.scope !1135, !noundef !3
  %i.gt = icmp eq i64 %i.gs, -1
  br i1 %i.gt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_.exit151, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache24LastCacheValueColumnsArgEBH_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_.exit151.sink.split unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body111, %bb.du, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.jn, %bb.du ], [ %i.gu, %bb.bu ], [ %.pn87, %.body111 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_.exit151.sink.split: ; preds = %bb.bt, %bb.dt
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_.exit151

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_.exit151: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache22LastCacheKeyColumnsArgEBH_.exit151.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache24LastCacheValueColumnsArgEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache24LastCacheValueColumnsArgEBH_.exit148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  ret void

bb.bw:                                            ; preds = %.thread, %bb.ci, %bb.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit121, %.thread183.thread, %bb.do, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache.exit.thread, %.body111, %.body97, %.body, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit153, %bb.g
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionEECsidB8gjke19X_15influxdb3_cache.exit137, %bb.ad
  invoke void @_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6166.0..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa) #28
          to label %.thread183.thread unwind label %bb.cb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i: ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEECsidB8gjke19X_15influxdb3_cache.exit.i unwind label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %.thread183.thread unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.cb:                                            ; preds = %bb.by
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap3map8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEECsidB8gjke19X_15influxdb3_cache.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2cNydW9rzW9_9hashbrown5table9HashTablejEECsidB8gjke19X_15influxdb3_cache.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs96Uix8yqi9Q_8indexmap3set8IndexSetNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.u

bb.cc:                                            ; preds = %bb.w
  unreachable

bb.cd:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.hb = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3
  %i.hc = load i64, ptr %i.ct, align 8, !noundef !3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 24, ptr %i.w, align 8
  invoke void @_RINvMs5_NtCsj9JzdWj4GcM_12arrow_schema5fieldNtB6_5Field3newReECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.hc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, i1 noundef zeroext false)
          to label %bb.cj unwind label %bb.ch

bb.ce:                                            ; preds = %bb.w
  %i.he = icmp eq i8 %i.dd, 0
  br i1 %i.he, label %bb.cf, label %bb.cu

bb.cf:                                            ; preds = %bb.ce, %bb.w
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.hf, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.dd, ptr %.sroa.410.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.hg = load ptr, ptr %i.y, align 8, !alias.scope !1139, !nonnull !3, !noundef !3
  %i.hh = atomicrmw add ptr %i.hg, i64 -1 release, align 8, !noalias !1139
  %i.hi = icmp eq i64 %i.hh, 1
  br i1 %i.hi, label %bb.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cd
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.body89:                                          ; preds = %bb.dc, %bb.dd, %bb.cy, %bb.cp, %bb.cq, %bb.cl, %bb.ch
  %eh.lpad-body90 = phi { ptr, i32 } [ %i.hu, %bb.cp ], [ %i.ii, %bb.cy ], [ %i.hp, %bb.cl ], [ %i.hj, %bb.ch ], [ %i.hu, %bb.cq ], [ %i.in, %bb.dd ], [ %i.in, %bb.dc ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  %i.hk = load ptr, ptr %i.y, align 8, !alias.scope !1143, !nonnull !3, !noundef !3
  %i.hl = atomicrmw add ptr %i.hk, i64 -1 release, align 8, !noalias !1143
  %i.hm = icmp eq i64 %i.hl, 1
  br i1 %i.hm, label %bb.ci, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit121

bb.ci:                                            ; preds = %.body89
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy16ColumnDefinitionECsidB8gjke19X_15influxdb3_cache.exit121 unwind label %bb.bw

bb.cj:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.cy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cz, ptr noundef nonnull align 8 dereferenceable(112) %i.x, i64 112, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1144
  %i.hn = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 161) 128, i64 noundef 8) #29, !noalias !1144 ; 5 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.ck, label %bb.cn, !prof !5

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #26
          to label %.noexc122 unwind label %bb.cl

.noexc122:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.i) #28
          to label %.body89 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.cn:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.hn, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.hn, ptr %i.b, align 8, !noalias !1145
  %i.hr = load i64, ptr %i.cw, align 8, !alias.scope !1145, !noundef !3 ; 3 uses
  %i.hs = load i64, ptr %i.ad, align 8, !range !7, !alias.scope !1145, !noundef !3
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEE8grow_oneB16_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.cs unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hv = atomicrmw add ptr %i.hn, i64 -1 release, align 8, !noalias !1146
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %bb.cq, label %.body89

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body89 unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.cs:                                            ; preds = %bb.co, %bb.cn
  %i.hy = load ptr, ptr %i.cx, align 8, !alias.scope !1145, !nonnull !3, !noundef !3
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hr
  store ptr %i.hn, ptr %i.hz, align 8
  %i.ia = add i64 %i.hr, 1
  store i64 %i.ia, ptr %i.cw, align 8, !alias.scope !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.df, %bb.cs
  %i.ib = load i16, ptr %i.da, align 8, !noundef !3
  %i.ic = invoke { i64, i1 } @_RNvMs2_NtCs96Uix8yqi9Q_8indexmap3mapINtB5_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIduE11insert_fullCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aa, i16 noundef %i.ib)
          to label %bb.dg unwind label %bb.ch     ; 0 uses

bb.cu:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.id = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3
  %i.ie = load i64, ptr %i.ct, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvXsa_CsjGL2vCcvtUM_6schemaNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB5_16InfluxColumnTypeE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.cs)
          to label %bb.cv unwind label %bb.ch

bb.cv:                                            ; preds = %bb.cu
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  invoke void @_RINvMs5_NtCsj9JzdWj4GcM_12arrow_schema5fieldNtB6_5Field3newReECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.if, i64 noundef %i.ie, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, i1 noundef zeroext true)
          to label %bb.cw unwind label %bb.ch

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  store i64 1, ptr %i.cu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cv, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1147
  %i.ig = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 161) 128, i64 noundef 8) #29, !noalias !1147 ; 5 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.cx, label %bb.da, !prof !5

bb.cx:                                            ; preds = %bb.cw
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #26
          to label %.noexc128 unwind label %bb.cy

.noexc128:                                        ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.h) #28
          to label %.body89 unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.da:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ig, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ig, ptr %i.a, align 8, !noalias !1148
  %i.ik = load i64, ptr %i.cw, align 8, !alias.scope !1148, !noundef !3 ; 3 uses
  %i.il = load i64, ptr %i.ad, align 8, !range !7, !alias.scope !1148, !noundef !3
  %i.im = icmp eq i64 %i.ik, %i.il
  br i1 %i.im, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEE8grow_oneB16_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.df unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = atomicrmw add ptr %i.ig, i64 -1 release, align 8, !noalias !1149
  %i.ip = icmp eq i64 %i.io, 1
  br i1 %i.ip, label %bb.dd, label %.body89

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body89 unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.df:                                            ; preds = %bb.db, %bb.da
  %i.ir = load ptr, ptr %i.cx, align 8, !alias.scope !1148, !nonnull !3, !noundef !3
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ik
  store ptr %i.ig, ptr %i.is, align 8
  %i.it = add i64 %i.ik, 1
  store i64 %i.it, ptr %i.cw, align 8, !alias.scope !1148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ct

bb.dg:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_9LastCache4push:bb.a
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.10339 = alloca [16 x i8], align 8        ; 5 uses
  %i.as = alloca [96 x i8], align 8               ; 16 uses
  %i.at = alloca [24 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 13 uses
  %i.av = alloca [72 x i8], align 8               ; 15 uses
  %i.aw = alloca [8 x i8], align 8                ; 6 uses
  store ptr %2, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.ax = atomicrmw add ptr %2, i64 1 monotonic, align 8
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 1220
  %i.ba = load i32, ptr %i.az, align 4, !noalias !1323, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1168 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1323, !nonnull !3, !noundef !3
  %i.bd = atomicrmw add ptr %i.bc, i64 1 monotonic, align 8, !noalias !1323
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 1176
  %i.bg = load ptr, ptr %i.bb, align 8, !noalias !1323, !nonnull !3, !noundef !3
  %i.bh = load i64, ptr %i.bf, align 8, !noalias !1323, !noundef !3
  %i.bi = atomicrmw add ptr %2, i64 1 monotonic, align 8, !noalias !1323
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bk = atomicrmw add ptr %2, i64 1 monotonic, align 8, !noalias !1323
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %.body, %bb.k
  %.pn64.pn = phi { ptr, i32 } [ %.pn64, %.body ], [ %i.bp, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.bm = load ptr, ptr %i.aw, align 8, !alias.scope !1326, !nonnull !3, !noundef !3
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !1326
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit unwind label %bb.bl

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtBG_3zip3ZipINtNtNtCs96Uix8yqi9Q_8indexmap3set4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEEEB3O_.exit105, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEB1d_.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %bb.e
  store ptr %2, ptr %i.av, align 8, !alias.scope !1323
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i32 %i.ba, ptr %i.bq, align 8, !alias.scope !1323
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bg, ptr %i.br, align 8, !alias.scope !1323
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.bh, ptr %i.bs, align 8, !alias.scope !1323
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  store ptr %2, ptr %i.bt, align 8, !alias.scope !1323
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %2, ptr %i.bu, align 8, !alias.scope !1323
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 -1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load i64, ptr %i.bx, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, i64 noundef %i.by, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.m unwind label %.body102

.body:                                            ; preds = %bb.dj, %bb.dh, %.body102, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs96Uix8yqi9Q_8indexmap3set4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEEB3o_.exit.i, %bb.x, %.body102.thread379
  %.pn64 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body102 ], [ %eh.lpad-body77382, %.body102.thread379 ], [ %i.ln, %bb.dh ], [ %i.dq, %bb.x ], [ %.pn60.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs96Uix8yqi9Q_8indexmap3set4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEEB3o_.exit.i ], [ %.pn60.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i ], [ %i.lq, %bb.dj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy15TableDefinitionECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(72) %i.av) #28
          to label %bb.i unwind label %bb.bl

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %i.aj, align 8, !range !8, !noundef !3
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !4, !noundef !3 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.n, label %bb.o, !prof !5

bb.n:                                             ; preds = %bb.m
  %i.ce = load i64, ptr %i.cd, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cc, i64 %i.ce) #26
          to label %bb.ba unwind label %.body102

bb.o:                                             ; preds = %bb.m
  %i.cf = load ptr, ptr %i.cd, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cg = icmp ule i64 %i.by, %i.cc
  tail call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.cc, ptr %i.au, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  store ptr %i.cf, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store i64 0, ptr %i.ci, align 8
  %i.cj = load ptr, ptr %i.bv, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cn, 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx
  %.not266 = icmp eq i64 %i.cn, 0
  br i1 %.not266, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !3 ; 2 uses
  %.idx506 = mul nuw nsw i64 %i.cs, 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx506
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.cv = icmp eq i64 %i.cs, 0
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ae
  %i.cw = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.ae ] ; 3 uses
  %.sroa.0.0267 = phi ptr [ %i.cl, %.lr.ph ], [ %i.cx, %bb.ae ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0267, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0267, i64 8
  br i1 %i.cv, label %._crit_edge498, label %.lr.ph497.preheader

.lr.ph497.preheader:                              ; preds = %bb.p
  %i.cz = load i16, ptr %i.cy, align 2, !noalias !1327, !noundef !3
  br label %.lr.ph497

bb.q:                                             ; preds = %.lr.ph497
  %i.da = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ct
  br i1 %i.db, label %._crit_edge498, label %.lr.ph497

.lr.ph497:                                        ; preds = %.lr.ph497.preheader, %bb.q
  %i.dc = phi ptr [ %i.da, %bb.q ], [ %i.cq, %.lr.ph497.preheader ] ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i16, ptr %i.dd, align 8, !noalias !1327, !noundef !3
  %i.df = icmp eq i16 %i.de, %i.cz
  br i1 %i.df, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit, label %bb.q

.body102.thread385.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %.invoke
  %lpad.loopexit.split-lp561 = landingpad { ptr, i32 }
          cleanup
  br label %.body102.thread379

.body102:                                         ; preds = %bb.l, %bb.n, %bb.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i.i.i.i.i101
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit: ; preds = %.lr.ph497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.dg = load i8, ptr %i.dc, align 8, !range !23, !alias.scope !1329, !noundef !3
  switch i8 %i.dg, label %default.unreachable [
    i8 0, label %.invoke
    i8 1, label %bb.r
    i8 2, label %bb.w
    i8 3, label %bb.w
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
  ], !prof !24

default.unreachable:                              ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  unreachable

.invoke:                                          ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit, %bb.u, %bb.r
  %i.dh = phi ptr [ @105, %bb.u ], [ @46, %bb.r ], [ @102, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit ]
  %i.di = phi ptr [ inttoptr (i64 59 to ptr), %bb.u ], [ inttoptr (i64 157 to ptr), %bb.r ], [ inttoptr (i64 69 to ptr), %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit ]
  %i.dj = phi ptr [ @106, %bb.u ], [ @104, %bb.r ], [ @103, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj) #26
          to label %.cont unwind label %.body102.thread385.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  br label %.invoke

bb.s:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !1329, !noundef !3
  store i64 %i.dl, ptr %i.cu, align 8, !alias.scope !1328
  store i64 -9223372036854775808, ptr %i.ai, align 8, !alias.scope !1328
  br label %_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit

bb.t:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !1329, !noundef !3
  store i64 %i.dn, ptr %i.cu, align 8, !alias.scope !1328
  store i64 -9223372036854775807, ptr %i.ai, align 8, !alias.scope !1328
  br label %_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit

bb.u:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  br label %.invoke

bb.v:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !range !25, !alias.scope !1329, !noundef !3
  store i8 %i.dp, ptr %i.cu, align 8, !alias.scope !1328
  store i64 -9223372036854775806, ptr %i.ai, align 8, !alias.scope !1328
  br label %_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit

bb.w:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs0_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2k_9LastCache4push0EB2o_.exit
  %.sroa.0.0.i69 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i69)
          to label %._RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit_crit_edge unwind label %.body102.thread385.loopexit.split-lp.loopexit.split-lp

._RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit_crit_edge: ; preds = %bb.w
  %.pre = load i64, ptr %i.ci, align 8, !alias.scope !1330
  br label %_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit

._crit_edge498:                                   ; preds = %bb.p, %bb.q
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %._crit_edge498
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body unwind label %bb.z

bb.y:                                             ; preds = %._crit_edge498
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEB1d_.exit unwind label %.body102

bb.z:                                             ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEB1d_.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36legacy15TableDefinitionECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(72) %i.av)
          to label %bb.aa unwind label %bb.k

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEEB1d_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  %i.ds = load ptr, ptr %i.aw, align 8, !alias.scope !1333, !nonnull !3, !noundef !3
  %i.dt = atomicrmw add ptr %i.ds, i64 -1 release, align 8, !noalias !1333
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit75.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit75

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit75.sink.split: ; preds = %bb.aa, %bb.gj
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionE9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit75

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit75: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEECsidB8gjke19X_15influxdb3_cache.exit75.sink.split, %bb.gj, %bb.aa
  ret void

_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit: ; preds = %._RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit_crit_edge, %bb.v, %bb.t, %bb.s
  %i.dv = phi i64 [ %.pre, %._RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit_crit_edge ], [ %i.cw, %bb.v ], [ %i.cw, %bb.t ], [ %i.cw, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.dw = load i64, ptr %i.au, align 8, !range !7, !alias.scope !1330, !noundef !3
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.ae unwind label %bb.ac, !noalias !1334

bb.ac:                                            ; preds = %bb.ab
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at) #28
          to label %.body102.thread379 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ae:                                            ; preds = %bb.ab, %_RNvXs7_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueINtNtCs4NRVxsYgnAr_4core7convert4FromRNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataE4from.exit
  %i.ea = load ptr, ptr %i.ch, align 8, !alias.scope !1330, !nonnull !3, !noundef !3
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %i.ec = add i64 %i.dv, 1                        ; 3 uses
  store i64 %i.ec, ptr %i.ci, align 8, !alias.scope !1330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.not = icmp eq ptr %i.cx, %i.co
  br i1 %.not, label %._crit_edge.loopexit, label %bb.p

._crit_edge.loopexit:                             ; preds = %bb.ae
  %.pre340 = load ptr, ptr %i.bv, align 8
  %.sroa.0131.0.copyload.pre = load i64, ptr %i.au, align 8
  %.sroa.4132.0.copyload.pre = load ptr, ptr %i.ch, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.sroa.5133.0.copyload = phi i64 [ %i.ec, %._crit_edge.loopexit ], [ 0, %bb.o ] ; 2 uses
  %.sroa.4132.0.copyload = phi ptr [ %.sroa.4132.0.copyload.pre, %._crit_edge.loopexit ], [ %i.cf, %bb.o ] ; 3 uses
  %.sroa.0131.0.copyload = phi i64 [ %.sroa.0131.0.copyload.pre, %._crit_edge.loopexit ], [ %i.cc, %bb.o ]
  %i.ed = phi ptr [ %.pre340, %._crit_edge.loopexit ], [ %i.cj, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !3
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = icmp ult i64 %.sroa.5133.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4132.0.copyload, i64 %.sroa.5133.0.copyload
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 5 uses
  store ptr %i.ef, ptr %i.el, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 3 uses
  store ptr %i.ei, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 3 uses
  store ptr %.sroa.4132.0.copyload, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 5 uses
  store ptr %.sroa.4132.0.copyload, ptr %.sroa.6129.0..sroa_idx, align 8
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i64 %.sroa.0131.0.copyload, ptr %.sroa.7130.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 3 uses
  store ptr %i.ek, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 11 uses
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 8 uses
  %.sroa.7137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.9142.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.10.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.7137.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9142.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  br label %bb.af

bb.af:                                            ; preds = %bb.bk, %._crit_edge
  %.sroa.035.0.copyload = phi i64 [ %.sroa.035.0.copyload.pre, %bb.bk ], [ undef, %._crit_edge ]
  %.sroa.437.0.copyload = phi i64 [ %.sroa.437.0.copyload.pr, %bb.bk ], [ -2, %._crit_edge ] ; 2 uses
  %.sroa.013.0 = phi ptr [ %.sroa.0.0.i84, %bb.bk ], [ %0, %._crit_edge ] ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10339)
  store i64 -2, ptr %.sroa.2.0..sroa_idx, align 8
  %.not55 = icmp eq i64 %.sroa.437.0.copyload, -2
  br i1 %.not55, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10339, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.333.0..sroa_idx, i64 16, i1 false)
  %.pre345 = load ptr, ptr %i.el, align 8, !alias.scope !1335
  %.pre346 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1335
  %i.et = inttoptr i64 %.sroa.035.0.copyload to ptr
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.eu = load ptr, ptr %i.el, align 8, !alias.scope !1337, !nonnull !3, !noundef !3 ; 3 uses
  %i.ev = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1337, !nonnull !3, !noundef !3 ; 4 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i.thread, label %bb.ai

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i.thread: ; preds = %bb.ah
end_hunk_1
begin_hunk_2_@_RNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_15CacheColumnData8as_array:bb.a
  %.val7.sink.i90 = phi double [ %.val7.i84, %bb.bl ], [ 0.000000e+00, %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i4.i.i88 ], [ %.val7.sink.ph.i94, %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays0_0Bb_.exit.sink.split.i ]
  %i.jz = load ptr, ptr %i.ho, align 8, !alias.scope !1754, !nonnull !3, !noundef !3
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.sink17.i89
  store double %.val7.sink.i90, ptr %i.ka, align 8, !noalias !1745
  %storemerge.i91 = add i64 %.sink17.i89, 1
  store i64 %storemerge.i91, ptr %i.hn, align 8, !alias.scope !1754
  %exitcond.not.i92 = icmp eq i64 %i.hq, %.sroa.0.0.i.i78
  br i1 %exitcond.not.i92, label %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptiondEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2Z_15CacheColumnData8as_arrays0_0EB33_.exit, label %bb.bd

_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptiondEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2Z_15CacheColumnData8as_arrays0_0EB33_.exit: ; preds = %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays0_0Bb_.exit.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvMs0_NtNtCs6ePPILGZvJ2_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types11Float64TypeE6finishCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %bb.bt unwind label %.loopexit.split-lp252.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptiondEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2Z_15CacheColumnData8as_arrays0_0EB33_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.kc, ptr noundef nonnull align 8 dereferenceable(96) %i.v, i64 96, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1755
  %i.kd = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 161) 112, i64 noundef 8) #29, !noalias !1755 ; 3 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.bu, label %bb.bx, !prof !5

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #26
          to label %.noexc116 unwind label %bb.bv

.noexc116:                                        ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types11Float64TypeEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.kc)
          to label %.body19 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.kd, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6ePPILGZvJ2_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types11Float64TypeEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(104) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ae

.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cj, %bb.cg, %bb.cb, %bb.ca, %.invoke363, %bb.ch, %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionNtNtB18_6string6StringEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB3k_15CacheColumnData8as_arrays1_0EB3o_.exit, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cm
  %eh.lpad-body = phi { ptr, i32 } [ %i.mp, %bb.cm ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericStringTypelEEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(104) %i.u) #28
          to label %common.resume unwind label %bb.af

bb.by:                                            ; preds = %bb.e
  %.sroa.0224.0.copyload = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4225.0.copyload = load ptr, ptr %.sroa.4225.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5226.0.copyload = load ptr, ptr %.sroa.5226.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.6227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.6227.0.copyload = load ptr, ptr %.sroa.6227.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.kh = ptrtoint ptr %.sroa.4225.0.copyload to i64
  %i.ki = ptrtoint ptr %.sroa.0224.0.copyload to i64
  %i.kj = sub nuw i64 %i.kh, %i.ki
  %i.kk = udiv exact i64 %i.kj, 24                ; 3 uses
  %i.kl = ptrtoint ptr %.sroa.6227.0.copyload to i64
  %i.km = ptrtoint ptr %.sroa.5226.0.copyload to i64
  %i.kn = sub nuw i64 %i.kl, %i.km
  %i.ko = udiv exact i64 %i.kn, 24
  %i.kp = add nuw nsw i64 %i.ko, %i.kk
  %.sroa.0.0.i.i119 = tail call noundef i64 @llvm.umin.i64(i64 %i.kp, i64 %1) ; 2 uses
  %.not.i120 = icmp eq i64 %.sroa.0.0.i.i119, 0
  br i1 %.not.i120, label %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionNtNtB18_6string6StringEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB3k_15CacheColumnData8as_arrays1_0EB3o_.exit, label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %bb.by
  %i.kq = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ku = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %bb.bz

bb.bz:                                            ; preds = %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays1_0Bb_.exit.i, %.lr.ph.i121
  %.sroa.0.07.i = phi i64 [ 0, %.lr.ph.i121 ], [ %i.kz, %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays1_0Bb_.exit.i ] ; 4 uses
  %i.kz = add nuw nsw i64 %.sroa.0.07.i, 1        ; 2 uses
  %i.la = icmp samesign ult i64 %.sroa.0.07.i, %i.kk
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0224.0.copyload, i64 %.sroa.0.07.i
  %i.lc = sub nuw nsw i64 %.sroa.0.07.i, %i.kk
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5226.0.copyload, i64 %i.lc
  %.sroa.0.0.i6.i = select i1 %i.la, ptr %i.lb, ptr %i.ld ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %i.le = load i64, ptr %.sroa.0.0.i6.i, align 8, !range !15, !alias.scope !1756, !noalias !1757, !noundef !3
  %.not.i.i = icmp eq i64 %i.le, -1
  br i1 %.not.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB3_18GenericByteBuilderINtNtB7_5types17GenericStringTypelEE12append_valueRNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i6.i)
          to label %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays1_0Bb_.exit.i unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bz
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.kq)
          to label %.noexc126 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc126:                                        ; preds = %bb.cb
  %i.lf = load i64, ptr %i.kq, align 8, !range !4, !alias.scope !1758, !noalias !1756, !noundef !3
  %.not.i.i.i.i123 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i.i.i123, label %bb.ch, label %bb.cc, !prof !5

bb.cc:                                            ; preds = %.noexc126
  %i.lg = load i64, ptr %i.kr, align 8, !alias.scope !1759, !noalias !1756, !noundef !3
  %i.lh = add i64 %i.lg, 1                        ; 3 uses
  %i.li = lshr i64 %i.lh, 3
  %i.lj = and i64 %i.lh, 7
  %.not.i.i.i.i.i = icmp ne i64 %i.lj, 0
  %i.lk = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i124 = add nuw nsw i64 %i.li, %i.lk ; 8 uses
  %i.ll = load i64, ptr %i.ks, align 8, !alias.scope !1759, !noalias !1756, !noundef !3 ; 3 uses
  %i.lm = icmp ugt i64 %.sroa.0.0.i.i.i.i.i124, %i.ll
  br i1 %i.lm, label %bb.cd, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.ln = sub nuw nsw i64 %.sroa.0.0.i.i.i.i.i124, %i.ll
  %i.lo = load i64, ptr %i.kt, align 8, !alias.scope !1760, !noalias !1756, !noundef !3 ; 2 uses
  %i.lp = icmp ugt i64 %.sroa.0.0.i.i.i.i.i124, %i.lo
  br i1 %i.lp, label %bb.ce, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i, !prof !5

bb.ce:                                            ; preds = %bb.cd
  %i.lq = and i64 %.sroa.0.0.i.i.i.i.i124, 63
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %reass.sub.i.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i.i124, 4611686018427387840
  %i.ls = add nuw nsw i64 %reass.sub.i.i.i.i.i.i, 64 ; 2 uses
  %i.lt = icmp samesign ult i64 %i.ls, %.sroa.0.0.i.i.i.i.i124
  br i1 %i.lt, label %.invoke363, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i124, %bb.ce ], [ %i.ls, %bb.cf ]
  %i.lu = shl nuw nsw i64 %i.lo, 1
  %.sroa.0.0.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.lu, i64 %.sroa.4.0.i.i.i.i.i.i)
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.kq, i64 noundef %.sroa.0.0.i.i.i.i.i.i)
          to label %.noexc127 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.cg
  %.pre.i.i.i.i.i = load i64, ptr %i.ks, align 8, !alias.scope !1759, !noalias !1756
  br label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i: ; preds = %.noexc127, %bb.cd
  %i.lv = phi i64 [ %i.ll, %bb.cd ], [ %.pre.i.i.i.i.i, %.noexc127 ]
  %i.lw = load ptr, ptr %i.ku, align 8, !alias.scope !1759, !noalias !1756, !nonnull !3, !noundef !3
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lv
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lx, i8 0, i64 %i.ln, i1 false), !noalias !1761
  store i64 %.sroa.0.0.i.i.i.i.i124, ptr %i.ks, align 8, !alias.scope !1759, !noalias !1756
  br label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i

bb.ch:                                            ; preds = %.noexc126
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26
          to label %.noexc129 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc129:                                        ; preds = %bb.ch
  unreachable

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i: ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i.i, %bb.cc
  store i64 %i.lh, ptr %i.kr, align 8, !alias.scope !1759, !noalias !1756
  %i.ly = load i64, ptr %i.kv, align 8, !alias.scope !1762, !noalias !1756, !noundef !3 ; 3 uses
  %i.lz = icmp sgt i64 %i.ly, -1
  call void @llvm.assume(i1 %i.lz)
  %i.ma = icmp samesign ult i64 %i.ly, 2147483648
  br i1 %i.ma, label %bb.ci, label %.invoke363, !prof !6

bb.ci:                                            ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i
  %i.mb = load i64, ptr %i.kx, align 8, !alias.scope !1763, !noalias !1756, !noundef !3 ; 3 uses
  %i.mc = load i64, ptr %i.kw, align 8, !range !7, !alias.scope !1763, !noalias !1756, !noundef !3
  %i.md = icmp eq i64 %i.mb, %i.mc
  br i1 %i.md, label %bb.cj, label %_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCsidB8gjke19X_15influxdb3_cache.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs52Be9pdaNRP_12pbjson_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.kw)
          to label %_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCsidB8gjke19X_15influxdb3_cache.exit.i.i unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke363:                                       ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i, %bb.cf
  %i.me = phi ptr [ @18, %bb.cf ], [ @0, %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i ]
  %i.mf = phi i64 [ 35, %bb.cf ], [ 26, %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i ]
  %i.mg = phi ptr [ @20, %bb.cf ], [ @2, %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6append.exit.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.me, i64 noundef %i.mf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mg) #26
          to label %.cont364 unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont364:                                         ; preds = %.invoke363
  unreachable

_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCsidB8gjke19X_15influxdb3_cache.exit.i.i: ; preds = %bb.cj, %bb.ci
  %i.mh = trunc nuw nsw i64 %i.ly to i32
  %i.mi = load ptr, ptr %i.ky, align 8, !alias.scope !1763, !noalias !1756, !nonnull !3, !noundef !3
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.mb
  store i32 %i.mh, ptr %i.mj, align 4, !noalias !1761
  %i.mk = add i64 %i.mb, 1
  store i64 %i.mk, ptr %i.kx, align 8, !alias.scope !1763, !noalias !1756
  br label %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays1_0Bb_.exit.i

_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays1_0Bb_.exit.i: ; preds = %bb.ca, %_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE11append_nullCsidB8gjke19X_15influxdb3_cache.exit.i.i
  %exitcond.not.i122 = icmp eq i64 %i.kz, %.sroa.0.0.i.i119
  br i1 %exitcond.not.i122, label %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionNtNtB18_6string6StringEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB3k_15CacheColumnData8as_arrays1_0EB3o_.exit, label %bb.bz

_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionNtNtB18_6string6StringEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB3k_15CacheColumnData8as_arrays1_0EB3o_.exit: ; preds = %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays1_0Bb_.exit.i, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builderINtB2_18GenericByteBuilderINtNtB6_5types17GenericStringTypelEE6finishCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.u)
          to label %bb.ck unwind label %.loopexit.split-lp257.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ck:                                            ; preds = %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionNtNtB18_6string6StringEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB3k_15CacheColumnData8as_arrays1_0EB3o_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.mm, ptr noundef nonnull align 8 dereferenceable(120) %i.s, i64 120, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1764
  %i.mn = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 161) 136, i64 noundef 8) #29, !noalias !1764 ; 3 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.cl, label %bb.co, !prof !5

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #26
          to label %.noexc132 unwind label %bb.cm

.noexc132:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6ePPILGZvJ2_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericStringTypelEEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.mm)
          to label %.body unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.co:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.mn, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6ePPILGZvJ2_11arrow_array7builder21generic_bytes_builder18GenericByteBuilderINtNtBI_5types17GenericStringTypelEEECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(104) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ae

.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dn, %bb.dj, %bb.de, %bb.dc, %bb.cv, %.invoke365, %bb.do, %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionbEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2Z_15CacheColumnData8as_arrays2_0EB33_.exit, %bb.f
  %lpad.loopexit.split-lp395 = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dr
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.rh, %bb.dr ], [ %lpad.loopexit.split-lp395, %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6ePPILGZvJ2_11arrow_array7builder15boolean_builder14BooleanBuilderECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef align 8 dereferenceable(96) %i.r) #28
          to label %common.resume unwind label %bb.af

bb.cp:                                            ; preds = %bb.f
  %.sroa.0229.0.copyload = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4230.0.copyload = load ptr, ptr %.sroa.4230.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5231.0.copyload = load ptr, ptr %.sroa.5231.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.6232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.6232.0.copyload = load ptr, ptr %.sroa.6232.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.mr = ptrtoint ptr %.sroa.4230.0.copyload to i64 ; 2 uses
  %i.ms = ptrtoint ptr %.sroa.0229.0.copyload to i64 ; 2 uses
  %i.mt = ptrtoint ptr %.sroa.6232.0.copyload to i64
  %i.mu = ptrtoint ptr %.sroa.5231.0.copyload to i64
  %i.mv = add i64 %i.ms, %i.mu
  %i.mw = sub i64 %i.mr, %i.mv
  %i.mx = add i64 %i.mw, %i.mt
  %.sroa.0.0.i.i135 = call noundef i64 @llvm.umin.i64(i64 %i.mx, i64 %1) ; 2 uses
  %.not.i136 = icmp eq i64 %.sroa.0.0.i.i135, 0
  br i1 %.not.i136, label %_RINvXs8_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterINtNtBc_6option6OptionbEEENtB6_8SpecTake13spec_for_eachNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB2Z_15CacheColumnData8as_arrays2_0EB33_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.cp
  %i.my = sub nuw i64 %i.mr, %i.ms                ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays2_0Bb_.exit.i, %.lr.ph.i137
  %.sroa.0.010.i = phi i64 [ 0, %.lr.ph.i137 ], [ %i.nj, %_RNCNvMsa_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB7_15CacheColumnData8as_arrays2_0Bb_.exit.i ] ; 4 uses
  %i.nj = add nuw i64 %.sroa.0.010.i, 1           ; 2 uses
  %i.nk = icmp ult i64 %.sroa.0.010.i, %i.my
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0229.0.copyload, i64 %.sroa.0.010.i
  %i.nm = sub nuw i64 %.sroa.0.010.i, %i.my
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.5231.0.copyload, i64 %i.nm
  %.sroa.0.0.i7.i = select i1 %i.nk, ptr %i.nl, ptr %i.nn
  %.val6.i138 = load i8, ptr %.sroa.0.0.i7.i, align 1, !range !27, !noalias !1765, !noundef !3 ; 2 uses
  %.not.i.i139 = icmp eq i8 %.val6.i138, 2
  br i1 %.not.i.i139, label %bb.de, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.no = trunc nuw i8 %.val6.i138 to i1
  %i.np = load i64, ptr %i.mz, align 8, !alias.scope !1766, !noundef !3 ; 3 uses
  %i.nq = add i64 %i.np, 1                        ; 3 uses
  %i.nr = lshr i64 %i.nq, 3
  %i.ns = and i64 %i.nq, 7
  %.not.i.i.i.i140 = icmp ne i64 %i.ns, 0
  %i.nt = zext i1 %.not.i.i.i.i140 to i64
  %.sroa.0.0.i.i.i.i141 = add nuw nsw i64 %i.nr, %i.nt ; 8 uses
  %i.nu = load i64, ptr %i.na, align 8, !alias.scope !1766, !noundef !3 ; 3 uses
  %i.nv = icmp ugt i64 %.sroa.0.0.i.i.i.i141, %i.nu
  br i1 %i.nv, label %bb.cs, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i142

bb.cs:                                            ; preds = %bb.cr
  %i.nw = sub nuw nsw i64 %.sroa.0.0.i.i.i.i141, %i.nu
  %i.nx = load i64, ptr %i.nb, align 8, !alias.scope !1767, !noundef !3 ; 2 uses
  %i.ny = icmp ugt i64 %.sroa.0.0.i.i.i.i141, %i.nx
  br i1 %i.ny, label %bb.ct, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i145, !prof !5

bb.ct:                                            ; preds = %bb.cs
  %i.nz = and i64 %.sroa.0.0.i.i.i.i141, 63
  %i.oa = icmp eq i64 %i.nz, 0
  br i1 %i.oa, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %reass.sub.i.i.i.i.i146 = and i64 %.sroa.0.0.i.i.i.i141, 4611686018427387840
  %i.ob = add nuw nsw i64 %reass.sub.i.i.i.i.i146, 64 ; 2 uses
  %i.oc = icmp samesign ult i64 %i.ob, %.sroa.0.0.i.i.i.i141
  br i1 %i.oc, label %.invoke365, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sroa.4.0.i.i.i.i.i147 = phi i64 [ %.sroa.0.0.i.i.i.i141, %bb.ct ], [ %i.ob, %bb.cu ]
  %i.od = shl nuw nsw i64 %i.nx, 1
  %.sroa.0.0.i.i.i.i.i148 = call noundef i64 @llvm.umax.i64(i64 %i.od, i64 %.sroa.4.0.i.i.i.i.i147)
  invoke void @_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.r, i64 noundef %.sroa.0.0.i.i.i.i.i148)
          to label %.noexc154 unwind label %.loopexit.split-lp262.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc154:                                        ; preds = %bb.cv
  %.pre.i.i.i.i149 = load i64, ptr %i.na, align 8, !alias.scope !1766
  br label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i145

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i145: ; preds = %.noexc154, %bb.cs
  %i.oe = phi i64 [ %i.nu, %bb.cs ], [ %.pre.i.i.i.i149, %.noexc154 ]
  %i.of = load ptr, ptr %i.nc, align 8, !alias.scope !1766, !nonnull !3, !noundef !3
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.oe
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.og, i8 0, i64 %i.nw, i1 false), !noalias !1765
  store i64 %.sroa.0.0.i.i.i.i141, ptr %i.na, align 8, !alias.scope !1766
  br label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i142

_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i142: ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i145, %bb.cr
  store i64 %i.nq, ptr %i.mz, align 8, !alias.scope !1766
  br i1 %i.no, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i142
  %i.oh = load i64, ptr %i.nd, align 8, !range !4, !alias.scope !1768, !noundef !3
  %.not.i.i.i143 = icmp eq i64 %i.oh, 0
  br i1 %.not.i.i.i143, label %bb.dd, label %bb.cy

bb.cx:                                            ; preds = %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i142
  %i.oi = load ptr, ptr %i.nc, align 8, !alias.scope !1768, !nonnull !3, !noundef !3
  %i.oj = trunc i64 %i.np to i8
  %i.ok = and i8 %i.oj, 7
  %i.ol = shl nuw i8 1, %i.ok
  %i.om = lshr i64 %i.np, 3
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.om ; 2 uses
  %i.oo = load i8, ptr %i.on, align 1, !noalias !1765, !noundef !3
  %i.op = or i8 %i.oo, %i.ol
  store i8 %i.op, ptr %i.on, align 1, !noalias !1765
  br label %bb.cw

bb.cy:                                            ; preds = %bb.cw
  %i.oq = load i64, ptr %i.ne, align 8, !alias.scope !1769, !noundef !3 ; 3 uses
  %i.or = add i64 %i.oq, 1                        ; 3 uses
  %i.os = lshr i64 %i.or, 3
  %i.ot = and i64 %i.or, 7
  %.not.i1.i.i.i = icmp ne i64 %i.ot, 0
  %i.ou = zext i1 %.not.i1.i.i.i to i64
  %.sroa.0.0.i2.i.i.i = add nuw nsw i64 %i.os, %i.ou ; 8 uses
  %i.ov = load i64, ptr %i.nf, align 8, !alias.scope !1769, !noundef !3 ; 3 uses
  %i.ow = icmp ugt i64 %.sroa.0.0.i2.i.i.i, %i.ov
  br i1 %i.ow, label %bb.cz, label %_RNvMNtNtCsjfzoCD6FJrB_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit8.i.i.i

end_hunk_2
