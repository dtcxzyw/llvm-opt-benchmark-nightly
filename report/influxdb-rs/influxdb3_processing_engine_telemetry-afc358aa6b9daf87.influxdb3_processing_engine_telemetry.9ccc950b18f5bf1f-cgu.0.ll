Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine_telemetry-afc358aa6b9daf87.influxdb3_processing_engine_telemetry.9ccc950b18f5bf1f-cgu.0?download=true
inline.NumInlined: 167
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCNvMs0_B1o_NtB1o_31PluginTriggerInvocationRegistry8snapshots_0E0EB1o_:bb.a
  %.sroa.5.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 16 ; 2 uses
  %i.f = load <2 x i64>, ptr %.sroa.5.0..sroa.0.0.sroa_idx, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.sroa_idx, align 8 ; 2 uses
  %.sroa.68.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 32
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 40 ; 2 uses
  %i.g = load <2 x i64>, ptr %.sroa.7.0..sroa.0.0.sroa_idx, align 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa.0.0.sroa_idx, align 8 ; 2 uses
  %.sroa.812.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 56
  %.sroa.812.0.copyload = load ptr, ptr %.sroa.812.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 64
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.10.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 72
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 80
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 88
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa.0.0.sroa_idx, align 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.019, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.h = icmp eq ptr %i.d, %0
  br i1 %i.h, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit._crit_edge, label %.lr.ph24

bb.e:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.0.i22, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false)
  %i.i = icmp eq ptr %i.j, %0
  br i1 %i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i22 = phi ptr [ %i.j, %bb.e ], [ %i.d, %bb.d ] ; 12 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !135, !noalias !136, !noundef !3 ; 2 uses
  %i.m = tail call i8 @llvm.ucmp.i8.i64(i64 %i.l, i64 %.sroa.12.0.copyload)
  %i.n = icmp eq i64 %i.l, %.sroa.12.0.copyload
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -88
  %.val13.i.i = load ptr, ptr %i.o, align 8, !alias.scope !135, !noalias !136, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -80
  %.val14.i.i = load i64, ptr %i.p, align 8, !alias.scope !135, !noalias !136, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %.val14.i.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.sroa.4.0.copyload, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i), !noalias !137 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.sroa.5.0.copyload, %.val14.i.i
  %spec.select.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph24
  %.sroa.0.0.i.i = phi i8 [ %i.u, %bb.f ], [ %i.m, %.lr.ph24 ] ; 2 uses
  %i.v = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.68.0.copyload) ]
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -64
  %.val17.i.i = load ptr, ptr %i.w, align 8, !alias.scope !135, !noalias !136, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -56
  %.val18.i.i = load i64, ptr %i.x, align 8, !alias.scope !135, !noalias !136, !noundef !3 ; 2 uses
  %spec.store.select.i23.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.7.0.copyload, i64 %.val18.i.i)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %.sroa.68.0.copyload, ptr nonnull readonly %.val17.i.i, i64 %spec.store.select.i23.i.i), !noalias !137 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %.sroa.7.0.copyload, %.val18.i.i
  %spec.select.i24.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i24.i.i, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i = phi i8 [ %i.ac, %bb.h ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %i.ad = icmp eq i8 %.sroa.0.1.i.i, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.812.0.copyload) ]
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -40
  %.val21.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !135, !noalias !136, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -32
  %.val22.i.i = load i64, ptr %i.af, align 8, !alias.scope !135, !noalias !136, !noundef !3 ; 2 uses
  %spec.store.select.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0.copyload, i64 %.val22.i.i)
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.sroa.812.0.copyload, ptr nonnull readonly %.val21.i.i, i64 %spec.store.select.i25.i.i), !noalias !137 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %.sroa.9.0.copyload, %.val22.i.i
  %spec.select.i26.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ah
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i26.i.i, i64 0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.2.i.i = phi i8 [ %i.ak, %bb.j ], [ %.sroa.0.1.i.i, %bb.i ] ; 2 uses
  %i.al = icmp eq i8 %.sroa.0.2.i.i, 0
  br i1 %i.al, label %bb.l, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !135, !noalias !136, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.i22, i64 -24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !135, !noalias !136, !nonnull !3, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload) ]
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.11.0.copyload, i64 %i.an)
  %i.aq = tail call i32 @memcmp(ptr nonnull %.sroa.10.0.copyload, ptr nonnull %i.ap, i64 %spec.store.select.i.i), !noalias !137 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = sub i64 %.sroa.11.0.copyload, %i.an
  %spec.select.i.i = select i1 %i.as, i64 %i.at, i64 %i.ar
  %i.au = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit: ; preds = %bb.k, %bb.l
  %.sroa.0.3.i.i = phi i8 [ %i.au, %bb.l ], [ %.sroa.0.2.i.i, %bb.k ]
  %i.av = icmp eq i8 %.sroa.0.3.i.i, -1
  br i1 %i.av, label %bb.e, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit._crit_edge

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit._crit_edge: ; preds = %bb.e, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i22, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit ] ; 10 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !138
  %.sroa.4.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.5.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 16
  store <2 x i64> %i.f, ptr %.sroa.5.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.68.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 32
  store ptr %.sroa.68.0.copyload, ptr %.sroa.68.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.7.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 40
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.812.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 56
  store ptr %.sroa.812.0.copyload, ptr %.sroa.812.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.9.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 64
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.10.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 72
  store ptr %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.11.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 80
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  %.sroa.12.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 88
  store i64 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa.0.0.i.sroa_idx, align 8, !noalias !138
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs0_B1a_NtB1a_31PluginTriggerInvocationRegistry8snapshots_0E0EB1a_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCNvMs0_B1a_NtB1a_31PluginTriggerInvocationRegistry8snapshots_0E0EB1a_.exit: ; preds = %.lr.ph, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvMs0_BY_NtBY_31PluginTriggerInvocationRegistry8snapshots_0E0EBY_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i121 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i126 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ao, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ao ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hi, %bb.ao ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hg, %bb.ao ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit
  %.sroa.021.0 = phi i8 [ %i.ay, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread124, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.o), !noalias !167, !inline_history !142 ; 2 uses
  %.not98 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader76

