Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.255?download=true
inline.NumInlined: 642
inline.NumDeleted: 338
begin_hunk_0_@_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1K_jEEBV_NCINvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service20merge_position_itemsB2x_INtB1O_3VecB2x_EB56_E0ENtNtNtB12_6traits8iterator8Iterator4nextB3X_:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ab, %bb.o, %bb.p
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ %i.ba, %bb.ab ]
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28
  br i1 %.not14, label %.thread, label %bb.v

bb.s:                                             ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28
  br i1 %.not14, label %.thread74, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.946.0, ptr %.sroa.558.0..sroa_idx, align 8
  br label %bb.u

.thread74:                                        ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread, %bb.s
  store i64 -1, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.thread, %.thread74, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.05.0.copyload, ptr %i.h, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0, ptr %i.g, align 8
  %.sroa.9.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx44, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9, i64 40, i1 false)
  %.sroa.946.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.946.0, ptr %.sroa.946.0..sroa_idx49, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @_RNvXs1_NtCs9XvERIT2X68_9itertools10merge_joinNCINvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service20merge_position_itemsNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedINtNtCsexYYUdYSQU6_5alloc3vec3VecB1X_EB30_E0INtB5_14OrderingOrBoolTB1X_jEB44_E5mergeBS_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.e, ptr noalias nofree noundef nonnull %i.au, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.av, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  switch i64 %.sroa.0.0.copyload, label %bb.x [
    i64 2, label %bb.w
    i64 0, label %bb.z
  ]

.thread:                                          ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread, %bb.r
  %.sroa.05.0.copyload6873 = phi i64 [ %.sroa.05.0.copyload, %bb.r ], [ %.sroa.05.0.copyload61, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1f_jEEEINtB5_8FuseImplBY_E4nextCsl8OoimOLbh_6qdrant.exit28.thread ]
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  store i64 %.sroa.05.0.copyload6873, ptr %0, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.z, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, i64 56, i1 false)
  %i.aw = load i64, ptr %i.c, align 8, !range !35, !alias.scope !615, !noundef !16
  %i.ax = icmp eq i64 %i.aw, -1
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31 unwind label %bb.ab

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4, i64 56, i1 false)
  %i.ay = load i64, ptr %i.d, align 8, !range !35, !alias.scope !618, !noundef !16
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit33: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedjEEECsl8OoimOLbh_6qdrant.exit31: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtCs9XvERIT2X68_9itertools10merge_joinINtB5_7MergeByINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1K_jEEBV_NCINvNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service20merge_position_itemsB2x_INtB1O_3VecB2x_EB56_E0ENtNtNtB12_6traits8iterator8Iterator9size_hintB3X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !621, !noalias !626, !noundef !16
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !629, !noalias !634, !nonnull !16, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val14.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !629, !noalias !634, !nonnull !16, !noundef !16
  %i.e = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.f = ptrtoint ptr %.val.i.i.i.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val15.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !629, !noalias !634, !nonnull !16, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val16.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !629, !noalias !634, !nonnull !16, !noundef !16
  %i.k = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.l = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.n, i64 %i.h)
  br label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit

_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  %..i.i.i.sink1.i.i = phi i64 [ %..i.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  %i.o = load i64, ptr %1, align 8, !range !35, !alias.scope !637, !noalias !638, !noundef !16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !639, !noalias !644, !noundef !16
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit8, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val.i.i.i.i2 = load ptr, ptr %i.r, align 8, !alias.scope !647, !noalias !652, !nonnull !16, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val14.i.i.i.i3 = load ptr, ptr %i.s, align 8, !alias.scope !647, !noalias !652, !nonnull !16, !noundef !16
  %i.t = ptrtoint ptr %.val14.i.i.i.i3 to i64
  %i.u = ptrtoint ptr %.val.i.i.i.i2 to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val15.i.i.i.i4 = load ptr, ptr %i.x, align 8, !alias.scope !647, !noalias !652, !nonnull !16, !noundef !16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val16.i.i.i.i5 = load ptr, ptr %i.y, align 8, !alias.scope !647, !noalias !652, !nonnull !16, !noundef !16
  %i.z = ptrtoint ptr %.val16.i.i.i.i5 to i64
  %i.aa = ptrtoint ptr %.val15.i.i.i.i4 to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3
  %..i.i.i.i.i6 = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.w)
  br label %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit8

