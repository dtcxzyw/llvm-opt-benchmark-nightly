Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.09?download=true
inline.NumInlined: 8525
inline.NumDeleted: 3292
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type26invoke_descriptor_protocol:bb.a
  %.sroa.10292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 30
  store i8 %.sroa.9.0392, ptr %.sroa.10292.0..sroa_idx, align 2, !noalias !11921
  %.sroa.11295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 31
  store i8 %.sroa.10177.0390, ptr %.sroa.11295.0..sroa_idx, align 1, !noalias !11921
  %.sroa.12298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %.sroa.11180.0387, ptr %.sroa.12298.0..sroa_idx, align 4, !noalias !11921
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %.sroa.0102.0404, ptr %i.jk, align 4, !noalias !11922
  %.sroa.12110.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %.sroa.12110.0402, ptr %.sroa.12110.0..sroa_idx115, align 4, !noalias !11922
  %.sroa.14119.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %.sroa.14119.0400, ptr %.sroa.14119.0..sroa_idx124, align 4, !noalias !11922
  %.sroa.16.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16.0..sroa_idx130, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16, i64 20, i1 false), !noalias !11922
  %i.jl = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtCsoTR8nlGN3X_18ty_python_semantic5types17MemberLookupErrorE9intern_idINtNvBZ_s3_1__9StructKeyNtNtB11_5place18PlaceAndQualifiersNtBZ_21MemberLookupErrorKindENCINvMs9_B2b_BX_3newDNtNtB11_2db2DbEL_B2w_B34_E0EB11_(ptr noundef nonnull align 8 %i.ji, ptr noundef nonnull align 8 %i.ix, ptr noundef nonnull align 8 %i.jj, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(68) %i.d), !noalias !11920 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11920
  %i.jm = extractvalue { i32, i32 } %i.jl, 0
  %i.jn = extractvalue { i32, i32 } %i.jl, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.jm, ptr %i.jo, align 4, !alias.scope !11917
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.jn, ptr %i.jp, align 4, !alias.scope !11917
  store i32 -2, ptr %0, align 4, !alias.scope !11917
  br label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types20member_lookup_result.exit29

bb.aq:                                            ; preds = %bb.an
  store i32 %.sroa.0165.0398, ptr %0, align 4, !alias.scope !11923
  %.sroa.5278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.sroa.0.0386, ptr %.sroa.5278.0..sroa_idx279, align 4, !alias.scope !11923
  %.sroa.6281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.sroa.6.0384, ptr %.sroa.6281.0..sroa_idx282, align 4, !alias.scope !11923
  %.sroa.7284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7284.0..sroa_idx285, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8137.sroa.8, i64 16, i1 false)
  %.sroa.8.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.7.0396, ptr %.sroa.8.0..sroa_idx287, align 4, !alias.scope !11923
  %.sroa.9289.0..sroa_idx290 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %.sroa.9289.0..sroa_idx290, align 1, !alias.scope !11923
  %.sroa.10292.0..sroa_idx293 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %.sroa.9.0392, ptr %.sroa.10292.0..sroa_idx293, align 2, !alias.scope !11923
  %.sroa.11295.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.10177.0390, ptr %.sroa.11295.0..sroa_idx296, align 1, !alias.scope !11923
  %.sroa.12298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.11180.0387, ptr %.sroa.12298.0..sroa_idx299, align 4, !alias.scope !11923
  br label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types20member_lookup_result.exit29

bb.ar:                                            ; preds = %_RNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_10Provenance2or.exit43
  call void @llvm.experimental.noalias.scope.decl(metadata !11924)
  call void @llvm.experimental.noalias.scope.decl(metadata !11925)
  call void @llvm.experimental.noalias.scope.decl(metadata !11926)
  %.not.i49 = icmp eq i32 %.sroa.0102.0404, -2
  br i1 %.not.i49, label %bb.at, label %.thread434

.thread434:                                       ; preds = %_RNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_10Provenance2or.exit43, %bb.ar
  %.sroa.0102.2441 = phi i32 [ %.sroa.0102.0404, %bb.ar ], [ -1, %_RNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_10Provenance2or.exit43 ]
  %.sroa.12110.2440 = phi i32 [ %.sroa.12110.0402, %bb.ar ], [ %i.dg, %_RNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_10Provenance2or.exit43 ]
  %.sroa.14119.2439 = phi i32 [ %.sroa.14119.0400, %bb.ar ], [ %i.di, %_RNvMs1_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_10Provenance2or.exit43 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val.i50 = load ptr, ptr %i.jq, align 8, !alias.scope !11925
  %i.jr = call { ptr, ptr } %.val.i50(ptr noundef nonnull %1), !noalias !11927, !inline_history !4 ; 2 uses
  %i.js = extractvalue { ptr, ptr } %i.jr, 0      ; 4 uses
  %i.jt = load atomic i32, ptr @_RNvNvMs2_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess3_1__NtB9_17MemberLookupError10ingredient5CACHE acquire, align 4, !noalias !11927 ; 2 uses
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %bb.as, label %_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess3_1__NtB8_17MemberLookupError3newDNtNtBa_2db2DbEL_NtNtBa_5place18PlaceAndQualifiersNtB8_21MemberLookupErrorKindEBa_.exit.i51, !prof !39

bb.as:                                            ; preds = %.thread434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @13, i64 16, i1 false), !noalias !11927
  %i.jv = call noundef i32 @_RNvNtNtCs45bxiIjzMqg_5salsa16ingredient_cache3imp24get_or_create_index_slow(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess3_1__NtB9_17MemberLookupError10ingredient5CACHE, ptr noundef nonnull align 8 %i.js, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 74, i64 noundef 0), !noalias !11927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11927
  br label %_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess3_1__NtB8_17MemberLookupError3newDNtNtBa_2db2DbEL_NtNtBa_5place18PlaceAndQualifiersNtB8_21MemberLookupErrorKindEBa_.exit.i51

