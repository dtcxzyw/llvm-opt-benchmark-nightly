Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.11?download=true
inline.NumInlined: 7373
inline.NumDeleted: 3041
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENCNCNvMNtB2m_12write_bufferNtB3p_15WriteBufferImpl3new0s3_0ENtB2m_17PersistedSnapshotECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12294)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !12294, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12294, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 208                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !12294
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12294
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !12294
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12294
  %i.u = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.u, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.x, %i.t
  br i1 %i.v, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.0.0.i.i10 = phi i64 [ %i.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i10
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i10, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write17PersistedSnapshotECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.e, !noalias !12294

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i: ; preds = %.lr.ph12
  %i.y = add i64 %.sroa.0.1.i.i11, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %.body, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.x, %i.t
  br i1 %i.ab, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i
  %.sroa.0.1.i.i11 = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write17PersistedSnapshotECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i unwind label %bb.f, !noalias !12294

bb.f:                                             ; preds = %.lr.ph12
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12294
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionNtB1M_17PersistedSnapshotEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.g

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENCNCNvMNtB1Y_12write_bufferNtB31_15WriteBufferImpl3new0s3_0EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionENCNCNvMNtB2m_12write_bufferNtB3z_15WriteBufferImpl3new00ENtB2m_27PersistedSnapshotCheckpointECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionENCNCNvMNtB1M_12write_bufferNtB2Z_15WriteBufferImpl3new00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1M_27PersistedSnapshotCheckpointENCINvNtB12_16in_place_collect24write_in_place_with_dropB55_E0INtNtBc_6result6ResultB4u_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionENCNCNvMNtB1Y_12write_bufferNtB3b_15WriteBufferImpl3new00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12297)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !12297, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12297, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 208                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !12297
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12297
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !12297
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12297
  %i.u = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.u, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.x, %i.t
  br i1 %i.v, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.0.0.i.i10 = phi i64 [ %i.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i10
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i10, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.w)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.e, !noalias !12297

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i: ; preds = %.lr.ph12
  %i.y = add i64 %.sroa.0.1.i.i11, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %.body, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.x, %i.t
  br i1 %i.ab, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i
  %.sroa.0.1.i.i11 = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write27PersistedSnapshotCheckpointECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i unwind label %bb.f, !noalias !12297

bb.f:                                             ; preds = %.lr.ph12
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12297
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionNtB1M_27PersistedSnapshotCheckpointEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.g

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write34PersistedSnapshotCheckpointVersionENCNCNvMNtB1Y_12write_bufferNtB3b_15WriteBufferImpl3new00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %.body, %bb.b
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceENCNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB3a_13V1HttpHandler13execute_query0s2_000ENtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = mul i64 %i.c, 112                        ; 7 uses
  %i.h = udiv i64 %i.g, 40                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceENCNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB2A_13V1HttpHandler13execute_query0s2_000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs21s4ZTvHFSd_5authz10permission10PermissionENCINvNtB12_16in_place_collect24write_in_place_with_dropB5g_E0INtNtBc_6result6ResultB4F_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceENCNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB2M_13V1HttpHandler13execute_query0s2_000EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %bb.p unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12300)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !12300, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12300, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 112                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !12300
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12300
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !12300
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12300
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, %i.v
  br i1 %i.x, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i18 = phi i64 [ %i.z, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i18
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i18, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsIdnmPPg5ba_10data_types9NamespaceECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.y)
          to label %bb.e unwind label %bb.g, !noalias !12300

bb.f:                                             ; preds = %.lr.ph20
  %i.aa = add i64 %.sroa.0.1.i.i19, 1             ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.v
  br i1 %i.ab, label %.body, label %.lr.ph20

bb.g:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.z, %i.v
  br i1 %i.ad, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i19 = phi i64 [ %i.aa, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i19
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsIdnmPPg5ba_10data_types9NamespaceECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(112) %i.ae) #47
          to label %bb.f unwind label %bb.h, !noalias !12300

