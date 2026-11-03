Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.035?download=true
inline.NumInlined: 255
inline.NumDeleted: 139
begin_hunk_0_@_RINvXs1c_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB7_7HashMapjjEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTjjEE9from_iterINtNtNtB1e_8adapters3map3MapINtNtB2r_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEENCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB84_13SegmentHolder9flush_alls0_0E0EEB86_:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEENCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6o_13SegmentHolder9flush_alls0_0E0EEB6q_.exit unwind label %bb.d

bb.c:                                             ; preds = %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEENCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6o_13SegmentHolder9flush_alls0_0E0EEB6q_.exit: ; preds = %bb.e, %bb.b
  %.pn6 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn6

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterjEENCINvNtCslmvYCXbQjWR_6common10sort_utils16sort_permutationjINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockDNtNtNtCs607s0NAIaWN_7segment5entry11entry_point19StorageSegmentEntryEL_ENCNvMNtNtCs5QaNqjAn6vc_5shard14segment_holder5flushNtB6o_13SegmentHolder9flush_alls0_0E0EEB6q_.exit unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3g_NtNtCs4NSHK7GLW4I_10serde_core2de5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtBT_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionENtB9_11Deserialize11deserializeQINtNtCs8O45qwFIwQX_10serde_json2de12DeserializerINtNtB3A_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEEECs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs8O45qwFIwQX_10serde_json2deQINtB6_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCs3TE53SMfxyL_6fs_err4file4FileEEENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_mapINtNvXs3g_NtB2T_5implsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMappppENtB2T_11Deserialize11deserialize10MapVisitorNtNtB4o_4path7PathBufNtNtNtCs607s0NAIaWN_7segment10data_types8manifest11FileVersionNtNtNtB4o_4hash6random11RandomStateEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCs5QaNqjAn6vc_5shard13proxy_segment16ProxyIndexChangeENtCs9XvERIT2X68_9itertools9Itertools13sorted_by_keyyNCNvMs0_B1F_NtB1F_17ProxyIndexChanges12iter_ordered0EB1H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtCs5QaNqjAn6vc_5shard13proxy_segment16ProxyIndexChangeEEINtB2_12SpecFromIterBU_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBW_B1G_EE9from_iterB1K_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !193
  store ptr %i.a, ptr %i.b, align 8, !noalias !194
  %i.h = icmp samesign ult i64 %i.g, 2
  br i1 %i.h, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %i.g, 21
  br i1 %i.i, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtCs5QaNqjAn6vc_5shard13proxy_segment16ProxyIndexChangeENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMs0_B1N_NtB1N_17ProxyIndexChanges12iter_ordered0E0INtNtB2P_3vec3VecBZ_EEB1P_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtCs5QaNqjAn6vc_5shard13proxy_segment16ProxyIndexChangeENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_11sort_by_keyyNCNvMs0_B2a_NtB2a_17ProxyIndexChanges12iter_ordered0E0EB2c_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRNtNtCs607s0NAIaWN_7segment9json_path8JsonPathRNtNtCs5QaNqjAn6vc_5shard13proxy_segment16ProxyIndexChangeEEEB1Y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !193
  %i.k = load i64, ptr %i.c, align 8, !range !11, !noundef !7
  %i.l = icmp ult i64 %i.g, 576460752303423488
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs5QaNqjAn6vc_5shard13proxy_segment19vector_name_changes14IntendedVectorENtCs9XvERIT2X68_9itertools9Itertools13sorted_by_keyyNCNvMs0_B1y_NtB1y_22ProxyVectorNameChanges12iter_ordered0EB1C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecTRNtNtB6_6string6StringRNtNtNtCs5QaNqjAn6vc_5shard13proxy_segment19vector_name_changes14IntendedVectorEEINtB2_12SpecFromIterBU_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBW_B1i_EE9from_iterB1o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !200
  store ptr %i.a, ptr %i.b, align 8, !noalias !201
  %i.h = icmp samesign ult i64 %i.g, 2
  br i1 %i.h, label %bb.f, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %i.g, 21
  br i1 %i.i, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs5QaNqjAn6vc_5shard13proxy_segment19vector_name_changes14IntendedVectorENCINvMNtB15_5sliceSBZ_11sort_by_keyyNCNvMs0_B1G_NtB1G_22ProxyVectorNameChanges12iter_ordered0E0INtNtB15_3vec3VecBZ_EEB1K_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #19
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtNtCs5QaNqjAn6vc_5shard13proxy_segment19vector_name_changes14IntendedVectorENCINvMNtB1s_5sliceSB1m_11sort_by_keyyNCNvMs0_B23_NtB23_22ProxyVectorNameChanges12iter_ordered0E0EB27_(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef range(i64 0, 576460752303423488) %i.g, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRNtNtBG_6string6StringRNtNtNtCs5QaNqjAn6vc_5shard13proxy_segment19vector_name_changes14IntendedVectorEEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !200
  %i.k = load i64, ptr %i.c, align 8, !range !11, !noundef !7
  %i.l = icmp ult i64 %i.g, 576460752303423488
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  store ptr %i.e, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjyENtB6_5Debug3fmtCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !7, !align !9, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !205
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !205
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapjyNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRjRyINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterjyEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !205
  %i.e = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !205
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB1w_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterB1h_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !224 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not12.not.i = icmp eq ptr %i.g, null
  br i1 %.not12.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = icmp eq i64 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !224 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !224, !nonnull !7 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  br label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i
  %i.m = phi ptr [ %i.bo, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.n = phi { ptr, ptr } [ %i.bn, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i ], [ %i.f, %.lr.ph.i ]
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.p = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCs4R3jSB693Zs_4uuid4UuidECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.m), !noalias !227 ; 2 uses
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ak, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph.split.i ], [ %i.al, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !228 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.k
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.ab ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.ae = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtCs4R3jSB693Zs_4uuid4UuidINtB2_10EquivalentBq_E10equivalentCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad), !noalias !229
  br i1 %i.ae, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1i_.exit.i.i.i, label %bb.d, !prof !10

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit, !prof !12

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.c

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1i_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.an = load i64, ptr %i.o, align 8, !range !232, !alias.scope !233, !noundef !7 ; 3 uses
  %i.ao = icmp ne i64 %i.an, -9223372036854775806
  call void @llvm.assume(i1 %i.ao)
  %i.ap = xor i64 %i.an, -9223372036854775808
  %i.aq = icmp slt i64 %i.an, 0
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 2       ; 2 uses
  %i.as = load i64, ptr %i.am, align 8, !range !232, !alias.scope !231, !noalias !227, !noundef !7 ; 3 uses
  %i.at = icmp ne i64 %i.as, -9223372036854775806
  call void @llvm.assume(i1 %i.at)
  %i.au = xor i64 %i.as, -9223372036854775808
  %i.av = icmp slt i64 %i.as, 0
  %i.aw = select i1 %i.av, i64 %i.au, i64 2
  %i.ax = icmp eq i64 %i.ar, %i.aw
  br i1 %i.ax, label %bb.f, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit

bb.f:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1i_.exit.i.i.i
  %i.ay = icmp eq i64 %i.ar, 2
  br i1 %i.ay, label %bb.g, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !233, !noundef !7
  %i.bb = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !231, !noalias !227, !noundef !7
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.h, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !233, !noundef !7 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !231, !noalias !227, !noundef !7
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %.split.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit

.split.i:                                         ; preds = %bb.h
  %i.bj = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !231, !noalias !227, !nonnull !7, !noundef !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !233, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bm, ptr nonnull %i.bk, i64 %i.bf), !noalias !234
  %.not7.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not7.i, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i: ; preds = %.split.i, %bb.f
  %i.bn = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit, label %.lr.ph.split.i

_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit: ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1i_.exit.i.i.i, %bb.g, %bb.h, %.split.i, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.split.us.i
  %i.bp = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ true, %bb.b ], [ false, %.lr.ph.split.us.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.split.i ], [ true, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3all5checkTRNtCs4R3jSB693Zs_4uuid4UuidRNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENCNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB2P_7HashMapB1d_B1E_ENtNtBe_3cmp9PartialEq2eq0E0B1I_.exit.backedge.i ], [ false, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_EB1i_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit
  %.sroa.0.0 = phi i1 [ %i.bp, %_RINvYINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtCs4R3jSB693Zs_4uuid4UuidNtNtCs5QaNqjAn6vc_5shard16segment_manifest20SegmentManifestStateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2n_3all5checkTRBU_RB1k_ENCNvXs4_B6_INtB6_7HashMapBU_B1k_ENtNtB2v_3cmp9PartialEq2eq0E0INtNtNtB2v_3ops12control_flow11ControlFlowuEEB1o_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapjIBP_jyEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapjINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjyENtNtNtBX_4hash6random11RandomStateE4iterCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.c = call noundef nonnull align 8 ptr @_RINvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugMap7entriesRjRINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapjyEINtB18_4IterjB15_EECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs7_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscr48XpBcNGU_8schemars17json_schema_impls4mapsINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtCs5QaNqjAn6vc_5shard5quota6status14PeerQuotaUsageENtB8_10JsonSchema11json_schemaB1U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [288 x i8], align 8               ; 20 uses
  %i.l = alloca [288 x i8], align 8               ; 4 uses
  %i.m = alloca [200 x i8], align 8               ; 17 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [240 x i8], align 8           ; 9 uses
  %i.p = alloca [288 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvMs2_NtCscr48XpBcNGU_8schemars3genNtB6_15SchemaGenerator13subschema_forNtNtNtCs5QaNqjAn6vc_5shard5quota6status14PeerQuotaUsageEB1g_(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.q = call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 289) 1, i64 noundef range(i64 1, 9) 1) #16 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #20
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 2, ptr %i.q, align 1
  store i64 -1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.l, ptr noundef nonnull align 8 dereferenceable(288) %i.p, i64 288, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !254
  %i.s = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 289) 288, i64 noundef range(i64 1, 9) 8) #16, !noalias !254 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.g, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 288) #20
          to label %.noexc15 unwind label %bb.e

