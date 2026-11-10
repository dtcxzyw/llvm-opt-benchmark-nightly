Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.10?download=true
inline.NumInlined: 9275
inline.NumDeleted: 3320
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 38
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitorNtB4_13TypeCollector21type_was_already_seen:bb.a
  %i.l = icmp ugt i64 %i.k, 8                     ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !12878, !nonnull !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !12878
  %.sink10.i.i = select i1 %i.l, ptr %i.m, ptr %i.i
  %.sink9.i.i = select i1 %i.l, i64 %i.o, i64 %i.k
  %i.p = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtB5_13SliceContains14slice_containsBG_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sink10.i.i, i64 noundef %.sink9.i.i)
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.d
  br i1 %i.p, label %_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitorINtB5_8SmallSetNtB7_4TypeKj8_E6insertB9_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc2
  %i.q = load i64, ptr %i.j, align 8, !alias.scope !12879, !noundef !71 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 8                     ; 3 uses
  %i.s = load i64, ptr %i.n, align 8, !alias.scope !12879
  %.sink9.i10.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 2 uses
  %i.t = icmp ult i64 %.sink9.i10.i, 8
  br i1 %i.t, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E4pushBM_.exit.i, label %bb.f, !prof !77

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !noalias !12877
  invoke fastcc void @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitorINtB5_8SmallSetNtB7_4TypeKj8_E5spillB9_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %.sroa.5.i, ptr noalias noundef align 8 dereferenceable(136) %i.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1)
          to label %.noexc3 unwind label %bb.j

.noexc3:                                          ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitor8SmallSetNtBG_4TypeKj8_EEBI_(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.d)
          to label %bb.h unwind label %bb.g

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E4pushBM_.exit.i: ; preds = %bb.e
  %.sink8.i.i.i = select i1 %i.r, ptr %i.n, ptr %i.j ; 2 uses
  %i.u = load ptr, ptr %i.i, align 8, !alias.scope !12879, !nonnull !71
  %.sink9.i.i.i = select i1 %i.r, ptr %i.u, ptr %i.i
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.sink9.i.i.i, i64 %.sink9.i10.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.w = load i64, ptr %.sink8.i.i.i, align 8, !alias.scope !12880, !noundef !71
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %.sink8.i.i.i, align 8, !alias.scope !12880
  br label %_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitorINtB5_8SmallSetNtB7_4TypeKj8_E6insertB9_.exit

bb.g:                                             ; preds = %.noexc3
  %i.y = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.d, align 8, !alias.scope !12876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !12881
  br label %bb.k

bb.h:                                             ; preds = %.noexc3
  store i64 1, ptr %i.d, align 8, !alias.scope !12876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !noalias !12881
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !noalias !12877
  br label %_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitorINtB5_8SmallSetNtB7_4TypeKj8_E6insertB9_.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #58
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7visitorINtB5_8SmallSetNtB7_4TypeKj8_E6insertB9_.exit: ; preds = %bb.h, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E4pushBM_.exit.i, %.noexc2, %.noexc
  %i.aa = phi i1 [ %i.h, %.noexc ], [ false, %bb.h ], [ true, %.noexc2 ], [ false, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej8_E4pushBM_.exit.i ]
  %i.ab = load i64, ptr %0, align 8, !noundef !71
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %0, align 8
  ret i1 %i.aa

