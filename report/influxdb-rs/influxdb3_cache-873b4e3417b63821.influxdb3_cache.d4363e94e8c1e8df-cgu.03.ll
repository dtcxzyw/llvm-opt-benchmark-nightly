Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_cache-873b4e3417b63821.influxdb3_cache.d4363e94e8c1e8df-cgu.03?download=true
inline.NumInlined: 721
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTE6appendB1c_:bb.a
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 274
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !1438, !noundef !3 ; 2 uses
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 280
  %i.fz = icmp ult i16 %i.fw, 12
  call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 274
  %i.gd = load i16, ptr %i.gc, align 2, !noalias !1438, !noundef !3 ; 2 uses
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 280
  %i.gg = icmp ult i16 %i.gd, 12
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 274
  %i.gk = load i16, ptr %i.gj, align 2, !noalias !1438, !noundef !3 ; 2 uses
  %i.gl = zext nneg i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 280
  %i.gn = icmp ult i16 %i.gk, 12
  call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gl
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 274
  %i.gr = load i16, ptr %i.gq, align 2, !noalias !1438, !noundef !3 ; 2 uses
  %i.gs = zext nneg i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 280
  %i.gu = icmp ult i16 %i.gr, 12
  call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 274
  %i.gy = load i16, ptr %i.gx, align 2, !noalias !1438, !noundef !3 ; 2 uses
  %i.gz = zext nneg i16 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 280
  %i.hb = icmp ult i16 %i.gy, 12
  call void @llvm.assume(i1 %i.hb)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gz
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 274
  %i.hf = load i16, ptr %i.he, align 2, !noalias !1438, !noundef !3 ; 2 uses
  %i.hg = zext nneg i16 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 280
  %i.hi = icmp ult i16 %i.hf, 12
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !1438, !nonnull !3, !noundef !3 ; 2 uses
  %i.hl = add i64 %.sroa.05.07.i.i.i.i, -8        ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i.i.i, label %.lr.ph.i.i.i.i