bb.h:                                             ; preds = %.lr.ph20
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12300
  unreachable

bb.i:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCsIdnmPPg5ba_10data_types9NamespaceNtNtCs21s4ZTvHFSd_5authz10permission10PermissionEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.o

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.e, %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.ah = mul nuw i64 %i.h, 40                    ; 4 uses
  %i.ai = icmp ne i64 %i.g, %i.ah
  %or.cond = select i1 %.not.i, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.j, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtCsIdnmPPg5ba_10data_types9NamespaceNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtCsIdnmPPg5ba_10data_types9NamespaceNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %2, %bb.k, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.l
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.an, %bb.l ], [ %i.d, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ inttoptr (i64 8 to ptr), %bb.k ]
  store i64 %i.h, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceENCNCNCNCNvMs0_NtCs1yQqqZMFGFX_16iox_v1_query_api7handlerNtB2M_13V1HttpHandler13execute_query0s2_000EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.j:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCsIdnmPPg5ba_10data_types9NamespaceE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.al = icmp ult i64 %i.g, 40
  br i1 %i.al, label %2, label %bb.l

2:                                                ; preds = %bb.j
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtCsIdnmPPg5ba_10data_types9NamespaceNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.k

bb.k:                                             ; preds = %2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #44
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtCsIdnmPPg5ba_10data_types9NamespaceNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.am = icmp ule i64 %i.ah, %i.g
  tail call void @llvm.assume(i1 %i.am)
  %i.an = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.ah) #44 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.m, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocNtCsIdnmPPg5ba_10data_types9NamespaceNtNtCs21s4ZTvHFSd_5authz10permission10PermissionECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, !prof !10

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ah) #45
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %.body, %bb.b
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.p:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB2N_7RawArgsINtNtB1e_7convert4FromB1T_E4from0ENtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB2e_7RawArgsINtNtBc_7convert4FromBX_E4from0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENCINvNtB12_16in_place_collect24write_in_place_with_dropB4D_E0INtNtBc_6result6ResultB42_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB2q_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !12313, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12313, !nonnull !8, !noundef !8
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24
  store i64 0, ptr %i.b, align 8, !alias.scope !12313
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12313
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !12313
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12313
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.t)
          to label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.j

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12316)
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !12317, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12317, !nonnull !8, !noundef !8
  %i.x = ptrtoint ptr %.val1.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.aa)
          to label %bb.h unwind label %bb.f, !noalias !12317

bb.f:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !alias.scope !12317, !noundef !8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !12317, !nonnull !8, !noundef !8
  %i.af = mul nuw i64 %i.ac, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12318
  br label %common.resume

bb.h:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !12317, !noundef !8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB2q_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !12317, !nonnull !8, !noundef !8
  %i.aj = mul nuw i64 %i.ag, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12319
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB2q_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsgsNUVCRJO2f_13influxdb3_lib.exit

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCNvXs_CskytFCY1iCGq_8clap_lexNtB2q_7RawArgsINtNtB4_7convert4FromB19_E4from0EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENvYB2k_INtNtB1e_7convert4IntoB2k_E4intoEB2k_ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENvYB1K_INtNtBc_7convert4IntoB1K_E4intoENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1K_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1K_E0INtNtBc_6result6ResultB3r_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENvYB1W_INtNtB4_7convert4IntoB1W_E4intoEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !12332, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12332, !nonnull !8, !noundef !8
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24
  store i64 0, ptr %i.b, align 8, !alias.scope !12332
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12332
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !12332
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12332
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.t)
          to label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringB1K_EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.j

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12333)
end_hunk_0
begin_hunk_1_@_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldENCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB3r_7HttpApi12create_table00ETNtNtB6_6string6StringNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column13FieldDataTypeEECsgsNUVCRJO2f_13influxdb3_lib:bb.a
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !12358, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12358, !nonnull !8, !noundef !8
  %i.x = ptrtoint ptr %.val1.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.aa)
          to label %bb.h unwind label %bb.f, !noalias !12358