.preheader76:                                     ; preds = %bb.k
  br i1 %.not98, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader76
  %smax = tail call i64 @llvm.smax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not98, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread124, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %.preheader
  %smax105 = tail call i64 @llvm.smax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph85

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.01.0.i.i81 = phi i64 [ %i.w, %bb.l ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.01.0.i.i81
  %i.t = getelementptr [96 x i8], ptr %i.o, i64 %.sroa.01.0.i.i81
  %i.u = getelementptr i8, ptr %i.t, i64 -96
  %i.v = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.u), !noalias !167, !inline_history !142
  br i1 %i.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.01.0.i.i81, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i, label %.lr.ph

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.m
  %.sroa.01.1.i.i84 = phi i64 [ %i.ab, %bb.m ], [ 2, %.lr.ph85.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.01.1.i.i84
  %i.y = getelementptr [96 x i8], ptr %i.o, i64 %.sroa.01.1.i.i84
  %i.z = getelementptr i8, ptr %i.y, i64 -96
  %i.aa = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.z), !noalias !167, !inline_history !142
  br i1 %i.aa, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i

bb.m:                                             ; preds = %.lr.ph85
  %i.ab = add nuw nsw i64 %.sroa.01.1.i.i84, 1    ; 2 uses
  %exitcond105.not = icmp eq i64 %i.ab, %smax105
  br i1 %exitcond105.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i, label %.lr.ph85

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph85
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i84, %.lr.ph85 ], [ %smax105, %bb.m ], [ %.sroa.01.0.i.i81, %.lr.ph ], [ %smax, %bb.l ] ; 5 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread124: ; preds = %.preheader
  br i1 %.not5.i126, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread: ; preds = %.preheader76
  br i1 %.not5.i121, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i
  %i.ad = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ad, 0
  %or.cond.not = and i1 %.not.i.i, %i.r
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.n, i64 %.sroa.01.0)
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs0_B17_NtB17_31PluginTriggerInvocationRegistry8snapshots_0E0EB17_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !142
  %i.af = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEB12_.exit.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i7174 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread ], [ %.sroa.0.0.i.i122129133, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEB12_.exit.i.i ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i.i7174, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread124
  %i.aj = phi i64 [ %i.ad, %bb.n ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread124 ]
  %.sroa.0.0.i.i122129133 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCNvMs0_B14_NtB14_31PluginTriggerInvocationRegistry8snapshots_0E0EB14_.exit.i.thread124 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.0.0.i.i122129133
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEB12_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ap, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEB12_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i, -1
  %i.am = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.an = getelementptr [96 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEB12_.exit.i.i unwind label %bb.q, !noalias !167

bb.q:                                             ; preds = %.lr.ph.i.i37
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #25, !noalias !167
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEB12_.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ai, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7reverseBw_.exit ], [ %i.ag, %bb.p ], [ %i.ae, %bb.o ] ; 2 uses
  %i.aq = lshr i64 %.sroa.023.0, 1
  %i.ar = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.as = sub nsw i64 %factor, %i.aq
  %i.at = add nuw nsw i64 %i.ar, %factor
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = mul i64 %i.at, %.sroa.0.0
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph91, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit
  %.sroa.02.190 = phi i64 [ %.sroa.02.0, %.lr.ph91 ], [ %i.az, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit ] ; 2 uses
  %.sroa.023.189 = phi i64 [ %.sroa.023.0, %.lr.ph91 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit ] ; 4 uses
  %i.az = add i64 %.sroa.02.190, -1               ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bb, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.189, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.190, %bb.r ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bd, align 1
  br i1 %i.k, label %bb.ao, label %bb.ap

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !noundef !3 ; 3 uses
  %i.bg = lshr i64 %i.bf, 1                       ; 8 uses
  %i.bh = lshr i64 %.sroa.023.189, 1              ; 6 uses
  %i.bi = add nuw i64 %i.bg, %i.bh                ; 4 uses
  %i.bj = sub i64 %.sroa.09.0, %i.bi
  %i.bk = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bj ; 6 uses
  %i.bl = icmp samesign ugt i64 %i.bi, %3
  %i.bm = trunc i64 %.sroa.023.189 to i1
  %i.bn = or i64 %i.bf, %.sroa.023.189
  %i.bo = trunc i64 %i.bn to i1
  %or.cond3.i = or i1 %i.bl, %i.bo
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = trunc i64 %i.bf to i1
  br i1 %i.bp, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bq = shl nuw nsw i64 %i.bi, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs0_B18_NtB18_31PluginTriggerInvocationRegistry8snapshots_0E0EB18_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bm, label %bb.x, label %bb.an

bb.w:                                             ; preds = %bb.t
  %i.br = or i64 %i.bg, 1
  %i.bs = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = xor i32 %i.bu, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs0_B17_NtB17_31PluginTriggerInvocationRegistry8snapshots_0E0EB17_(ptr noalias noundef nonnull align 8 %i.bk, i64 noundef range(i64 0, 96076792050570582) %i.bg, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !143
  br label %bb.v

bb.x:                                             ; preds = %bb.an, %bb.v
  %i.bw = icmp eq i64 %i.bg, 0
  %i.bx = icmp eq i64 %i.bh, 0
  %or.cond.i = or i1 %i.bx, %i.bw
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs0_BZ_NtBZ_31PluginTriggerInvocationRegistry8snapshots_0E0EBZ_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 range(i64 0, -9223372036854775808) %i.bg) ; 2 uses
  %i.by = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.by, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs0_BZ_NtBZ_31PluginTriggerInvocationRegistry8snapshots_0E0EBZ_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.bg ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bg, %i.bh  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.bz, ptr %i.bk
  %i.ca = mul nuw nsw i64 %.sroa.0.0.i.i35, 96    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ca, i1 false), !alias.scope !168
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ca ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit66
  %i.cc = phi ptr [ %i.ej, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit66 ], [ %i.cb, %.critedge.i ] ; 10 uses
  %i.cd = phi ptr [ %i.eh, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit66 ], [ %i.bz, %.critedge.i ] ; 10 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cg, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_.exit66 ], [ %i.m, %.critedge.i ]
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -96 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 -96 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171), !noalias !172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173), !noalias !172
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !174, !noalias !175, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !176, !noalias !177, !noundef !3 ; 2 uses
  %i.cl = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ci, i64 %i.ck)
  %i.cm = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.i
  %i.cn = getelementptr inbounds i8, ptr %i.cc, i64 -88
  %.val.i.i60 = load ptr, ptr %i.cn, align 8, !alias.scope !176, !noalias !177, !nonnull !3, !noundef !3
  %i.co = getelementptr inbounds i8, ptr %i.cc, i64 -80
  %.val12.i.i61 = load i64, ptr %i.co, align 8, !alias.scope !176, !noalias !177, !noundef !3 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cd, i64 -88
  %.val13.i.i62 = load ptr, ptr %i.cp, align 8, !alias.scope !174, !noalias !175, !nonnull !3, !noundef !3
  %i.cq = getelementptr inbounds i8, ptr %i.cd, i64 -80
  %.val14.i.i63 = load i64, ptr %i.cq, align 8, !alias.scope !174, !noalias !175, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i64 = tail call i64 @llvm.umin.i64(i64 %.val12.i.i61, i64 %.val14.i.i63)
  %i.cr = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i60, ptr nonnull readonly %.val13.i.i62, i64 %spec.store.select.i.i.i64), !noalias !178 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 0
  %i.cu = sub i64 %.val12.i.i61, %.val14.i.i63
  %spec.select.i.i.i65 = select i1 %i.ct, i64 %i.cu, i64 %i.cs
  %i.cv = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i65, i64 0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.preheader.i
  %.sroa.0.0.i.i42 = phi i8 [ %i.cv, %bb.z ], [ %i.cl, %.preheader.i ] ; 2 uses
  %i.cw = icmp eq i8 %.sroa.0.0.i.i42, 0
  br i1 %i.cw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds i8, ptr %i.cc, i64 -64
  %.val15.i.i54 = load ptr, ptr %i.cx, align 8, !alias.scope !176, !noalias !177, !nonnull !3, !noundef !3
  %i.cy = getelementptr inbounds i8, ptr %i.cc, i64 -56
  %.val16.i.i55 = load i64, ptr %i.cy, align 8, !alias.scope !176, !noalias !177, !noundef !3 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cd, i64 -64
  %.val17.i.i56 = load ptr, ptr %i.cz, align 8, !alias.scope !174, !noalias !175, !nonnull !3, !noundef !3
  %i.da = getelementptr inbounds i8, ptr %i.cd, i64 -56
  %.val18.i.i57 = load i64, ptr %i.da, align 8, !alias.scope !174, !noalias !175, !noundef !3 ; 2 uses
  %spec.store.select.i23.i.i58 = tail call i64 @llvm.umin.i64(i64 %.val16.i.i55, i64 %.val18.i.i57)
  %i.db = tail call i32 @memcmp(ptr nonnull readonly %.val15.i.i54, ptr nonnull readonly %.val17.i.i56, i64 %spec.store.select.i23.i.i58), !noalias !178 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryE9drop_slowBH_:bb.a
bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryEBD_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryRNtNtBG_5alloc6GlobalEEB1b_.exit2

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryRNtNtBG_5alloc6GlobalEEB1b_.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryRNtNtBG_5alloc6GlobalEEB1b_.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryEBD_.exit, %bb.i, %bb.j
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryRNtNtBG_5alloc6GlobalEEB1b_.exit: ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.f = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #22
  br label %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i

_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit, !prof !4

bb.d:                                             ; preds = %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #23
  unreachable

_RNvMsq_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit: ; preds = %_RNCNvMsq_NtCscdodAO9FK5_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationRegistryENtB6_5Debug3fmtB15_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !5, !noundef !3
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !448
  store ptr %i.c, ptr %i.a, align 8, !noalias !448
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 31, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !448
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsV_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCscdodAO9FK5_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4NRVxsYgnAr_4core4hashINtB5_18BuildHasherDefaultNtNtCs3L39Jvi82fL_5ahash13fallback_hash7AHasherENtB5_11BuildHasher12build_hasherCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvMs0_B16_NtB16_31PluginTriggerInvocationRegistry8snapshots_0E0EB16_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCs6gU0GsN6MoR_8lock_api5mutex5MutexNtNtCsgIGNhOnZR2a_11parking_lot9raw_mutex8RawMutexINtNtCsc96bKABWO34_9hashbrown3map7HashMapNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEENtB6_5Debug3fmtB2F_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{i64 8}
!6 = distinct !{!6, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!7 = distinct !{!7, !6, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!8 = distinct !{!8, !6, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 1"}
!9 = distinct !{!9, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!10 = distinct !{!10, !9, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!11 = distinct !{!11, !9, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner12resize_innerNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 1"}
!12 = distinct !{!12, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!13 = distinct !{!13, !12, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!14 = distinct !{!14, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!15 = distinct !{!15, !14, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner17new_uninitializedNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!16 = distinct !{!16, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!17 = distinct !{!17, !16, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown10scopeguard10ScopeGuardNtNtNtBG_3raw5inner13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0EECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!18 = distinct !{!18, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!19 = distinct !{!19, !18, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!20 = distinct !{!20, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!21 = distinct !{!21, !20, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!22 = distinct !{!22, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!23 = distinct !{!23, !22, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!24 = distinct !{!24, !"_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place"}
!25 = distinct !{!25, !24, !"_RNvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB5_13RawTableInner15rehash_in_place: argument 0"}
!26 = distinct !{!26, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128"}
!27 = distinct !{!27, !26, !"_RNvNtNtNtCs4NRVxsYgnAr_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!28 = !{!7}
!29 = !{!8}
!30 = !{!10}
!31 = !{!10, !11, !7, !8}
!32 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!33 = !{!"branch_weights", i32 2002, i32 2000}
!34 = !{!15, !13}
!35 = !{!13}
!36 = !{!10, !7}
!37 = !{!11, !8}
!38 = !{!17}
!39 = !{!19}
!40 = !{!19, !17}
!41 = !{!21}
!42 = !{!21, !19, !17}
!43 = !{!23}
!44 = !{!25}
!45 = !{!25, !8}
!46 = !{!27}
!47 = !{!7, !8}
!48 = distinct !{!48, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1a_"}
!49 = distinct !{!49, !48, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1a_: argument 1"}
!50 = distinct !{!50, !48, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1a_: argument 0"}
!51 = distinct !{!51, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEE9next_implKb0_EB15_"}
!52 = distinct !{!52, !51, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEE9next_implKb0_EB15_: argument 0"}
!53 = !{!49}
!54 = !{!50}
!55 = !{!50, !49}
!56 = !{!52}
!57 = distinct !{!57, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1k_"}
!58 = distinct !{!58, !57, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1k_: argument 0"}
!59 = distinct !{!59, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1a_"}
!60 = distinct !{!60, !59, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1a_: argument 1"}
!61 = distinct !{!61, !59, !"_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEEB1a_: argument 0"}
!62 = distinct !{!62, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEE9next_implKb0_EB15_"}
!63 = distinct !{!63, !62, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyEE9next_implKb0_EB15_: argument 0"}
!64 = !{!58}
!65 = !{!60}
!66 = !{!60, !58}
!67 = !{!61}
!68 = !{!61, !60, !58}
!69 = !{!63, !58}
!70 = distinct !{!70, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!71 = distinct !{!71, !70, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtNtB7_3raw5inner13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!72 = distinct !{!72, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!73 = distinct !{!73, !72, !"_RNCINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalE0CsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!74 = !{!71}
!75 = !{!73}
!76 = !{!73, !71}
!77 = distinct !{!77, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!78 = distinct !{!78, !77, !"_RNvXs1_NtCsc96bKABWO34_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtNtB7_3raw5inner13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!79 = distinct !{null, null}
!80 = !{!78}
!81 = distinct !{!81, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyEBD_"}
!82 = distinct !{!82, !81, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyEBD_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!84 = distinct !{!84, !83, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!85 = distinct !{!85, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!86 = distinct !{!86, !85, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!87 = distinct !{!87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!88 = distinct !{!88, !87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!89 = distinct !{!89, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!90 = distinct !{!90, !89, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!91 = distinct !{!91, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!92 = distinct !{!92, !91, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!93 = distinct !{!93, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!94 = distinct !{!94, !93, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!95 = distinct !{!95, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!96 = distinct !{!96, !95, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!97 = distinct !{!97, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!98 = distinct !{!98, !97, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!99 = distinct !{!99, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!100 = distinct !{!100, !99, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!101 = distinct !{!101, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry"}
!102 = distinct !{!102, !101, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry: argument 0"}
!103 = !{!82}
!104 = !{!84}
!105 = !{!86}
!106 = !{!86, !84, !82}
!107 = !{!88}
!108 = !{!90}
!109 = !{!90, !88, !82}
!110 = !{!90, !88}
!111 = !{!92}
!112 = !{!94}
!113 = !{!94, !92, !82}
!114 = !{!94, !92}
!115 = !{!96}
!116 = !{!98}
!117 = !{!98, !96, !82}
!118 = !{!98, !96}
!119 = !{!100}
!120 = !{!102}
!121 = !{!102, !100, !82}
!122 = !{!102, !100}
!123 = distinct !{!123, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_"}
!124 = distinct !{!124, !123, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_: argument 1"}
!125 = distinct !{!125, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_"}
!126 = distinct !{!126, !125, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_: argument 1"}
!127 = distinct !{!127, !123, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_: argument 0"}
!128 = distinct !{!128, !125, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_: argument 0"}
!129 = distinct !{!129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEEB1v_"}
!130 = distinct !{!130, !129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEEB1v_: argument 0"}
!131 = distinct !{!131, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotENtNtNtBd_3ops4drop4Drop4dropB1i_"}
!132 = distinct !{!132, !131, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotENtNtNtBd_3ops4drop4Drop4dropB1i_: argument 0"}
!133 = !{!124}
!134 = !{!126}
!135 = !{!126, !124}
!136 = !{!128, !127}
!137 = !{!128, !126, !127, !124}
!138 = !{!132, !130}
!139 = distinct !{!139, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_"}
!140 = distinct !{!140, !139, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_: argument 2"}
!141 = distinct !{!141, !139, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs0_B15_NtB15_31PluginTriggerInvocationRegistry8snapshots_0E0EB15_: argument 1"}
!142 = distinct !{null}
!143 = distinct !{null}
!144 = distinct !{!144, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs0_BZ_NtBZ_31PluginTriggerInvocationRegistry8snapshots_0E0EBZ_"}
!145 = distinct !{!145, !144, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs0_BZ_NtBZ_31PluginTriggerInvocationRegistry8snapshots_0E0EBZ_: argument 1"}
!146 = distinct !{!146, !144, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs0_BZ_NtBZ_31PluginTriggerInvocationRegistry8snapshots_0E0EBZ_: argument 0"}
!147 = distinct !{!147, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_"}
!148 = distinct !{!148, !147, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_: argument 0"}
!149 = distinct !{!149, !147, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_: argument 1"}
!150 = distinct !{!150, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_"}
!151 = distinct !{!151, !150, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_: argument 0"}
!152 = distinct !{!152, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs0_B1c_NtB1c_31PluginTriggerInvocationRegistry8snapshots_0E0EB1c_"}
!153 = distinct !{!153, !152, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs0_B1c_NtB1c_31PluginTriggerInvocationRegistry8snapshots_0E0EB1c_: argument 0"}
!154 = distinct !{!154, !150, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_: argument 1"}
!155 = distinct !{!155, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_"}
!156 = distinct !{!156, !155, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_: argument 0"}
!157 = distinct !{!157, !155, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshot7sort_byNCNvMs0_Bz_NtBz_31PluginTriggerInvocationRegistry8snapshots_0E0Bz_: argument 1"}
!158 = distinct !{!158, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_"}
!159 = distinct !{!159, !158, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_: argument 0"}
!160 = distinct !{!160, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE8merge_upNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs0_B1c_NtB1c_31PluginTriggerInvocationRegistry8snapshots_0E0EB1c_"}
!161 = distinct !{!161, !160, !"_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE8merge_upNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCNvMs0_B1c_NtB1c_31PluginTriggerInvocationRegistry8snapshots_0E0EB1c_: argument 0"}
!162 = distinct !{!162, !158, !"_RNCNvMs0_CsdsDzd1zQknb_37influxdb3_processing_engine_telemetryNtB7_31PluginTriggerInvocationRegistry8snapshots_0B7_: argument 1"}
!163 = distinct !{!163, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEEB1r_"}
!164 = distinct !{!164, !163, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEEB1r_: argument 0"}
!165 = distinct !{!165, !"_RNvXs_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB4_10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotENtNtNtBc_3ops4drop4Drop4dropB1d_"}
!166 = distinct !{!166, !165, !"_RNvXs_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB4_10MergeStateNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotENtNtNtBc_3ops4drop4Drop4dropB1d_: argument 0"}
!167 = !{!141, !140}
!168 = !{!146, !145}
!169 = !{!148}
end_hunk_1