_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess3_1__NtB8_17MemberLookupError3newDNtNtBa_2db2DbEL_NtNtBa_5place18PlaceAndQualifiersNtB8_21MemberLookupErrorKindEBa_.exit.i51: ; preds = %bb.as, %.thread434
  %.sroa.0.0.i.i.i.i52 = phi i32 [ %i.jv, %bb.as ], [ %i.jt, %.thread434 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !11927, !nonnull !30, !noundef !30
  %i.jy = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !11927, !noundef !30
  %i.ka = zext i32 %.sroa.0.0.i.i.i.i52 to i64    ; 2 uses
  %i.kb = icmp ugt i64 %i.jz, %i.ka
  call void @llvm.assume(i1 %i.kb)
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jx, i64 %i.ka
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !11927, !nonnull !30, !noundef !30
  %i.ke = extractvalue { ptr, ptr } %i.jr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11927
  store i32 %.sroa.0332.0, ptr %i.b, align 4, !noalias !11928
  %.sroa.0313.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.7333.0, ptr %.sroa.0313.sroa.0.sroa.5.0..sroa_idx, align 4, !noalias !11928
  %.sroa.0313.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sroa.9334.0, ptr %.sroa.0313.sroa.0.sroa.6.0..sroa_idx, align 4, !noalias !11928
  %.sroa.0313.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0313.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  %.sroa.0313.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i8 %i.ir, ptr %.sroa.0313.sroa.5.0..sroa_idx, align 4, !noalias !11928
  %.sroa.0313.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  store i8 %i.it, ptr %.sroa.0313.sroa.6.0..sroa_idx, align 1, !noalias !11928
  %.sroa.0313.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i8 %.sroa.9.0392, ptr %.sroa.0313.sroa.7.0..sroa_idx, align 2, !noalias !11928
  %.sroa.5314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.iu, ptr %.sroa.5314.0..sroa_idx, align 4, !noalias !11928
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %.sroa.0102.2441, ptr %i.kf, align 4, !noalias !11929
  %.sroa.12110.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %.sroa.12110.2440, ptr %.sroa.12110.0..sroa_idx117, align 4, !noalias !11929
  %.sroa.14119.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %.sroa.14119.2439, ptr %.sroa.14119.0..sroa_idx126, align 4, !noalias !11929
  %.sroa.16.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16.0..sroa_idx131, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.16, i64 20, i1 false), !noalias !11929
  %i.kg = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtCsoTR8nlGN3X_18ty_python_semantic5types17MemberLookupErrorE9intern_idINtNvBZ_s3_1__9StructKeyNtNtB11_5place18PlaceAndQualifiersNtBZ_21MemberLookupErrorKindENCINvMs9_B2b_BX_3newDNtNtB11_2db2DbEL_B2w_B34_E0EB11_(ptr noundef nonnull align 8 %i.kd, ptr noundef nonnull align 8 %i.js, ptr noundef nonnull align 8 %i.ke, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(68) %i.b), !noalias !11927 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11927
  %i.kh = extractvalue { i32, i32 } %i.kg, 0
  %i.ki = extractvalue { i32, i32 } %i.kg, 1
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.kh, ptr %i.kj, align 4, !alias.scope !11924
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ki, ptr %i.kk, align 4, !alias.scope !11924
  store i32 -2, ptr %0, align 4, !alias.scope !11924
  br label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types20member_lookup_result.exit29