.noexc15:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscr48XpBcNGU_8schemars6schema6SchemaECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.l) #18
          to label %.body11 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

.body11:                                          ; preds = %bb.e, %.body17
  %.pn = phi { ptr, i32 } [ %.pn.i, %.body17 ], [ %i.u, %bb.e ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscr48XpBcNGU_8schemars6schema11SingleOrVecNtB10_12InstanceTypeEEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #18
          to label %bb.aj unwind label %bb.ai

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.s, ptr noundef nonnull align 8 dereferenceable(288) %i.p, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !255
  store ptr null, ptr %i.j, align 8, !noalias !255
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !255
  %i.w = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.j unwind label %bb.i, !noalias !255 ; 2 uses

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.x, %bb.i ]
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtB4_7set_val9SetValZSTENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body17 unwind label %bb.l, !noalias !255

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.y = extractvalue { i64, i64 } %i.w, 0
  %i.z = extractvalue { i64, i64 } %i.w, 1
  store i64 0, ptr %i.i, align 8, !alias.scope !256, !noalias !255
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !256, !noalias !255
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !256, !noalias !255
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !256, !noalias !255
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !256, !noalias !255
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !256, !noalias !255
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %i.z, ptr %i.ab, align 8, !alias.scope !256, !noalias !255
  %i.ac = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.m unwind label %bb.k, !noalias !255 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjyaAxtYV86Z_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCscr48XpBcNGU_8schemars6schema6SchemaEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #18
          to label %bb.h unwind label %bb.l, !noalias !255

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !255
  unreachable

.body17:                                          ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCscr48XpBcNGU_8schemars6schema6SchemaEEECs5QaNqjAn6vc_5shard(ptr nonnull %i.s) #18
          to label %.body11 unwind label %bb.ai

bb.m:                                             ; preds = %bb.j
  %i.af = extractvalue { i64, i64 } %i.ac, 0
  %i.ag = extractvalue { i64, i64 } %i.ac, 1
  %.sroa.9.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.72..sroa_idx, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !255
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 0, ptr %i.ak, align 8
  %.sroa.6.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.72..sroa_idx, align 8
  %.sroa.7.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i64 0, ptr %.sroa.7.72..sroa_idx, align 8
  %.sroa.8.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr @0, ptr %.sroa.8.72..sroa_idx, align 8
  %.sroa.10.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store i64 %i.af, ptr %.sroa.10.72..sroa_idx, align 8
  %.sroa.11.72..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store i64 %i.ag, ptr %.sroa.11.72..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  store ptr %i.s, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  store ptr null, ptr %i.am, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !257
  %i.an = call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 289) 200, i64 noundef range(i64 1, 9) 8) #16, !noalias !257 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %bb.q, !prof !12

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 200) #20
          to label %.noexc19 unwind label %bb.o

.noexc19:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscr48XpBcNGU_8schemars6schema16ObjectValidationECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.m) #18
end_hunk_0
