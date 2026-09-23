Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN17meilisearch_types20dynamic_search_rules31parse_optional_rfc3339_datetime17hc36a3323e2797eccE:bb.a
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !25, !noundef !21 ; 6 uses
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5915
  invoke void @"_ZN4time7parsing8parsable124_$LT$impl$u20$time..parsing..parsable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$22parse_offset_date_time17hfdbb88674528a481E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.5.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.c unwind label %bb.g, !noalias !5915

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %i.a, align 8, !range !36, !noalias !5915, !noundef !21
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.57.8.copyload8 = load ptr, ptr %i.d, align 8, !noalias !5916
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.8.copyload9 = load i64, ptr %.sroa.8.8..sroa_idx, align 8, !noalias !5916
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5917
  br label %bb.l

bb.f:                                             ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.f

bb.g:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5918
  br label %bb.f

bb.i:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 1
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5915
  store i64 %i.b, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5915
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.57.8.copyload8, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.8.copyload9, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types4keys12CreateApiKey6to_key17hc7f84fd0e4827522E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.012.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %i.d = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.514.0.copyload = load ptr, ptr %.sroa.514.0..sroa_idx, align 8 ; 3 uses
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.617.0.copyload = load i64, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.020.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.522.0.copyload = load ptr, ptr %.sroa.522.0..sroa_idx, align 8 ; 3 uses
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.625.0.copyload = load i64, ptr %.sroa.625.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  invoke fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr97drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..index_uid_pattern..IndexUidPattern$GT$$GT$17hed88ed7f5b949db6E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #55
  %i.g = icmp eq i64 %.sroa.020.0.copyload, 0
  br i1 %i.g, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit", label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.copyload, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.d, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.514.0.copyload, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.617.0.copyload, ptr %.sroa.532.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  store i64 %.sroa.020.0.copyload, ptr %0, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.522.0.copyload, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.625.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.522.0.copyload, i64 noundef %.sroa.020.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit": ; preds = %bb.d, %bb.b
  switch i64 %.sroa.012.0.copyload, label %bb.e [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit"
  ]

bb.e:                                             ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.514.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.514.0.copyload, i64 noundef %.sroa.012.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5923
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit": ; preds = %bb.e, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit", %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit"
  switch i64 %.sroa.0.0.copyload, label %bb.f [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit6"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit6"
  ]

bb.f:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5924
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit6"

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit6": ; preds = %bb.f, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit", %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit"
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 58) i8 @"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$4last17h8d33dd9b302c8b67E"() unnamed_addr #2 {
_ZN17meilisearch_types4keys1_16previous_variant17hdd2f44eb9899ab62E.exit:
  ret i8 57
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 1, 59) i8 @"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$4next17hba0aef0e7878db4cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #12 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !71, !noundef !21
  %switch.offset = add nuw nsw i8 %i.a, 1
  ret i8 %switch.offset
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 59) i8 @"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$5first17h003cf9c898f7faecE"() unnamed_addr #2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 0, 59) i8 @"_ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$8previous17he7ac5f5ad8e9fb1aE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #12 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !71, !noundef !21
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN17meilisearch_types4keys1_85_$LT$impl$u20$enum_iterator..Sequence$u20$for$u20$meilisearch_types..keys..Action$GT$8previous17he7ac5f5ad8e9fb1aE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types4keys21parse_expiration_date17h6fdc6edb1b5b73c0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 23 uses
  %i.c = alloca [64 x i8], align 16               ; 23 uses
  %.sroa.33.i.i = alloca [10 x i8], align 2       ; 5 uses
  %i.d = alloca [64 x i8], align 16               ; 12 uses
  %.sroa.41.i = alloca [10 x i8], align 2         ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = load i64, ptr %1, align 8, !range !25, !noundef !21 ; 7 uses
  %.not = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 8 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN4time7parsing8parsable124_$LT$impl$u20$time..parsing..parsable..sealed..Sealed$u20$for$u20$time..format_description..well_known..rfc3339..Rfc3339$GT$22parse_offset_date_time17hfdbb88674528a481E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 1
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit17"

bb.d:                                             ; preds = %bb.g, %bb.k, %bb.v, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5949
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit"

bb.f:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.i, align 8, !range !36, !noundef !21
  %.not6 = icmp eq i64 %i.m, 2
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_ZN4time7parsing8parsable6sealed6Sealed25parse_primitive_date_time17hdee4503abdf92dc2E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @139, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %bb.j unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.050.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.sroa.5.0.copyload = load i24, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 23
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %bb.h
  %.sroa.16.0 = phi i8 [ %.sroa.6.0.copyload, %bb.h ], [ undef, %bb.m ]
  %.sroa.12.0 = phi i24 [ %.sroa.5.0.copyload, %bb.h ], [ 0, %bb.m ] ; 2 uses
  %.sroa.10.0 = phi i32 [ %.sroa.4.0.copyload, %bb.h ], [ %.sroa.10.1, %bb.m ] ; 3 uses
  %.sroa.034.0 = phi i64 [ %.sroa.050.0.copyload, %bb.h ], [ %.sroa.034.1, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.f)
          to label %bb.aa unwind label %bb.d