bb.at:                                            ; preds = %bb.ar
  store i32 %.sroa.0332.0, ptr %0, align 4, !alias.scope !11930
  %.sroa.0313.sroa.0.sroa.5.0..sroa_idx336 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7333.0, ptr %.sroa.0313.sroa.0.sroa.5.0..sroa_idx336, align 4, !alias.scope !11930
  %.sroa.0313.sroa.0.sroa.6.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.9334.0, ptr %.sroa.0313.sroa.0.sroa.6.0..sroa_idx338, align 4, !alias.scope !11930
  %.sroa.0313.sroa.0.sroa.7.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0313.sroa.0.sroa.7.0..sroa_idx340, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false)
  %.sroa.0313.sroa.5.0..sroa_idx324 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ir, ptr %.sroa.0313.sroa.5.0..sroa_idx324, align 4, !alias.scope !11930
  %.sroa.0313.sroa.6.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.it, ptr %.sroa.0313.sroa.6.0..sroa_idx326, align 1, !alias.scope !11930
  %.sroa.0313.sroa.7.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %.sroa.9.0392, ptr %.sroa.0313.sroa.7.0..sroa_idx328, align 2, !alias.scope !11930
  %.sroa.5314.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.iu, ptr %.sroa.5314.0..sroa_idx315, align 4, !alias.scope !11930
  br label %_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types20member_lookup_result.exit29
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type26is_nontrivial_intersection(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !45, !noundef !30 ; 2 uses
  %i.b = icmp ne i32 %i.a, 17
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i32 %i.a, 24
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !range !43, !noundef !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !noundef !30
  %i.h = tail call noundef zeroext i1 @_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType18is_simple_negation(i32 noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  %i.i = xor i1 %i.h, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type26replace_parameter_defaults(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 -1, ptr %i.b, align 4, !alias.scope !11941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11942
  store ptr %4, ptr %i.a, align 8, !alias.scope !11943, !noalias !11942
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !alias.scope !11943, !noalias !11942
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type23apply_type_mapping_impl(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @549, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.a)
          to label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18apply_type_mapping.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5types23ApplyTypeMappingVisitorEBF_(ptr noalias noundef align 8 dereferenceable(72) %i.a) #50
          to label %bb.d unwind label %bb.c, !noalias !11944

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !11944
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18apply_type_mapping.exit: ; preds = %bb.a
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic5types23ApplyTypeMappingVisitorEBF_(ptr noalias noundef align 8 dereferenceable(72) %i.a), !noalias !11944
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type26single_char_string_literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef range(i32 0, 1114112) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11956
  store i32 0, ptr %i.a, align 4, !noalias !11956
  %i.c = icmp samesign ult i32 %3, 128
  %.sink21.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %.sink21.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  br i1 %i.c, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %3, 2048
  %i.e = trunc i32 %3 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 2 uses
  %i.h = lshr i32 %3, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %3, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %3, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.i, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !11957, !noalias !11956
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i

bb.d:                                             ; preds = %bb.b
  %i.t = icmp samesign ult i32 %3, 65536
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = or disjoint i8 %i.m, -32
  store i8 %i.u, ptr %i.a, align 4, !alias.scope !11957, !noalias !11956
  store i8 %i.k, ptr %.sink21.i.sroa.gep, align 1, !alias.scope !11957, !noalias !11956
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i

bb.f:                                             ; preds = %bb.d
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !11957, !noalias !11956
  store i8 %i.o, ptr %.sink21.i.sroa.gep, align 1, !alias.scope !11957, !noalias !11956
  store i8 %i.k, ptr %.sink21.i.sroa.gep3, align 2, !alias.scope !11957, !noalias !11956
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.g, ptr %i.v, align 1, !alias.scope !11957, !noalias !11956
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.a, align 4, !alias.scope !11958, !noalias !11956
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i: ; preds = %bb.f, %bb.a
  %.sroa.02.0.i.i.ph.in.i = phi i32 [ %.sroa.015.0.copyload.i.i.i, %bb.f ], [ %3, %bb.a ]
  %.sroa.0.0.i.i.ph.i = phi i64 [ -4323455642275676160, %bb.f ], [ -4539628424389459968, %bb.a ]
  %.sroa.02.0.i.i.ph.i = zext i32 %.sroa.02.0.i.i.ph.in.i to i64
  br label %_RNvXs1_NtNtCsg7m2K3K1Fzf_11compact_str4repr6traitscNtB5_8IntoRepr9into_repr.exit

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i: ; preds = %bb.e, %bb.c
  %.sink21.i.sroa.phi = phi ptr [ %.sink21.i.sroa.gep, %bb.c ], [ %.sink21.i.sroa.gep3, %bb.e ]
  %.sroa.0.05.i.ph.ph.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ] ; 2 uses
  store i8 %i.g, ptr %.sink21.i.sroa.phi, align 1, !alias.scope !11957, !noalias !11956
  %i.w = shl nuw nsw i64 %.sroa.0.05.i.ph.ph.i, 56
  %i.x = or disjoint i64 %i.w, -4611686018427387904
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.a, align 4, !alias.scope !11958, !noalias !11956
  %i.y = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.z = add nsw i64 %.sroa.0.05.i.ph.ph.i, -2    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.aa, align 1, !alias.scope !11958, !noalias !11956
  %i.ab = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.ac = shl nuw nsw i64 %i.z, 3
  %i.ad = shl nuw nsw i64 %i.ab, %i.ac
  %i.ae = or i64 %i.ad, %i.y
  br label %_RNvXs1_NtNtCsg7m2K3K1Fzf_11compact_str4repr6traitscNtB5_8IntoRepr9into_repr.exit

_RNvXs1_NtNtCsg7m2K3K1Fzf_11compact_str4repr6traitscNtB5_8IntoRepr9into_repr.exit: ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i
  %.sroa.0.0.i.i20.i = phi i64 [ %.sroa.0.0.i.i.ph.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i ], [ %i.x, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i ]
  %.sroa.02.0.i.i19.i = phi i64 [ %.sroa.02.0.i.i.ph.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread.i ], [ %i.ae, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11956
  store i64 %.sroa.02.0.i.i19.i, ptr %i.b, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.0.0.i.i20.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.af = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType3newDNtNtBc_2db2DbEL_NtCsg7m2K3K1Fzf_11compact_str13CompactStringEBc_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.ag = extractvalue { i32, i32 } %i.af, 0
  %i.ah = extractvalue { i32, i32 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_RINvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB6_16LiteralValueType10promotableNtB6_17StringLiteralTypeEBa_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ai, i32 noundef %i.ag, i32 noundef %i.ah)
  store i32 28, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type27try_call_dunder_with_policy(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([432 x i8]) align 8 captures(none) dereferenceable(432) %0, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef align 8 dereferenceable(24) %7, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16) %8, i8 noundef %9) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [36 x i8], align 4                ; 7 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 6 uses
  %i.i = alloca [432 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 24 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [432 x i8], align 8               ; 10 uses
  %i.n = alloca [432 x i8], align 8               ; 4 uses
  %i.o = alloca [16 x i8], align 4                ; 4 uses
  %i.p = alloca [12 x i8], align 4                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [16 x i8], align 4                ; 4 uses
  %i.s = alloca [16 x i8], align 4                ; 6 uses
  %i.t = alloca [432 x i8], align 8               ; 4 uses
  %i.u = alloca [432 x i8], align 8               ; 7 uses
  %i.v = alloca [432 x i8], align 8               ; 4 uses
  %i.w = alloca [432 x i8], align 8               ; 4 uses
  %i.x = alloca [696 x i8], align 8               ; 8 uses
  %i.y = alloca [16 x i8], align 4                ; 5 uses
  %.sroa.6.sroa.5 = alloca [16 x i8], align 4     ; 5 uses
  %i.z = load i32, ptr %1, align 4, !range !45, !noundef !30 ; 3 uses
  %i.aa = icmp ne i32 %i.z, 17
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.z, -4
  %i.ac = icmp samesign ugt i32 %i.z, 3
  %narrow = select i1 %i.ac, i32 %i.ab, i32 13
  switch i32 %narrow, label %bb.as [
    i32 20, label %bb.b
    i32 19, label %bb.ar
  ]

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !range !43, !noundef !30 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !noundef !30 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12000)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12001
  %i.ah = tail call { i32, i32 } @_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType15enum_complement(i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !12002 ; 2 uses
  %i.ai = extractvalue { i32, i32 } %i.ah, 0      ; 2 uses
  %.not.i37 = icmp eq i32 %i.ai, 0
  br i1 %.not.i37, label %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit.thread, label %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit

_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit: ; preds = %bb.b
  %i.aj = extractvalue { i32, i32 } %i.ah, 1
  call void @_RNvMsY_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumsNtB5_18EnumComplementType23remaining_literal_union(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.s, i32 noundef %i.ai, i32 noundef %i.aj, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4), !noalias !12003
  %.pr = load i32, ptr %i.s, align 4, !noalias !12001
  %.not.i = icmp eq i32 %.pr, -1
  br i1 %.not.i, label %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !12001
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type27try_call_dunder_with_policy(ptr noalias noundef nonnull sret([432 x i8]) align 8 captures(address) dereferenceable(432) %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.r, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(24) %7, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %8, i8 noundef %9), !inline_history !11967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12001
  br label %_RNvMsm_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtNtB5_13set_theoretic16IntersectionType27try_call_dunder_with_policy.exit

_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit.thread: ; preds = %bb.b, %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !12001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12004)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !30, !alias.scope !12004, !noalias !12005, !nonnull !30
  %i.am = tail call noundef nonnull align 8 ptr %i.al(ptr noundef nonnull %2), !noalias !12006, !inline_history !11970 ; 4 uses
  %i.an = load atomic i32, ptr @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB9_16IntersectionType10ingredient5CACHE acquire, align 4, !noalias !12006 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.d, label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_.exit, !prof !39

bb.d:                                             ; preds = %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false), !noalias !12006
  %i.ap = call noundef i32 @_RNvNtNtCs45bxiIjzMqg_5salsa16ingredient_cache3imp24get_or_create_index_slow(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB9_16IntersectionType10ingredient5CACHE, ptr noundef nonnull align 8 %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 88, i64 noundef 0), !noalias !12006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12006
  br label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_.exit

_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_.exit: ; preds = %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit.thread, %bb.d
  %.sroa.0.0.i.i.i = phi i32 [ %i.ap, %bb.d ], [ %i.an, %_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType24finite_alternative_union.exit.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !12006, !nonnull !30, !noundef !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.at = load i64, ptr %i.as, align 8, !noalias !12006, !noundef !30
  %i.au = zext i32 %.sroa.0.0.i.i.i to i64        ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  call void @llvm.assume(i1 %i.av), !noalias !12005
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !12006, !nonnull !30, !noundef !30
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic16IntersectionTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.ax, ptr noundef nonnull align 8 %i.am, i32 noundef range(i32 1, 0) %i.ae, i32 noundef %i.ag), !noalias !12006 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12001
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !noalias !12005, !noundef !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12001
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ba, i1 noundef zeroext false, i64 noundef 8, i64 noundef 432), !noalias !12005, !inline_history !11967
  %i.bb = load i64, ptr %i.f, align 8, !range !59, !noalias !12001, !noundef !30
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !60, !noalias !12001, !noundef !30 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bc, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_.exit
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !12001
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bg) #53, !noalias !12005, !inline_history !11967
  unreachable

