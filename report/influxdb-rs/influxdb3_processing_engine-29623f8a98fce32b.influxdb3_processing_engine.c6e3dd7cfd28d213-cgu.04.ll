Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine-29623f8a98fce32b.influxdb3_processing_engine.c6e3dd7cfd28d213-cgu.04?download=true
inline.NumInlined: 1043
inline.NumDeleted: 440
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCsh4GC5dvIChH_27influxdb3_processing_engine7pluginsNtB4_18DryRunWriteHandler19validate_all_writes:bb.a

bb.bj:                                            ; preds = %bb.bi
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #27
          to label %.body83.i unwind label %bb.bk, !noalias !1412

bb.bk:                                            ; preds = %bb.bj
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !1412
  unreachable

bb.bl:                                            ; preds = %bb.bi, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %i.fz = load ptr, ptr %i.aw, align 8, !alias.scope !1433, !noalias !1434, !nonnull !7, !noundef !7
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !1412
  %i.gb = add i64 %i.fu, 1                        ; 3 uses
  store i64 %i.gb, ptr %i.ax, align 8, !alias.scope !1433, !noalias !1434
  %.sroa.033.0.copyload34 = load i64, ptr %i.x, align 8, !noalias !1417 ; 2 uses
  %.sroa.535.0.copyload37 = load ptr, ptr %i.aw, align 8, !noalias !1417 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs92BnbMq7p8c_15influxdb3_write12write_buffer5ErrorECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %bb.bm unwind label %.thread100.i, !noalias !1412

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1411
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.gc = load ptr, ptr %i.y, align 8, !alias.scope !1439, !noalias !1411, !nonnull !7, !noundef !7
  %i.gd = atomicrmw sub ptr %i.gc, i64 1 release, align 8, !noalias !1440
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i, label %bb.bo