bb.j:                                             ; preds = %bb.g
  %i.o = load i64, ptr %i.h, align 8, !range !36, !noundef !21
  %.not7 = icmp eq i64 %i.o, 2
  br i1 %.not7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke fastcc void @_ZN4time7parsing8parsable6sealed6Sealed25parse_primitive_date_time17hdee4503abdf92dc2E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @141, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %bb.n unwind label %bb.d

bb.l:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.051.0.copyload = load i64, ptr %i.p, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %bb.l
  %.sroa.10.1 = phi i32 [ %.sroa.2.0.copyload, %bb.l ], [ %.sroa.10.2, %bb.x ]
  %.sroa.034.1 = phi i64 [ %.sroa.051.0.copyload, %bb.l ], [ %.sroa.034.2, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.n:                                             ; preds = %bb.k
  %i.q = load i64, ptr %i.g, align 8, !range !36, !noundef !21
  %.not8 = icmp eq i64 %i.q, 2
  br i1 %.not8, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5950
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.41.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5951
  store i128 -170141183460469231731687303715884105728, ptr %i.c, align 16, !noalias !5952
  %.sroa.7.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx25.i.i, align 16, !noalias !5952
  %.sroa.8.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx29.i.i, align 4, !noalias !5952
  %.sroa.9.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx33.i.i, align 8, !noalias !5952
  %.sroa.10.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i16 -32768, ptr %.sroa.10.0..sroa_idx37.i.i, align 4, !noalias !5952
  %.sroa.11.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 30
  store i16 -32768, ptr %.sroa.11.0..sroa_idx41.i.i, align 2, !noalias !5952
  %.sroa.12.0..sroa_idx45.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx45.i.i, align 16, !noalias !5952
  %.sroa.13.0..sroa_idx49.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 34 ; 2 uses
  %.sroa.17.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  store i32 -1, ptr %.sroa.13.0..sroa_idx49.i.i, align 2, !noalias !5953
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx65.i.i, align 2, !noalias !5952
  %.sroa.25.0..sroa_idx97.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 46
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx97.i.i, align 2, !noalias !5952
  %.sroa.29.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 50 ; 2 uses
  %.sroa.32.0..sroa_idx125.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 53
  %.sroa.33.0..sroa_idx129.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  store i32 0, ptr %.sroa.29.0..sroa_idx113.i.i, align 2, !noalias !5953
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5951
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @142, ptr noalias noundef align 16 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.o
  %i.t = load i64, ptr %i.b, align 8, !range !41, !noalias !5951, !noundef !21
  %.not.i.i.i.i = icmp eq i64 %i.t, 3
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.r, align 8, !noalias !5951, !nonnull !21, !align !37, !noundef !21
  %i.v = load i64, ptr %i.s, align 8, !noalias !5951, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5951
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @142, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.u, i64 noundef %i.v)
          to label %.noexc10 unwind label %bb.d

.noexc10:                                         ; preds = %bb.p
  %i.w = load i64, ptr %i.b, align 8, !range !41, !noalias !5951, !noundef !21
  %.not.i.i.i.1.i = icmp eq i64 %i.w, 3
  br i1 %.not.i.i.i.1.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.noexc10
  %i.x = load ptr, ptr %i.r, align 8, !noalias !5951, !nonnull !21, !align !37, !noundef !21
  %i.y = load i64, ptr %i.s, align 8, !noalias !5951, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5951
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @142, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %.noexc11 unwind label %bb.d

.noexc11:                                         ; preds = %bb.q
  %i.z = load i64, ptr %i.b, align 8, !range !41, !noalias !5951, !noundef !21
  %.not.i.i.i.2.i = icmp eq i64 %i.z, 3
  br i1 %.not.i.i.i.2.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.noexc11
  %i.aa = load ptr, ptr %i.r, align 8, !noalias !5951, !nonnull !21, !align !37, !noundef !21
  %i.ab = load i64, ptr %i.s, align 8, !noalias !5951, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5951
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @142, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %.noexc12 unwind label %bb.d

