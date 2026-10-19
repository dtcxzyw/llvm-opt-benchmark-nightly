Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_processing_engine_telemetry-afc358aa6b9daf87.influxdb3_processing_engine_telemetry.9ccc950b18f5bf1f-cgu.1?download=true
inline.NumInlined: 189
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry:bb.a
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE8truncateBF_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %1
  store i64 %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.h = icmp eq i64 %i.b, %1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_.exit.i
  %.sroa.0.07.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %.sroa.0.07.i ; 6 uses
  %i.j = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.val.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !189 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !189, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !189
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i: ; preds = %bb.c, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %.val.i5.i.i = load i64, ptr %i.m, align 8, !alias.scope !191 ; 2 uses
  %i.n = icmp eq i64 %.val.i5.i.i, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit7.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.val1.i6.i.i = load ptr, ptr %i.o, align 8, !alias.scope !191, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i.i, i64 noundef %.val.i5.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !191
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit7.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit7.i.i: ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.val.i11.i.i = load i64, ptr %i.p, align 8, !alias.scope !193 ; 2 uses
  %i.q = icmp eq i64 %.val.i11.i.i, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit7.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.val1.i12.i.i = load ptr, ptr %i.r, align 8, !alias.scope !193, !nonnull !3, !noundef !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i, i64 noundef %.val.i11.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !193
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_.exit.i: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit7.i.i
  %i.s = icmp eq i64 %i.j, %i.d
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBE_.exit, label %.lr.ph.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBE_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map4IterNtB12_26PluginTriggerInvocationKeyyENCNvMs0_B12_NtB12_31PluginTriggerInvocationRegistry8snapshot0EE9from_iterB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map4IterNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyENCNvMs0_B1A_NtB1A_31PluginTriggerInvocationRegistry8snapshot0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef align 8 dereferenceable(40) %1)
  %i.e = load i64, ptr %i.c, align 8, !range !202, !noundef !3
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit8, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.d:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_(ptr noalias noundef align 8 dereferenceable(96) %i.c) #29
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.i, align 8, !noundef !3
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1) ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 4) ; 3 uses
  %i.k = mul i64 %.sroa.0.0.i, 96                 ; 3 uses
  %or.cond.i.i = icmp ugt i64 %i.j, 96076792050570581
  br i1 %or.cond.i.i, label %bb.h, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !203
  %i.m = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.k, i64 noundef range(i64 1, 9) 8) #27, !noalias !203 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = ptrtoint ptr %i.m to i64
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %bb.e
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.e ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.k) #28
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.10.0.i = phi i64 [ %i.o, %bb.g ], [ 8, %bb.f ]
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.p = inttoptr i64 %.sroa.10.0.i to ptr        ; 3 uses
  %i.q = icmp ule i64 %.sroa.0.0.i, %.sroa.4.0.i
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !208
  invoke fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map4IterNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyENCNvMs0_B1A_NtB1A_31PluginTriggerInvocationRegistry8snapshot0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %bb.i
  %i.r = load i64, ptr %i.a, align 8, !range !202, !noalias !209, !noundef !3
  %.not4.i.i = icmp eq i64 %i.r, -1
  br i1 %.not4.i.i, label %.loopexit8, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc6
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.noexc7, %.lr.ph.i.i
  %i.t = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.y, %.noexc7 ]
  %i.u = phi i64 [ 1, %.lr.ph.i.i ], [ %i.aa, %.noexc7 ] ; 5 uses
  %i.v = icmp samesign ult i64 %i.u, 96076792050570582
  tail call void @llvm.assume(i1 %i.v)
  %i.w = load i64, ptr %i.d, align 8, !range !4, !alias.scope !210, !noundef !3
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.l, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i_crit_edge, %bb.j
  %i.y = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i_crit_edge ], [ %i.t, %bb.j ] ; 2 uses
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %i.y, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !209
  %i.aa = add nuw nsw i64 %i.u, 1                 ; 2 uses
  store i64 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !210
  invoke fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map4IterNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyENCNvMs0_B1A_NtB1A_31PluginTriggerInvocationRegistry8snapshot0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i
  %i.ab = load i64, ptr %i.a, align 8, !range !202, !noalias !209, !noundef !3
  %.not.i.i5 = icmp eq i64 %i.ab, -1
  br i1 %.not.i.i5, label %.loopexit8, label %bb.j

bb.k:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEBD_(ptr noalias noundef align 8 dereferenceable(96) %i.a) #29, !noalias !209
  br label %.body

bb.l:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.s, align 8, !alias.scope !211, !noundef !3
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.u, i64 noundef range(i64 1, 0) %i.ad, i64 noundef 8, i64 noundef 96)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i_crit_edge unwind label %bb.k, !noalias !211

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !210
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotE7reserveBF_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotEEB19_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
  br label %bb.m

.loopexit8:                                       ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.c