bb.k:                                             ; preds = %bb.j, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.j ], [ %i.y, %bb.g ]
  %i.ad = load i64, ptr %0, align 8, !noundef !71
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %0, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType10class_name(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3) unnamed_addr #0 !guid !12882 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType4name(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType10from_class(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12890 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12894
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !12891
  %i.c = call noundef zeroext i1 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral26inherits_from_explicit_any(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !12895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12894
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload1 = load i32, ptr %3, align 4, !alias.scope !12895
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0.copyload3 = load i32, ptr %.sroa.5.0..sroa_idx2, align 4, !alias.scope !12895
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0.copyload5 = load i32, ptr %.sroa.6.0..sroa_idx4, align 4, !alias.scope !12895
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass10from_class.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !12892
  %i.e = call { ptr, ptr } %.val.i(ptr noundef nonnull %1), !noalias !12896, !inline_history !12889 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.f), !noalias !12896
  %i.h = extractvalue { ptr, ptr } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(12) %3, i64 12, i1 false), !noalias !12898
  %i.i = call { i32, i32 } @_RINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB6_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE9intern_idINtNvBZ_s1_1__9StructKeyNtNtB11_5class9ClassTypeENCINvMs9_B2t_BX_3newDNtNtB13_2db2DbEL_B2O_E0EB13_(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a), !noalias !12896 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12897
  %i.j = extractvalue { i32, i32 } %i.i, 0
  %i.k = extractvalue { i32, i32 } %i.i, 1
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass10from_class.exit

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass10from_class.exit: ; preds = %bb.b, %bb.c
  %.sroa.6.0 = phi i32 [ %i.k, %bb.c ], [ %.sroa.6.0.copyload5, %bb.b ]
  %.sroa.5.0 = phi i32 [ %i.j, %bb.c ], [ %.sroa.5.0.copyload3, %bb.b ]
  %.sroa.0.0 = phi i32 [ -2, %bb.c ], [ %.sroa.0.0.copyload1, %bb.b ]
  store i32 %.sroa.0.0, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.57.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType10tuple_spec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12919 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = alloca [16 x i8], align 4                ; 11 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 5 uses
  %i.f = load i32, ptr %1, align 4, !range !108, !noundef !71 ; 4 uses
  %i.g = icmp ne i32 %i.f, 7
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i32 %i.f, -5
  %i.i = icmp sgt i32 %i.f, 4
  %narrow = select i1 %i.i, i32 %i.h, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 -4, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !range !82, !noundef !71
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !71
  %i.n = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__NtB8_9TupleType5tupleDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.k, i32 noundef %i.m, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  store i32 -3, ptr %0, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.41.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12921)
  %i.o = icmp eq i32 %i.f, -2
  br i1 %i.o, label %bb.f, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4, !range !82, !alias.scope !12920, !noundef !71
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4, !alias.scope !12920, !noundef !71
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !12921
  %i.u = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !12922, !inline_history !0 ; 2 uses
  %i.v = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.u), !noalias !12922
  %i.w = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.v, ptr noundef nonnull align 8 %i.u, i32 noundef range(i32 1, 0) %i.q, i32 noundef %i.s), !noalias !12922
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi ptr [ %i.w, %bb.f ], [ %1, %bb.e ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i, i64 12, i1 false), !noalias !12921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i, i64 12, i1 false)
  %i.x = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.c, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i8 %i.x, -1
  br i1 %.not, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType10tuple_spec0Ba_.exit, label %5

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvMsh_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE17version_info_spec(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.p, %bb.n, %bb.g, %bb.d, %bb.c
  ret void

5:                                                ; preds = %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit
  switch i8 %i.x, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.n
    i8 2, label %bb.n
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.n
    i8 6, label %bb.n
    i8 7, label %bb.n
    i8 8, label %bb.n
    i8 9, label %bb.n
    i8 10, label %bb.n
    i8 11, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType10tuple_spec0Ba_.exit
    i8 12, label %bb.n
    i8 13, label %bb.n
    i8 14, label %bb.n
    i8 15, label %bb.n
    i8 16, label %bb.n
    i8 17, label %bb.n
    i8 18, label %bb.n
    i8 19, label %bb.n
    i8 20, label %bb.n
    i8 21, label %bb.n
    i8 22, label %bb.n
    i8 23, label %bb.n
    i8 24, label %bb.n
    i8 25, label %bb.n
    i8 26, label %bb.n
    i8 27, label %bb.n
    i8 28, label %bb.n
    i8 29, label %bb.n
    i8 30, label %bb.n
    i8 31, label %bb.n
    i8 32, label %bb.n
    i8 33, label %bb.n
    i8 34, label %bb.n
    i8 35, label %bb.n
    i8 36, label %bb.n
    i8 37, label %bb.n
    i8 38, label %bb.n
    i8 39, label %bb.n
    i8 40, label %bb.n
    i8 41, label %bb.n
    i8 42, label %bb.n
    i8 43, label %bb.n
    i8 44, label %bb.n
    i8 45, label %bb.n
    i8 46, label %bb.n
    i8 47, label %bb.n
    i8 48, label %bb.n
    i8 49, label %bb.n
    i8 50, label %bb.n
    i8 51, label %bb.n
    i8 52, label %bb.n
    i8 53, label %bb.n
    i8 54, label %bb.n
    i8 55, label %bb.n
    i8 56, label %bb.n
    i8 57, label %bb.n
    i8 58, label %bb.n
    i8 59, label %bb.n
    i8 60, label %bb.n
    i8 61, label %bb.n
    i8 62, label %bb.n
    i8 63, label %bb.n
    i8 64, label %bb.n
    i8 65, label %bb.n
    i8 66, label %bb.n
    i8 67, label %bb.n
    i8 68, label %bb.n
    i8 69, label %bb.n
    i8 70, label %bb.n
    i8 71, label %bb.n
    i8 72, label %bb.n
    i8 73, label %bb.n
    i8 74, label %bb.n
    i8 75, label %bb.n
    i8 76, label %bb.n
    i8 77, label %bb.n
    i8 78, label %bb.n
    i8 79, label %bb.n
    i8 80, label %bb.n
    i8 81, label %bb.n
    i8 82, label %bb.n
    i8 83, label %bb.n
    i8 84, label %bb.n
    i8 85, label %bb.n
    i8 86, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType10tuple_spec0Ba_.exit
    i8 87, label %bb.n
    i8 88, label %bb.n
    i8 89, label %bb.n
    i8 90, label %bb.n
    i8 91, label %bb.n
    i8 92, label %bb.n
    i8 93, label %bb.n
    i8 94, label %bb.n
    i8 95, label %bb.n
    i8 96, label %bb.n
    i8 97, label %bb.n
    i8 98, label %bb.n
    i8 99, label %bb.n
    i8 100, label %bb.n
    i8 101, label %bb.n
    i8 102, label %bb.n
    i8 103, label %bb.n
    i8 104, label %bb.n
    i8 105, label %bb.n
    i8 106, label %bb.n
    i8 107, label %bb.n
  ]