.noexc12:                                         ; preds = %bb.r
  %i.ac = load i64, ptr %i.b, align 8, !range !41, !noalias !5951, !noundef !21
  %.not.i.i.i.3.i = icmp eq i64 %i.ac, 3
  br i1 %.not.i.i.i.3.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.noexc12
  %i.ad = load ptr, ptr %i.r, align 8, !noalias !5951, !nonnull !21, !align !37, !noundef !21
  %i.ae = load i64, ptr %i.s, align 8, !noalias !5951, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5951
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @142, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ad, i64 noundef %i.ae)
          to label %.noexc13 unwind label %bb.d

.noexc13:                                         ; preds = %bb.s
  %i.af = load i64, ptr %i.b, align 8, !range !41, !noalias !5951, !noundef !21
  %.not.i.i.i.4.i = icmp eq i64 %i.af, 3
  br i1 %.not.i.i.i.4.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc13
  %i.ag = load i64, ptr %i.s, align 8, !noalias !5951, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5951
  %.sroa.0.0.copyload24.i1.i = load i64, ptr %i.c, align 16, !noalias !5950 ; 2 uses
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %2 = load <2 x i64>, ptr %.sroa_idx.i, align 8, !noalias !5950
  %.sroa.0.0.copyload24.i2.i = load i64, ptr %.sroa_idx.i, align 8, !noalias !5950
  %.sroa.9.0.copyload36.i.i = load i64, ptr %.sroa.9.0..sroa_idx33.i.i, align 8, !noalias !5952
  %.sroa.12.0.copyload48.i.i = load i16, ptr %.sroa.12.0..sroa_idx45.i.i, align 16, !noalias !5952
  %i.ah = load <16 x i8>, ptr %.sroa.13.0..sroa_idx49.i.i, align 2, !noalias !5952
  %.sroa.32.0.copyload128.i.i = load i8, ptr %.sroa.32.0..sroa_idx125.i.i, align 1, !noalias !5952
  %i.ai = load <4 x i8>, ptr %.sroa.29.0..sroa_idx113.i.i, align 2, !noalias !5952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.0..sroa_idx129.i.i, i64 10, i1 false), !noalias !5952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5951
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17hbc0d3cff80b2cc77E.exit.i, label %.thread84

bb.u:                                             ; preds = %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5951
  br label %.thread84

.thread84:                                        ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i)
  br label %.sink.split

_ZN4time7parsing8parsable6sealed6Sealed5parse17hbc0d3cff80b2cc77E.exit.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.41.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.33.i.i, i64 10, i1 false), !noalias !5954
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.i.i)
  %i.ak = icmp eq i8 %.sroa.32.0.copyload128.i.i, 2
  br i1 %i.ak, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hbc0d3cff80b2cc77E.exit.i
  %.sroa.811.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.d, i64 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.811.0..sroa_idx12.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.41.i, i64 10, i1 false), !noalias !5950
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i)
  store i64 %.sroa.0.0.copyload24.i1.i, ptr %i.d, align 16, !noalias !5950
  %.sroa.07.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x i64> %2, ptr %.sroa.07.sroa.7.0..sroa_idx.i, align 8, !noalias !5950
  %.sroa.07.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.9.0.copyload36.i.i, ptr %.sroa.07.sroa.9.0..sroa_idx.i, align 8, !noalias !5950
  %.sroa.07.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i16 %.sroa.12.0.copyload48.i.i, ptr %.sroa.07.sroa.10.0..sroa_idx.i, align 16, !noalias !5950
  %.sroa.07.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 34
  store <16 x i8> %i.ah, ptr %.sroa.07.sroa.11.0..sroa_idx.i, align 2, !noalias !5950
  %.sroa.07.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 50
  store <4 x i8> %i.ai, ptr %.sroa.07.sroa.27.0..sroa_idx.i, align 2, !noalias !5950
  invoke fastcc void @"_ZN4time7parsing6parsed106_$LT$impl$u20$core..convert..TryFrom$LT$time..parsing..parsed..Parsed$GT$$u20$for$u20$time..date..Date$GT$8try_from17h4f9089a24f77f352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.d)
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !38, !noalias !5950, !noundef !21
  %.not.i = icmp eq i8 %i.am, 3
  br i1 %.not.i, label %.thread, label %.sink.split

.thread:                                          ; preds = %.noexc14
  %i.an = load i32, ptr %i.e, align 8, !noalias !5950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.x

bb.w:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.052.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.253.0.copyload = load i32, ptr %.sroa.253.0..sroa_idx, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.thread, %bb.w
  %.sroa.10.2 = phi i32 [ %.sroa.253.0.copyload, %bb.w ], [ %i.an, %.thread ], [ %.sroa.7.sroa.0.0.extract.trunc, %bb.y ]
  %.sroa.034.2 = phi i64 [ %.sroa.052.0.copyload, %bb.w ], [ 0, %.thread ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.y:                                             ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hbc0d3cff80b2cc77E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.41.i)
  %.sroa.7.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload24.i2.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not9 = icmp eq i64 %.sroa.0.0.copyload24.i1.i, 2
  br i1 %.not9, label %bb.x, label %bb.z

