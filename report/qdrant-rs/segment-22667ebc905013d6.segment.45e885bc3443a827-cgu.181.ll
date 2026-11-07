Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.181?download=true
inline.NumInlined: 271
inline.NumDeleted: 161
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index7StorageEBN_:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i3.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index16on_disk_postings14OnDiskPostingsuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i3.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %bb.j, %bb.h
  %eh.lpad-body.i2.i = phi { ptr, i32 } [ %i.k, %bb.j ], [ %i.i, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(80) %i.l) #14
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %.body.i1.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index16on_disk_postings14OnDiskPostingsuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs607s0NAIaWN_7segment.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(80) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index21on_disk_postings_enum18OnDiskPostingsEnumNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index16on_disk_postings14OnDiskPostingsuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %.body.i1.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %eh.lpad-body.i2.i, %.body.i1.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCslmvYCXbQjWR_6common17persisted_hashmap3uio16UniversalHashMapemNtNtNtBI_12universal_io4mmap8MmapFileEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(184) %i.p) #14
          to label %bb.m unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index21on_disk_postings_enum18OnDiskPostingsEnumNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index16on_disk_postings14OnDiskPostingsuNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCslmvYCXbQjWR_6common17persisted_hashmap3uio16UniversalHashMapemNtNtNtBI_12universal_io4mmap8MmapFileEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(184) %i.q)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.n, %.body
  %.pn = phi { ptr, i32 } [ %i.s, %bb.n ], [ %eh.lpad-body, %.body ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit unwind label %bb.q

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_index21on_disk_postings_enum18OnDiskPostingsEnumNtNtNtCslmvYCXbQjWR_6common12universal_io4mmap8MmapFileEEBQ_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6bitvec13DeletedBitVecECs607s0NAIaWN_7segment.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers5typed12TypedStorageNtNtBI_4mmap8MmapFilejEECs607s0NAIaWN_7segment.exit
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index24immutable_inverted_index22ImmutableInvertedIndexEBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !297, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEEECs607s0NAIaWN_7segment.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEEECs607s0NAIaWN_7segment.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index23immutable_postings_enum17ImmutablePostingsEBN_.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEEB2i_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEEB2i_.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index23immutable_postings_enum17ImmutablePostingsEBN_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEEB2i_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEEECs607s0NAIaWN_7segment.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.d, %bb.c ], [ %i.f, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index23immutable_postings_enum17ImmutablePostingsEBN_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListuEEECs607s0NAIaWN_7segment.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs6cW95TQWYPl_12posting_list12posting_list11PostingListNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index9positions9PositionsEEEB2i_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringmEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit5 unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit: ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.i ], [ %eh.lpad-body, %.body ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #14
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index23immutable_postings_enum17ImmutablePostingsEBN_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit5: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index23immutable_postings_enum17ImmutablePostingsEBN_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit5
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.j ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit5
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
  ret void

bb.l:                                             ; preds = %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringmEECs607s0NAIaWN_7segment.exit
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RINvNtNtCs4ByaKcm8ifS_6sparse6common13sparse_vector13score_vectorsmECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %6, i64 noundef range(i64 0, 2305843009213693952) %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %5, 0
  %or.cond31 = and i1 %i.a, %i.b
  br i1 %or.cond31, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.04.0.lcssa = phi i8 [ 0, %bb.a ], [ %.sroa.04.1, %bb.f ] ; 2 uses
  %.sroa.02.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.02.1, %bb.f ]
  %8 = trunc nuw i8 %.sroa.04.0.lcssa to i1
  %.sroa.02.0. = select i1 %8, float %.sroa.02.0.lcssa, float undef
  %. = zext nneg i8 %.sroa.04.0.lcssa to i32
  %i.c = insertvalue { i32, float } poison, i32 %., 0
  %i.d = insertvalue { i32, float } %i.c, float %.sroa.02.0., 1
  ret { i32, float } %i.d

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.02.035 = phi float [ %.sroa.02.1, %bb.f ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.sroa.04.034 = phi i8 [ %.sroa.04.1, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %.sroa.05.033 = phi i64 [ %.sroa.05.1, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %.sroa.010.032 = phi i64 [ %.sroa.010.1, %bb.f ], [ 0, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.033
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.010.032
  %.val = load i32, ptr %i.e, align 4, !noundef !4
  %.val18 = load i32, ptr %i.f, align 4, !noundef !4
  %i.g = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val, i32 %.val18)
  switch i8 %i.g, label %bb.b [
    i8 -1, label %bb.c
    i8 0, label %bb.d
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.05.033, 1
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.i = icmp ult i64 %.sroa.05.033, %3
  br i1 %i.i, label %bb.g, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.sroa.010.032, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e, %bb.c
  %.sroa.010.1 = phi i64 [ %.sroa.010.032, %bb.c ], [ %i.u, %bb.i ], [ %i.j, %bb.e ] ; 2 uses
  %.sroa.05.1 = phi i64 [ %i.h, %bb.c ], [ %i.t, %bb.i ], [ %.sroa.05.033, %bb.e ] ; 2 uses
  %.sroa.04.1 = phi i8 [ %.sroa.04.034, %bb.c ], [ 1, %bb.i ], [ %.sroa.04.034, %bb.e ] ; 2 uses
  %.sroa.02.1 = phi float [ %.sroa.02.035, %bb.c ], [ %i.s, %bb.i ], [ %.sroa.02.035, %bb.e ] ; 2 uses
  %i.k = icmp ult i64 %.sroa.05.1, %1
  %i.l = icmp ult i64 %.sroa.010.1, %5
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %bb.d
  %i.m = icmp ult i64 %.sroa.010.032, %7
  br i1 %i.m, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.033, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.05.033
  %i.o = load float, ptr %i.n, align 4, !noundef !4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.010.032
  %i.q = load float, ptr %i.p, align 4, !noundef !4
  %i.r = fmul float %i.o, %i.q
  %i.s = fadd float %.sroa.02.035, %i.r
  %i.t = add nuw nsw i64 %.sroa.05.033, 1
  %i.u = add nuw nsw i64 %.sroa.010.032, 1
  br label %bb.f

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.010.032, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseW0emhgbqwB_5rayon4iter13from_par_iter16collect_extendedINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtNtB4_3map3MapINtNtB6_5slice4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2m_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2a_uIB13_B2a_EE0EECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !300
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !300
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  invoke void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB8_14ParallelExtendjE10par_extendINtNtB8_3map3MapINtNtBa_5slice4IterReENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2o_uIBH_B2o_EE0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseW0emhgbqwB_5rayon4iter13from_par_iter16collect_extendedINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtNtB4_3map3MapINtNtB6_5slice4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2m_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2a_uIB13_B2a_EE0EECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !303
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !303
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  invoke void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB8_14ParallelExtendjE10par_extendINtNtB8_3map3MapINtNtBa_5slice4IterRoENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2o_uIBH_B2o_EE0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCseW0emhgbqwB_5rayon4iter13from_par_iter16collect_extendedINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtNtB4_3map3MapINtNtB6_5slice4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2m_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2a_uIB13_B2a_EE0EECs607s0NAIaWN_7segment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !306
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !306
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  invoke void @_RINvXsv_NtNtCseW0emhgbqwB_5rayon4iter6extendINtNtCsexYYUdYSQU6_5alloc3vec3VecjEINtB8_14ParallelExtendjE10par_extendINtNtB8_3map3MapINtNtBa_5slice4IterRxENCINvMs1_NtNtCsl6yn9iTqhmQ_2ph4fmph8functionINtB2A_7BuilderNtCs3hXNDzclcbI_13seedable_hash11BuildWyHashE12build_levelsB2o_uIBH_B2o_EE0EECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #12
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index8read_opsINtB5_19OnDiskFullTextIndexNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtB7_20full_text_index_read17FullTextIndexRead17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB29_17condition_checker15PartitionerItermENCINvXs1_NtB7_8read_opsINtB5T_24FullTextConditionCheckerINtNtB7_9read_only21ReadOnlyFullTextIndexB23_EENtB52_16ConditionChecker13check_batchedmE0ENCB5M_s_0EBd_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexINtB6_19OnDiskInvertedIndexNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileE17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2n_17condition_checker15PartitionerItermENCINvXs1_NtBa_8read_opsINtB5l_24FullTextConditionCheckerINtNtBa_9read_only21ReadOnlyFullTextIndexB2h_EENtB4u_16ConditionChecker13check_batchedmE0ENCB5e_s_0EBg_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(288) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index8read_opsNtB5_19OnDiskFullTextIndexNtNtB7_20full_text_index_read17FullTextIndexRead17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtB7_8read_opsINtB57_24FullTextConditionCheckerINtNtB7_9read_only21ReadOnlyFullTextIndexNtNtNtB41_12universal_io4mmap8MmapFileEENtB3Z_16ConditionChecker13check_batchedmE0ENCB50_s_0EBd_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexNtB6_19OnDiskInvertedIndex17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtBa_8read_opsINtB4z_24FullTextConditionCheckerINtNtBa_9read_only21ReadOnlyFullTextIndexNtNtNtB3t_12universal_io4mmap8MmapFileEENtB3r_16ConditionChecker13check_batchedmE0ENCB4s_s_0EBg_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index18on_disk_text_index8read_opsNtB5_19OnDiskFullTextIndexNtNtB7_20full_text_index_read17FullTextIndexRead17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtB7_8read_opsINtB57_24FullTextConditionCheckerNtB7_13FullTextIndexENtB3Z_16ConditionChecker13check_batchedmE0ENCB50_s_0EBd_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(544) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs0_NtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index14inverted_index22on_disk_inverted_indexNtB6_19OnDiskInvertedIndex17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtBa_8read_opsINtB4z_24FullTextConditionCheckerNtBa_13FullTextIndexENtB3r_16ConditionChecker13check_batchedmE0ENCB4s_s_0EBg_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(480) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20immutable_text_index8read_opsINtB5_22ImmutableFullTextIndexNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileENtNtB7_20full_text_index_read17FullTextIndexRead17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2e_17condition_checker15PartitionerItermENCINvXs1_NtB7_8read_opsINtB5Y_24FullTextConditionCheckerINtNtB7_9read_only21ReadOnlyFullTextIndexB28_EENtB57_16ConditionChecker13check_batchedmE0ENCB5R_s_0EBd_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20full_text_index_read25default_check_match_batchINtNtB4_20immutable_text_index22ImmutableFullTextIndexNtNtNtCslmvYCXbQjWR_6common12universal_io8io_uring11IoUringFileEmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2R_17condition_checker15PartitionerItermENCINvXs1_NtB4_8read_opsINtB5w_24FullTextConditionCheckerINtNtB4_9read_only21ReadOnlyFullTextIndexB2L_EENtB4F_16ConditionChecker13check_batchedmE0ENCB5p_s_0EBa_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20immutable_text_index8read_opsNtB5_22ImmutableFullTextIndexNtNtB7_20full_text_index_read17FullTextIndexRead17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtB7_8read_opsINtB5c_24FullTextConditionCheckerINtNtB7_9read_only21ReadOnlyFullTextIndexNtNtNtB46_12universal_io4mmap8MmapFileEENtB44_16ConditionChecker13check_batchedmE0ENCB55_s_0EBd_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(664) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20full_text_index_read25default_check_match_batchNtNtB4_20immutable_text_index22ImmutableFullTextIndexmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtB4_8read_opsINtB4K_24FullTextConditionCheckerINtNtB4_9read_only21ReadOnlyFullTextIndexNtNtNtB3E_12universal_io4mmap8MmapFileEENtB3C_16ConditionChecker13check_batchedmE0ENCB4D_s_0EBa_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20immutable_text_index8read_opsNtB5_22ImmutableFullTextIndexNtNtB7_20full_text_index_read17FullTextIndexRead17check_match_batchmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtB7_8read_opsINtB5c_24FullTextConditionCheckerNtB7_13FullTextIndexENtB44_16ConditionChecker13check_batchedmE0ENCB55_s_0EBd_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(664) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %5) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtNtNtCs607s0NAIaWN_7segment5index11field_index15full_text_index20full_text_index_read25default_check_match_batchNtNtB4_20immutable_text_index22ImmutableFullTextIndexmINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCslmvYCXbQjWR_6common17condition_checker15PartitionerItermENCINvXs1_NtB4_8read_opsINtB4K_24FullTextConditionCheckerNtB4_13FullTextIndexENtB3C_16ConditionChecker13check_batchedmE0ENCB4D_s_0EBa_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(664) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectors1__NtB5_18StoredSparseVectorNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCsdCrN8tpH0az_7bincode3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB2H_6config14WithOtherLimitINtB3W_17WithOtherTrailingINtB3W_20WithOtherIntEncodingNtB3W_14DefaultOptionsNtNtB3W_3int14FixintEncodingENtNtB3W_8trailing13AllowTrailingENtNtB3W_5limit8InfiniteEEEBb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvYQINtNtCsdCrN8tpH0az_7bincode3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB9_6config14WithOtherLimitINtB1o_17WithOtherTrailingINtB1o_20WithOtherIntEncodingNtB1o_14DefaultOptionsNtNtB1o_3int14FixintEncodingENtNtB1o_8trailing13AllowTrailingENtNtB1o_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRBM_ECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noundef align 8 ptr @_RINvYQINtNtCsdCrN8tpH0az_7bincode3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtNtB9_6config14WithOtherLimitINtB1o_17WithOtherTrailingINtB1o_20WithOtherIntEncodingNtB1o_14DefaultOptionsNtNtB1o_3int14FixintEncodingENtNtB1o_8trailing13AllowTrailingENtNtB1o_5limit8InfiniteEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_seqRIBN_fEECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtNtCs607s0NAIaWN_7segment14vector_storage6sparse21stored_sparse_vectors1__NtB5_18StoredSparseVectorNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCsdCrN8tpH0az_7bincode3ser11SizeCheckerQINtNtB2H_6config14WithOtherLimitINtB3o_17WithOtherTrailingINtB3o_20WithOtherIntEncodingNtB3o_14DefaultOptionsNtNtB3o_3int14FixintEncodingENtNtB3o_8trailing13AllowTrailingENtNtB3o_5limit8InfiniteEEEBb_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