bb.m:                                             ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCs4NRVxsYgnAr_4core4hint20select_unpredictableINtB2_11DropOnPanicPNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry31PluginTriggerInvocationSnapshotENtNtNtB6_3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #11 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map4IterNtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry26PluginTriggerInvocationKeyyENCNvMs0_B1A_NtB1A_31PluginTriggerInvocationRegistry8snapshot0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !238, !noundef !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i16, ptr %i.l, align 8, !alias.scope !240, !noundef !3 ; 2 uses
  %.not11.i.i = icmp eq i16 %i.m, 0
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !240 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %._crit_edge18.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted13.i.i = load ptr, ptr %i.n, align 8, !alias.scope !240
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.s, ptr %i.n, align 8, !alias.scope !240
  store ptr %i.r, ptr %1, align 8, !alias.scope !240
  br label %._crit_edge18.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.o = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.r, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !240
  %i.q = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -1024 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.q to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

._crit_edge18.i.i:                                ; preds = %bb.b, %._crit_edge.i.i
  %i.t = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.m, %bb.b ] ; 3 uses
  %i.u = add i16 %.lcssa.i.i, -1
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = and i16 %i.u, %.lcssa.i.i
  store i16 %i.x, ptr %i.l, align 8, !alias.scope !240
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [64 x i8], ptr %i.t, i64 %i.y ; 5 uses
  %i.aa = add i64 %i.j, -1
  store i64 %i.aa, ptr %i.i, align 8, !alias.scope !238
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -8
  %.val = load i64, ptr %i.ac, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !242
  store i64 0, ptr %i.g, align 8, !noalias !242
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !242
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !242
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.ad, align 8, !noalias !242
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !242
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !242
  store ptr %i.g, ptr %i.f, align 8, !noalias !242
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @10, ptr %i.ae, align 8, !noalias !242
  %i.af = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.d, !noalias !243

bb.d:                                             ; preds = %bb.g, %._crit_edge18.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !244, !noalias !242 ; 2 uses
  %i.ah = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ah, label %common.resume.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !244, !noalias !242, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !245
  br label %common.resume.i

bb.f:                                             ; preds = %._crit_edge18.i.i
  br i1 %i.af, label %bb.g, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringINtNtB7_4sync3ArceENtB5_12SpecToString14spec_to_stringCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i, !prof !6

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
          to label %.noexc.i.i unwind label %bb.d, !noalias !243

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

common.resume.i:                                  ; preds = %bb.l, %.body.i, %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %i.ag, %bb.e ], [ %.pn.i, %bb.l ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXsC_NtCscdodAO9FK5_5alloc6stringINtNtB7_4sync3ArceENtB5_12SpecToString14spec_to_stringCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i: ; preds = %bb.f
  %.sroa.0.0.copyload1.i = load i64, ptr %i.g, align 8, !noalias !246 ; 3 uses
  %.sroa.5.0.copyload3.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !246 ; 3 uses
  %.sroa.6.0.copyload5.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !242
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 -48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !247
  store i64 0, ptr %i.e, align 8, !noalias !247
  %.sroa.42.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !noalias !247
  %.sroa.53.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i5.i, align 8, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !247
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 1610612768, ptr %i.aj, align 8, !noalias !247
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i6.i, align 4, !noalias !247
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i7.i, align 2, !noalias !247
  store ptr %i.e, ptr %i.d, align 8, !noalias !247
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @10, ptr %i.ak, align 8, !noalias !247
  %i.al = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.j unwind label %bb.h, !noalias !248

bb.h:                                             ; preds = %bb.k, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringINtNtB7_4sync3ArceENtB5_12SpecToString14spec_to_stringCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %.val.i.i8.i = load i64, ptr %i.e, align 8, !alias.scope !249, !noalias !247 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i8.i, 0
  br i1 %i.an, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i9.i = load ptr, ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !alias.scope !249, !noalias !247, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9.i, i64 noundef %.val.i.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !250
  br label %.body.i

bb.j:                                             ; preds = %_RNvXsC_NtCscdodAO9FK5_5alloc6stringINtNtB7_4sync3ArceENtB5_12SpecToString14spec_to_stringCsdsDzd1zQknb_37influxdb3_processing_engine_telemetry.exit.i
  br i1 %i.al, label %bb.k, label %bb.m, !prof !6

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28
          to label %.noexc.i11.i unwind label %bb.h, !noalias !248

.noexc.i11.i:                                     ; preds = %bb.k
  unreachable

.body.i:                                          ; preds = %bb.r, %.body21.i, %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.at, %bb.r ], [ %i.am, %bb.i ], [ %i.at, %.body21.i ] ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.ao, label %common.resume.i, label %bb.l

bb.l:                                             ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3.i, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !251
  br label %common.resume.i

bb.m:                                             ; preds = %bb.j
  %.sroa.06.0.copyload7.i = load i64, ptr %i.e, align 8, !noalias !252 ; 3 uses
  %.sroa.58.0.copyload10.i = load ptr, ptr %.sroa.42.0..sroa_idx.i4.i, align 8, !noalias !252 ; 3 uses
  %.sroa.611.0.copyload13.i = load i64, ptr %.sroa.53.0..sroa_idx.i5.i, align 8, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ap = getelementptr inbounds i8, ptr %i.z, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !253
  store i64 0, ptr %i.c, align 8, !noalias !253
  %.sroa.42.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i13.i, align 8, !noalias !253
  %.sroa.53.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
end_hunk_0