bb.f:                                             ; preds = %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_.exit
  %i.bh = load ptr, ptr %i.bf, align 8, !noalias !12001, !nonnull !30, !noundef !30
  %i.bi = icmp ule i64 %i.ba, %i.be
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12001
  store i64 %i.be, ptr %i.q, align 8, !noalias !12001
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !12001
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  store i64 0, ptr %i.bk, align 8, !noalias !12001
  store i8 -1, ptr %i.j, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !12005, !nonnull !30, !noundef !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !12005, !noundef !30 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bo, 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not = icmp eq i64 %i.bo, 0
  br i1 %.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.f
  store i32 0, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12001
  br label %bb.ad

.lr.ph:                                           ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 9 ; 2 uses
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.6.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %.sroa.5153.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.6155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 6 uses
  %.sroa.8161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.6155.0..sroa_idx156.promoted = load i32, ptr %.sroa.6155.0..sroa_idx156, align 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.5136.0.copyload194 = phi i32 [ %.sroa.6155.0..sroa_idx156.promoted, %.lr.ph ], [ %.sroa.5136.0.copyload193, %bb.o ] ; 5 uses
  %.sroa.0.0.copyload133189 = phi i8 [ -1, %.lr.ph ], [ %.sroa.0.0.copyload133188, %bb.o ] ; 5 uses
  %i.bw = phi i8 [ -1, %.lr.ph ], [ %i.cm, %bb.o ] ; 2 uses
  %.sroa.0.0.i125 = phi ptr [ %i.bm, %.lr.ph ], [ %i.by, %bb.o ] ; 2 uses
  %i.bx = phi i32 [ 0, %.lr.ph ], [ %i.cn, %bb.o ] ; 7 uses
  %.sroa.052.095120124 = phi i32 [ 0, %.lr.ph ], [ %.sroa.052.095119, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i125, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i125, i64 16, i1 false), !noalias !12005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !noalias !12007
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type27try_call_dunder_with_policy(ptr noalias noundef nonnull sret([432 x i8]) align 8 captures(address) dereferenceable(432) %i.m, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(24) %7, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.e, i8 noundef %9)
          to label %bb.h unwind label %.thread79.loopexit, !inline_history !11967

._crit_edge:                                      ; preds = %bb.o
  store i8 %.sroa.0.0.copyload133188, ptr %i.j, align 8
  store i32 %.sroa.5136.0.copyload193, ptr %.sroa.6155.0..sroa_idx156, align 4
  %.pre = load i64, ptr %i.bk, align 8, !noalias !12001 ; 2 uses
  store i32 %.sroa.052.095119, ptr %i.p, align 4
  %i.bz = icmp ult i64 %.pre, 21350398233460130
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %.pre, 0
  br i1 %i.ca, label %bb.ab, label %bb.ac

.thread79.loopexit:                               ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i8 %.sroa.0.0.copyload133189, ptr %i.j, align 8
  store i32 %.sroa.5136.0.copyload194, ptr %.sroa.6155.0..sroa_idx156, align 4
  br label %.thread74

end_hunk_0
begin_hunk_1_@_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums26try_unwrap_nonmember_value:bb.a
  %i.x = load i64, ptr %i.w, align 8, !noalias !15865, !noundef !30
  %i.y = zext i32 %.sroa.0.0.i.i.i.i.i to i64     ; 2 uses
  %i.z = icmp ugt i64 %i.x, %i.y
  call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !15865, !nonnull !30, !noundef !30
  %i.ac = call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtCsoTR8nlGN3X_18ty_python_semantic5types17MemberLookupErrorE6fieldsB10_(ptr noundef nonnull align 8 %i.ab, ptr noundef nonnull align 8 %i.q, i32 noundef range(i32 1, 0) %i.m, i32 noundef %i.o), !noalias !15865 ; 2 uses
  %.sroa.03.0.copyload.pr = load i32, ptr %i.ac, align 4, !noalias !15863
  br label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member.exit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member.exit: ; preds = %bb.d, %_RNCNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB8_4Type6member0Ba_.exit.i
  %.sroa.03.0.copyload = phi i32 [ %i.j, %bb.d ], [ %.sroa.03.0.copyload.pr, %_RNCNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB8_4Type6member0Ba_.exit.i ]
  %.sink.i = phi ptr [ %i.c, %bb.d ], [ %i.ac, %_RNCNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB8_4Type6member0Ba_.exit.i ] ; 3 uses
  %.sroa.44.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 12
  %.sroa.44.0.copyload = load i32, ptr %.sroa.44.0..sink.i.sroa_idx, align 4, !noalias !15863 ; 2 uses
  %.sroa.5.0..sink.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 16
  %.sroa.5.sroa.0.0.copyload = load i32, ptr %.sroa.5.0..sink.i.sroa_idx, align 4, !noalias !15863
  %.sroa.5.sroa.4.0..sroa.5.0..sink.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sink.i, i64 20
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sink.i.sroa_idx.sroa_idx, align 4, !noalias !15863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = icmp eq i32 %.sroa.03.0.copyload, -1
  %.not = icmp eq i32 %.sroa.44.0.copyload, -1
  %or.cond = select i1 %i.ad, i1 true, i1 %.not   ; 3 uses
  %.sroa.57.0 = select i1 %or.cond, i64 undef, i64 %.sroa.5.sroa.4.0.copyload
  %.sroa.3.0 = select i1 %or.cond, i32 1, i32 %.sroa.5.sroa.0.0.copyload
  %.sroa.06.0 = select i1 %or.cond, i32 4, i32 %.sroa.44.0.copyload
  store i32 %.sroa.06.0, ptr %0, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.57.0, ptr %.sroa.57.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type6member.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums27inherited_known_enum_method(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr nofree noundef nonnull readonly align 4 captures(none) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef range(i64 7, 22) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  %i.c = alloca [12 x i8], align 4                ; 6 uses
  %i.d = alloca [16 x i8], align 4                ; 10 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 5 uses
  store ptr %0, ptr %.sroa.7.0..sroa_idx15, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %.sroa.1016.0..sroa_idx, align 8
  %.sroa.1117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 0, ptr %.sroa.1117.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  store i32 %3, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i32 %4, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 4
  store ptr %0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %1, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15896)
  store i64 0, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !15897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15898
  %i.i = call noundef i64 @_RNvXs_NvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtB4_13SpecAdvanceBy15spec_advance_byB1j_(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx15, i64 noundef range(i64 0, -1) 0), !noalias !15899
  %.not.i5.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i5.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.thread.i.i

