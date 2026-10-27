Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.10?download=true
inline.NumInlined: 1291
inline.NumDeleted: 424
begin_hunk_0_@_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer31erased_serialize_newtype_structCsbaWXNhtWAp9_11foundations:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10867), !dbg !10868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10869, !noalias !10867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !10870
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10871 ; 2 uses
  store i8 12, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !10871, !alias.scope !10867
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10869
  %i.c = load i8, ptr %i.b, align 8, !dbg !10869, !range !459, !noalias !10867, !noundef !349 ; 2 uses
  %i.d = icmp ne i8 %i.c, 8, !dbg !10869
  tail call void @llvm.assume(i1 %i.d), !dbg !10869
  %i.e = icmp eq i8 %i.c, 2, !dbg !10872
  br i1 %i.e, label %bb.g, label %bb.b, !dbg !10872, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !10873, !noalias !10867

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.f, !dbg !10874

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #35
          to label %bb.d unwind label %bb.f, !dbg !10875, !noalias !10867

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !10874, !noalias !10867
  unreachable, !dbg !10874

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10876
  %i.i = load ptr, ptr %i.h, align 8, !dbg !10876, !noalias !10867, !nonnull !349, !align !421, !noundef !349
  %i.j = load ptr, ptr %i.a, align 8, !dbg !10876, !noalias !10867, !nonnull !349, !noundef !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10875, !noalias !10867
  %i.k = tail call noundef ptr @_RINvXsm_NtCs5brsvYHD4Ou_12erased_serde3serDNtB6_9SerializeEL_NtNtCs5FjQZcNRzHx_10serde_core3ser9Serialize9serializeNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i), !dbg !10877 ; 2 uses
  %.not = icmp eq ptr %i.k, null, !dbg !10878
  %. = select i1 %.not, i8 11, i8 10, !dbg !10879
  store ptr %i.k, ptr %0, align 8, !dbg !10880
  store i8 %., ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !10880
  ret void, !dbg !10881
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer31erased_serialize_struct_variantCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10882 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10894), !dbg !10896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10897, !noalias !10894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !10898
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10899 ; 2 uses
  store i8 12, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !10899, !alias.scope !10894
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10897
  %i.d = load i8, ptr %i.c, align 8, !dbg !10897, !range !459, !noalias !10894, !noundef !349 ; 2 uses
  %i.e = icmp ne i8 %i.d, 8, !dbg !10897
  tail call void @llvm.assume(i1 %i.e), !dbg !10897
  %i.f = icmp eq i8 %i.d, 2, !dbg !10900
  br i1 %i.f, label %bb.g, label %bb.b, !dbg !10900, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !10901, !noalias !10894

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.g, !dbg !10902

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #35
          to label %bb.d unwind label %bb.f, !dbg !10903, !noalias !10894

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !10902, !noalias !10894
  unreachable, !dbg !10902

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10903, !noalias !10894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10904, !noalias !10895
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10904
  store ptr %2, ptr %i.i, align 8, !dbg !10904, !noalias !10895
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10904
  store i64 %3, ptr %i.j, align 16, !dbg !10904, !noalias !10895
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !10904
  store ptr %5, ptr %i.k, align 8, !dbg !10904, !noalias !10895
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !10904
  store i64 %6, ptr %i.l, align 16, !dbg !10904, !noalias !10895
  store i8 11, ptr %i.a, align 16, !dbg !10904, !noalias !10895
  %i.m = call noundef nonnull ptr @_RNvNtNtCskfQLOxWbF12_10prometools5serde3top11unsupported(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %i.a), !dbg !10905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10906, !noalias !10895
  store ptr %i.m, ptr %1, align 8, !dbg !10907
  store i8 10, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !10907
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !10908
  ret void, !dbg !10909
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerENtB5_10Serializer32erased_serialize_newtype_variantCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr nofree noundef nonnull readnone captures(none) %6, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10910 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10921), !dbg !10923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10924, !noalias !10921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !dbg !10925
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10926 ; 2 uses
  store i8 12, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !10926, !alias.scope !10921
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10924
  %i.d = load i8, ptr %i.c, align 8, !dbg !10924, !range !459, !noalias !10921, !noundef !349 ; 2 uses
  %i.e = icmp ne i8 %i.d, 8, !dbg !10924
  tail call void @llvm.assume(i1 %i.e), !dbg !10924
  %i.f = icmp eq i8 %i.d, 2, !dbg !10927
  br i1 %i.f, label %bb.g, label %bb.b, !dbg !10927, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !10928, !noalias !10921

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.g, !dbg !10929

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #35
          to label %bb.d unwind label %bb.f, !dbg !10930, !noalias !10921

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !10929, !noalias !10921
  unreachable, !dbg !10929

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10930, !noalias !10921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10931, !noalias !10922
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10931
  store ptr %1, ptr %i.i, align 8, !dbg !10931, !noalias !10922
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10931
  store i64 %2, ptr %i.j, align 16, !dbg !10931, !noalias !10922
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !10931
  store ptr %4, ptr %i.k, align 8, !dbg !10931, !noalias !10922
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !10931
  store i64 %5, ptr %i.l, align 16, !dbg !10931, !noalias !10922
  store i8 11, ptr %i.a, align 16, !dbg !10931, !noalias !10922
  %i.m = call noundef nonnull ptr @_RNvNtNtCskfQLOxWbF12_10prometools5serde3top11unsupported(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %i.a), !dbg !10932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10933, !noalias !10922
  store ptr %i.m, ptr %0, align 8, !dbg !10934
  store i8 10, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !10934
  ret void, !dbg !10935
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer19erased_serialize_i8CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10936 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10944), !dbg !10945
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !10946, !alias.scope !10944 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10946 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10946, !alias.scope !10944 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10946
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !10946, !alias.scope !10944 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !10947, !alias.scope !10944
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !10948
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !10948, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !10949, !noalias !10944

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !10950

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !10951, !noalias !10944

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !10950, !noalias !10944
  unreachable, !dbg !10950

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integeraECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i8 noundef %1), !dbg !10952 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !10953
  %. = select i1 %.not, i64 9, i64 8, !dbg !10954
  store i64 %., ptr %0, align 8, !dbg !10955
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10955
  ret void, !dbg !10956
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer19erased_serialize_u8CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10957 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10965), !dbg !10966
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !10967, !alias.scope !10965 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10967 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10967, !alias.scope !10965 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10967
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !10967, !alias.scope !10965 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !10968, !alias.scope !10965
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !10969
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !10969, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !10970, !noalias !10965

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !10971

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !10972, !noalias !10965

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !10971, !noalias !10965
  unreachable, !dbg !10971

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integerhECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i8 noundef %1), !dbg !10973 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !10974
  %. = select i1 %.not, i64 9, i64 8, !dbg !10975
  store i64 %., ptr %0, align 8, !dbg !10976
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10976
  ret void, !dbg !10977
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_display_errorCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 !dbg !10978 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !10979, !range !646, !noundef !349
  %i.b = icmp eq i64 %i.a, 8, !dbg !10980
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10980, !prof !479

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10981
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.c, 0, !dbg !10982
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @71, 1, !dbg !10982
  ret { ptr, ptr } %i.e, !dbg !10982

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #36, !dbg !10983
  unreachable, !dbg !10983
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_f32CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, float noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10984 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10992), !dbg !10993
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !10994, !alias.scope !10992 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10994 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !10994, !alias.scope !10992 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10994
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !10994, !alias.scope !10992 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !10995, !alias.scope !10992
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !10996
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !10996, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !10997, !noalias !10992

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !10998

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !10999, !noalias !10992

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !10998, !noalias !10992
  unreachable, !dbg !10998

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer18serialize_floatingfECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, float noundef %1), !dbg !11000 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11001
  %. = select i1 %.not, i64 9, i64 8, !dbg !11002
  store i64 %., ptr %0, align 8, !dbg !11003
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11003
  ret void, !dbg !11004
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_f64CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11005 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11013), !dbg !11014
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11015, !alias.scope !11013 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11015 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11015, !alias.scope !11013 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11015
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11015, !alias.scope !11013 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11016, !alias.scope !11013
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11017
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11017, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11018, !noalias !11013

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11019

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11020, !noalias !11013

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11019, !noalias !11013
  unreachable, !dbg !11019

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer18serialize_floatingdECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, double noundef %1), !dbg !11021 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11022
  %. = select i1 %.not, i64 9, i64 8, !dbg !11023
  store i64 %., ptr %0, align 8, !dbg !11024
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11024
  ret void, !dbg !11025
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_i16CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11026 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11034), !dbg !11035
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11036, !alias.scope !11034 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11036 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11036, !alias.scope !11034 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11036
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11036, !alias.scope !11034 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11037, !alias.scope !11034
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11038
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11038, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11039, !noalias !11034

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11040

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11041, !noalias !11034

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11040, !noalias !11034
  unreachable, !dbg !11040

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integersECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i16 noundef %1), !dbg !11042 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11043
  %. = select i1 %.not, i64 9, i64 8, !dbg !11044
  store i64 %., ptr %0, align 8, !dbg !11045
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11045
  ret void, !dbg !11046
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_i32CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11047 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11055), !dbg !11056
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11057, !alias.scope !11055 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11057 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11057, !alias.scope !11055 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11057
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11057, !alias.scope !11055 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11058, !alias.scope !11055
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11059
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11059, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11060, !noalias !11055

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11061

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11062, !noalias !11055

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11061, !noalias !11055
  unreachable, !dbg !11061

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integerlECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i32 noundef %1), !dbg !11063 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11064
  %. = select i1 %.not, i64 9, i64 8, !dbg !11065
  store i64 %., ptr %0, align 8, !dbg !11066
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11066
  ret void, !dbg !11067
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_i64CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11068 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11076), !dbg !11077
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11078, !alias.scope !11076 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11078 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11078, !alias.scope !11076 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11078
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11078, !alias.scope !11076 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11079, !alias.scope !11076
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11080
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11080, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11081, !noalias !11076

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11082

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11083, !noalias !11076

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11082, !noalias !11076
  unreachable, !dbg !11082

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integerxECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i64 noundef %1), !dbg !11084 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11085
  %. = select i1 %.not, i64 9, i64 8, !dbg !11086
  store i64 %., ptr %0, align 8, !dbg !11087
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11087
  ret void, !dbg !11088
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_mapCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11089 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11096), !dbg !11097
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11098, !alias.scope !11096 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11098 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11098, !alias.scope !11096 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11098
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11098, !alias.scope !11096 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11099, !alias.scope !11096
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11100
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11100, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11101, !noalias !11096

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11102

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11103, !noalias !11096

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11102, !noalias !11096
  unreachable, !dbg !11102

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer13serialize_map(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i64 noundef %2, i64 %3), !dbg !11104
  store i64 8, ptr %1, align 8, !dbg !11105
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11106
  ret void, !dbg !11107
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_seqCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11108 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115), !dbg !11116
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11117, !alias.scope !11115 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11117 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11117, !alias.scope !11115 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11117
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11117, !alias.scope !11115 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11118, !alias.scope !11115
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11119
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11119, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11120, !noalias !11115

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11121

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11122, !noalias !11115

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11121, !noalias !11115
  unreachable, !dbg !11121

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer13serialize_seq(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i64 noundef %2, i64 %3), !dbg !11123
  store i64 8, ptr %1, align 8, !dbg !11124
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11125
  ret void, !dbg !11126
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_strCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11127 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11133), !dbg !11134
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11135, !alias.scope !11133 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11135 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11135, !alias.scope !11133 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11135
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11135, !alias.scope !11133 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11136, !alias.scope !11133
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11137
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11137, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11138, !noalias !11133

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11139

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11140, !noalias !11133

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11139, !noalias !11133
  unreachable, !dbg !11139

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer13serialize_str(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11141 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11142
  %. = select i1 %.not, i64 9, i64 8, !dbg !11143
  store i64 %., ptr %0, align 8, !dbg !11144
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11144
  ret void, !dbg !11145
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_u16CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11146 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11154), !dbg !11155
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11156, !alias.scope !11154 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11156 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11156, !alias.scope !11154 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11156
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11156, !alias.scope !11154 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11157, !alias.scope !11154
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11158
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11158, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11159, !noalias !11154

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11160

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11161, !noalias !11154

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11160, !noalias !11154
  unreachable, !dbg !11160

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integertECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i16 noundef %1), !dbg !11162 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11163
  %. = select i1 %.not, i64 9, i64 8, !dbg !11164
  store i64 %., ptr %0, align 8, !dbg !11165
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11165
  ret void, !dbg !11166
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_u32CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11167 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11175), !dbg !11176
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11177, !alias.scope !11175 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11177 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11177, !alias.scope !11175 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11177
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11177, !alias.scope !11175 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11178, !alias.scope !11175
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11179
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11179, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11180, !noalias !11175

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11181

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11182, !noalias !11175

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11181, !noalias !11175
  unreachable, !dbg !11181

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integermECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i32 noundef %1), !dbg !11183 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11184
  %. = select i1 %.not, i64 9, i64 8, !dbg !11185
  store i64 %., ptr %0, align 8, !dbg !11186
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11186
  ret void, !dbg !11187
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer20erased_serialize_u64CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11188 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11196), !dbg !11197
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11198, !alias.scope !11196 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11198 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11198, !alias.scope !11196 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11198
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11198, !alias.scope !11196 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11199, !alias.scope !11196
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11200
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11200, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11201, !noalias !11196

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11202

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11203, !noalias !11196

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11202, !noalias !11196
  unreachable, !dbg !11202

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integeryECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i64 noundef %1), !dbg !11204 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11205
  %. = select i1 %.not, i64 9, i64 8, !dbg !11206
  store i64 %., ptr %0, align 8, !dbg !11207
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11207
  ret void, !dbg !11208
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_boolCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11209 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11215), !dbg !11216
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11217, !alias.scope !11215 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11217 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11217, !alias.scope !11215 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11217
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11217, !alias.scope !11215 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11218, !alias.scope !11215
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11219
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11219, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11220, !noalias !11215

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11221

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11222, !noalias !11215

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11221, !noalias !11215
  unreachable, !dbg !11221

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer14serialize_bool(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i1 noundef zeroext %1), !dbg !11223 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11224
  %. = select i1 %.not, i64 9, i64 8, !dbg !11225
  store i64 %., ptr %0, align 8, !dbg !11226
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11226
  ret void, !dbg !11227
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_charCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11228 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11234), !dbg !11235
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11236, !alias.scope !11234 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11236 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11236, !alias.scope !11234 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11236
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11236, !alias.scope !11234 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11237, !alias.scope !11234
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11238
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11238, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11239, !noalias !11234

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11240

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11241, !noalias !11234

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11240, !noalias !11234
  unreachable, !dbg !11240

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer14serialize_char(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i32 noundef %1), !dbg !11242 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11243
  %. = select i1 %.not, i64 9, i64 8, !dbg !11244
  store i64 %., ptr %0, align 8, !dbg !11245
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11245
  ret void, !dbg !11246
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_i128CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11247 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11255), !dbg !11256
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11257, !alias.scope !11255 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11257 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11257, !alias.scope !11255 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11257
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11257, !alias.scope !11255 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11258, !alias.scope !11255
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11259
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11259, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11260, !noalias !11255

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11261

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11262, !noalias !11255

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11261, !noalias !11255
  unreachable, !dbg !11261

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integernECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i128 noundef %1), !dbg !11263 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11264
  %. = select i1 %.not, i64 9, i64 8, !dbg !11265
  store i64 %., ptr %0, align 8, !dbg !11266
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11266
  ret void, !dbg !11267
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_noneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11268 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11274), !dbg !11275
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11276, !alias.scope !11274 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11276 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11276, !alias.scope !11274 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11277, !alias.scope !11274
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11278
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11278, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11279, !noalias !11274

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11280

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11281, !noalias !11274

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11280, !noalias !11274
  unreachable, !dbg !11280

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  store i64 9, ptr %0, align 8, !dbg !11282
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11282
  ret void, !dbg !11283
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_someCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11284 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11290), !dbg !11291
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11292, !alias.scope !11290 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11292 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11292, !alias.scope !11290 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11292
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11292, !alias.scope !11290 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11293, !alias.scope !11290
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11294
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11294, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11295, !noalias !11290

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11296

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11297, !noalias !11290

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11296, !noalias !11290
  unreachable, !dbg !11296

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB3_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer14serialize_someDNtNtCs5brsvYHD4Ou_12erased_serde3ser9SerializeEL_ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2), !dbg !11298 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11299
  %. = select i1 %.not, i64 9, i64 8, !dbg !11300
  store i64 %., ptr %0, align 8, !dbg !11301
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11301
  ret void, !dbg !11302
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_u128CsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i128 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11303 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11311), !dbg !11312
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11313, !alias.scope !11311 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11313 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11313, !alias.scope !11311 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11313
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11313, !alias.scope !11311 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11314, !alias.scope !11311
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11315
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11315, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11316, !noalias !11311

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11317

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11318, !noalias !11311

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11317, !noalias !11311
  unreachable, !dbg !11317

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvMs_NtNtCskfQLOxWbF12_10prometools5serde5valueNtB5_15ValueSerializer17serialize_integeroECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i128 noundef %1), !dbg !11319 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11320
  %. = select i1 %.not, i64 9, i64 8, !dbg !11321
  store i64 %., ptr %0, align 8, !dbg !11322
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11322
  ret void, !dbg !11323
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer21erased_serialize_unitCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11324 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11330), !dbg !11331
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11332, !alias.scope !11330 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11332 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11332, !alias.scope !11330 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11333, !alias.scope !11330
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11334
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11334, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11335, !noalias !11330

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11336

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11337, !noalias !11330

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11336, !noalias !11330
  unreachable, !dbg !11336

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  store i64 9, ptr %0, align 8, !dbg !11338
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11338
  ret void, !dbg !11339
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer22erased_serialize_bytesCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11340 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11346), !dbg !11347
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11348, !alias.scope !11346 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11348 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11348, !alias.scope !11346 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11348
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11348, !alias.scope !11346 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11349, !alias.scope !11346
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11350
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11350, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11351, !noalias !11346

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11352

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11353, !noalias !11346

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11352, !noalias !11346
  unreachable, !dbg !11352

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer15serialize_bytes(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11354 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11355
  %. = select i1 %.not, i64 9, i64 8, !dbg !11356
  store i64 %., ptr %0, align 8, !dbg !11357
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11357
  ret void, !dbg !11358
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer22erased_serialize_tupleCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11359 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11366), !dbg !11367
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11368, !alias.scope !11366 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11368 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11368, !alias.scope !11366 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11368
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11368, !alias.scope !11366 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11369, !alias.scope !11366
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11370
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11370, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11371, !noalias !11366

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11372

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11373, !noalias !11366

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11372, !noalias !11366
  unreachable, !dbg !11372

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer15serialize_tuple(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, i64 noundef %2), !dbg !11374
  store i64 8, ptr %1, align 8, !dbg !11375
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11375
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11376
  ret void, !dbg !11377
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer23erased_serialize_structCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11378 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11385), !dbg !11386
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11387, !alias.scope !11385 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11387 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11387, !alias.scope !11385 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11387
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11387, !alias.scope !11385 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11388, !alias.scope !11385
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11389
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11389, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11390, !noalias !11385

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11391

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11392, !noalias !11385

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11391, !noalias !11385
  unreachable, !dbg !11391

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer16serialize_struct(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4), !dbg !11393
  store i64 8, ptr %1, align 8, !dbg !11394
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11394
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11395
  ret void, !dbg !11396
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer24erased_is_human_readableCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !11397 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !11398, !range !646, !noundef !349
  %i.b = icmp eq i64 %i.a, 0, !dbg !11399
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !11399, !prof !479

