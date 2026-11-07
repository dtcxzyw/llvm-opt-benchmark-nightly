Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.067?download=true
inline.NumInlined: 1292
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index7StorageEBN_:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index21on_disk_postings_enum18OnDiskPostingsEnumNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit4 unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit: ; preds = %bb.m, %bb.p
  %.pn2 = phi { ptr, i32 } [ %i.v, %bb.p ], [ %.pn, %bb.m ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsinALYEoamBN_6bitvec3vec6BitVecyEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6bitvec13DeletedBitVecECs607s0NAIaWN_7segment.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit4: ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsinALYEoamBN_6bitvec3vec6BitVecyEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
  ret void

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit, %bb.m, %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6bitvec13DeletedBitVecECs607s0NAIaWN_7segment.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9geo_index17mutable_geo_index5inner16InMemoryGeoIndexEBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit4 unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit5 unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashjEEB1I_.exit4: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtNtCs607s0NAIaWN_7segment5index11field_index8geo_hash7GeoHashINtNtCsyIGusAaLFh_5ahash8hash_set8AHashSetmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
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

bb.b:                                             ; preds = %9, %bb.t, %.body.i, %bb.c
  %.pn16.i = phi { ptr, i32 } [ %i.t, %bb.c ], [ %.pn.i, %bb.t ], [ %.pn.i, %9 ], [ %.pn.i, %.body.i ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtB1m_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB1m_6marker4SendEL_EENtNtB1k_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i unwind label %bb.s, !noalias !2014

bb.c:                                             ; preds = %bb.r, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.thread34.i, %.lr.ph.i
  %i.u = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ao, %.thread34.i ] ; 3 uses
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
  %i.ae = load i64, ptr %i.e, align 8, !range !11, !noalias !2014, !noundef !4 ; 3 uses
  %.not12.i = icmp eq i64 %i.ae, -1
  br i1 %.not12.i, label %.thread34.i, label %2

2:                                                ; preds = %bb.g
  %3 = icmp ne i64 %i.ae, -9223372036854775791
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %i.ae, -9223372036854775798
  br i1 %4, label %bb.k, label %bb.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs607s0NAIaWN_7segment.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2014
  %.pr.i = load i64, ptr %i.e, align 8, !noalias !2014 ; 3 uses
  %.not15.i = icmp eq i64 %.pr.i, -1
  br i1 %.not15.i, label %.thread34.i, label %5

bb.i:                                             ; preds = %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false), !noalias !2013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2014
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputINtNtB1m_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB1m_6marker4SendEL_EENtNtB1k_4drop4Drop4dropB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i, !noalias !2014

bb.j:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.body.i unwind label %bb.s, !noalias !2014

bb.k:                                             ; preds = %2
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
  br i1 %.not14.i, label %bb.b, label %bb.t

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs607s0NAIaWN_7segment.exit.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

5:                                                ; preds = %bb.h
  %6 = icmp ne i64 %.pr.i, -9223372036854775791
  call void @llvm.assume(i1 %6)
  %7 = icmp eq i64 %.pr.i, -9223372036854775798
  br i1 %7, label %.thread34.i, label %bb.r

.thread34.i:                                      ; preds = %bb.r, %5, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2014
  %i.an = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2014, !nonnull !4, !noundef !4
  %i.ao = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2017, !noalias !2014, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %._crit_edge.i, label %bb.d

bb.r:                                             ; preds = %5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e)
          to label %.thread34.i unwind label %bb.c, !noalias !2014

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i, %9, %bb.j, %bb.b
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !2014
  unreachable

bb.t:                                             ; preds = %.body.i
  %i.ar = icmp ne i64 %i.al, -9223372036854775791
  call void @llvm.assume(i1 %i.ar)
  %8 = icmp eq i64 %i.al, -9223372036854775798
  br i1 %8, label %bb.b, label %9

9:                                                ; preds = %bb.t
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #18
          to label %bb.b unwind label %bb.s, !noalias !2014

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2014
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val20.i = load ptr, ptr %i.as, align 8, !alias.scope !2013 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val21.i = load ptr, ptr %i.at, align 8, !alias.scope !2013, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.au = load ptr, ptr %.val21.i, align 8, !invariant.load !4, !noalias !2014 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i) ]
  invoke void %i.au(ptr noundef nonnull %.val20.i)
          to label %bb.v unwind label %bb.x, !noalias !2014

