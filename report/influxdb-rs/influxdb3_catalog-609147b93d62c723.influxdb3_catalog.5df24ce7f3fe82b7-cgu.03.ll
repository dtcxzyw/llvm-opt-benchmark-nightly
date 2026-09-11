Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.03?download=true
inline.NumInlined: 4536
inline.NumDeleted: 2020
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvMsa_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v37catalogNtB2o_7Catalog17resolve_node_spec0ENtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2w_5error12CatalogErrorENCINvXso_B4I_IB4G_INtB1b_3VecB44_EB5s_EINtNtNtB4_6traits7collect12FromIteratorIB4G_B44_B5s_EE9from_iterBQ_E0B6d_EB2w_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !8064, !nonnull !6, !noundef !6
  %i.n = shl nuw i64 %.val.i, 2
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #35, !noalias !8066
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.i:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit: ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.j ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvXs6_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtNtNtNtB2u_3log8versions2v38NodeSpecINtNtB6_7convert7TryFromTNtB2o_11ApiNodeSpecRNtB2o_7CatalogEE8try_from0ENtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_6result6ResultNtB3Z_10InfallibleNtNtB2u_5error12CatalogErrorENCINvXso_B5K_IB5I_INtB1b_3VecB56_EB6l_EINtNtNtB4_6traits7collect12FromIteratorIB5I_B56_B6l_EE9from_iterBQ_E0B76_EB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !8088, !noalias !8089
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !8088, !noalias !8089
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvXs6_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v1NtNtNtNtB4o_3log8versions2v38NodeSpecINtNtB2l_7convert7TryFromTNtB4i_11ApiNodeSpecRNtB4i_7CatalogEE8try_from0EINtNtB2l_6result6ResultNtB5T_10InfallibleNtNtB4o_5error12CatalogErrorEEE9from_iterB4o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !31, !noundef !6
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8087
  %i.f = load i8, ptr %i.c, align 8, !range !31, !noundef !6
  %.not.not = icmp eq i8 %i.f, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 -1, ptr %0, align 8, !alias.scope !8090, !noalias !8091
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.h, %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !8092 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !8093, !nonnull !6, !noundef !6
  %i.k = shl nuw i64 %.val2.i, 2
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #35, !noalias !8094
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit

bb.g:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !8092 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !8093, !nonnull !6, !noundef !6
  %i.n = shl nuw i64 %.val.i, 2
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #35, !noalias !8095
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.i:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit: ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.j ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1d_6string6StringENCNvXsc_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtNtNtNtB2u_3log8versions2v48NodeSpecINtNtB6_7convert7TryFromTNtB2o_11ApiNodeSpecRNtB2o_7CatalogEE8try_from0ENtCsbFlE7Gjht9i_12influxdb3_id6NodeIdINtNtB6_6result6ResultNtB3Z_10InfallibleNtNtB2u_5error12CatalogErrorENCINvXso_B5K_IB5I_INtB1b_3VecB56_EB6l_EINtNtNtB4_6traits7collect12FromIteratorIB5I_B56_B6l_EE9from_iterBQ_E0B76_EB2u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !8117, !noalias !8118
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !8117, !noalias !8118
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2h_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCNvXsc_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtNtNtNtB4o_3log8versions2v48NodeSpecINtNtB2l_7convert7TryFromTNtB4i_11ApiNodeSpecRNtB4i_7CatalogEE8try_from0EINtNtB2l_6result6ResultNtB5T_10InfallibleNtNtB4o_5error12CatalogErrorEEE9from_iterB4o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !31, !noundef !6
  %.not = icmp eq i8 %i.e, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8116
  %i.f = load i8, ptr %i.c, align 8, !range !31, !noundef !6
  %.not.not = icmp eq i8 %i.f, -1
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i8 -1, ptr %0, align 8, !alias.scope !8119, !noalias !8120
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.h, %bb.g, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.b, align 8, !alias.scope !8121 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val3.i = load ptr, ptr %i.j, align 8, !alias.scope !8122, !nonnull !6, !noundef !6
  %i.k = shl nuw i64 %.val2.i, 2
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #35, !noalias !8123
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit

bb.g:                                             ; preds = %bb.d
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !8121 ; 2 uses
  %i.l = icmp eq i64 %.val.i, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.m, align 8, !alias.scope !8122, !nonnull !6, !noundef !6
  %i.n = shl nuw i64 %.val.i, 2
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #35, !noalias !8124
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsbFlE7Gjht9i_12influxdb3_id6NodeIdEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.i:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit: ; preds = %bb.e, %bb.f, %bb.j, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.j ], [ %i.h, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.j:                                             ; preds = %.body
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs844E4pPEVZX_17influxdb3_catalog5error12CatalogErrorEEB1s_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB1e_4time8DurationEENvMs0_B2n_B2k_9key_valueEThB2S_EECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.d = shl i64 %i.b, 5                          ; 5 uses
  %i.e = udiv i64 %i.d, 24                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8131)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtBb_4time8DurationEENvMs0_B1G_B1D_9key_valueENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc unwind label %bb.b     ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = shl nuw i64 %i.b, 5
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit.sink.split

.noexc:                                           ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !8131, !nonnull !6, !noundef !6 ; 3 uses
  %xtraiter = and i64 %i.f, 1
  %i.k = icmp eq i64 %i.f, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.f, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.sroa.0.02.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.q, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.02.i ; 3 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.l, align 8, !noalias !8132
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.43.0.copyload.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !8132
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.65.0.copyload.i.i = load i8, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !8132
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.02.i ; 3 uses
  %i.n = or disjoint i64 %.sroa.0.02.i, 1         ; 2 uses
  store i8 %.sroa.65.0.copyload.i.i, ptr %i.m, align 8, !noalias !8131
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.02.0.copyload.i.i, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !8131
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %.sroa.43.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8131
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %i.n ; 3 uses
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.o, align 8, !noalias !8132
  %.sroa.43.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.43.0.copyload.i.i.1 = load i32, ptr %.sroa.43.0..sroa_idx.i.i.1, align 8, !noalias !8132
  %.sroa.65.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.65.0.copyload.i.i.1 = load i8, ptr %.sroa.65.0..sroa_idx.i.i.1, align 8, !noalias !8132
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.n ; 3 uses
  %i.q = add nuw i64 %.sroa.0.02.i, 2             ; 2 uses
  store i8 %.sroa.65.0.copyload.i.i.1, ptr %i.p, align 8, !noalias !8131
  %.sroa.41.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %.sroa.41.0..sroa_idx.i.1, align 8, !noalias !8131
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %.sroa.43.0.copyload.i.i.1, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !noalias !8131
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.d

.thread25:                                        ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit.sink.split

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %.sroa.0.02.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.02.i.epil.init ; 3 uses
  %.sroa.02.0.copyload.i.i.epil = load i64, ptr %i.s, align 8, !noalias !8132
  %.sroa.43.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.43.0.copyload.i.i.epil = load i32, ptr %.sroa.43.0..sroa_idx.i.i.epil, align 8, !noalias !8132
  %.sroa.65.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.65.0.copyload.i.i.epil = load i8, ptr %.sroa.65.0..sroa_idx.i.i.epil, align 8, !noalias !8132
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.02.i.epil.init ; 3 uses
  store i8 %.sroa.65.0.copyload.i.i.epil, ptr %i.t, align 8, !noalias !8131
  %.sroa.41.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.02.0.copyload.i.i.epil, ptr %.sroa.41.0..sroa_idx.i.epil, align 8, !noalias !8131
  %.sroa.5.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %.sroa.43.0.copyload.i.i.epil, ptr %.sroa.5.0..sroa_idx.i.epil, align 8, !noalias !8131
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.a, align 8, !alias.scope !8133
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !8133
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8, !alias.scope !8133
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !alias.scope !8133
  %.not.i15 = icmp ne i64 %i.b, 0
  %i.w = mul nuw i64 %i.e, 24                     ; 4 uses
  %i.x = icmp ne i64 %i.d, %i.w
  %.sroa.0.0.i = select i1 %.not.i15, i1 %i.x, i1 false
  br i1 %.sroa.0.0.i, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit16

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit16: ; preds = %.loopexit, %bb.e
  %.sroa.03.0 = phi ptr [ %i.c, %.loopexit ], [ %i.ab, %bb.e ]
  store i64 %i.e, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.z, align 8
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.aa = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.c, i64 noundef %i.d, i64 noundef 8, i64 noundef %i.w) #35 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit16, !prof !34

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.w) #36
          to label %bb.g unwind label %.thread25