.sink.split:                                      ; preds = %.noexc14, %.thread84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.y
  store i64 %i.j, ptr %0, align 8
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.460.0..sroa_idx, align 8
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.copyload, ptr %.sroa.561.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit17"

bb.aa:                                            ; preds = %bb.i
  %i.ap = ashr i32 %.sroa.10.0, 10
  %i.aq = trunc i32 %.sroa.10.0 to i16
  %i.ar = and i16 %i.aq, 511
  %i.as = sext i32 %i.ap to i128
  %i.at = shl nsw i128 %i.as, 74
  %i.au = zext nneg i16 %i.ar to i128
  %i.av = shl nuw nsw i128 %i.au, 64
  %i.aw = or disjoint i128 %i.av, %i.at
  %i.ax = zext i64 %.sroa.034.0 to i128
  %i.ay = or disjoint i128 %i.aw, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5955
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.f, i24 %.sroa.12.0), !noalias !5956
  %i.az = load i32, ptr %i.a, align 4, !noalias !5955, !noundef !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bb = load i16, ptr %i.ba, align 4, !noalias !5955, !noundef !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bc, align 4, !noalias !5955
  %i.bd = sext i32 %i.az to i128
  %i.be = shl nsw i128 %i.bd, 74
  %i.bf = zext i16 %i.bb to i128
  %i.bg = shl nuw nsw i128 %i.bf, 64
  %i.bh = or i128 %i.bg, %i.be
  %i.bi = zext i64 %.sroa.0.0.copyload.i to i128
  %i.bj = or disjoint i128 %i.bh, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5955
  %i.bk = icmp sgt i128 %i.ay, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.bk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.j, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14.0.copyload, ptr %.sroa.575.0..sroa_idx, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit17"

bb.ac:                                            ; preds = %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.034.0, ptr %i.bl, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.10.0, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i24 %.sroa.12.0, ptr %.sroa.568.0..sroa_idx, align 4
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %.sroa.16.0, ptr %.sroa.669.0..sroa_idx, align 1
  store i64 -9223372036854775808, ptr %0, align 8
  %i.bm = icmp eq i64 %i.j, 0
  br i1 %i.bm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit17", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !5957
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit17"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit17": ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.z, %bb.c
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types4keys29deny_immutable_fields_api_key17hdd15127d1ee79082E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  switch i64 %2, label %bb.n [
    i64 3, label %bb.b
    i64 7, label %bb.e
    i64 9, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %1, align 1
  %i.h = xor i16 %i.g, 26997
  %i.i = getelementptr i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i16
  %i.l = xor i16 %i.k, 100
  %i.m = or i16 %i.h, %i.l
  %i.n = icmp ne i16 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN17meilisearch_types6deserr21immutable_field_error17ha9d2688c2120c489E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, i16 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.w, %bb.v, %bb.l, %bb.j, %bb.h, %bb.f, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = load i32, ptr %1, align 1
  %i.r = xor i32 %i.q, 1769235297
  %i.s = getelementptr i8, ptr %1, i64 3
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1936617321
  %i.v = or i32 %i.r, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN17meilisearch_types6deserr21immutable_field_error17ha9d2688c2120c489E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, i16 noundef 11)
  br label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.z = load i32, ptr %1, align 1
  %i.aa = xor i32 %i.z, 1701080681
  %i.ab = getelementptr i8, ptr %1, i64 3
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = xor i32 %i.ac, 1936029797
  %i.ae = or i32 %i.aa, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN17meilisearch_types6deserr21immutable_field_error17ha9d2688c2120c489E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, i16 noundef 14)
  br label %bb.d

bb.i:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %1, align 1
  %i.aj = xor i64 %i.ai, 4716224776856696933
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = xor i64 %i.am, 116
  %i.ao = or i64 %i.aj, %i.an
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN17meilisearch_types6deserr21immutable_field_error17ha9d2688c2120c489E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, i16 noundef 13)
  br label %bb.d

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %1, align 1
  %i.at = xor i64 %i.as, 4712002660661031523
  %i.au = getelementptr i8, ptr %1, i64 8
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = xor i64 %i.aw, 116
  %i.ay = or i64 %i.at, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN17meilisearch_types6deserr21immutable_field_error17ha9d2688c2120c489E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, i16 noundef 12)
  br label %bb.d

bb.m:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %1, align 1
  %i.bd = xor i64 %i.bc, 4712002660660965493
  %i.be = getelementptr i8, ptr %1, i64 8
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = xor i64 %i.bg, 116
  %i.bi = or i64 %i.bd, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %2, ptr %i.bn, align 8
end_hunk_0