bb.f:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !alias.scope !12358, !noundef !8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !12358, !nonnull !8, !noundef !8
  %i.af = shl nuw i64 %i.ac, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12359
  br label %common.resume

bb.h:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !12358, !noundef !8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldENCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB33_7HttpApi12create_table00EECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !12358, !nonnull !8, !noundef !8
  %i.aj = shl nuw i64 %i.ag, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12360
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldENCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB33_7HttpApi12create_table00EECsgsNUVCRJO2f_13influxdb3_lib.exit

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldENCNCNvMsg_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB33_7HttpApi12create_table00EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtB46_14CoreTableIndex24update_from_object_store0s0_0ENCNCB3Y_s0_00ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = mul i64 %i.c, 104                        ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtB3w_14CoreTableIndex24update_from_object_store0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNCNCB3o_s0_00ENCINvNtB12_16in_place_collect24write_in_place_with_dropB6q_E0INtNtBc_6result6ResultB5P_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtB3I_14CoreTableIndex24update_from_object_store0s0_0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %1) #47
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12363)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !12363, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12363, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 104                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !12363
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12363
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !12363
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12363
  %i.v = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i._crit_edge, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %.lr.ph
  %i.w = icmp eq i64 %i.y, %i.u
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.0.0.i.i16 = phi i64 [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i16
  %i.y = add nuw nsw i64 %.sroa.0.0.i.i16, 1      ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(96) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.e, !noalias !12363

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i: ; preds = %.lr.ph18
  %i.aa = add i64 %.sroa.0.1.i.i17, 1             ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.u
  br i1 %i.ab, label %.body, label %.lr.ph18

bb.e:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq i64 %i.y, %i.u
  br i1 %i.ad, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i
  %.sroa.0.1.i.i17 = phi i64 [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [104 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i17
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(96) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i unwind label %bb.f, !noalias !12363

bb.f:                                             ; preds = %.lr.ph18
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12363
  unreachable

bb.g:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i, %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ac, %bb.e ], [ %i.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaENCNCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtB3x_14CoreTableIndex24update_from_object_store0s0_00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.d
  %i.ai = and i64 %i.g, 56
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.i, %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i._crit_edge
  %.sroa.03.0 = phi ptr [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i._crit_edge ], [ %i.ao, %bb.j ], [ inttoptr (i64 8 to ptr), %bb.i ]
  %i.aj = lshr i64 %i.g, 6
  store i64 %i.aj, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.al, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs1_NtCs92BnbMq7p8c_15influxdb3_write11table_indexNtB3I_14CoreTableIndex24update_from_object_store0s0_0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %1)
  ret void

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs1ElB0qm0ygX_13influxdb3_wal22SnapshotSequenceNumberNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i._crit_edge
  %i.am = and i64 %i.g, -64                       ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #44
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ao = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.am) #44 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.k, label %.thread, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.am) #45
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.body, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs_NtB2n_9persisterNtB3T_9Persister33list_latest_checkpoints_per_month0s3_0EB32_ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = mul i64 %i.c, 104                        ; 7 uses
  %i.h = udiv i64 %i.g, 96                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs_NtB1N_9persisterNtB3j_9Persister33list_latest_checkpoints_per_month0s3_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2s_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2s_E0INtNtBc_6result6ResultB5b_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs_NtB1Z_9persisterNtB3v_9Persister33list_latest_checkpoints_per_month0s3_0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12366)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !12366, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12366, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 104                 ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !12366
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12366
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !12366
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12366
  %i.w = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.w, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %.lr.ph
  %i.x = icmp eq i64 %i.z, %i.v
  br i1 %i.x, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.0.0.i.i18 = phi i64 [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i18
  %i.z = add nuw nsw i64 %.sroa.0.0.i.i18, 1      ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(96) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.e, !noalias !12366

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i: ; preds = %.lr.ph20
  %i.ab = add i64 %.sroa.0.1.i.i19, 1             ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.v
  br i1 %i.ac, label %.body, label %.lr.ph20

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.z, %i.v
  br i1 %i.ae, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i
  %.sroa.0.1.i.i19 = phi i64 [ %i.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw [104 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(96) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i unwind label %bb.f, !noalias !12366

bb.f:                                             ; preds = %.lr.ph20
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12366
  unreachable

bb.g:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i, %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ad, %bb.e ], [ %i.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEB2s_EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.m

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.aj = mul nuw i64 %i.h, 96                    ; 4 uses
  %i.ak = icmp ne i64 %i.g, %i.aj
  %or.cond = select i1 %.not.i, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEB1I_ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEB1I_ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread: ; preds = %2, %bb.i, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ap, %bb.j ], [ %i.d, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit ], [ inttoptr (i64 8 to ptr), %bb.i ]
  store i64 %i.h, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEENCNCNvMs_NtB1Z_9persisterNtB3v_9Persister33list_latest_checkpoints_per_month0s3_0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1)
  ret void

bb.h:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.an = icmp ult i64 %i.g, 96
  br i1 %i.an, label %2, label %bb.j

2:                                                ; preds = %bb.h
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEB1I_ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, label %bb.i

bb.i:                                             ; preds = %2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #44
  br label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEB1I_ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ao = icmp ule i64 %i.aj, %i.g
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.aj) #44 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect13needs_reallocTNtCs92BnbMq7p8c_15influxdb3_write9YearMonthNtCs1LivM9IBWqb_12object_store10ObjectMetaEB1I_ECsgsNUVCRJO2f_13influxdb3_lib.exit.thread, !prof !10

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aj) #45
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.body, %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringB2l_EENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB2W_6Client31api_v3_replace_plugin_directoryRB2l_B4c_E00ENtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringB1L_EENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB2n_6Client31api_v3_replace_plugin_directoryRB1L_B3D_E00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryENCINvNtB12_16in_place_collect24write_in_place_with_dropB58_E0INtNtBc_6result6ResultB4x_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringB1X_EENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB2z_6Client31api_v3_replace_plugin_directoryRB1X_B3P_E00EECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12369)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !12369, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12369, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 48                  ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !12369
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12369
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !12369
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12369
  %i.u = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.u, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.x, %i.t
  br i1 %i.v, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i10 = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i10
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i10, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.w)
          to label %bb.e unwind label %bb.g, !noalias !12369