bb.b:                                             ; preds = %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15900
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx15), !noalias !15901
  %i.j = load i8, ptr %i.d, align 4, !range !91, !noalias !15900, !noundef !30 ; 2 uses
  %.not24.i.i.i = icmp eq i8 %i.j, -1
  br i1 %.not24.i.i.i, label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.n = phi i8 [ %i.j, %.lr.ph.i.i.i ], [ %i.ag, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i ]
  %.sroa.6.0.copyload.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !15900 ; 2 uses
  %i.o = icmp ne i8 %i.n, 3
  %.not.i.i.i.i = icmp eq i32 %.sroa.6.0.copyload.i.i.i, -2
  %or.cond.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !15900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15902
  store i32 %.sroa.6.0.copyload.i.i.i, ptr %i.c, align 4, !noalias !15902
  store i64 %.sroa.7.0.copyload.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 4, !noalias !15902
  call void @llvm.experimental.noalias.scope.decl(metadata !15903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15904
  %i.p = load ptr, ptr %i.g, align 8, !alias.scope !15903, !noalias !15905, !nonnull !30, !noundef !30 ; 3 uses
  %i.q = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15903, !noalias !15905, !nonnull !30, !align !32, !noundef !30 ; 3 uses
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q), !noalias !15906
  %i.r = load i32, ptr %i.b, align 4, !range !99, !alias.scope !15907, !noalias !15904, !noundef !30
  %.not.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  %i.s = load i32, ptr %i.k, align 4, !range !43, !alias.scope !15907, !noalias !15904 ; 4 uses
  %i.t = load i32, ptr %i.l, align 4, !alias.scope !15907, !noalias !15904 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15904
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef i8 @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral5knownDNtNtBe_2db2DbEL_EBe_(i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q), !noalias !15908
  switch i8 %i.u, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i [
    i8 -1, label %bb.f
    i8 36, label %bb.f
    i8 35, label %bb.f
    i8 34, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.v = call noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums28is_enum_class_by_inheritance(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.q, ptr noundef nonnull align 4 %.sroa.5.0..sroa_idx, i32 noundef %i.s, i32 noundef %i.t), !noalias !15909
  br i1 %i.v, label %bb.g, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !15910, !nonnull !30, !noundef !30
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !noalias !15910, !nonnull !30, !align !32, !noundef !30
  %i.w = call noundef i8 @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral5knownDNtNtBe_2db2DbEL_EBe_(i32 noundef range(i32 1, 0) %i.s, i32 noundef %i.t, ptr noundef nonnull %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val4.i.i.i.i.i.i), !noalias !15910
  %.not.i6.i.i.i.i.i = icmp eq i8 %i.w, -1
  br i1 %.not.i6.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15911
  %i.x = call { i32, i32 } @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal1__NtB8_18StaticClassLiteral10body_scopeDNtNtBe_2db2DbEL_EBe_(i32 noundef range(i32 1, 0) %i.s, i32 noundef %i.t, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1), !noalias !15912 ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.x, 0
  %i.z = extractvalue { i32, i32 } %i.x, 1
  call fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18custom_enum_method(ptr noalias noundef align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i32 noundef %i.y, i32 noundef %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6), !noalias !15912
  %i.aa = load i32, ptr %i.a, align 4, !range !35, !noalias !15911, !noundef !30
  %i.ab = trunc nuw i32 %i.aa to i1
  %i.ac = load i32, ptr %i.m, align 4, !noalias !15900 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond.not.i.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread20.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread20.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15911
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !noalias !15911, !noundef !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15902
  br label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread20.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15902
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.sink.split.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15900
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx15), !noalias !15901
  %i.ag = load i8, ptr %i.d, align 4, !range !91, !noalias !15900, !noundef !30 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ag, -1
  br i1 %.not.i.i.i, label %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i, label %bb.c

_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i, %bb.i, %bb.b
  %.sroa.3.0.i.i.i = phi i32 [ %i.af, %bb.i ], [ undef, %bb.b ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.ac, %bb.i ], [ 0, %bb.b ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseNtNtB1i_5class9ClassTypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1i_8function12FunctionTypeENvMB1g_B1e_10into_classNCIB2_B2j_NtNtB2l_14static_literal18StaticClassLiteraluB2I_NCNvNtB1i_5enums24iter_parent_enum_classes0NCINvNtB6_6filter15filter_try_foldB4q_uB2I_NCNvB5h_27inherited_known_enum_method0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB4q_B3n_NCB6D_s_0E0E0E0E0B1k_.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15900
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_4skip4SkipNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorENvMNtB1x_10class_baseNtB2x_9ClassBase10into_classENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_19filter_map_try_foldNtNtB1x_5class9ClassTypeNtNtB4v_14static_literal18StaticClassLiteraluINtNtNtBc_3ops12control_flow11ControlFlowNtNtB1x_8function12FunctionTypeENCNvNtB1x_5enums24iter_parent_enum_classes0NCINvNtB8_6filter15filter_try_foldB4R_uB5A_NCNvB6P_27inherited_known_enum_method0NCINvNvB3i_8find_map5checkB4R_B6f_NCB8b_s_0E0E0E0B5A_EB1z_.exit

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.i.i: ; preds = %bb.a
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx15), !noalias !15913
  %.pr.i.i = load i8, ptr %i.e, align 4, !noalias !15898
  %.not4.i.i = icmp eq i8 %.pr.i.i, -1
  br i1 %.not4.i.i, label %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.thread.i.i, label %bb.b