default.unreachable:                              ; preds = %5
  unreachable

_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType10tuple_spec0Ba_.exit: ; preds = %5, %5, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8iter_mro(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.e, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12923
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !noalias !12924
  %i.y = load i8, ptr %i.b, align 4, !range !100, !noalias !12923, !noundef !71 ; 2 uses
  %.not25.i = icmp eq i8 %i.y, -1
  br i1 %.not25.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1U_4TypeNtB1S_15VariableSegmentEEEEB1W_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType10tuple_spec0Ba_.exit
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.7.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %i.z = phi i8 [ %i.y, %.lr.ph.i ], [ %i.ai, %bb.m ]
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !12923 ; 3 uses
  %i.aa = icmp ne i8 %i.z, 3
  %.not.i.i = icmp eq i32 %.sroa.6.0.copyload.i, -2
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx11.i, align 4, !noalias !12923 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12925
  store i32 %.sroa.6.0.copyload.i, ptr %i.a, align 4, !noalias !12926
  store i64 %.sroa.7.0.copyload.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 4, !noalias !12926
  %i.ab = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !12927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12925
  %cond.i.i.i = icmp eq i8 %i.ab, 11
  br i1 %cond.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp eq i32 %.sroa.6.0.copyload.i, -1
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.sroa.49.8.extract.shift.i.le.i = lshr i64 %.sroa.7.0.copyload.i, 32
  %.sroa.49.8.extract.trunc.i.le.i = trunc nuw i64 %.sroa.49.8.extract.shift.i.le.i to i32
  %.sroa.49.4.extract.trunc.i.le.i = trunc i64 %.sroa.7.0.copyload.i to i32
  %i.ad = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB8_12GenericAlias14specializationDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.sroa.49.4.extract.trunc.i.le.i, i32 noundef %.sroa.49.8.extract.trunc.i.le.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !12928 ; 2 uses
  %i.ae = extractvalue { i32, i32 } %i.ad, 0
  %i.af = extractvalue { i32, i32 } %i.ad, 1
  %i.ag = call noundef align 8 ptr @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB5_14Specialization5tuple(i32 noundef %i.ae, i32 noundef %i.af, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !12928 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  %i.ah = ptrtoint ptr %i.ag to i64
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 4, i32 -3
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12923
  call void @_RNvXs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types3mroNtB5_11MroIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d), !noalias !12924
  %i.ai = load i8, ptr %i.b, align 4, !range !100, !noalias !12923, !noundef !71 ; 2 uses
  %.not.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1U_4TypeNtB1S_15VariableSegmentEEEEB1W_.exit, label %bb.i

bb.n:                                             ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i32 -4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.o:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.sroa.0.0.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.l ], [ 4, %bb.k ]
  %.sroa.011.sroa.6.0.i.i.i.i = phi i64 [ %i.ah, %bb.l ], [ undef, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12923
  store i32 %.sroa.011.sroa.0.0.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.sroa.6.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1U_4TypeNtB1S_15VariableSegmentEEEEB1W_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple5TupleNtB1U_4TypeNtB1S_15VariableSegmentEEEEB1W_.exit: ; preds = %bb.m, %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType10tuple_spec0Ba_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12923
  store i32 -4, ptr %0, align 8
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 108) i8 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType11known_class(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) unnamed_addr #0 !guid !12935 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !108, !noundef !71 ; 4 uses
  %i.c = icmp ne i32 %i.b, 7
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -5
  %i.e = icmp sgt i32 %i.b, 4
  %narrow = select i1 %i.e, i32 %i.d, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.g
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12937)
  %i.f = icmp eq i32 %i.b, -2
  br i1 %i.f, label %bb.e, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !82, !alias.scope !12936, !noundef !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !12936, !noundef !71
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !12937
  %i.l = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %1), !noalias !12938, !inline_history !0 ; 2 uses
  %i.m = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.l), !noalias !12938
  %i.n = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.l, i32 noundef range(i32 1, 0) %i.h, i32 noundef %i.j), !noalias !12938
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit: ; preds = %bb.d, %bb.e
  %.sink.i = phi ptr [ %i.n, %bb.e ], [ %0, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i, i64 12, i1 false), !noalias !12937
  %i.o = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit, %bb.c
  %.sroa.0.0 = phi i8 [ 86, %bb.f ], [ 11, %bb.c ], [ %i.o, %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType12is_singleton(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) unnamed_addr #0 !guid !12954 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = load i32, ptr %0, align 4, !range !108, !noundef !71 ; 4 uses
  %i.e = icmp ne i32 %i.d, 7
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i32 %i.d, -5
  %i.g = icmp sgt i32 %i.d, 4
  %narrow = select i1 %i.g, i32 %i.f, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i32 1, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i32 2, label %bb.c
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12956)
  %i.h = icmp eq i32 %i.d, -2                     ; 2 uses
  br i1 %i.h, label %bb.d, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !range !82, !alias.scope !12955, !noundef !71
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !12955, !noundef !71
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !12956
  %i.n = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %1), !noalias !12957, !inline_history !0 ; 2 uses
  %i.o = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.n), !noalias !12957
  %i.p = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 8 %i.n, i32 noundef range(i32 1, 0) %i.j, i32 noundef %i.l), !noalias !12957
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit: ; preds = %bb.c, %bb.d
  %.sink.i = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i, i64 12, i1 false), !noalias !12956
  %i.q = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.c, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i8 %i.q, -1
  br i1 %.not, label %bb.f, label %3

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit: ; preds = %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType12is_singleton0Ba_.exit, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %bb.e, %bb.a, %bb.a
  %.sroa.0.0 = phi i1 [ false, %3 ], [ false, %bb.a ], [ false, %bb.a ], [ %i.z, %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType12is_singleton0Ba_.exit ], [ true, %bb.e ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ], [ false, %3 ]
  ret i1 %.sroa.0.0