bb.b:                                             ; preds = %bb.a
  ret i1 true, !dbg !11400

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #36, !dbg !11401
  unreachable, !dbg !11401
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer28erased_serialize_unit_structCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11402 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11410), !dbg !11411
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11412, !alias.scope !11410 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11412 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11412, !alias.scope !11410 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11412
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11412, !alias.scope !11410 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11413, !alias.scope !11410
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11414
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11414, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11415, !noalias !11410

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11416

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11417, !noalias !11410

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11416, !noalias !11410
  unreachable, !dbg !11416

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer13serialize_str(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11418 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11419
  %. = select i1 %.not, i64 9, i64 8, !dbg !11420
  store i64 %., ptr %0, align 8, !dbg !11421
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11421
  ret void, !dbg !11422
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer29erased_serialize_tuple_structCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11423 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11430), !dbg !11431
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11432, !alias.scope !11430 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11432 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11432, !alias.scope !11430 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11432
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11432, !alias.scope !11430 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11433, !alias.scope !11430
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11434
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11434, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11435, !noalias !11430

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11436

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11437, !noalias !11430

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11436, !noalias !11430
  unreachable, !dbg !11436

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer22serialize_tuple_struct(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %4), !dbg !11438
  store i64 8, ptr %1, align 8, !dbg !11439
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11439
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11440
  ret void, !dbg !11441
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer29erased_serialize_unit_variantCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11442 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11448), !dbg !11449
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11450, !alias.scope !11448 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11450 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11450, !alias.scope !11448 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11450
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11450, !alias.scope !11448 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11451, !alias.scope !11448
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11452
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11452, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11453, !noalias !11448

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11454

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11455, !noalias !11448

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11454, !noalias !11448
  unreachable, !dbg !11454

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer22serialize_unit_variant(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5), !dbg !11456 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11457
  %. = select i1 %.not, i64 9, i64 8, !dbg !11458
  store i64 %., ptr %0, align 8, !dbg !11459
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11459
  ret void, !dbg !11460
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer30erased_serialize_tuple_variantCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11461 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11468), !dbg !11469
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11470, !alias.scope !11468 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11470 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11470, !alias.scope !11468 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11470
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11470, !alias.scope !11468 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11471, !alias.scope !11468
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11472
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11472, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11473, !noalias !11468

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11474

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11475, !noalias !11468

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11474, !noalias !11468
  unreachable, !dbg !11474

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer23serialize_tuple_variant(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7), !dbg !11476
  store i64 8, ptr %1, align 8, !dbg !11477
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11477
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11478
  ret void, !dbg !11479
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer31erased_serialize_newtype_structCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11480 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11486), !dbg !11487
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11488, !alias.scope !11486 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11488 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11488, !alias.scope !11486 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11488
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11488, !alias.scope !11486 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11489, !alias.scope !11486
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11490
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11490, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11491, !noalias !11486

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11492

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11493, !noalias !11486

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11492, !noalias !11486
  unreachable, !dbg !11492

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB3_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer24serialize_newtype_structDNtNtCs5brsvYHD4Ou_12erased_serde3ser9SerializeEL_ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4), !dbg !11494 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11495
  %. = select i1 %.not, i64 9, i64 8, !dbg !11496
  store i64 %., ptr %0, align 8, !dbg !11497
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11497
  ret void, !dbg !11498
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer31erased_serialize_struct_variantCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11499 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11506), !dbg !11507
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !dbg !11508, !alias.scope !11506 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11508 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11508, !alias.scope !11506 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11508
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11508, !alias.scope !11506 ; 2 uses
  store i64 10, ptr %1, align 8, !dbg !11509, !alias.scope !11506
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11510
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11510, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11511, !noalias !11506

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11512

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11513, !noalias !11506

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11512, !noalias !11506
  unreachable, !dbg !11512

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef nonnull ptr @_RNvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB2_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer24serialize_struct_variant(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7), !dbg !11514
  store i64 8, ptr %1, align 8, !dbg !11515
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11515
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !dbg !11516
  ret void, !dbg !11517
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCs5brsvYHD4Ou_12erased_serde3serINtNtB5_5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerENtB5_10Serializer32erased_serialize_newtype_variantCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11518 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11524), !dbg !11525
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !dbg !11526, !alias.scope !11524 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11526 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11526, !alias.scope !11524 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11526
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !11526, !alias.scope !11524 ; 2 uses
  store i64 10, ptr %0, align 8, !dbg !11527, !alias.scope !11524
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i, 0, !dbg !11528
  br i1 %i.a, label %bb.g, label %bb.b, !dbg !11528, !prof !479

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
          to label %bb.c unwind label %bb.e, !dbg !11529, !noalias !11524

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.b, !dbg !11530

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde5value15ValueSerializerEECsbaWXNhtWAp9_11foundations(i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0.copyload.i) #35
          to label %bb.d unwind label %bb.f, !dbg !11531, !noalias !11524