_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.bg
  %.sroa.03.0.lcssa.i.i.i.i = phi ptr [ %i.ew, %bb.bg ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.hk, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i, i64 274
  %i.ho = load i16, ptr %i.hn, align 2, !noalias !1438, !noundef !3
  %i.hp = zext i16 %i.ho to i64
  store ptr %.sroa.03.0.lcssa.i.i.i.i, ptr %i.cs, align 8, !alias.scope !1435, !noalias !1398
  store i64 0, ptr %i.ct, align 8, !alias.scope !1435, !noalias !1398
  store i64 %i.hp, ptr %i.cu, align 8, !alias.scope !1435, !noalias !1398
  br label %_RNvMs1G_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_9CursorMutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE4nextB1e_.exit.i

bb.bh:                                            ; preds = %.noexc93.i
  %.sroa.4.0.copyload.i.i = load i64, ptr %i.cy, align 8, !noalias !1437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1437
  store ptr %i.et, ptr %i.b, align 8, !noalias !1437
  store i64 %.sroa.4.0.copyload.i.i, ptr %i.da, align 8, !noalias !1437
  store i64 %i.ev, ptr %i.db, align 8, !noalias !1437
  %i.hq = invoke { ptr, ptr } @_RNvMsQ_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTNtB1l_14LeafOrInternalENtB1l_2KVE11into_kv_mutB1H_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %.noexc94.i unwind label %.thread132.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1397 ; 0 uses

.noexc94.i:                                       ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1437
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1437
  invoke void @_RNvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtBZ_7NodeRefNtNtBZ_6marker3MutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTNtB1w_14LeafOrInternalENtB1w_2KVE14next_leaf_edgeB1S_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %.noexc95.i unwind label %.thread132.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1397

.noexc95.i:                                       ; preds = %.noexc94.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1437
  %.pre148.pre.i = load ptr, ptr %i.cs, align 8, !alias.scope !1439, !noalias !1398
  br label %_RNvMs1G_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_9CursorMutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE4nextB1e_.exit.i

_RNvMs1G_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_9CursorMutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE4nextB1e_.exit.i: ; preds = %.noexc95.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i.i.i
  %.pre148.i = phi ptr [ %.pre148.pre.i, %.noexc95.i ], [ %.sroa.03.0.lcssa.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB7_7set_val9SetValZSTNtB1j_14LeafOrInternalE14last_leaf_edgeB1F_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1434
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1441
  %.not.i.i72.i = icmp eq ptr %.pre148.i, null
  br i1 %.not.i.i72.i, label %.thread120.i, label %.lr.ph.i

bb.bi:                                            ; preds = %_RNvXsA_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit86.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1398
  invoke fastcc void @_RNvMs1I_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_12CursorMutKeyNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE11remove_nextB1i_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef align 8 dereferenceable(48) %i.y)
          to label %bb.bk unwind label %.thread132.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1397

bb.bj:                                            ; preds = %_RNvXsA_NtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cacheNtB5_8KeyValueNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit86.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1398
  invoke fastcc void @_RNvMs1I_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_12CursorMutKeyNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE23insert_before_uncheckedB1i_(ptr noalias noundef align 8 dereferenceable(48) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.br unwind label %bb.bt, !noalias !1397

bb.bk:                                            ; preds = %bb.bi
  %i.hr = load i64, ptr %i.q, align 8, !range !1419, !noalias !1398, !noundef !3
  %.not52.i = icmp eq i64 %i.hr, -1
  br i1 %.not52.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1398
  invoke fastcc void @_RNvMs1I_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_12CursorMutKeyNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE22insert_after_uncheckedB1i_(ptr noalias noundef align 8 dereferenceable(48) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.bm unwind label %.thread132.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1397

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1398
  br label %bb.bn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_.exit101.i: ; preds = %bb.bs, %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i97.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1398
  br label %bb.an

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1398
  %i.hs = load i64, ptr %i.r, align 8, !range !8, !alias.scope !1442, !noalias !1398, !noundef !3
  %i.ht = icmp sgt i64 %i.hs, -1
  br i1 %i.ht, label %bb.bo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_.exit101.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i97.i unwind label %bb.bp, !noalias !1397

bb.bp:                                            ; preds = %bb.bo
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body98.i unwind label %bb.bq, !noalias !1397

bb.bq:                                            ; preds = %bb.bp
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !1397
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i97.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_.exit101.i unwind label %bb.bt, !noalias !1397

bb.br:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1398
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_.exit101.i

bb.bs:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1398
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_.exit101.i

.thread132.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc94.i, %bb.bh, %bb.bf, %bb.aw, %.lr.ph.i, %bb.bl, %bb.bi
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.r) #24
          to label %.body98.i unwind label %bb.aj, !noalias !1397

bb.bt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsidB8gjke19X_15influxdb3_cache.exit.i97.i, %bb.bj, %.loopexit.i, %bb.ao, %bb.an
  %lpad.thr_comm.split-lp131.i = landingpad { ptr, i32 }
          cleanup
  br label %.body98.i

bb.bu:                                            ; preds = %.body98.i, %bb.p
  %.pn55.i = phi { ptr, i32 } [ %i.au, %bb.p ], [ %.pn.pn.i, %.body98.i ] ; 2 uses
  %.sroa.012.3.i = phi i1 [ %.sroa.012.2.i, %bb.p ], [ false, %.body98.i ] ; 2 uses
  %.sroa.08.3.i = phi i8 [ %.sroa.08.0.i, %bb.p ], [ %.sroa.08.2.i, %.body98.i ]
  %i.hw = trunc nuw i8 %.sroa.08.3.i to i1
  br i1 %i.hw, label %bb.bv, label %bb.j

bb.bv:                                            ; preds = %bb.bu, %.thread135.i
  %.sroa.012.3140.i = phi i1 [ true, %.thread135.i ], [ %.sroa.012.3.i, %bb.bu ]
  %.pn55139.i = phi { ptr, i32 } [ %i.cq, %.thread135.i ], [ %.pn55.i, %bb.bu ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.aa) #24
          to label %bb.j unwind label %bb.aj, !noalias !1397

bb.bw:                                            ; preds = %.body.thread106.i, %bb.j
  %.pn55.pn103.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread106.i ], [ %.pn55.pn.i, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtBG_7set_val9SetValZSTEEB1F_(ptr noalias noundef align 8 dereferenceable(72) %i.ab) #24
          to label %.body.thread.i unwind label %bb.aj, !noalias !1397

.body.thread.i:                                   ; preds = %bb.bw, %bb.at, %bb.j
  %.pn55.pn102.i = phi { ptr, i32 } [ %i.dh, %bb.at ], [ %.pn55.pn103.i, %bb.bw ], [ %.pn55.pn.i, %bb.j ]
  resume { ptr, i32 } %.pn55.pn102.i

_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtB8_7set_val9SetValZSTE5mergeNCNvB2_6append0EB1d_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueNtNtBG_7set_val9SetValZSTEEB1F_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsidB8gjke19X_15influxdb3_cache10last_cache5cache8KeyValueEBH_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapReINtNtBb_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_EE5entryCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = load ptr, ptr %1, align 8, !noundef !3   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  call void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker3MutReINtNtBb_5boxed3BoxDNtCsamjPIc071P4_6metric10InstrumentEL_ENtB1h_14LeafOrInternalE11search_treeB1x_ECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.g = load i64, ptr %i.a, align 8, !range !5, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store ptr %2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB17_NtB1K_4NodeEEE10dying_nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1J_NtB2m_4NodeEEE10take_frontB2q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !1454, !noundef !3
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE16deallocating_endNtNtBc_5alloc6GlobalEB2r_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1S_NtB2v_4NodeEENtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE16deallocating_endNtNtBc_5alloc6GlobalEB2r_.exit

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE16deallocating_endNtNtBc_5alloc6GlobalEB2r_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1J_NtB2m_4NodeEEE10init_frontB2q_(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1455 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1456
  invoke void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1S_NtB2v_4NodeEENtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2z_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !1457

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !1456, !noundef !3
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2r_.exit, !prof !11

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
          to label %.noexc1.i.i unwind label %bb.g, !noalias !1458

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !1455
  unreachable

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2r_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2r_.exit, %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsidB8gjke19X_15influxdb3_cache14distinct_cache5cache5ValueETxIB1K_NtB2n_4NodeEEE16deallocating_endNtNtBc_5alloc6GlobalEB2r_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtCsamjPIc071P4_6metric10AttributesNtNtB18_5gauge8U64GaugeE10dying_nextCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1K_5gauge8U64GaugeE10take_frontCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !1470, !noundef !3
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1T_5gauge8U64GaugeNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1K_5gauge8U64GaugeE10init_frontCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1471 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1472
  invoke void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1T_5gauge8U64GaugeNtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !1473

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !1472, !noundef !3
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit, !prof !11

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
          to label %.noexc1.i.i unwind label %bb.g, !noalias !1474

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !1471
  unreachable

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit, %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_5gauge8U64GaugeE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtCsamjPIc071P4_6metric10AttributesNtNtB18_7counter10U64CounterE10dying_nextCsidB8gjke19X_15influxdb3_cache(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1K_7counter10U64CounterE10take_frontCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  %i.h = load ptr, ptr %i.c, align 8, !noalias !1486, !noundef !3
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_7counter10U64CounterE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1T_7counter10U64CounterNtB1y_4LeafENtB1y_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  br label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_7counter10U64CounterE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit

_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_7counter10U64CounterE16deallocating_endNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, -1
  store i64 %i.i, ptr %i.e, align 8
  %i.j = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1K_7counter10U64CounterE10init_frontCsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !1487 ; 3 uses
  %.not.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i1, label %bb.h, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1488
  invoke void @_RINvMsj_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1T_7counter10U64CounterNtB1y_4LeafENtB1y_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i.i unwind label %bb.g, !noalias !1489

.noexc.i.i:                                       ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !noalias !1488, !noundef !3
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %_RINvMsb_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtCsamjPIc071P4_6metric10AttributesNtNtB1L_7counter10U64CounterE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsidB8gjke19X_15influxdb3_cache.exit, !prof !11

bb.f:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
          to label %.noexc1.i.i unwind label %bb.g, !noalias !1490

.noexc1.i.i:                                      ; preds = %bb.f
  unreachable
end_hunk_0