3:                                                ; preds = %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 1, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 2, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 3, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 4, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 8, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 9, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 10, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 11, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 12, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 13, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 14, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 15, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 16, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 17, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 18, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 19, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 20, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 21, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 22, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 23, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 24, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 25, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 26, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 27, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 28, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 29, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 30, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 31, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 32, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 33, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 34, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 35, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 36, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 37, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 38, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 39, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 40, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 41, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 42, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 43, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 44, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 45, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 46, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 47, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 48, label %bb.e
    i8 49, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 50, label %bb.e
    i8 51, label %bb.e
    i8 52, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 53, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 54, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 55, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 56, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 57, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 58, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 59, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 60, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 61, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 62, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 63, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 64, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 65, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 66, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 67, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 68, label %bb.e
    i8 69, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 70, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 71, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 72, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 73, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 74, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 75, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 76, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 77, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 78, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 79, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 80, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 81, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 82, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 83, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 84, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 85, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 86, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 87, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 88, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 89, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 90, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 91, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 92, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 93, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 94, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 95, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 96, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 97, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 98, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 99, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 100, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 101, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 102, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 103, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 104, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 105, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 106, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
    i8 107, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
  ]

default.unreachable:                              ; preds = %3
  unreachable

bb.e:                                             ; preds = %bb.a, %3, %3, %3, %3
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit

bb.f:                                             ; preds = %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12958
  call void @llvm.experimental.noalias.scope.decl(metadata !12959)
  call void @llvm.experimental.noalias.scope.decl(metadata !12960)
  br i1 %i.h, label %bb.g, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType12is_singleton0Ba_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !range !82, !alias.scope !12959, !noalias !12958, !noundef !71
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !12959, !noalias !12958, !noundef !71
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val.i.i = load ptr, ptr %i.v, align 8, !alias.scope !12960, !noalias !12958
  %i.w = call noundef nonnull align 8 ptr %.val.i.i(ptr noundef nonnull %1), !noalias !12961, !inline_history !12953 ; 2 uses
  %i.x = call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.w), !noalias !12961
  %i.y = call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull align 8 %i.w, i32 noundef range(i32 1, 0) %i.s, i32 noundef %i.u), !noalias !12961
  br label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType12is_singleton0Ba_.exit

_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType12is_singleton0Ba_.exit: ; preds = %bb.f, %bb.g
  %.sink.i.i = phi ptr [ %i.y, %bb.g ], [ %0, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i.i, i64 12, i1 false), !noalias !12962
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !12958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12958
  %i.z = call noundef zeroext i1 @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums21is_single_member_enum(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b), !noalias !12958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12958
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass12is_singleton.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType12to_meta_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #0 !guid !12963 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtNtB5_5class9ClassTypeEB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType13class_literal(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4) unnamed_addr #0 !guid !12964 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType5class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType13slice_literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) unnamed_addr #0 !guid !13000 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 8 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i32, ptr %1, align 4, !range !108, !noundef !71 ; 3 uses
  %i.f = icmp ne i32 %i.e, 7
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp slt i32 %i.e, 5
  br i1 %i.g, label %bb.b, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13002)
  %i.h = icmp eq i32 %i.e, -2
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !range !82, !alias.scope !13001, !noundef !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !13001, !noundef !71
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !13002
  %i.n = tail call noundef nonnull align 8 ptr %.val.i(ptr noundef nonnull %2), !noalias !13003, !inline_history !0 ; 2 uses
  %i.o = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.n), !noalias !13003
  %i.p = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull align 8 %i.n, i32 noundef range(i32 1, 0) %i.j, i32 noundef %i.l), !noalias !13003
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ %1, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i, i64 12, i1 false), !noalias !13002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20static_class_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.q = load i32, ptr %i.c, align 4, !noundef !71 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.526.0.copyload = load i32, ptr %.sroa.526.0..sroa_idx, align 4 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.627.0.copyload = load i32, ptr %.sroa.627.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not31 = icmp eq i32 %.sroa.526.0.copyload, 0
  br i1 %.not31, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread, label %bb.f