_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit8: ; preds = %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit, %bb.c
  %..i.i.i.sink1.i.i7 = phi i64 [ %..i.i.i.i.i6, %bb.c ], [ 0, %_RNvXs3_NtCs9XvERIT2X68_9itertools8adaptorsINtB5_7PutBackINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4fuse4FuseINtNtBX_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedEIB1Z_jEEEENtNtNtBZ_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ae = icmp ne i64 %i.o, -1
  %i.af = zext i1 %i.ae to i64
  %i.ag = add nuw nsw i64 %..i.i.i.sink1.i.i, %i.af
  %i.ah = load i64, ptr %i.ad, align 8, !range !35, !alias.scope !655, !noalias !656, !noundef !16
  %i.ai = icmp ne i64 %i.ah, -1
  %i.aj = zext i1 %i.ai to i64
  %i.ak = add nuw nsw i64 %..i.i.i.sink1.i.i7, %i.aj
  %i.al = add nuw nsw i64 %i.ak, %i.ag            ; 2 uses
  store i64 %i.al, ptr %0, align 8, !alias.scope !657, !noalias !660
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.am, align 8, !alias.scope !657, !noalias !660
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.an, align 8, !alias.scope !657, !noalias !660
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsiHzErX7aQFk_12futures_util6stream10try_stream10try_unfoldINtB4_9TryUnfoldTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEyyENCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB38_18StorageReadServiceB1W_ENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_0NCNCB33_s0_00ENtNtCs3aP4uAeNgCL_12futures_core6stream6Stream9poll_nextB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  %.pre = load i64, ptr %1, align 8, !range !15
  %3 = trunc nuw i64 %.pre to i1                  ; 2 uses
  br i1 %.not, label %bb.j, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i: ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.o, %bb.g ], [ %i.o, %bb.f ]
  store i64 1, ptr %1, align 8, !noalias !663
  store ptr %.sroa.0.0.copyload, ptr %i.h, align 8, !noalias !663
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !663
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !663
  store i8 0, ptr %i.i, align 8, !noalias !663
  br label %common.resume

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !666, !noalias !663, !noundef !16
  switch i8 %i.j, label %.thread [
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

common.ret.sink.split.i.i:                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i, %bb.d
  fence acquire, !noalias !663
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
          to label %.thread unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667), !noalias !663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !663
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !673, !noalias !663, !nonnull !16, !noundef !16
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !674
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %common.ret.sink.split.i.i, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.f, !noalias !663

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675), !noalias !663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678), !noalias !663
  %i.p = load ptr, ptr %i.h, align 8, !alias.scope !681, !noalias !663, !nonnull !16, !noundef !16
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !682
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire, !noalias !663
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i unwind label %bb.h, !noalias !663

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686), !noalias !663
  %i.s = load ptr, ptr %i.h, align 8, !alias.scope !689, !noalias !663, !nonnull !16, !noundef !16
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !690
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %common.ret.sink.split.i.i, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !663
  unreachable

bb.i:                                             ; preds = %common.ret.sink.split.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i

common.resume:                                    ; preds = %.body, %bb.ax, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit22.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit3.i.i ], [ %.pn19.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit22.i.i ], [ %i.ce, %.body ], [ %i.ce, %bb.ax ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %common.ret.sink.split.i.i, %bb.b, %bb.c, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i
  store i64 1, ptr %1, align 8, !noalias !663
  %.sroa.599.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.0.0.copyload, ptr %.sroa.599.0..sroa_idx100, align 8, !noalias !663
  %.sroa.6.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.6.0..sroa_idx102, align 8, !noalias !663
  %.sroa.7.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx104, align 8, !noalias !663
  %.sroa.8107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 0, ptr %.sroa.8107.0..sroa_idx108, align 8, !noalias !663
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  br i1 %3, label %bb.k, label %bb.am

bb.k:                                             ; preds = %.thread, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.z = load i8, ptr %i.y, align 8, !range !666, !noalias !691, !noundef !16
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %bb.l
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
  ]

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !691, !noundef !16 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %.pre112 = load ptr, ptr %i.x, align 8, !noalias !691 ; 3 uses
  br i1 %i.ac, label %bb.m, label %bb.o

.sink.split.i.i:                                  ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.i.i, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.thread.i.i
  %.sroa.1040.056.ph.sink.i.i = phi ptr [ %i.az, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1040.056.ph.sink.i.i) ]
  %.pre111 = load ptr, ptr %i.x, align 8, !alias.scope !698, !noalias !691
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i.i, %bb.l
  %i.ad = phi ptr [ %.pre112, %bb.l ], [ %.pre111, %.sink.split.i.i ]
  %.sroa.050.0.i.i = phi i64 [ -1, %bb.l ], [ -2, %.sink.split.i.i ]
  %.sroa.551.0.i.i = phi ptr [ undef, %bb.l ], [ %.sroa.1040.056.ph.sink.i.i, %.sink.split.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !705
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.n, label %_RNvXs0_NtCs3aP4uAeNgCL_12futures_core6futureNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBP_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00NtB5_9TryFuture8try_pollBV_.exit.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #20
          to label %_RNvXs0_NtCs3aP4uAeNgCL_12futures_core6futureNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBP_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00NtB5_9TryFuture8try_pollBV_.exit.thread unwind label %bb.ak, !noalias !706

bb.o:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %..i.i.i = tail call noundef range(i64 1, 1048577) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.ab, i64 1048576)
  store i64 %..i.i.i, ptr %i.ag, align 8, !noalias !691
  %i.ah = atomicrmw add ptr %.pre112, i64 1 monotonic, align 8, !noalias !691
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !691
  store ptr %.pre112, ptr %i.e, align 8, !noalias !691
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !noalias !691
  store <2 x i64> %i.al, ptr %i.ak, align 8, !noalias !691
  %i.am = invoke noundef nonnull ptr @_RINvNtNtCsjZG7hsAZr3B_5tokio4task8blocking14spawn_blockingNCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB15_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_000INtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB1b_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %bb.r unwind label %bb.q, !noalias !691