bb.f:                                             ; preds = %.lr.ph12
  %i.y = add i64 %.sroa.0.1.i.i11, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.t
  br i1 %i.z, label %.body, label %.lr.ph12

bb.g:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.x, %i.t
  br i1 %i.ab, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i11 = phi i64 [ %i.y, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.ac) #47
          to label %bb.f unwind label %bb.h, !noalias !12369

bb.h:                                             ; preds = %.lr.ph12
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12369
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtBI_6string6StringB1L_ENtNtCs9h7Hq22ZyhR_15influxdb3_types4http15PluginFileEntryEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.i

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.e, %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.i:                                             ; preds = %bb.b, %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringB1X_EENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB2z_6Client31api_v3_replace_plugin_directoryRB1X_B3P_E00EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB3K_6Client29api_v3_configure_table_createRB2l_B4Y_B2l_B2l_B2G_E00ENtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB3b_6Client29api_v3_configure_table_createRB1L_B4p_B1L_B1L_B27_E00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldENCINvNtB12_16in_place_collect24write_in_place_with_dropB66_E0INtNtBc_6result6ResultB5v_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB3n_6Client29api_v3_configure_table_createRB1X_B4B_B1X_B1X_B2j_E00EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !12382, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12382, !nonnull !8, !noundef !8
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 5
  store i64 0, ptr %i.b, align 8, !alias.scope !12382
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12382
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !12382
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12382
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.t)
          to label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtBI_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeENtNtCs9h7Hq22ZyhR_15influxdb3_types4http16CreateTableFieldEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.j

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12385)
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !12386, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12386, !nonnull !8, !noundef !8
  %i.x = ptrtoint ptr %.val1.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.aa)
          to label %bb.h unwind label %bb.f, !noalias !12386