.thread100.thread121.i:                           ; preds = %.thread.i, %bb.ag, %bb.r, %.thread100.i
  %.pn6298.i = phi { ptr, i32 } [ %.pn6299.i, %.thread.i ], [ %i.dc, %.thread100.i ], [ %i.ee, %bb.ag ], [ %i.df, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %i.gf = load ptr, ptr %i.y, align 8, !alias.scope !1444, !noalias !1411, !nonnull !7, !noundef !7
  %i.gg = atomicrmw sub ptr %i.gf, i64 1 release, align 8, !noalias !1445
  %i.gh = icmp eq i64 %i.gg, 1
  br i1 %i.gh, label %bb.bn, label %.body

bb.bn:                                            ; preds = %.thread100.thread121.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %.body unwind label %bb.ap, !noalias !1412

.thread.i:                                        ; preds = %.body83.i, %bb.bg, %.thread110.i, %.thread100.thread124.i
  %.pn6299.i = phi { ptr, i32 } [ %i.db, %.thread100.thread124.i ], [ %eh.lpad-body84.i, %.body83.i ], [ %.pn58.i, %.thread110.i ], [ %i.fs, %bb.bg ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.x) #27
          to label %.thread100.thread121.i unwind label %bb.ap, !noalias !1412

bb.bo:                                            ; preds = %bb.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i
  %.sroa.638.1 = phi i64 [ %.sroa.638.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ], [ %i.gb, %bb.bm ], [ %.sroa.638.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i ] ; 2 uses
  %.sroa.535.1 = phi ptr [ %.sroa.535.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ], [ %.sroa.535.0.copyload37, %bb.bm ], [ %.sroa.535.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i ] ; 4 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.0.copyload, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ], [ %.sroa.033.0.copyload34, %bb.bm ], [ %.sroa.033.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name12DatabaseNameECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.535.1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.gi = icmp ult i64 %.sroa.638.1, 384307168202282326
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.535.1, i64 %.sroa.638.1
  store ptr %.sroa.535.1, ptr %i.z, align 8
  store i64 %.sroa.033.1, ptr %i.bm, align 8
  store ptr %.sroa.535.1, ptr %i.bn, align 8
  store ptr %i.gj, ptr %i.bo, align 8
  invoke void @_RNvXs0_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtB9_6string6StringEINtB5_10SpecExtendBT_INtNtB7_9into_iter8IntoIterBT_EE11spec_extendCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.bp unwind label %.loopexit46

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %.backedge

.backedge:                                        ; preds = %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.gk = icmp eq i64 %i.cc, 0
  br i1 %i.gk, label %._crit_edge, label %bb.b

bb.bq:                                            ; preds = %bb.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body22

.body22:                                          ; preds = %bb.bs, %bb.bq
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.gl, %bb.bq ], [ %i.gp, %bb.bs ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #27
          to label %.body unwind label %bb.bx

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.gm = load i64, ptr %i.aj, align 8, !alias.scope !1446, !noalias !1447, !noundef !7 ; 3 uses
  %i.gn = load i64, ptr %i.ah, align 8, !range !10, !alias.scope !1446, !noalias !1447, !noundef !7
  %i.go = icmp eq i64 %i.gm, %i.gn
  br i1 %i.go, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.bu unwind label %bb.bs, !noalias !1447

bb.bs:                                            ; preds = %bb.br
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #27
          to label %.body22 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.bu:                                            ; preds = %bb.br, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.gr = load ptr, ptr %i.ai, align 8, !alias.scope !1446, !noalias !1447, !nonnull !7, !noundef !7
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.gt = add i64 %i.gm, 1
  store i64 %i.gt, ptr %i.aj, align 8, !alias.scope !1446, !noalias !1447
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.gu = load ptr, ptr %i.ad, align 8, !alias.scope !1448, !noundef !7 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.gw = load ptr, ptr %i.bq, align 8, !alias.scope !1452, !nonnull !7, !noundef !7
  %i.gx = atomicrmw sub ptr %i.gw, i64 1 release, align 8, !noalias !1452
  %i.gy = icmp eq i64 %i.gx, 1
  br i1 %i.gy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name15TruncatedStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.bw:                                            ; preds = %bb.bu
  %i.gz = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !1453
  %i.ha = icmp eq i64 %i.gz, 1
  br i1 %i.ha, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name15TruncatedStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name15TruncatedStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i: ; preds = %bb.bw, %bb.bv
  %.sink.i = phi ptr [ %i.bq, %bb.bv ], [ %i.ad, %bb.bw ]
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %.loopexit46

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name17DatabaseNameErrorECsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.bw, %bb.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9h7Hq22ZyhR_15influxdb3_types13database_name15TruncatedStringECsh4GC5dvIChH_27influxdb3_processing_engine.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.backedge

bb.bx:                                            ; preds = %.body22, %.body
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.by:                                            ; preds = %bb.d
  unreachable

bb.bz:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsh4GC5dvIChH_27influxdb3_processing_engine7plugins22collect_dry_run_writes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.661 = alloca [16 x i8], align 8          ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.956 = alloca [40 x i8], align 8          ; 7 uses
  %i.g = alloca [128 x i8], align 8               ; 24 uses
  %i.h = alloca [32 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !7 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !7 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.l, i64 %i.j)
  invoke void @_RNvMs6_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EEE16with_capacity_inCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, i64 noundef %.sroa.0.0.i)
          to label %_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit unwind label %bb.at

_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit: ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.446.0.copyload = load i64, ptr %.sroa.446.0..sroa_idx, align 8 ; 4 uses
  %.val4.i.i.i = load <16 x i8>, ptr %.sroa.0.0.copyload, align 16, !noalias !1561
  %i.m = icmp eq i64 %.sroa.446.0.copyload, 0
  br i1 %i.m, label %bb.d, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %i.n = mul i64 %.sroa.446.0.copyload, 48        ; 2 uses
  %3 = add i64 %i.n, 48                           ; 2 uses
  %4 = add i64 %.sroa.446.0.copyload, 17
  %i.o = add i64 %4, %3                           ; 3 uses
  %5 = icmp uge i64 %i.o, %3
  tail call void @llvm.assume(i1 %5)
  %6 = icmp ult i64 %i.o, 9223372036854775793
  tail call void @llvm.assume(i1 %6)
  %7 = sub i64 -48, %i.n
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %7
  br label %bb.d

bb.b:                                             ; preds = %.body, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.q, %bb.c ]
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1p_3vec3VecB1l_EENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 48, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1k_3vec3VecB1g_EEECsh4GC5dvIChH_27influxdb3_processing_engine.exit36 unwind label %bb.as

