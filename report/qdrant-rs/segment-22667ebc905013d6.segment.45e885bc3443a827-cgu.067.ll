Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.067?download=true
inline.NumInlined: 1292
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17mutable_geo_index5inner16InMemoryGeoIndexEBN_:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit unwind label %bb.g

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit5: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit6 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit4, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit4 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types8GeoPointEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #18
          to label %common.resume unwind label %bb.g

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit5
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit6: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit5
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_NtNtCs607s0NAIaWN_7segment5types8GeoPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types8GeoPointEEEB1g_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit6
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_NtNtCs607s0NAIaWN_7segment5types8GeoPointEEEB1g_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit6
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs607s0NAIaWN_7segment5types8GeoPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit4, %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEEEB1I_.exit
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !2004, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs607s0NAIaWN_7segment.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs607s0NAIaWN_7segment.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #18
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs607s0NAIaWN_7segment.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment10data_types13named_vectors9CowVectorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtBb_18StructPayloadIndexNtNtBd_18payload_index_base12PayloadIndex7flusher0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [96 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2013, !nonnull !4, !noundef !4 ; 4 uses
  %i.i = load i64, ptr %1, align 8, !range !16, !alias.scope !2013, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2013, !noundef !4 ; 3 uses
  %i.l = icmp ult i64 %i.k, 576460752303423488
  tail call void @llvm.assume(i1 %i.l)
  %.idx.i = shl nuw nsw i64 %i.k, 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2014
  store ptr %i.h, ptr %i.f, align 8, !noalias !2014
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2014
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2014
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2014
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.b:                                             ; preds = %bb.v, %bb.u, %.body.i, %bb.c
  %.pn16.i = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn.i, %bb.u ], [ %.pn.i, %bb.v ], [ %.pn.i, %.body.i ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtB1m_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB1m_6marker4SendEL_EENtNtB1k_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i unwind label %bb.t, !noalias !2014

bb.c:                                             ; preds = %bb.s, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.thread34.i, %.lr.ph.i
  %i.u = phi ptr [ %i.h, %.lr.ph.i ], [ %i.aq, %.thread34.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2015, !noalias !2014
  %i.w = load ptr, ptr %i.u, align 8, !noalias !2016, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2016, !nonnull !4, !align !7, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2014
  invoke void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtBP_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtBP_6marker4SendEL_EIBJ_uE9call_onceB25_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.e, ptr noundef nonnull %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
          to label %bb.g unwind label %bb.c, !noalias !2014

._crit_edge.i:                                    ; preds = %.thread34.i, %bb.a
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtB1m_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB1m_6marker4SendEL_EENtNtB1k_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit22.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i, !noalias !2014

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i: ; preds = %bb.i, %._crit_edge.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit22.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2014
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2013, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2013, !nonnull !4, !align !7, !noundef !4
  call void @_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtBP_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtBP_6marker4SendEL_EIBJ_uE9call_onceB25_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac), !noalias !2014
  %i.ad = load i64, ptr %i.a, align 8, !range !11, !noalias !2014, !noundef !4
  %.not11.i = icmp eq i64 %i.ad, -1
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit22.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2014
  br label %_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2014
  store i64 -1, ptr %0, align 8, !alias.scope !2012
  br label %_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit

bb.g:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.e, align 8, !range !11, !noalias !2014, !noundef !4
  switch i64 %i.ae, label %bb.i [
    i64 -1, label %.thread34.i
    i64 -9223372036854775798, label %bb.k
  ]

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs607s0NAIaWN_7segment.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2014
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !2014 ; 3 uses
  %.not15.i = icmp eq i64 %.pr.i, -1
  br i1 %.not15.i, label %.thread34.i, label %bb.r

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2014
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtB1m_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB1m_6marker4SendEL_EENtNtB1k_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i, !noalias !2014

bb.j:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body.i unwind label %bb.t, !noalias !2014

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !2014
  %i.ag = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2014 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, 6
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2014
  store ptr %i.d, ptr %i.c, align 8, !noalias !2014
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !2014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2014
  store ptr @3, ptr %i.b, align 8, !noalias !2014
  store i64 51, ptr %i.p, align 8, !noalias !2014
  store ptr @3, ptr %i.q, align 8, !noalias !2014
  store i64 51, ptr %i.r, align 8, !noalias !2014
  store ptr @2, ptr %i.s, align 8, !noalias !2014
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECs607s0NAIaWN_7segment(ptr noundef nonnull @0, ptr noundef nonnull %i.c, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.b)
          to label %bb.p unwind label %bb.j, !noalias !2014

bb.m:                                             ; preds = %bb.p, %bb.k
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs607s0NAIaWN_7segment.exit.i.i unwind label %bb.n, !noalias !2014

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.o, !noalias !2014

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2014
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.q, !noalias !2014

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2014
  br label %bb.m

.body.i:                                          ; preds = %bb.q, %bb.n, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.am, %bb.q ], [ %i.aj, %bb.n ] ; 3 uses
  %i.al = load i64, ptr %i.e, align 8, !range !11, !noalias !2014, !noundef !4 ; 3 uses
  %.not14.i = icmp eq i64 %i.al, -1
  br i1 %.not14.i, label %bb.b, label %bb.u

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs607s0NAIaWN_7segment.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.r:                                             ; preds = %bb.h
  %i.an = icmp ne i64 %.pr.i, -9223372036854775791
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i64 %.pr.i, -9223372036854775798
  br i1 %i.ao, label %.thread34.i, label %bb.s