bb.f:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !alias.scope !12386, !noundef !8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !12386, !nonnull !8, !noundef !8
  %i.af = shl nuw i64 %i.ac, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12387
  br label %common.resume

bb.h:                                             ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !12386, !noundef !8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB3n_6Client29api_v3_configure_table_createRB1X_B4B_B1X_B1X_B2j_E00EECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !12386, !nonnull !8, !noundef !8
  %i.aj = shl nuw i64 %i.ag, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12388
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB3n_6Client29api_v3_configure_table_createRB1X_B4B_B1X_B1X_B2j_E00EECsgsNUVCRJO2f_13influxdb3_lib.exit

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.ab, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtB1g_6string6StringNtNtCsjWl3uGiVprL_18influxdb3_commands6common8DataTypeEENCNCINvMs_Cs6TAKc56pues_16influxdb3_clientNtB3n_6Client29api_v3_configure_table_createRB1X_B4B_B1X_B1X_B2j_E00EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCsbyItyepKEh3_12clap_builder6parser8features11suggestions12did_you_meanRB2m_INtNtNtB1e_5slice4iter4IterB2m_EEs0_0EB2m_ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = shl i64 %i.c, 5                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCsbyItyepKEh3_12clap_builder6parser8features11suggestions12did_you_meanRB1M_INtNtNtBc_5slice4iter4IterB1M_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultB4R_zEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsbyItyepKEh3_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(32) %1) #47
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !12401, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !12401, !nonnull !8, !noundef !8
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 5
  store i64 0, ptr %i.b, align 8, !alias.scope !12401
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12401
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !12401
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !12401
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.v)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1M_EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.b unwind label %bb.n

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.x = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.y = icmp ne i64 %i.g, %i.x
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.y, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.k, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.ap, %bb.k ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12404)
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !12405, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12405, !nonnull !8, !noundef !8
  %i.ab = ptrtoint ptr %.val1.i.i.i to i64
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.g, !noalias !12405

bb.g:                                             ; preds = %.thread
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !12405, !noundef !8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !12405, !nonnull !8, !noundef !8
  %i.aj = shl nuw i64 %i.ag, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12406
  br label %common.resume

bb.i:                                             ; preds = %.thread
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !12405, !noundef !8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsbyItyepKEh3_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %1, align 8, !alias.scope !12405, !nonnull !8, !noundef !8
  %i.an = shl nuw i64 %i.ak, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !12407
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsbyItyepKEh3_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECsgsNUVCRJO2f_13influxdb3_lib.exit

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.af, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsbyItyepKEh3_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.i, %bb.j
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.k

bb.k:                                             ; preds = %2
  %i.ao = icmp ule i64 %i.x, %i.g
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.x) #44 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %.thread, !prof !12408

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.x) #45
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENCNCNvMs_NtB2s_9persisterNtB3x_9Persister20load_snapshots_after00EB2q_ECsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 6 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12423)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !12424, !noalias !12423, !nonnull !8, !noundef !8 ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !12424, !noalias !12423, !nonnull !8, !noundef !8 ; 3 uses
  %.not9.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not9.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ak, %.body ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENCNCNvMs_NtB24_9persisterNtB39_9Persister20load_snapshots_after00EECsgsNUVCRJO2f_13influxdb3_lib.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !12425, !noalias !12426, !nonnull !8, !align !12, !noundef !8
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i, %.lr.ph.i.i.i
  %i.p = phi ptr [ %i.j, %.lr.ph.i.i.i ], [ %i.q, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ] ; 3 uses
  %.sroa.4.010.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.pn1.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.p, i64 208, i1 false), !noalias !12427
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208 ; 3 uses
  store ptr %i.q, ptr %i.h, align 8, !alias.scope !12424, !noalias !12423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12427
  store ptr %i.f, ptr %i.a, align 8, !noalias !12427
  store ptr %.sroa.4.010.i.i.i, ptr %i.m, align 8, !noalias !12427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull align 8 dereferenceable(208) %i.p, i64 208, i1 false), !noalias !12428
  call void @llvm.experimental.noalias.scope.decl(metadata !12429)
  %.val7.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !12429, !noalias !12427, !noundef !8
  %i.r = load i64, ptr %.val.i.i.i.i, align 8, !noalias !12430, !noundef !8
  %i.s = icmp ugt i64 %.val7.i.i.i.i, %i.r
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write17PersistedSnapshotECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.4.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false), !noalias !12427
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.010.i.i.i, i64 208
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i: ; preds = %bb.e, %bb.f
  %.pn1.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %.sroa.4.010.i.i.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i.i, label %.loopexit.loopexit, label %bb.d