bb.q:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !691
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i31

bb.r:                                             ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !691
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.am, ptr %i.ao, align 8, !noalias !691
  br label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i31: ; preds = %bb.ai, %bb.ah, %bb.ab, %bb.z, %bb.w, %bb.q
  %.pn16.pn.i.i = phi { ptr, i32 } [ %i.ay, %bb.ab ], [ %i.bh, %bb.ai ], [ %i.bh, %bb.ah ], [ %i.at, %bb.w ], [ %i.aw, %bb.z ], [ %i.an, %bb.q ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.ap = load ptr, ptr %i.x, align 8, !alias.scope !713, !noalias !691, !nonnull !16, !noundef !16
  %i.aq = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !714
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit22.i.i

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i31
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE9drop_slowCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEECsl8OoimOLbh_6qdrant.exit22.i.i unwind label %bb.al, !noalias !706

bb.t:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !691
  unreachable

bb.u:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #22, !noalias !691
  unreachable

bb.v:                                             ; preds = %bb.r, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !691
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXs4_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.x unwind label %bb.w, !noalias !706

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !691
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i31 unwind label %bb.al, !noalias !706

bb.x:                                             ; preds = %bb.v
  %i.au = load i64, ptr %i.d, align 8, !range !29, !noalias !691, !noundef !16 ; 2 uses
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %_RNvXs0_NtCs3aP4uAeNgCL_12futures_core6futureNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBP_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00NtB5_9TryFuture8try_pollBV_.exit.thread80, label %bb.y

_RNvXs0_NtCs3aP4uAeNgCL_12futures_core6futureNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtBP_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00NtB5_9TryFuture8try_pollBV_.exit.thread80: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !691
  store i8 3, ptr %i.y, align 8, !noalias !691
  br label %bb.an

bb.y:                                             ; preds = %bb.x
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !691 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !691 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !691 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !691
  invoke void @_RNvXs5_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB1a_3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit25.i.i unwind label %bb.z, !noalias !706

bb.z:                                             ; preds = %bb.y
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i31

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit25.i.i: ; preds = %bb.y
  %i.ax = trunc nuw i64 %i.au to i1
  br i1 %i.ax, label %bb.aa, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.i.i

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit25.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !715
  store i64 %.sroa.2.0.copyload.i.i, ptr %i.c, align 8, !noalias !719
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !719
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.5.8..sroa_idx.i.i, align 8, !noalias !719
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !723
  store ptr %i.c, ptr %i.a, align 8, !noalias !723
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !723
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.ab, !noalias !724

bb.ab:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.aa
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !alias.scope !720, !noalias !715, !noundef !16
  %.val10.i.i.i.i = load ptr, ptr %.sroa.5.8..sroa_idx.i.i, align 8, !alias.scope !720, !noalias !715
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorECsl8OoimOLbh_6qdrant(ptr %.val9.i.i.i.i, ptr %.val10.i.i.i.i) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECsl8OoimOLbh_6qdrant.exit.i.i31 unwind label %bb.aj, !noalias !724

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !723
  %i.az = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(i8 noundef 13, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ac unwind label %bb.ab, !noalias !724

bb.ac:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !alias.scope !720, !noalias !715, !noundef !16 ; 4 uses
  %.val8.i.i.i.i = load ptr, ptr %.sroa.5.8..sroa_idx.i.i, align 8, !alias.scope !720, !noalias !715 ; 6 uses
  %i.ba = icmp eq ptr %.val7.i.i.i.i, null
  br i1 %i.ba, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i) ]
  %i.bb = load ptr, ptr %.val8.i.i.i.i, align 8, !invariant.load !16, !noalias !724 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void %i.bb(ptr noundef nonnull %.val7.i.i.i.i)
          to label %bb.af unwind label %bb.ah, !noalias !724

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bc = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !90, !invariant.load !16, !noalias !724 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = getelementptr inbounds nuw i8, ptr %.val8.i.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !range !91, !invariant.load !16, !noalias !724
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bd, i64 noundef range(i64 1, 536870913) %i.bg) #21, !noalias !724
  br label %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultIBw_INtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtCsgOCJwUSa4vG_5tonic6status6StatusENtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task5error9JoinErrorE7map_errB1l_NCNCNCNCNvXNtNtNtCsl8OoimOLbh_6qdrant5tonic3api16storage_read_apiINtB3h_18StorageReadServiceNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19storage_read_server11StorageRead17read_bytes_stream0s0_00s_0EB3n_.exit.thread.i.i

bb.ah:                                            ; preds = %bb.ae
end_hunk_0