bb.c:                                             ; preds = %.loopexit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit
  %.sroa.510.0.i.i = phi ptr [ undef, %_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %i.p, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sroa.49.0.i.i = phi i64 [ undef, %_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ %i.o, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 0, %_RNvMs1_NtCsc96bKABWO34_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtBR_3vec3VecBN_EE24with_capacity_and_hasherCsh4GC5dvIChH_27influxdb3_processing_engine.exit ], [ 16, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.s = icmp sgt <16 x i8> %.val4.i.i.i, splat (i8 -1)
  %i.t = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.446.0.copyload
  %i.u = getelementptr i8, ptr %i.t, i64 1
  %.sroa.049.0.copyload = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.450.0.copyload = load i64, ptr %.sroa.450.0..sroa_idx, align 8 ; 4 uses
  %.val4.i.i.i.i = load <16 x i8>, ptr %.sroa.049.0.copyload, align 16, !noalias !1562
  %i.v = icmp eq i64 %.sroa.450.0.copyload, 0
  br i1 %i.v, label %bb.e, label %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.d
  %i.w = mul i64 %.sroa.450.0.copyload, 48        ; 2 uses
  %8 = add i64 %i.w, 48                           ; 2 uses
  %9 = add i64 %.sroa.450.0.copyload, 17
  %i.x = add i64 %9, %8                           ; 3 uses
  %10 = icmp uge i64 %i.x, %8
  tail call void @llvm.assume(i1 %10)
  %11 = icmp ult i64 %i.x, 9223372036854775793
  tail call void @llvm.assume(i1 %11)
  %12 = sub i64 -48, %i.w
  %i.y = getelementptr inbounds i8, ptr %.sroa.049.0.copyload, i64 %12
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.d
  %.sroa.510.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.y, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sroa.49.0.i.i.i = phi i64 [ undef, %bb.d ], [ %i.x, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 0, %bb.d ], [ 16, %_RNvMs1_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.049.0.copyload, i64 16
  %i.aa = icmp sgt <16 x i8> %.val4.i.i.i.i, splat (i8 -1)
  %i.ab = getelementptr i8, ptr %.sroa.049.0.copyload, i64 %.sroa.450.0.copyload
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sink.i.i.i, ptr %i.g, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store i64 %.sroa.49.0.i.i, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %.sroa.510.0.i.i, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  store ptr %.sroa.0.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store ptr %i.r, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.u, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  store <16 x i1> %i.s, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  store i64 %i.j, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  store i64 %.sink.i.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %.sroa.49.0.i.i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr %.sroa.510.0.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 3 uses
  store ptr %.sroa.049.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 3 uses
  store ptr %i.z, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.ac, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 3 uses
  store <16 x i1> %i.aa, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 3 uses
  store i64 %i.l, ptr %.sroa.937.0..sroa_idx, align 8
  %.sroa.956.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.956.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.956, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.966.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.863.8..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.ar, %bb.e
  %i.ar = phi i64 [ %.pre, %bb.ar ], [ %.sink.i.i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.956)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  %.not.i = icmp eq i64 %i.ar, -1
  br i1 %.not.i, label %.thread78, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  %i.as = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !1567, !noalias !1568, !noundef !7 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %i.au = load i16, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !1570, !noalias !1568, !noundef !7 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i16 %i.au, 0
  %.promoted.i.i.i.i.i = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1570, !noalias !1568 ; 2 uses
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.promoted13.i.i.i.i.i = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1570, !noalias !1568
  br label %bb.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  store ptr %i.az, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1570, !noalias !1568
  store ptr %i.ay, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1570, !noalias !1568
  br label %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %i.av = phi ptr [ %.promoted13.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.az, %bb.i ] ; 2 uses
  %i.aw = phi ptr [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ay, %bb.i ]
  %.val9.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 16, !noalias !1571
  %i.ax = icmp sgt <16 x i8> %.val9.i.i.i.i.i, splat (i8 -1)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -768 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ax to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %._crit_edge.i.i.i.i.i

_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %i.ba = phi ptr [ %i.ay, %._crit_edge.i.i.i.i.i ], [ %.promoted.i.i.i.i.i, %bb.h ]
  %.lcssa.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.au, %bb.h ] ; 3 uses
  %i.bb = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = and i16 %i.bb, %.lcssa.i.i.i.i.i
  store i16 %i.be, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !1570, !noalias !1568
  %i.bf = sub nsw i64 0, %i.bd
  %i.bg = getelementptr inbounds [48 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bh = add i64 %i.as, -1
  store i64 %i.bh, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !1567, !noalias !1568
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -48
  %.sroa.069.0.copyload = load i64, ptr %i.bi, align 8, !noalias !1572 ; 2 uses
  %.not6.i = icmp eq i64 %.sroa.069.0.copyload, -1
  br i1 %.not6.i, label %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBN_3vec3VecBJ_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtCsc96bKABWO34_9hashbrown3map8IntoIterBJ_B1k_EB2B_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread86

_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i: ; preds = %bb.g, %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  invoke void @_RNvMsn_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_7RawIterTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB10_3vec3VecBW_EEE13drop_elementsCsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.0.sroa.4.0..sroa_idx)
          to label %.noexc.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, !noalias !1573

.noexc.i:                                         ; preds = %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i
  %i.bj = load i64, ptr %i.g, align 8, !range !8, !alias.scope !1574, !noalias !1573, !noundef !7 ; 2 uses
  %.not.i.i.i.i7.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i7.i, label %.thread81, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  %i.bk = load i64, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1574, !noalias !1573, !noundef !7 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread81, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !1574, !noalias !1573, !nonnull !7, !noundef !7
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bj) #30, !noalias !1573
  br label %.thread81

.thread81:                                        ; preds = %.noexc.i, %bb.j, %bb.k
  store i64 -1, ptr %i.g, align 8, !alias.scope !1563, !noalias !1573
  br label %.thread78

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i: ; preds = %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %i.g, align 8, !alias.scope !1563, !noalias !1573
  br label %.body

.body:                                            ; preds = %.body25, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i, %.body25.thread
  %.pn = phi { ptr, i32 } [ %eh.lpad-body2692, %.body25.thread ], [ %i.gr, %.body25 ], [ %i.bn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EEEECsh4GC5dvIChH_27influxdb3_processing_engine.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtB1X_3vec3VecB1T_EEB1d_EECsh4GC5dvIChH_27influxdb3_processing_engine(ptr noalias noundef align 8 dereferenceable(128) %i.g) #27
          to label %bb.b unwind label %bb.as

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBN_3vec3VecBJ_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtCsc96bKABWO34_9hashbrown3map8IntoIterBJ_B1k_EB2B_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit.thread86: ; preds = %_RNvYNvYINtNtCsc96bKABWO34_9hashbrown3map8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringINtNtBP_3vec3VecBL_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextINtNtNtB1P_3ops8function6FnOnceTQB5_EE9call_onceCsh4GC5dvIChH_27influxdb3_processing_engine.exit.i
  %.sroa.670.0..sroa_idx = getelementptr inbounds i8, ptr %i.bg, i64 -40
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.956, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.670.0..sroa_idx, i64 40, i1 false)
  br label %bb.o

.thread78:                                        ; preds = %bb.f, %.thread81
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  %i.bo = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !range !6, !alias.scope !1577, !noalias !1578, !noundef !7
  %.not.i.i = icmp eq i64 %i.bo, -1
  br i1 %.not.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.thread78
  call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.bp = load i64, ptr %.sroa.937.0..sroa_idx, align 8, !alias.scope !1581, !noalias !1582, !noundef !7 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.br = load i16, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !1584, !noalias !1582, !noundef !7 ; 2 uses
  %.not11.i.i.i.i.i9 = icmp eq i16 %i.br, 0
  %.promoted.i.i.i.i.i14 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1584, !noalias !1582 ; 2 uses
  br i1 %.not11.i.i.i.i.i9, label %.lr.ph.i.i.i.i.i13, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBN_3vec3VecBJ_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtCsc96bKABWO34_9hashbrown3map8IntoIterBJ_B1k_EB2B_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit

.lr.ph.i.i.i.i.i13:                               ; preds = %bb.m
  %.promoted13.i.i.i.i.i15 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1584, !noalias !1582
  br label %bb.n

._crit_edge.i.i.i.i.i19:                          ; preds = %bb.n
  store ptr %i.bw, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1584, !noalias !1582
  store ptr %i.bv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1584, !noalias !1582
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBN_3vec3VecBJ_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtCsc96bKABWO34_9hashbrown3map8IntoIterBJ_B1k_EB2B_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsh4GC5dvIChH_27influxdb3_processing_engine.exit

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i13
  %i.bs = phi ptr [ %.promoted13.i.i.i.i.i15, %.lr.ph.i.i.i.i.i13 ], [ %i.bw, %bb.n ] ; 2 uses
  %i.bt = phi ptr [ %.promoted.i.i.i.i.i14, %.lr.ph.i.i.i.i.i13 ], [ %i.bv, %bb.n ]
  %.val9.i.i.i.i.i16 = load <16 x i8>, ptr %i.bs, align 16, !noalias !1585
  %i.bu = icmp sgt <16 x i8> %.val9.i.i.i.i.i16, splat (i8 -1)
end_hunk_0