.loopexit.loopexit:                               ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB22_zENCNCNvMs_NtB17_9persisterNtB3E_9Persister20load_snapshots_after00NCINvNtB27_16in_place_collect24write_in_place_with_dropB15_E0E0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i
  %.val.i.pre = load ptr, ptr %i.h, align 8, !alias.scope !12431
  %.val1.i.pre = load ptr, ptr %i.g, align 8, !alias.scope !12431
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val1.i = phi ptr [ %i.i, %bb.a ], [ %.val1.i.pre, %.loopexit.loopexit ] ; 2 uses
  %.val.i = phi ptr [ %i.j, %bb.a ], [ %.val.i.pre, %.loopexit.loopexit ] ; 4 uses
  %.sroa.4.0.lcssa.i.i.i = phi ptr [ %i.f, %bb.a ], [ %.pn1.i.i.i.i, %.loopexit.loopexit ]
  %i.u = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i to i64
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.z, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12431)
  %i.aa = ptrtoint ptr %.val1.i to i64
  %i.ab = ptrtoint ptr %.val.i to i64
  %i.ac = sub nuw i64 %i.aa, %i.ab
  %i.ad = udiv exact i64 %i.ac, 208               ; 3 uses
  store i64 0, ptr %i.d, align 8, !alias.scope !12431
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !12431
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !12431
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !12431
  %i.ae = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.ae, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i: ; preds = %.lr.ph
  %i.af = icmp eq i64 %i.ah, %i.ad
  br i1 %i.af, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i
  %.sroa.0.0.i.i16 = phi i64 [ %i.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ 0, %.loopexit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i16
  %i.ah = add nuw nsw i64 %.sroa.0.0.i.i16, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write17PersistedSnapshotECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.ag)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i unwind label %bb.g, !noalias !12431

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i: ; preds = %.lr.ph18
  %i.ai = add i64 %.sroa.0.1.i.i17, 1             ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.ad
  br i1 %i.aj, label %.body, label %.lr.ph18

bb.g:                                             ; preds = %.lr.ph
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = icmp eq i64 %i.ah, %i.ad
  br i1 %i.al, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i
  %.sroa.0.1.i.i17 = phi i64 [ %i.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw [208 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i17
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write17PersistedSnapshotECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.am)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i unwind label %bb.h, !noalias !12431

bb.h:                                             ; preds = %.lr.ph18
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46, !noalias !12431
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit7.i.i, %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionB1K_EECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %i.c) #47
          to label %bb.b unwind label %bb.i

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionE32forget_allocation_drop_remainingCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %.loopexit
  store i64 %i.e, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %1)
  ret void

bb.i:                                             ; preds = %bb.b, %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs92BnbMq7p8c_15influxdb3_write24PersistedSnapshotVersionENCNCNvMs_NtB24_9persisterNtB39_9Persister20load_snapshots_after00EECsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB6_SBT_16sort_unstable_byNCNCNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog12object_store8versions2v3NtB2b_18ObjectStoreCatalog12load_catalog0s1_0E0ECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta7reverseCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 104
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 112
  %.val11 = load i64, ptr %i.c, align 8, !noundef !8 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.val10, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.val11, %.val13
end_hunk_1