_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.thread.i.i: ; preds = %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15898
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_4skip4SkipNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorENvMNtB1x_10class_baseNtB2x_9ClassBase10into_classENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_19filter_map_try_foldNtNtB1x_5class9ClassTypeNtNtB4v_14static_literal18StaticClassLiteraluINtNtNtBc_3ops12control_flow11ControlFlowNtNtB1x_8function12FunctionTypeENCNvNtB1x_5enums24iter_parent_enum_classes0NCINvNtB8_6filter15filter_try_foldB4R_uB5A_NCNvB6P_27inherited_known_enum_method0NCINvNvB3i_8find_map5checkB4R_B6f_NCB8b_s_0E0E0E0B5A_EB1z_.exit

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_4skip4SkipNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorENvMNtB1x_10class_baseNtB2x_9ClassBase10into_classENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_19filter_map_try_foldNtNtB1x_5class9ClassTypeNtNtB4v_14static_literal18StaticClassLiteraluINtNtNtBc_3ops12control_flow11ControlFlowNtNtB1x_8function12FunctionTypeENCNvNtB1x_5enums24iter_parent_enum_classes0NCINvNtB8_6filter15filter_try_foldB4R_uB5A_NCNvB6P_27inherited_known_enum_method0NCINvNvB3i_8find_map5checkB4R_B6f_NCB8b_s_0E0E0E0B5A_EB1z_.exit: ; preds = %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ undef, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.thread.i.i ], [ %.sroa.3.0.i.i.i, %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i ]
  %.sroa.0.0.i.i = phi i32 [ 0, %_RNvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB8_.exit.thread.i.i ], [ %.sroa.0.0.i.i.i, %_RINvYNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB19_8adapters10filter_map19filter_map_try_foldNtNtB7_10class_base9ClassBaseNtNtB7_5class9ClassTypeuINtNtNtB1b_3ops12control_flow11ControlFlowNtNtB7_8function12FunctionTypeENvMB33_B31_10into_classNCIB2b_B3u_NtNtB3w_14static_literal18StaticClassLiteraluB3S_NCNvNtB7_5enums24iter_parent_enum_classes0NCINvNtB2f_6filter15filter_try_foldB5B_uB3S_NCNvB6s_27inherited_known_enum_method0NCINvNvB13_8find_map5checkB5B_B4y_NCB7O_s_0E0E0E0E0B3S_EB9_.exit.i.i ]
  %i.ah = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i.i, 0
  %7 = insertvalue { i32, i32 } %i.ah, i32 %.sroa.3.0.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret { i32, i32 } %7
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums27value_has_exact_known_class(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 4 captures(address) dead_on_return dereferenceable(16) %3, i8 noundef range(i8 0, 108) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [12 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15927)
  %i.h = load i32, ptr %3, align 4, !range !45, !alias.scope !15927, !noundef !30 ; 3 uses
  %i.i = icmp ne i32 %i.h, 17
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i32 %i.h, 35
  br i1 %i.j, label %.lr.ph.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !noalias !15929
  call void @_RNvMst_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_aliasNtB5_13TypeAliasType10value_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1), !noalias !15926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15928
  %i.l = load i32, ptr %3, align 4, !range !45, !alias.scope !15927, !noundef !30 ; 3 uses
  %i.m = icmp ne i32 %i.l, 17
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i32 %i.l, 35
  br i1 %i.n, label %bb.b, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit: ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload = phi i32 [ %i.h, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !15930 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !alias.scope !15930 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !alias.scope !15930 ; 2 uses
  %i.o = add nsw i32 %.sroa.0.0.copyload, -4
  %i.p = icmp samesign ugt i32 %.sroa.0.0.copyload, 3
  %narrow = select i1 %i.p, i32 %i.o, i32 13
  switch i32 %narrow, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_5enums27value_has_exact_known_class0EBU_.exit [
    i32 14, label %bb.c
    i32 19, label %bb.d
    i32 24, label %bb.f
  ]

bb.c:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %.sroa.4.0.copyload, ptr %i.d, align 4
  %.sroa.7.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.4..sroa_idx, align 4
  %.sroa.8.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.4..sroa_idx, align 4
  %i.q = call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i8 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_5enums27value_has_exact_known_class0EBU_.exit

bb.d:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15931)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !30, !alias.scope !15931, !nonnull !30
  %i.t = tail call noundef nonnull align 8 ptr %i.s(ptr noundef nonnull %0), !noalias !15931, !inline_history !63 ; 4 uses
  %i.u = load atomic i32, ptr @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB9_9UnionType10ingredient5CACHE acquire, align 4, !noalias !15931 ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.e, label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit, !prof !39

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @25, i64 16, i1 false), !noalias !15931
  %i.w = call noundef i32 @_RNvNtNtCs45bxiIjzMqg_5salsa16ingredient_cache3imp24get_or_create_index_slow(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB9_9UnionType10ingredient5CACHE, ptr noundef nonnull align 8 %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 81, i64 noundef 0), !noalias !15931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15931
  br label %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit

_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i = phi i32 [ %i.w, %bb.e ], [ %i.u, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !15931, !nonnull !30, !noundef !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !noalias !15931, !noundef !30
  %i.ab = zext i32 %.sroa.0.0.i.i.i to i64        ; 2 uses
  %i.ac = icmp ugt i64 %i.aa, %i.ab
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !15931, !nonnull !30, !noundef !30
  %i.af = call noundef nonnull align 8 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic9UnionTypeE6fieldsB12_(ptr noundef nonnull align 8 %i.ae, ptr noundef nonnull align 8 %i.t, i32 noundef range(i32 1, 0) %.sroa.4.0.copyload, i32 noundef %.sroa.7.0.copyload), !noalias !15931 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !15931, !nonnull !30, !noundef !30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !15931, !noundef !30 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ai, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_5enums27value_has_exact_known_class0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit
  %.sroa.07.016 = phi ptr [ %i.am, %.lr.ph ], [ %i.ag, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.07.016, i64 16, i1 false), !noalias !15933
  %i.al = call fastcc noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums27value_has_exact_known_class(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, i8 noundef %4), !noalias !15932, !inline_history !15925 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15932
  %.not = xor i1 %i.al, true
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.016, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aj
  %or.cond = select i1 %.not, i1 true, i1 %i.an
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_5enums27value_has_exact_known_class0EBU_.exit, label %.lr.ph

bb.f:                                             ; preds = %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.4.0.copyload, ptr %i.g, align 4
  %.sroa.7.4..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.4..sroa_idx3, align 4
  %.sroa.8.4..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.4..sroa_idx5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7literalNtB5_16LiteralValueType17fallback_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.g, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.ao = load i32, ptr %i.f, align 4, !range !45, !noundef !30 ; 2 uses
  %i.ap = icmp ne i32 %i.ao, 17
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i32 %i.ao, 18
  br i1 %i.aq, label %bb.g, label %bb.h

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_5enums27value_has_exact_known_class0EBU_.exit: ; preds = %.lr.ph, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit, %bb.h, %bb.c
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %bb.h ], [ %i.q, %bb.c ], [ false, %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias.exit ], [ true, %_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_.exit ], [ %i.al, %.lr.ph ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false)
  %i.as = call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, i8 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.0.1 = phi i1 [ %i.as, %bb.g ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBS_5enums27value_has_exact_known_class0EBU_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums28is_enum_class_by_inheritance(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 4
  store i32 15, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14to_subclass_of(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, i8 noundef 27, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.f = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type13is_subtype_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral9metaclass(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass14to_subclass_of(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, i8 noundef 29, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2)
  %i.g = call noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type13is_subtype_of(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %1, ptr noundef nonnull align 4 %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums33member_lookup_for_enum_complement(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(36) initializes((0, 36)) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef range(i64 -192, 72057594037927936) %7, i8 noundef %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [36 x i8], align 4                ; 7 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [36 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums34special_member_for_enum_complement(ptr noalias noundef align 4 captures(none) dereferenceable(36) %i.e, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, i32 noundef %4, i32 noundef %5, ptr noalias noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7)
  %i.f = load i32, ptr %i.e, align 4, !range !92, !noundef !30
  %.not = icmp eq i32 %i.f, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %i.e, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
end_hunk_1
begin_hunk_2_@_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receiver1__46member_lookup_with_policy_inner_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB19_
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receiver1__46member_lookup_with_policy_inner_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receiver1__46member_lookup_with_policy_inner_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receiver1__46member_lookup_with_policy_inner_Configuration_ENtNtB7_10ingredient10Ingredient8locationB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @868
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @869, i64 44 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionB19_(ptr noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @870, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB19_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !30
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient19remove_stale_outputB19_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB17_4Type38member_lookup_with_policy_and_receivers_1__59member_lookup_with_policy_and_receiver_inner_Configuration_ENtNtB7_10ingredient10Ingredient8locationB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @871
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @872, i64 30 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionB1a_(ptr noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @873, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB1a_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !30
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient19remove_stale_outputB1a_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_16IntersectionType17from_two_elements1__45intersection_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient8locationB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @875
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @876, i64 23 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionB1a_(ptr noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @877, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB1a_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !noundef !30
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient19remove_stale_outputB1a_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtCs45bxiIjzMqg_5salsa8functionINtB5_14IngredientImplNtNvNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB16_9UnionType17from_two_elements1__38union_from_two_elements_Configuration_ENtNtB7_10ingredient10Ingredient8locationB1a_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @878
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCsoTR8nlGN3X_18ty_python_semantic9subscriptSNtNtB7_5types4TypeNtB5_7PySlice8py_sliceB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr nofree noundef nonnull readnone captures(none) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(272) %4, i32 noundef range(i32 0, 2) %5, i32 %6, i32 noundef range(i32 0, 2) %7, i32 %8, i32 noundef range(i32 0, 2) %9, i32 %10) unnamed_addr #2 {
bb.a:
  %i.a = trunc nuw i32 %9 to i1
  %. = select i1 %i.a, i32 %10, i32 1             ; 2 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCsoTR8nlGN3X_18ty_python_semantic9subscript18py_slice_with_stepNtNtB4_5types4TypeEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %5, i32 %6, i32 noundef %7, i32 %8, i32 noundef %.)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal fastcc void @_RNvXs1_NtNtCsg7m2K3K1Fzf_11compact_str4repr6traitscNtB5_8IntoRepr9into_repr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #21 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  %.sink21.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sink21.sroa.gep22 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br i1 %i.b, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 2 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.h, -64
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !18322
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = or disjoint i8 %i.l, -32
  store i8 %i.t, ptr %i.a, align 4, !alias.scope !18322
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.u, align 1, !alias.scope !18322
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit

bb.f:                                             ; preds = %bb.d
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !18322
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.v, align 1, !alias.scope !18322
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.w, align 2, !alias.scope !18322
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.x, align 1, !alias.scope !18322
  %.sroa.015.0.copyload.i.i = load i32, ptr %i.a, align 4, !alias.scope !18323
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread: ; preds = %bb.a, %bb.f
  %.sroa.02.0.i.i.ph.in = phi i32 [ %.sroa.015.0.copyload.i.i, %bb.f ], [ %1, %bb.a ]
  %.sroa.0.0.i.i.ph = phi i64 [ -4323455642275676160, %bb.f ], [ -4539628424389459968, %bb.a ]
  %.sroa.02.0.i.i.ph = zext i32 %.sroa.02.0.i.i.ph.in to i64
  br label %bb.g

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit: ; preds = %bb.c, %bb.e
  %.sink21.sroa.phi = phi ptr [ %.sink21.sroa.gep, %bb.c ], [ %.sink21.sroa.gep22, %bb.e ]
  %.sroa.0.05.i.ph.ph = phi i64 [ 2, %bb.c ], [ 3, %bb.e ] ; 2 uses
  store i8 %i.f, ptr %.sink21.sroa.phi, align 1, !alias.scope !18322
  %i.y = shl nuw nsw i64 %.sroa.0.05.i.ph.ph, 56
  %i.z = or disjoint i64 %i.y, -4611686018427387904
  %.sroa.019.0.copyload.i.i = load i16, ptr %i.a, align 4, !alias.scope !18323
  %i.aa = zext i16 %.sroa.019.0.copyload.i.i to i64
  %i.ab = add nsw i64 %.sroa.0.05.i.ph.ph, -2     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %.sroa.021.0.copyload.i.i = load i16, ptr %i.ac, align 1, !alias.scope !18323
  %i.ad = zext i16 %.sroa.021.0.copyload.i.i to i64
  %i.ae = shl nuw nsw i64 %i.ab, 3
  %i.af = shl nuw nsw i64 %i.ad, %i.ae
  %i.ag = or i64 %i.af, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit
  %.sroa.0.0.i.i20 = phi i64 [ %.sroa.0.0.i.i.ph, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread ], [ %i.z, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit ]
  %.sroa.02.0.i.i19 = phi i64 [ %.sroa.02.0.i.i.ph, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit.thread ], [ %i.ag, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr3new.exit ]
  store i64 %.sroa.02.0.i.i19, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i20, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB5_9ClassBaseE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18328)
  %i.a = load i8, ptr %1, align 4, !range !18329, !alias.scope !18328, !noundef !30
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !alias.scope !18327
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.c, i64 12, i1 false), !alias.scope !18330
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.e, i64 12, i1 false), !alias.scope !18330
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i = load i32, ptr %i.g, align 4, !alias.scope !18328 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !18328 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !18328 ; 2 uses
  %i.h = icmp eq i32 %.sroa.01.0.copyload.i, -1
  br i1 %i.h, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 34, ptr %i.i, align 4, !alias.scope !18327
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 35, ptr %i.j, align 4, !alias.scope !18327
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !range !34, !alias.scope !18328, !noundef !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 32, ptr %i.m, align 4, !alias.scope !18327
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.n, align 1, !alias.scope !18327
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

bb.i:                                             ; preds = %bb.e
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.6.0.copyload.i, ptr %.sroa.59.0..sroa_idx.i, align 4, !alias.scope !18327
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.sroa.01.0.copyload.sink.i = phi i32 [ %.sroa.01.0.copyload.i, %bb.i ], [ %.sroa.5.0.copyload.i, %bb.e ]
  %.sroa.5.0.copyload.sink.i = phi i32 [ %.sroa.5.0.copyload.i, %bb.i ], [ %.sroa.6.0.copyload.i, %bb.e ]
  %storemerge.i = phi i32 [ 15, %bb.i ], [ 16, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.01.0.copyload.sink.i, ptr %i.o, align 4, !alias.scope !18327
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.0.copyload.sink.i, ptr %i.p, align 4, !alias.scope !18327
  br label %_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit

_RNvXs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB7_4TypeINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_9ClassBaseE4from.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j
  %.sink = phi i32 [ 4, %bb.b ], [ 4, %bb.c ], [ 5, %bb.d ], [ 20, %bb.f ], [ 20, %bb.g ], [ 20, %bb.h ], [ %storemerge.i, %bb.j ]
  store i32 %.sink, ptr %0, align 4, !alias.scope !18327
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticRNtB5_28NegativeIntersectionElementsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18335)
  %i.a = load i64, ptr %1, align 8, !range !36, !alias.scope !18335, !noundef !30 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 2
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !18334
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_28NegativeIntersectionElements4iter.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !alias.scope !18334
  store ptr null, ptr %0, align 8, !alias.scope !18334
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_28NegativeIntersectionElements4iter.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !18335, !nonnull !30, !noundef !30 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18335, !noundef !30
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.j
  store ptr %i.h, ptr %0, align 8, !alias.scope !18334
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !18334
  br label %_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_28NegativeIntersectionElements4iter.exit

_RNvMs0_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_28NegativeIntersectionElements4iter.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBX_16IntersectionType21bounded_from_elementsINtNtNtNtBb_4iter8adapters5chain5ChainINtNtB2I_6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtBZ_4TypeEEINtNtNtBb_5array4iter8IntoIterB4k_Kj1_EEB4k_Es_0INtB7_5FnMutTRB4k_EE8call_mutB11_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #22 {
bb.a:
  %.val = load i32, ptr %1, align 4               ; 2 uses
  %i.a = icmp ne i32 %.val, 17
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i32 %.val, 23
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtBX_16IntersectionType21bounded_from_elementsINtNtNtNtBb_4iter8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtBZ_4TypeEEB3Z_Es_0INtB7_5FnMutTRB3Z_EE8call_mutB11_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #22 {
bb.a:
  %.val = load i32, ptr %1, align 4               ; 2 uses
  %i.a = icmp ne i32 %.val, 17
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp ne i32 %.val, 23
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscript21string_literal_valuess_00INtB7_5FnMutTRNtB10_4TypeEE8call_mutB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !30, !align !32, !noundef !30 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18338)
  %.sroa.02.0.copyload.i = load i32, ptr %1, align 4, !alias.scope !18338 ; 2 uses
  %i.c = icmp ne i32 %.sroa.02.0.copyload.i, 17
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i32 %.sroa.02.0.copyload.i, 28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.sroa.0.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !18338
  %i.e = icmp eq i8 %.sroa.5.sroa.0.0.copyload.i, 2
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNCNCNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscript21string_literal_valuess_00Bd_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.5.sroa.7.0.copyload.i = load i32, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !18338
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.6.0.copyload.i = load i32, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !18338
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.f = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals2_1__NtB8_17StringLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.5.sroa.6.0.copyload.i, i32 noundef %.sroa.5.sroa.7.0.copyload.i, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1), !noalias !18338 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  br label %_RNCNCNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscript21string_literal_valuess_00Bd_.exit

_RNCNCNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9subscript21string_literal_valuess_00Bd_.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.h, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNCNvNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss6_1__NtB10_28enum_metadata_Configuration_NtNtCs45bxiIjzMqg_5salsa8function13Configuration7execute6inner_s7_0s0_0INtB7_5FnMutTRINtNtBb_6option6OptionNtNtNtB14_5class5known10KnownClassEEE8call_mutB16_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #16 {
bb.a:
  %.val = load i8, ptr %1, align 1, !range !18339, !noundef !30
  %i.a = icmp ne i8 %.val, 1
  ret i1 %i.a
}

end_hunk_2