.thread34.i:                                      ; preds = %bb.s, %bb.r, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2014
  %i.ap = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2014, !nonnull !4, !noundef !4
  %i.aq = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2014, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i, label %bb.d

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e)
          to label %.thread34.i unwind label %bb.c, !noalias !2014

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i, %bb.v, %bb.j, %bb.b
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2014
  unreachable

bb.u:                                             ; preds = %.body.i
  %i.at = icmp ne i64 %i.al, -9223372036854775791
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.al, -9223372036854775798
  br i1 %i.au, label %bb.b, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #18
          to label %bb.b unwind label %bb.t, !noalias !2014

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2014
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20.i = load ptr, ptr %i.av, align 8, !alias.scope !2013 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val21.i = load ptr, ptr %i.aw, align 8, !alias.scope !2013, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.ax = load ptr, ptr %.val21.i, align 8, !invariant.load !4, !noalias !2014 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i) ]
  invoke void %i.ax(ptr noundef nonnull %.val20.i)
          to label %bb.x unwind label %bb.z, !noalias !2014

bb.x:                                             ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val21.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !16, !invariant.load !4, !noalias !2014 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %.val21.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !17, !invariant.load !4, !noalias !2014
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef range(i64 1, -9223372036854775808) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #20, !noalias !2014
  br label %_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit

bb.z:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val21.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !16, !invariant.load !4, !noalias !2014 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %common.resume.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %.val21.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !17, !invariant.load !4, !noalias !2014
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef range(i64 1, -9223372036854775808) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #20, !noalias !2014
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i, %bb.aa, %bb.z
  %common.resume.op.i = phi { ptr, i32 } [ %i.bd, %bb.z ], [ %i.bd, %bb.aa ], [ %.pn16.pn30.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i, %bb.b
  %.pn16.pn30.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i ], [ %.pn16.i, %bb.b ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.bj, align 8, !alias.scope !2013
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val19.i = load ptr, ptr %i.bk, align 8, !alias.scope !2013, !nonnull !4, !align !7, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEB2i_(ptr %.val.i, ptr nonnull %.val19.i) #18
          to label %common.resume.i unwind label %bb.t, !noalias !2014

_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit: ; preds = %bb.e, %bb.f, %bb.x, %bb.y
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index5buildNtB4_18StructPayloadIndex19build_field_indexes(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noundef nonnull align 8 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [96 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 6 uses
  %i.k = alloca [792 x i8], align 8               ; 5 uses
  %i.l = alloca [792 x i8], align 8               ; 7 uses
  %.sroa.610 = alloca [96 x i8], align 8          ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 14 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = tail call noundef ptr @_RNvNtNtNtCs607s0NAIaWN_7segment5index11field_index14index_selector15wipe_field_dirs(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs8_NtNtCs607s0NAIaWN_7segment6common15operation_errorNtB5_14OperationErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB1j_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noundef nonnull %i.t)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.x = atomicrmw add ptr %i.w, i64 1 acquire, align 8
  %i.y = add i64 %i.x, 1                          ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  br i1 %i.z, label %_RNvMs3_Cs5LEDvFxVFYt_14atomic_refcellINtB5_13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment15payload_storage20payload_storage_enum18PayloadStorageEnumE6borrowB10_.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_Cs5LEDvFxVFYt_14atomic_refcellNtB5_15AtomicBorrowRef14check_overflow(ptr noundef nonnull align 8 %i.w, i64 noundef %i.y) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @5, ptr %i.f, align 8, !captures !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 24, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs607s0NAIaWN_7segment, ptr %.sroa.43.0..sroa_idx.i, align 8
end_hunk_0