bb.f:                                             ; preds = %bb.e
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !dbg !11530, !noalias !11524
  unreachable, !dbg !11530

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i), "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  %i.d = tail call noundef ptr @_RINvXNtNtCskfQLOxWbF12_10prometools5serde5valueNtB3_15ValueSerializerNtNtCs5FjQZcNRzHx_10serde_core3ser10Serializer25serialize_newtype_variantDNtNtCs5brsvYHD4Ou_12erased_serde3ser9SerializeEL_ECsbaWXNhtWAp9_11foundations(ptr noundef nonnull %.sroa.6.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.8.0.copyload.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, ptr noundef nonnull %6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7), !dbg !11532 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !11533
  %. = select i1 %.not, i64 9, i64 8, !dbg !11534
  store i64 %., ptr %0, align 8, !dbg !11535
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !11535
  ret void, !dbg !11536
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer10emit_isizeBb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !11537 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11541
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11542
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11541

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11543, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11543
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11543, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !11543
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11543, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) #37, !dbg !11544 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11544
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11544
  br label %bb.c, !dbg !11544

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11545
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11545
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11546
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11546
  ret { i64, ptr } %i.l, !dbg !11546
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer10emit_usizeBb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !11547 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11551
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11552
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11551

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11553, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11553
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11553, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !11553
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11553, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3) #37, !dbg !11554 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11554
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11554
  br label %bb.c, !dbg !11554

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11555
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11555
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11556
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11556
  ret { i64, ptr } %i.l, !dbg !11556
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer14emit_argumentsBb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 !dbg !268 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11560
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11561
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11560

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11562, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11562
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11562, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184, !dbg !11562
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11562, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) #37, !dbg !11563 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11563
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11563
  br label %bb.c, !dbg !11563

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11564
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11564
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11565
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11565
  ret { i64, ptr } %i.l, !dbg !11565
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer7emit_i8Bb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 !dbg !11566 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11570
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11571
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11570

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11572, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11572
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11572, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64, !dbg !11572
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11572, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) #37, !dbg !11573 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11573
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11573
  br label %bb.c, !dbg !11573

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11574
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11574
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11575
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11575
  ret { i64, ptr } %i.l, !dbg !11575
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer7emit_u8Bb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) unnamed_addr #0 !dbg !11576 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11580
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11581
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11580

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11582, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11582
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11582, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !11582
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11582, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef %3) #37, !dbg !11583 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11583
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11583
  br label %bb.c, !dbg !11583

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11584
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11584
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11585
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11585
  ret { i64, ptr } %i.l, !dbg !11585
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer8emit_f32Bb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, float noundef %3) unnamed_addr #0 !dbg !11586 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11590
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11591
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11590

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11592, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11592
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11592, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104, !dbg !11592
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11592, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, float noundef %3) #37, !dbg !11593 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11593
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11593
  br label %bb.c, !dbg !11593

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11594
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11594
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11595
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11595
  ret { i64, ptr } %i.l, !dbg !11595
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer8emit_f64Bb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, double noundef %3) unnamed_addr #0 !dbg !11596 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11600
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11601
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11600

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11602, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11602
  %i.e = load ptr, ptr %i.d, align 8, !dbg !11602, !nonnull !349, !align !421, !noundef !349
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128, !dbg !11602
  %i.g = load ptr, ptr %i.f, align 8, !dbg !11602, !invariant.load !349, !nonnull !349
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, double noundef %3) #37, !dbg !11603 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0, !dbg !11603
  %i.j = extractvalue { i64, ptr } %i.h, 1, !dbg !11603
  br label %bb.c, !dbg !11603

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.b ], [ undef, %bb.a ], !dbg !11604
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ], !dbg !11604
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !11605
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1, !dbg !11605
  ret { i64, ptr } %i.l, !dbg !11605
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs1_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log15field_filteringINtB5_24FieldFilteringSerializerNtNtB7_11field_dedup16FieldDedupFilterENtCscuJkFUZt1a2_4slog10Serializer8emit_i16Bb_(ptr noalias nofree noundef align 8 dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i16 noundef %3) unnamed_addr #0 !dbg !11606 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11610
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapReuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !11611
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !11610

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !11612, !nonnull !349, !noundef !349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11612
end_hunk_0