bb.g:                                             ; preds = %bb.f
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit.sink.split: ; preds = %bb.c, %.thread25
  %.sink = phi i64 [ %i.d, %.thread25 ], [ %i.i, %bb.c ]
  %.pn29.ph = phi { ptr, i32 } [ %i.r, %.thread25 ], [ %i.g, %bb.c ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !6
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit.sink.split, %bb.b
  %.pn29 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn29.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs96Uix8yqi9Q_8indexmap6BuckethNtNtB4_4time8DurationEENvMs0_B1Z_B1W_9key_valueEECs844E4pPEVZX_17influxdb3_catalog.exit.sink.split ]
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaENCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s2_0ENtNtB2m_4path4PathEB3d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaENCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB1M_4path4PathENCINvNtB12_16in_place_collect24write_in_place_with_dropB58_E0INtNtBc_6result6ResultB4x_zEEB2D_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaENCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s2_0EEB2P_.exit unwind label %bb.i

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8136)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !8136, !nonnull !6, !noundef !6 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !8136, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 96                  ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !8136
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !8136
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !8136
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !8136
  %i.u = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.u, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaE32forget_allocation_drop_remainingCs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.x, %i.t
  br i1 %i.v, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaE32forget_allocation_drop_remainingCs844E4pPEVZX_17influxdb3_catalog.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i10 = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i10
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i10, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(96) %i.w)
          to label %bb.e unwind label %bb.g, !noalias !8136

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
  %i.ac = getelementptr inbounds nuw [96 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i11
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1LivM9IBWqb_12object_store10ObjectMetaECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(96) %i.ac) #37
          to label %bb.f unwind label %bb.h, !noalias !8136

bb.h:                                             ; preds = %.lr.ph12
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38, !noalias !8136
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs1LivM9IBWqb_12object_store10ObjectMetaNtNtB1M_4path4PathEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef align 8 dereferenceable(24) %i.a) #37
          to label %bb.b unwind label %bb.i

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaE32forget_allocation_drop_remainingCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.e, %bb.d
  %i.ae = shl nuw i64 %i.c, 2
  store i64 %i.ae, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.i:                                             ; preds = %bb.b, %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs1LivM9IBWqb_12object_store10ObjectMetaENCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s2_0EEB2P_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionENvYB2k_INtNtB1e_7convert4IntoNtNtB2o_2v215FieldDefinitionE4intoEB40_EB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !6
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionENvYB1K_INtNtBc_7convert4IntoNtNtB1O_2v215FieldDefinitionE4intoENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB3p_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB3p_E0INtNtBc_6result6ResultB4F_zEEB1S_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionENvYB1W_INtNtB4_7convert4IntoNtNtB20_2v215FieldDefinitionE4intoEEB24_(ptr noalias noundef align 8 dereferenceable(32) %1) #37
          to label %bb.j unwind label %bb.i

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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8153)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !8153, !nonnull !6, !noundef !6 ; 4 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !8153, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = ptrtoint ptr %.val1.i to i64
  %i.r = ptrtoint ptr %.val.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24                  ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !8153
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !8153
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !8153
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !8153
  %i.u = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.u, label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionE32forget_allocation_drop_remainingB13_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionEBJ_.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionEBJ_.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.09.i.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8156)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !8157, !noalias !8153, !nonnull !6, !noundef !6
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !8158
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionEBJ_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionEBJ_.exit.i.i unwind label %bb.f, !noalias !8153

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v115FieldDefinitionEBJ_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %i.aa = icmp eq i64 %i.w, %i.t
end_hunk_0