bb.e:                                             ; preds = %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_20NominalInstanceClass5class.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread

_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread: ; preds = %bb.a, %select.unfold62, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class.exit.i, %bb.h, %bb.l, %bb.l, %bb.l, %bb.l, %bb.i, %bb.n, %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class.exit.i53, %select.unfold, %bb.s, %bb.s, %bb.s, %bb.s, %bb.p, %bb.u, %bb.g, %bb.f, %bb.d, %bb.e
  store i32 2, ptr %0, align 4
  br label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.r = tail call noundef zeroext i1 @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral8is_known(i32 noundef %i.q, i32 noundef %.sroa.4.0.copyload, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i8 noundef 16)
  br i1 %i.r, label %bb.g, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.s = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericss_1__NtB8_14Specialization5typesDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.526.0.copyload, i32 noundef %.sroa.627.0.copyload, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 1
  %i.u = icmp eq i64 %i.t, 3
  br i1 %i.u, label %bb.h, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = extractvalue { ptr, i64 } %i.s, 0        ; 17 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13004)
  %i.x = load i32, ptr %i.v, align 4, !range !88, !alias.scope !13004, !noundef !71 ; 3 uses
  %i.y = icmp ne i32 %i.x, 17
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nsw i32 %i.x, -4
  %i.aa = icmp samesign ugt i32 %i.x, 3
  %narrow.i = select i1 %i.aa, i32 %i.z, i32 13
  switch i32 %narrow.i, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread [
    i32 14, label %bb.i
    i32 24, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13008)
  %i.ac = load i32, ptr %i.ab, align 4, !range !108, !alias.scope !13009, !noundef !71 ; 3 uses
  %i.ad = icmp ne i32 %i.ac, 7
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp slt i32 %i.ac, 5
  br i1 %i.ae, label %bb.j, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13012)
  %i.af = icmp eq i32 %i.ac, -2
  br i1 %i.af, label %bb.k, label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !range !82, !alias.scope !13013, !noundef !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !13013, !noundef !71
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !13014, !noalias !13004
  %i.al = tail call noundef nonnull align 8 ptr %.val.i.i.i.i(ptr noundef nonnull %2), !noalias !13015, !inline_history !12985 ; 2 uses
  %i.am = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances1_1__NtB9_24ExplicitAnyInstanceClass10ingredient5CACHE, ptr noundef nonnull align 8 %i.al), !noalias !13015
  %i.an = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassE6fieldsB12_(ptr noundef nonnull align 8 %i.am, ptr noundef nonnull align 8 %i.al, i32 noundef range(i32 1, 0) %i.ah, i32 noundef %i.aj), !noalias !13015
  br label %_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class.exit.i

_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType15has_known_class.exit.i: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i = phi ptr [ %i.an, %bb.k ], [ %i.ab, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i.i.i.i, i64 12, i1 false), !noalias !13014
  %i.ao = call noundef i8 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType5known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.b, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !13009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13010
  %i.ap = icmp eq i8 %i.ao, 51
  br i1 %i.ap, label %select.unfold, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread

bb.l:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.07.0.copyload.i = load i8, ptr %i.aq, align 4, !alias.scope !13004
  switch i8 %.sroa.07.0.copyload.i, label %bb.m [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread
    i8 3, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread
    i8 4, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread
    i8 5, label %_RNCNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB6_19NominalInstanceType13slice_literal0Ba_.exit.thread
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %.sroa.1114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.sroa.1114.0.copyload.i = load i32, ptr %.sroa.1114.0..sroa_idx.i, align 4, !alias.scope !13004 ; 2 uses
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.710.0.copyload.i = load i32, ptr %.sroa.710.0..sroa_idx.i, align 4, !alias.scope !13004
  %i.ar = zext i32 %.sroa.710.0.copyload.i to i64
  %i.as = shl nuw i64 %i.ar, 32
  %i.at = zext i32 %.sroa.1114.0.copyload.i to i64
end_hunk_0