bb.v:                                             ; preds = %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit23.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val21.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !16, !invariant.load !4, !noalias !2014 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %.val21.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !17, !invariant.load !4, !noalias !2014
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef range(i64 1, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #20, !noalias !2014
  br label %_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit

bb.x:                                             ; preds = %bb.u
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val21.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !16, !invariant.load !4, !noalias !2014 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %common.resume.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %.val21.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !17, !invariant.load !4, !noalias !2014
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef range(i64 1, -9223372036854775808) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #20, !noalias !2014
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i, %bb.y, %bb.x
  %common.resume.op.i = phi { ptr, i32 } [ %i.ba, %bb.x ], [ %i.ba, %bb.y ], [ %.pn16.pn30.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i, %bb.b
  %.pn16.pn30.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEEB2P_.exit.thread31.i ], [ %.pn16.i, %bb.b ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.bg, align 8, !alias.scope !2013
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val19.i = load ptr, ptr %i.bh, align 8, !alias.scope !2013, !nonnull !4, !align !7, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputINtNtB4_6result6ResultuNtNtNtCs607s0NAIaWN_7segment6common15operation_error14OperationErrorENtNtB4_6marker4SendEL_EEB2i_(ptr %.val.i, ptr nonnull %.val19.i) #18
          to label %common.resume.i unwind label %bb.s, !noalias !2014

_RNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB6_18StructPayloadIndexNtNtB8_18payload_index_base12PayloadIndex7flusher0Ba_.exit: ; preds = %bb.e, %bb.f, %bb.v, %bb.w
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
  unreachable

_RNvMs3_Cs5LEDvFxVFYt_14atomic_refcellINtB5_13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment15payload_storage20payload_storage_enum18PayloadStorageEnumE6borrowB10_.exit: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 5 uses
  %i.af = atomicrmw add ptr %i.ae, i64 1 acquire, align 8
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %bb.e, !prof !5

bb.e:                                             ; preds = %_RNvMs3_Cs5LEDvFxVFYt_14atomic_refcellINtB5_13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment15payload_storage20payload_storage_enum18PayloadStorageEnumE6borrowB10_.exit
  invoke void @_RNvMs4_Cs5LEDvFxVFYt_14atomic_refcellNtB5_15AtomicBorrowRef14check_overflow(ptr noundef nonnull align 8 %i.ae, i64 noundef %i.ag) #16
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @5, ptr %i.d, align 8, !captures !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 24, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs607s0NAIaWN_7segment, ptr %.sroa.43.0..sroa_idx.i49, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #17
          to label %.noexc50 unwind label %bb.f

.noexc50:                                         ; preds = %.noexc
  unreachable

bb.f:                                             ; preds = %.noexc, %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %_RNvMs3_Cs5LEDvFxVFYt_14atomic_refcellINtB5_13AtomicRefCellNtNtNtCs607s0NAIaWN_7segment15payload_storage20payload_storage_enum18PayloadStorageEnumE6borrowB10_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %i.al = invoke noundef i8 @_RNvMs1j_NtCs607s0NAIaWN_7segment5typesNtB6_18PayloadFieldSchema16memory_placement(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
          to label %.noexc51 unwind label %bb.m

.noexc51:                                         ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.an = load i8, ptr %i.am, align 8, !range !8, !noalias !2029, !noundef !4
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = load ptr, ptr %i.p, align 8, !noalias !2029, !nonnull !4, !noundef !4
  %i.aq = load i64, ptr %i.r, align 8, !noalias !2029, !noundef !4
  br i1 %i.ao, label %bb.h, label %switch.lookup

bb.h:                                             ; preds = %.noexc51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.al, ptr %i.ar, align 1, !alias.scope !2028
  br label %switch.lookup

.body58:                                          ; preds = %bb.af, %bb.m, %.thread
  %.pn38 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.m ], [ %.pn66, %.thread ], [ %i.cu, %bb.af ]
  %i.as = atomicrmw add ptr %i.ae, i64 -1 release, align 8 ; 0 uses
  br label %bb.ap

switch.lookup:                                    ; preds = %bb.h, %.noexc51
  %storemerge.i = phi i8 [ 0, %bb.h ], [ 1, %.noexc51 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ap, ptr %i.at, align 8, !alias.scope !2028
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.aq, ptr %i.au, align 8, !alias.scope !2028
  store i8 %storemerge.i, ptr %i.o, align 8, !alias.scope !2028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.av = load i64, ptr %i.ak, align 8, !range !19, !alias.scope !2030, !noundef !4 ; 2 uses
  %i.aw = xor i64 %i.av, -9223372036854775808
  %i.ax = icmp slt i64 %i.av, 0
  %i.ay = select i1 %i.ax, i64 %i.aw, i64 3       ; 2 uses
  %switch.gep = getelementptr inbounds [2 x i8], ptr @switch.table._RNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB4_18StructPayloadIndexNtNtB6_18payload_index_base12PayloadIndex11build_index, i64 %i.ay
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %switch.gep81 = getelementptr inbounds [2 x i8], ptr @switch.table._RNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB4_18StructPayloadIndexNtNtB6_18payload_index_base12PayloadIndex11build_index.88, i64 %i.ay
  %switch.load82 = load i16, ptr %switch.gep81, align 2
  %switch.ext83 = zext i16 %switch.load82 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 %switch.ext
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 %switch.ext83
  %.sroa.0.0.i = load ptr, ptr %i.az, align 8, !alias.scope !2030, !nonnull !4, !noundef !4
  %.sroa.5.0.i = load i64, ptr %i.ba, align 8, !alias.scope !2030, !noundef !4
  invoke void @_RNvMNtNtNtCs607s0NAIaWN_7segment5index11field_index14index_selectorNtB2_13IndexSelector13index_builder(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.5.0.i)
end_hunk_0
