Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.12?download=true
inline.NumInlined: 4151
inline.NumDeleted: 1286
begin_hunk_0_@_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateReE8merge_upNvYB1a_NtNtBb_3cmp10PartialOrd2ltECshquuC4dCYVj_10polars_sql:bb.a
  %i.k = sext i32 %i.j to i64, !dbg !126
  %i.l = icmp eq i32 %i.j, 0, !dbg !137
  %i.m = sub i64 %.sroa.0.0.val6, %.val7
  %spec.select.i.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k, !dbg !137 ; 2 uses
  %i.n = icmp sgt i64 %spec.select.i.i.i.i.i, -1, !dbg !138 ; 2 uses
  %spec.select = select i1 %i.n, ptr %i.g, ptr %.sroa.0.09, !dbg !140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %spec.select, i64 16, i1 false), !dbg !141
  %i.o = zext i1 %i.n to i64, !dbg !144
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.o, !dbg !145 ; 3 uses
  %spec.select.i.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i.i, 63, !dbg !148
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.09, i64 %spec.select.i.i.i.i.i.lobit, !dbg !149 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !155 ; 2 uses
  %i.s = icmp ne ptr %i.p, %i.b, !dbg !109
  %i.t = icmp ne ptr %i.q, %2
  %or.cond = select i1 %i.s, i1 %i.t, i1 false, !dbg !109
  br i1 %or.cond, label %bb.c, label %._crit_edge, !dbg !109
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvMs0_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7optionsNtB6_19SortMultipleOptions21with_nulls_last_multiINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !157 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !165
  %.sroa.03.0.copyload.i = load i64, ptr %2, align 8, !dbg !166, !alias.scope !184, !noalias !187
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !166
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !dbg !166, !alias.scope !184, !noalias !187, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !166
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !dbg !166, !alias.scope !184, !noalias !187 ; 2 uses
  %i.c = icmp sgt i64 %.sroa.55.0.copyload.i, -1, !dbg !189
  tail call void @llvm.assume(i1 %i.c), !dbg !198
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i, !dbg !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !202, !noalias !213
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !dbg !220, !alias.scope !226, !noalias !230
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !220
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !220, !alias.scope !226, !noalias !230
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !220
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !220, !alias.scope !226, !noalias !230
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !220
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !220, !alias.scope !226, !noalias !230
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB6_3VecbEINtB4_12SpecFromIterbINtNtB6_9into_iter8IntoIterbEE9from_iterCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !231

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(64) %1) #34
          to label %bb.h unwind label %bb.g, !dbg !232

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !233, !noalias !213
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !234 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.f)
          to label %bb.f unwind label %bb.e, !dbg !234

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !234
  br label %bb.b, !dbg !235

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !236
  ret void, !dbg !237

bb.g:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !238
  unreachable, !dbg !238

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !238
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvMs0_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7optionsNtB6_19SortMultipleOptions27with_order_descending_multiINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !239 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !240
  %.sroa.03.0.copyload.i = load i64, ptr %2, align 8, !dbg !241, !alias.scope !245, !noalias !248
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !241
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !dbg !241, !alias.scope !245, !noalias !248, !nonnull !16, !noundef !16 ; 3 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !241
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !dbg !241, !alias.scope !245, !noalias !248 ; 2 uses
  %i.c = icmp sgt i64 %.sroa.55.0.copyload.i, -1, !dbg !250
  tail call void @llvm.assume(i1 %i.c), !dbg !252
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 %.sroa.55.0.copyload.i, !dbg !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !255, !noalias !258
  store ptr %.sroa.44.0.copyload.i, ptr %i.a, align 8, !dbg !265, !alias.scope !267, !noalias !271
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !265
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !265, !alias.scope !267, !noalias !271
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !265
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !265, !alias.scope !267, !noalias !271
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !265
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !265, !alias.scope !267, !noalias !271
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB6_3VecbEINtB4_12SpecFromIterbINtNtB6_9into_iter8IntoIterbEE9from_iterCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !272

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort7options19SortMultipleOptionsECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(64) %1) #34
          to label %bb.h unwind label %bb.g, !dbg !273

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !274, !noalias !258
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %1)
          to label %bb.f unwind label %bb.e, !dbg !275

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !275
  br label %bb.b, !dbg !276

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !dbg !277
  ret void, !dbg !278

bb.g:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !279
  unreachable, !dbg !279

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn, !dbg !279
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellbEE4withNvMs8_BX_BU_3getbECshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !280 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !286, !nonnull !16, !noundef !16
  %i.a = tail call noundef ptr %.val(ptr noalias noundef dereferenceable_or_null(2) null), !dbg !287, !inline_history !290 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !291
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !291

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #36, !dbg !294
  unreachable, !dbg !294

bb.c:                                             ; preds = %bb.a
  %.val.i = load i8, ptr %i.a, align 1, !dbg !296, !range !298, !noundef !16
  %i.c = trunc nuw i8 %.val.i to i1, !dbg !299
  ret i1 %i.c, !dbg !300
}

; Function Attrs: nonlazybind optsize uwtable
define noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE3get0jECshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !301 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !302, !nonnull !16, !noundef !16
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !303, !inline_history !306 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !307
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !307

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #36, !dbg !310
  unreachable, !dbg !310

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !dbg !312, !noundef !16
  ret i64 %.val.i, !dbg !314
}

; Function Attrs: nonlazybind optsize uwtable
define noundef i64 @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE9put_value0jECshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !315 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !316, !nonnull !16, !noundef !16
  %i.a = tail call noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !317, !inline_history !320 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !321
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !321

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #36, !dbg !324
  unreachable, !dbg !324

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !dbg !326, !noundef !16
  ret i64 %.val.i, !dbg !328
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !329 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335), !dbg !338
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !339 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !339, !alias.scope !335, !noalias !343, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !346              ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !346
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !352, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !358 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !358, !alias.scope !335, !noalias !343, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !360
  %i.l = add i64 %i.j, 1, !dbg !360               ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !360
  %i.n = mul nuw i64 %i.m, 7, !dbg !360
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !360 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !363
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !365
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !365

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !366, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !370
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375), !dbg !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !379, !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !385, !noalias !382
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 48, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !385
  %i.q = load ptr, ptr %i.b, align 8, !dbg !388, !noalias !382, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !388
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !394
  %i.t = load i64, ptr %i.s, align 8, !dbg !394, !noalias !382 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !394
  %i.v = load i64, ptr %i.u, align 8, !dbg !394, !noalias !382 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !395

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !396, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !397, !noalias !382
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !398

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !397, !noalias !399
  br label %common.resume, !dbg !400

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !401
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !401, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !396, !noalias !382
  store ptr %i.d, ptr %i.c, align 8, !dbg !402, !noalias !382
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !402
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !402, !noalias !382
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !402
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !402, !noalias !382
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !402 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !402, !noalias !382
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !402
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !402, !noalias !382
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !402 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !402, !noalias !382
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !402 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !402, !noalias !382
  %i.x = load i64, ptr %i.e, align 8, !dbg !405, !alias.scope !410, !noalias !411, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !412
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !412

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !418, !alias.scope !410, !noalias !411, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !421
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !429
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !443
  br label %.preheader, !dbg !412

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !444
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !458

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !459 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !462
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !465
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !472 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !473     ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !444
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !458

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !474, !alias.scope !410, !noalias !411
  br label %._crit_edge64, !dbg !474

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !474 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !475
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !475, !noalias !382
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !476, !noalias !382
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !477, !noalias !399

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !498, !noalias !399
  unreachable, !dbg !498

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !397, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !397, !noalias !382
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !398

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !499 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !499 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !499
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !500
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !510
  %i.al = zext nneg i16 %i.ak to i64, !dbg !511
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !512
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !516 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !517     ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !519, !alias.scope !529, !noalias !532, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !534
  %i.ar = getelementptr inbounds [48 x i8], ptr %i.ap, i64 %i.aq, !dbg !540
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -48, !dbg !541
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !547 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !555  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !561
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !567, !noalias !575
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !578
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !578 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !586
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !590, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !555
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !578
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !592
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !597
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !598
  %i.ba = and i64 %i.az, %i.t, !dbg !598          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !600
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !610, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !611
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !611, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !616
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !619
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !619 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !624
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !628
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !628
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !629
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !632

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !633            ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !637
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !555 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !561
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !567, !noalias !575
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !578
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !578 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !586
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !590, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !639
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !649 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !651
  %i.br = and i64 %i.bq, %i.t, !dbg !656
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !657
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !663, !noalias !399
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !664
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !664
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !668, !noalias !399
  %i.bv = load ptr, ptr %0, align 8, !dbg !669, !alias.scope !410, !noalias !411, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !675
  %.neg61.i.i = mul i64 %.neg.i.i, 48, !dbg !675
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !677
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !680
  %.neg63.i.i = mul i64 %.neg62.i.i, 48, !dbg !680
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !683
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bx, ptr noundef nonnull align 1 dereferenceable(48) %i.bw, i64 range(i64 8, 417) 48, i1 false), !dbg !686, !noalias !399
  %i.by = icmp eq i64 %i.ao, 0, !dbg !412
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !412

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !689

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690), !dbg !693
  %.val11 = load ptr, ptr %0, align 8, !dbg !694  ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !697
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !697

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !713
  %i.ca = and i64 %i.l, 15, !dbg !725
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !727
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !727
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !727
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !697

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !729
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !730, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !734
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !738   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !739 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !745
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !748
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !756
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !756
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !760
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !697
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !697

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !766

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !767
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !774, !noalias !775
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !777
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !777, !noalias !775
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !777
  store i64 48, ptr %i.ck, align 8, !dbg !777, !noalias !775
  store ptr %0, ptr %i.a, align 8, !dbg !777, !noalias !775
  %i.cl = load i64, ptr %i.i, align 8, !dbg !782, !alias.scope !690, !noalias !786, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !787
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !801

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !802
  %i.cn = load ptr, ptr %0, align 8, !dbg !809, !noalias !786, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !813
  %i.cp = load i8, ptr %i.co, align 1, !dbg !816, !noalias !786, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !816
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !823

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !802
  %.neg11.i = mul i64 %.neg.i, 48, !dbg !824
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !828 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !831

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !833, !alias.scope !837, !noalias !840, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [48 x i8], ptr %i.cs, i64 %i.cr, !dbg !842
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -48, !dbg !845
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !849 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !852, !noalias !786

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !853, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !853, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !855 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !857
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !860, !noalias !864
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !867
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !867 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !871
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !873, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !855
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !867
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !874
  %i.db = zext nneg i16 %i.da to i64, !dbg !877
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !878
  %i.dd = and i64 %i.dc, %.val9, !dbg !878        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !879
  %i.df = load i8, ptr %i.de, align 1, !dbg !884, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !885
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !885, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !887
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !889
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !889 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !892
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !894
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !894
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !895
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !897

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !898            ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !900
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !855 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !857
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !860, !noalias !864
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !867
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !867 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !871
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !873, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !901
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !913
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !917
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !917
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !917
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !918, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !922
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !927 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !929
  %i.dy = and i64 %.val9, %i.dx, !dbg !933
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !934
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !939, !noalias !786
  %i.ea = load ptr, ptr %0, align 8, !dbg !940, !noalias !786, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !942
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !942
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !945, !noalias !786
  br label %bb.r, !dbg !946

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !949
  %.neg13.i = mul i64 %.neg12.i, 48, !dbg !949
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !952 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !955 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !962, !noalias !786, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !963
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !968 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !970
  %i.ej = and i64 %i.ei, %.val9, !dbg !974
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !975, !noalias !786
  %i.ek = load ptr, ptr %0, align 8, !dbg !977, !noalias !786, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !980
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !980
  store i8 %i.eh, ptr %i.em, align 1, !dbg !983, !noalias !786
  %i.en = icmp eq i8 %i.ef, -1, !dbg !984
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !984

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !986
  %i.ep = load i64, ptr %i.i, align 8, !dbg !990, !noalias !786, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !991
  %i.er = load ptr, ptr %0, align 8, !dbg !992, !noalias !786, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !996
  store i8 -1, ptr %i.es, align 1, !dbg !999, !noalias !786
  %i.et = load ptr, ptr %0, align 8, !dbg !1000, !noalias !786, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !1002
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !1002
  store i8 -1, ptr %i.ev, align 1, !dbg !1005, !noalias !786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ed, ptr noundef nonnull align 1 dereferenceable(48) %i.cq, i64 48, i1 false), !dbg !1006, !noalias !786
  br label %bb.r, !dbg !1009

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !787
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !801

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 6)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !1011

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1022, !noalias !786
  unreachable, !dbg !1022

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !1023, !noalias !786 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !1024
  %i.ex = lshr i64 %.pre77, 3, !dbg !1024
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !1024
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !1023

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !1024
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !1023 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !1024
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !1024
  %i.fb = load i64, ptr %i.e, align 8, !dbg !1027, !noalias !786, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1028
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !1028
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !1028, !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !852, !noalias !775
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1029

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !1030, !noalias !1031
  unreachable, !dbg !1030

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !1032
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !1032
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !1033
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !1033
  ret { i64, i64 } %i.ff, !dbg !1034
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1035 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037), !dbg !1040
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1041 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !1041, !alias.scope !1037, !noalias !1043, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !1046             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !1046
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !1048, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1050 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1050, !alias.scope !1037, !noalias !1043, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !1051
  %i.l = add i64 %i.j, 1, !dbg !1051              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !1051
  %i.n = mul nuw i64 %i.m, 7, !dbg !1051
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !1051 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !1053
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !1054
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !1054

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1055, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !1057
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !1058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1060), !dbg !1063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1064, !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1069, !noalias !1066
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 32, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !1069
  %i.q = load ptr, ptr %i.b, align 8, !dbg !1071, !noalias !1066, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !1071
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1073
  %i.t = load i64, ptr %i.s, align 8, !dbg !1073, !noalias !1066 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1073
  %i.v = load i64, ptr %i.u, align 8, !dbg !1073, !noalias !1066 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !1074

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1075, !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1076, !noalias !1066
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1077

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !1076, !noalias !1078
  br label %common.resume, !dbg !1079

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1080
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !1080, !noalias !1066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1075, !noalias !1066
  store ptr %i.d, ptr %i.c, align 8, !dbg !1081, !noalias !1066
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1081
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1081, !noalias !1066
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1081
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1081, !noalias !1066
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1081 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1081, !noalias !1066
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1081
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1081, !noalias !1066
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1081 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1081, !noalias !1066
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1081 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1081, !noalias !1066
  %i.x = load i64, ptr %i.e, align 8, !dbg !1082, !alias.scope !1084, !noalias !1085, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1086
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1086

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1088, !alias.scope !1084, !noalias !1085, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1090
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1092
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1096
  br label %.preheader, !dbg !1086

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1097
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1101

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1102 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1104
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1106
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1110 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1111    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1097
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1101

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1112, !alias.scope !1084, !noalias !1085
  br label %._crit_edge64, !dbg !1112

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1112 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1113
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1113, !noalias !1066
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1114, !noalias !1066
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !1115, !noalias !1078

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !1121, !noalias !1078
  unreachable, !dbg !1121

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !1076, !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1076, !noalias !1066
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1077

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1122 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1122 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1122
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !1123
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1127
  %i.al = zext nneg i16 %i.ak to i64, !dbg !1128
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !1129
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !1131 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !1132    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !1133, !alias.scope !1140, !noalias !1143, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !1145
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.aq, !dbg !1150
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -32, !dbg !1151
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !1157 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !1162 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1165
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !1168, !noalias !1172
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1175
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !1175 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !1179
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1181, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1162
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !1175
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1182
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !1185
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !1186
  %i.ba = and i64 %i.az, %i.t, !dbg !1186         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !1187
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !1192, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !1193
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1193, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1195
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1197
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !1197 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !1200
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !1202
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !1202
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1203
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1205

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !1206           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !1208
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !1162 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1165
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !1168, !noalias !1172
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1175
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !1175 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !1179
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1181, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !1209
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !1212 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !1213
  %i.br = and i64 %i.bq, %i.t, !dbg !1216
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1217
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !1220, !noalias !1078
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !1221
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !1221
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !1224, !noalias !1078
  %i.bv = load ptr, ptr %0, align 8, !dbg !1225, !alias.scope !1084, !noalias !1085, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !1228
  %.neg61.i.i = shl i64 %.neg.i.i, 5, !dbg !1228
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !1229
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1231
  %.neg63.i.i = shl i64 %.neg62.i.i, 5, !dbg !1231
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1233
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bx, ptr noundef nonnull align 1 dereferenceable(32) %i.bw, i64 range(i64 8, 417) 32, i1 false), !dbg !1235, !noalias !1078
  %i.by = icmp eq i64 %i.ao, 0, !dbg !1086
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !1086

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !1237

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238), !dbg !1241
  %.val11 = load ptr, ptr %0, align 8, !dbg !1242 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1244
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1244

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !1248
  %i.ca = and i64 %i.l, 15, !dbg !1253
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !1254
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !1254
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !1254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !1244

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !1255
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1256, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !1258
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !1260  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1261 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !1264
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1266
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1269
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !1269
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !1271
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !1244
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !1244

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1274

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1275
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1280, !noalias !1281
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1283
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !1283, !noalias !1281
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1283
  store i64 32, ptr %i.ck, align 8, !dbg !1283, !noalias !1281
  store ptr %0, ptr %i.a, align 8, !dbg !1283, !noalias !1281
  %i.cl = load i64, ptr %i.i, align 8, !dbg !1285, !alias.scope !1238, !noalias !1287, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !1288
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1292

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1293
  %i.cn = load ptr, ptr %0, align 8, !dbg !1296, !noalias !1287, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !1298
  %i.cp = load i8, ptr %i.co, align 1, !dbg !1300, !noalias !1287, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !1300
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !1303

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1293
  %.neg11.i = shl i64 %.neg.i, 5, !dbg !1304
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !1306 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1308

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !1309, !alias.scope !1313, !noalias !1316, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.cs, i64 %i.cr, !dbg !1318
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -32, !dbg !1321
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !1325 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !1328, !noalias !1287

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1329, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1329, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !1330 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1332
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !1335, !noalias !1339
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1342
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !1342 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !1346
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1348, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1330
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !1342
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1349
  %i.db = zext nneg i16 %i.da to i64, !dbg !1352
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !1353
  %i.dd = and i64 %i.dc, %.val9, !dbg !1353       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !1354
  %i.df = load i8, ptr %i.de, align 1, !dbg !1359, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !1360
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1360, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1362
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !1364
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !1364 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !1367
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !1369
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !1369
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1370
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1372

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !1373           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !1375
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !1330 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1332
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !1335, !noalias !1339
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1342
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !1342 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !1346
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1348, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1376
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1380
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !1383
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !1383
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !1383
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !1384, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !1386
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !1389 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !1390
  %i.dy = and i64 %.val9, %i.dx, !dbg !1393
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1394
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !1397, !noalias !1287
  %i.ea = load ptr, ptr %0, align 8, !dbg !1398, !noalias !1287, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !1400
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !1400
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !1402, !noalias !1287
  br label %bb.r, !dbg !1403

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1404
  %.neg13.i = shl i64 %.neg12.i, 5, !dbg !1404
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1406 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1408 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !1412, !noalias !1287, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !1413
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !1416 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1417
  %i.ej = and i64 %i.ei, %.val9, !dbg !1420
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !1421, !noalias !1287
  %i.ek = load ptr, ptr %0, align 8, !dbg !1422, !noalias !1287, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !1424
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !1424
  store i8 %i.eh, ptr %i.em, align 1, !dbg !1426, !noalias !1287
  %i.en = icmp eq i8 %i.ef, -1, !dbg !1427
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !1427

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !1428
  %i.ep = load i64, ptr %i.i, align 8, !dbg !1431, !noalias !1287, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !1432
  %i.er = load ptr, ptr %0, align 8, !dbg !1433, !noalias !1287, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !1435
  store i8 -1, ptr %i.es, align 1, !dbg !1437, !noalias !1287
  %i.et = load ptr, ptr %0, align 8, !dbg !1438, !noalias !1287, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !1440
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !1440
  store i8 -1, ptr %i.ev, align 1, !dbg !1442, !noalias !1287
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ed, ptr noundef nonnull align 1 dereferenceable(32) %i.cq, i64 32, i1 false), !dbg !1443, !noalias !1287
  br label %bb.r, !dbg !1445

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !1288
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1292

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 4)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !1446

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1450, !noalias !1287
  unreachable, !dbg !1450

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !1451, !noalias !1287 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !1452
  %i.ex = lshr i64 %.pre77, 3, !dbg !1452
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !1452
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !1451

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !1452
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !1451 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !1452
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !1452
  %i.fb = load i64, ptr %i.e, align 8, !dbg !1454, !noalias !1287, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1455
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !1455
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !1455, !noalias !1287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1328, !noalias !1281
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1456

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !1457, !noalias !1458
  unreachable, !dbg !1457

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !1459
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !1459
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !1460
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !1460
  ret { i64, i64 } %i.ff, !dbg !1461
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1462 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1464), !dbg !1467
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1468 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !1468, !alias.scope !1464, !noalias !1470, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !1473             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !1473
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !1475, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1477 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1477, !alias.scope !1464, !noalias !1470, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !1478
  %i.l = add i64 %i.j, 1, !dbg !1478              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !1478
  %i.n = mul nuw i64 %i.m, 7, !dbg !1478
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !1478 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !1480
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !1481
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !1481

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1482, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !1484
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !1485
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1487), !dbg !1490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1491, !noalias !1493
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1496, !noalias !1493
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 48, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !1496
  %i.q = load ptr, ptr %i.b, align 8, !dbg !1498, !noalias !1493, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !1498
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1500
  %i.t = load i64, ptr %i.s, align 8, !dbg !1500, !noalias !1493 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1500
  %i.v = load i64, ptr %i.u, align 8, !dbg !1500, !noalias !1493 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !1501

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1502, !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1503, !noalias !1493
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1504

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !1503, !noalias !1505
  br label %common.resume, !dbg !1506

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1507
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !1507, !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1502, !noalias !1493
  store ptr %i.d, ptr %i.c, align 8, !dbg !1508, !noalias !1493
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1508
  store i64 48, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1508, !noalias !1493
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1508
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1508, !noalias !1493
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1508 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1508, !noalias !1493
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1508
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1508, !noalias !1493
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1508 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1508, !noalias !1493
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1508 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1508, !noalias !1493
  %i.x = load i64, ptr %i.e, align 8, !dbg !1509, !alias.scope !1511, !noalias !1512, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1513
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1513

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1515, !alias.scope !1511, !noalias !1512, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1517
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1519
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1523
  br label %.preheader, !dbg !1513

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1524
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1528

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1529 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1531
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1533
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1537 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1538    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1524
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1528

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1539, !alias.scope !1511, !noalias !1512
  br label %._crit_edge64, !dbg !1539

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1539 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1540
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1540, !noalias !1493
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1541, !noalias !1493
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !1542, !noalias !1505

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !1548, !noalias !1505
  unreachable, !dbg !1548

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !1503, !noalias !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1503, !noalias !1493
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1504

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1549 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1549 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1549
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !1550
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1554
  %i.al = zext nneg i16 %i.ak to i64, !dbg !1555
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !1556
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !1558 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !1559    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !1560, !alias.scope !1567, !noalias !1570, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !1572
  %i.ar = getelementptr inbounds [48 x i8], ptr %i.ap, i64 %i.aq, !dbg !1577
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -48, !dbg !1578
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !1584 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !1589 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !1592
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !1595, !noalias !1599
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !1602
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !1602 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !1606
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1608, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !1589
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !1602
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !1609
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !1612
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !1613
  %i.ba = and i64 %i.az, %i.t, !dbg !1613         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !1614
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !1619, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !1620
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1620, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !1622
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !1624
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !1624 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !1627
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !1629
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !1629
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !1630
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !1632

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !1633           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !1635
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !1589 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !1592
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !1595, !noalias !1599
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !1602
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !1602 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !1606
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !1608, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !1636
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !1639 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !1640
  %i.br = and i64 %i.bq, %i.t, !dbg !1643
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !1644
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !1647, !noalias !1505
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !1648
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !1648
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !1651, !noalias !1505
  %i.bv = load ptr, ptr %0, align 8, !dbg !1652, !alias.scope !1511, !noalias !1512, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !1655
  %.neg61.i.i = mul i64 %.neg.i.i, 48, !dbg !1655
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !1656
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !1658
  %.neg63.i.i = mul i64 %.neg62.i.i, 48, !dbg !1658
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !1660
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.bx, ptr noundef nonnull align 1 dereferenceable(48) %i.bw, i64 range(i64 8, 417) 48, i1 false), !dbg !1662, !noalias !1505
  %i.by = icmp eq i64 %i.ao, 0, !dbg !1513
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !1513

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !1664

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1665), !dbg !1668
  %.val11 = load ptr, ptr %0, align 8, !dbg !1669 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !1671
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !1671

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !1675
  %i.ca = and i64 %i.l, 15, !dbg !1680
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !1681
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !1681
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !1681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !1671

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !1682
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1683, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !1685
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !1687  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !1688 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !1691
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !1693
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !1696
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !1696
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !1698
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !1671
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !1671

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !1701

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !1702
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !1705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1707, !noalias !1708
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1710
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !1710, !noalias !1708
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1710
  store i64 48, ptr %i.ck, align 8, !dbg !1710, !noalias !1708
  store ptr %0, ptr %i.a, align 8, !dbg !1710, !noalias !1708
  %i.cl = load i64, ptr %i.i, align 8, !dbg !1712, !alias.scope !1665, !noalias !1714, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !1715
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !1719

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !1720
  %i.cn = load ptr, ptr %0, align 8, !dbg !1723, !noalias !1714, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !1725
  %i.cp = load i8, ptr %i.co, align 1, !dbg !1727, !noalias !1714, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !1727
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !1730

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !1720
  %.neg11.i = mul i64 %.neg.i, 48, !dbg !1731
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !1733 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !1735

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !1736, !alias.scope !1740, !noalias !1743, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [48 x i8], ptr %i.cs, i64 %i.cr, !dbg !1745
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -48, !dbg !1748
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !1752 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !1755, !noalias !1714

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !1756, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !1756, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !1757 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !1759
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !1762, !noalias !1766
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !1769
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !1769 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !1773
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1775, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !1757
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !1769
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !1776
  %i.db = zext nneg i16 %i.da to i64, !dbg !1779
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !1780
  %i.dd = and i64 %i.dc, %.val9, !dbg !1780       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !1781
  %i.df = load i8, ptr %i.de, align 1, !dbg !1786, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !1787
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1787, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !1789
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !1791
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !1791 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !1794
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !1796
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !1796
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !1797
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !1799

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !1800           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !1802
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !1757 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !1759
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !1762, !noalias !1766
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !1769
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !1769 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !1773
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !1775, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !1803
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !1807
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !1810
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !1810
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !1810
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !1811, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !1813
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !1816 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !1817
  %i.dy = and i64 %.val9, %i.dx, !dbg !1820
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !1821
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !1824, !noalias !1714
  %i.ea = load ptr, ptr %0, align 8, !dbg !1825, !noalias !1714, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !1827
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !1827
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !1829, !noalias !1714
  br label %bb.r, !dbg !1830

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !1831
  %.neg13.i = mul i64 %.neg12.i, 48, !dbg !1831
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !1833 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !1835 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !1839, !noalias !1714, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !1840
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !1843 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !1844
  %i.ej = and i64 %i.ei, %.val9, !dbg !1847
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !1848, !noalias !1714
  %i.ek = load ptr, ptr %0, align 8, !dbg !1849, !noalias !1714, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !1851
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !1851
  store i8 %i.eh, ptr %i.em, align 1, !dbg !1853, !noalias !1714
  %i.en = icmp eq i8 %i.ef, -1, !dbg !1854
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !1854

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !1855
  %i.ep = load i64, ptr %i.i, align 8, !dbg !1858, !noalias !1714, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !1859
  %i.er = load ptr, ptr %0, align 8, !dbg !1860, !noalias !1714, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !1862
  store i8 -1, ptr %i.es, align 1, !dbg !1864, !noalias !1714
  %i.et = load ptr, ptr %0, align 8, !dbg !1865, !noalias !1714, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !1867
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !1867
  store i8 -1, ptr %i.ev, align 1, !dbg !1869, !noalias !1714
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ed, ptr noundef nonnull align 1 dereferenceable(48) %i.cq, i64 48, i1 false), !dbg !1870, !noalias !1714
  br label %bb.r, !dbg !1872

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !1715
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !1719

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 6)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !1873

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !1877, !noalias !1714
  unreachable, !dbg !1877

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !1878, !noalias !1714 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !1879
  %i.ex = lshr i64 %.pre77, 3, !dbg !1879
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !1879
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !1878

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !1879
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !1878 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !1879
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !1879
  %i.fb = load i64, ptr %i.e, align 8, !dbg !1881, !noalias !1714, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1882
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !1882
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !1882, !noalias !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1755, !noalias !1708
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1883

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !1884, !noalias !1885
  unreachable, !dbg !1884

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !1886
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !1886
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !1887
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !1887
  ret { i64, i64 } %i.ff, !dbg !1888
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtB8_3map7HashMapBQ_BQ_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1v_11make_hasherBQ_B1s_B1S_E0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1889 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891), !dbg !1894
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1895 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !1895, !alias.scope !1891, !noalias !1897, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !1900             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !1900
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !1902, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1904 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1904, !alias.scope !1891, !noalias !1897, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !1905
  %i.l = add i64 %i.j, 1, !dbg !1905              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !1905
  %i.n = mul nuw i64 %i.m, 7, !dbg !1905
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !1905 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !1907
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !1908
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !1908

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1909, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !1911
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !1912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914), !dbg !1917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1918, !noalias !1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1923, !noalias !1920
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 64, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !1923
  %i.q = load ptr, ptr %i.b, align 8, !dbg !1925, !noalias !1920, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !1925
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1927
  %i.t = load i64, ptr %i.s, align 8, !dbg !1927, !noalias !1920 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1927
  %i.v = load i64, ptr %i.u, align 8, !dbg !1927, !noalias !1920 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !1928

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1929, !noalias !1920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1930, !noalias !1920
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1931

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !1930, !noalias !1932
  br label %common.resume, !dbg !1933

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1934
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !1934, !noalias !1920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1929, !noalias !1920
  store ptr %i.d, ptr %i.c, align 8, !dbg !1935, !noalias !1920
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1935
  store i64 64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !1935, !noalias !1920
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !1935
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1935, !noalias !1920
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !1935 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !1935, !noalias !1920
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !1935
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1935, !noalias !1920
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !1935 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1935, !noalias !1920
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !1935 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1935, !noalias !1920
  %i.x = load i64, ptr %i.e, align 8, !dbg !1936, !alias.scope !1938, !noalias !1939, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !1940
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !1940

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !1942, !alias.scope !1938, !noalias !1939, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !1944
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !1946
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !1950
  br label %.preheader, !dbg !1940

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !1951
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !1955

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !1956 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !1958
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !1960
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !1964 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !1965    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !1951
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !1955

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !1966, !alias.scope !1938, !noalias !1939
  br label %._crit_edge64, !dbg !1966

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !1966 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !1967
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1967, !noalias !1920
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !1968, !noalias !1920
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !1969, !noalias !1932

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !1975, !noalias !1932
  unreachable, !dbg !1975

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !1930, !noalias !1932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1930, !noalias !1920
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !1931

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !1976 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !1976 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !1976
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !1977
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !1981
  %i.al = zext nneg i16 %i.ak to i64, !dbg !1982
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !1983
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !1985 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !1986    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !1987, !alias.scope !1994, !noalias !1997, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !1999
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.aq, !dbg !2004
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64, !dbg !2005
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !2011 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !2016 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2019
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !2022, !noalias !2026
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2029
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !2029 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !2033
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2035, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2016
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !2029
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2036
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !2039
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !2040
  %i.ba = and i64 %i.az, %i.t, !dbg !2040         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !2041
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !2046, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !2047
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2047, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2049
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2051
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !2051 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !2054
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !2056
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !2056
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2057
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2059

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !2060           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !2062
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !2016 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2019
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !2022, !noalias !2026
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2029
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !2029 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !2033
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2035, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !2063
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !2066 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !2067
  %i.br = and i64 %i.bq, %i.t, !dbg !2070
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2071
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !2074, !noalias !1932
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !2075
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !2075
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !2078, !noalias !1932
  %i.bv = load ptr, ptr %0, align 8, !dbg !2079, !alias.scope !1938, !noalias !1939, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !2082
  %.neg61.i.i = shl i64 %.neg.i.i, 6, !dbg !2082
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !2083
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2085
  %.neg63.i.i = shl i64 %.neg62.i.i, 6, !dbg !2085
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2087
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bx, ptr noundef nonnull align 1 dereferenceable(64) %i.bw, i64 range(i64 8, 417) 64, i1 false), !dbg !2089, !noalias !1932
  %i.by = icmp eq i64 %i.ao, 0, !dbg !1940
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !1940

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !2091

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092), !dbg !2095
  %.val11 = load ptr, ptr %0, align 8, !dbg !2096 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2098
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2098

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !2102
  %i.ca = and i64 %i.l, 15, !dbg !2107
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !2108
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !2108
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !2108
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !2098

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !2109
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2110, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !2112
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !2114  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2115 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !2118
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2120
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2123
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !2123
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !2125
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !2098
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !2098

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2128

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2129
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2134, !noalias !2135
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2137
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBd_3map7HashMapBV_BV_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1A_11make_hasherBV_B1x_B1X_E0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !2137, !noalias !2135
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2137
  store i64 64, ptr %i.ck, align 8, !dbg !2137, !noalias !2135
  store ptr %0, ptr %i.a, align 8, !dbg !2137, !noalias !2135
  %i.cl = load i64, ptr %i.i, align 8, !dbg !2139, !alias.scope !2092, !noalias !2141, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !2142
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2146

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2147
  %i.cn = load ptr, ptr %0, align 8, !dbg !2150, !noalias !2141, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !2152
  %i.cp = load i8, ptr %i.co, align 1, !dbg !2154, !noalias !2141, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !2154
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !2157

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2147
  %.neg11.i = shl i64 %.neg.i, 6, !dbg !2158
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !2160 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2162

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !2163, !alias.scope !2167, !noalias !2170, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [64 x i8], ptr %i.cs, i64 %i.cr, !dbg !2172
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -64, !dbg !2175
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !2179 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !2182, !noalias !2141

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2183, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2183, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !2184 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2186
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !2189, !noalias !2193
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2196
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !2196 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !2200
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2202, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2184
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !2196
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2203
  %i.db = zext nneg i16 %i.da to i64, !dbg !2206
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !2207
  %i.dd = and i64 %i.dc, %.val9, !dbg !2207       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !2208
  %i.df = load i8, ptr %i.de, align 1, !dbg !2213, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !2214
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2214, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2216
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !2218
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !2218 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !2221
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !2223
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !2223
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2224
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2226

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringINtNtBa_3map7HashMapBS_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEE14reserve_rehashNCINvB1x_11make_hasherBS_B1u_B1U_E0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !2227           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !2229
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !2184 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2186
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !2189, !noalias !2193
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2196
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !2196 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !2200
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2202, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2230
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2234
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !2237
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !2237
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !2237
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !2238, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !2240
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !2243 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !2244
  %i.dy = and i64 %.val9, %i.dx, !dbg !2247
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2248
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !2251, !noalias !2141
  %i.ea = load ptr, ptr %0, align 8, !dbg !2252, !noalias !2141, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !2254
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !2254
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !2256, !noalias !2141
  br label %bb.r, !dbg !2257

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2258
  %.neg13.i = shl i64 %.neg12.i, 6, !dbg !2258
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2260 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2262 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !2266, !noalias !2141, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !2267
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !2270 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2271
  %i.ej = and i64 %i.ei, %.val9, !dbg !2274
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !2275, !noalias !2141
  %i.ek = load ptr, ptr %0, align 8, !dbg !2276, !noalias !2141, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !2278
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !2278
  store i8 %i.eh, ptr %i.em, align 1, !dbg !2280, !noalias !2141
  %i.en = icmp eq i8 %i.ef, -1, !dbg !2281
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !2281

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !2282
  %i.ep = load i64, ptr %i.i, align 8, !dbg !2285, !noalias !2141, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !2286
  %i.er = load ptr, ptr %0, align 8, !dbg !2287, !noalias !2141, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !2289
  store i8 -1, ptr %i.es, align 1, !dbg !2291, !noalias !2141
  %i.et = load ptr, ptr %0, align 8, !dbg !2292, !noalias !2141, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !2294
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !2294
  store i8 -1, ptr %i.ev, align 1, !dbg !2296, !noalias !2141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ed, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false), !dbg !2297, !noalias !2141
  br label %bb.r, !dbg !2299

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !2142
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !2146

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 8)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !2300

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !2304, !noalias !2141
  unreachable, !dbg !2304

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !2305, !noalias !2141 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !2306
  %i.ex = lshr i64 %.pre77, 3, !dbg !2306
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !2306
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !2305

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !2306
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !2305 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !2306
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !2306
  %i.fb = load i64, ptr %i.e, align 8, !dbg !2308, !noalias !2141, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2309
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !2309
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !2309, !noalias !2141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2182, !noalias !2135
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2310

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !2311, !noalias !2312
  unreachable, !dbg !2311

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !2313
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !2313
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !2314
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !2314
  ret { i64, i64 } %i.ff, !dbg !2315
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2316 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2318), !dbg !2321
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2322 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !2322, !alias.scope !2318, !noalias !2324, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !2327             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !2327
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !2329, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2331 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !2331, !alias.scope !2318, !noalias !2324, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !2332
  %i.l = add i64 %i.j, 1, !dbg !2332              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !2332
  %i.n = mul nuw i64 %i.m, 7, !dbg !2332
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !2332 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !2334
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !2335
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !2335

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2336, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !2338
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !2339
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2341), !dbg !2344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2345, !noalias !2347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2350, !noalias !2347
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 416, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !2350
  %i.q = load ptr, ptr %i.b, align 8, !dbg !2352, !noalias !2347, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !2352
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2354
  %i.t = load i64, ptr %i.s, align 8, !dbg !2354, !noalias !2347 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2354
  %i.v = load i64, ptr %i.u, align 8, !dbg !2354, !noalias !2347 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !2355

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2356, !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2357, !noalias !2347
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2358

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !2357, !noalias !2359
  br label %common.resume, !dbg !2360

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2361
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !2361, !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2356, !noalias !2347
  store ptr %i.d, ptr %i.c, align 8, !dbg !2362, !noalias !2347
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2362
  store i64 416, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2362, !noalias !2347
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2362
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2362, !noalias !2347
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2362 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2362, !noalias !2347
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2362
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2362, !noalias !2347
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2362 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2362, !noalias !2347
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2362 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2362, !noalias !2347
  %i.x = load i64, ptr %i.e, align 8, !dbg !2363, !alias.scope !2365, !noalias !2366, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !2367
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !2367

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !2369, !alias.scope !2365, !noalias !2366, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !2371
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !2373
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !2377
  br label %.preheader, !dbg !2367

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !2378
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !2382

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !2383 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !2385
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !2387
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !2391 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !2392    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !2378
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2382

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !2393, !alias.scope !2365, !noalias !2366
  br label %._crit_edge64, !dbg !2393

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !2393 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !2394
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2394, !noalias !2347
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2395, !noalias !2347
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !2396, !noalias !2359

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !2402, !noalias !2359
  unreachable, !dbg !2402

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !2357, !noalias !2359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2357, !noalias !2347
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2358

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !2403 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2403 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2403
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !2404
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2408
  %i.al = zext nneg i16 %i.ak to i64, !dbg !2409
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !2410
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !2412 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !2413    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !2414, !alias.scope !2421, !noalias !2424, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !2426
  %i.ar = getelementptr inbounds [416 x i8], ptr %i.ap, i64 %i.aq, !dbg !2431
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -416, !dbg !2432
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !2438 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !2443 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2446
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !2449, !noalias !2453
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2456
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !2456 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !2460
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2462, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2443
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !2456
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2463
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !2466
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !2467
  %i.ba = and i64 %i.az, %i.t, !dbg !2467         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !2468
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !2473, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !2474
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2474, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2476
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2478
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !2478 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !2481
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !2483
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !2483
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2484
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2486

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !2487           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !2489
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !2443 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2446
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !2449, !noalias !2453
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2456
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !2456 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !2460
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2462, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !2490
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !2493 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !2494
  %i.br = and i64 %i.bq, %i.t, !dbg !2497
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2498
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !2501, !noalias !2359
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !2502
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !2502
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !2505, !noalias !2359
  %i.bv = load ptr, ptr %0, align 8, !dbg !2506, !alias.scope !2365, !noalias !2366, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !2509
  %.neg61.i.i = mul i64 %.neg.i.i, 416, !dbg !2509
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !2510
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2512
  %.neg63.i.i = mul i64 %.neg62.i.i, 416, !dbg !2512
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2514
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(416) %i.bx, ptr noundef nonnull align 1 dereferenceable(416) %i.bw, i64 range(i64 8, 417) 416, i1 false), !dbg !2516, !noalias !2359
  %i.by = icmp eq i64 %i.ao, 0, !dbg !2367
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !2367

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !2518

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2519), !dbg !2522
  %.val11 = load ptr, ptr %0, align 8, !dbg !2523 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2525
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2525

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !2529
  %i.ca = and i64 %i.l, 15, !dbg !2534
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !2535
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !2535
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !2535
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !2525

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !2536
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2537, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !2539
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !2541  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2542 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !2545
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2547
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2550
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !2550
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !2552
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !2525
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !2525

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2555

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2556
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2561, !noalias !2562
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2564
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !2564, !noalias !2562
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2564
  store i64 416, ptr %i.ck, align 8, !dbg !2564, !noalias !2562
  store ptr %0, ptr %i.a, align 8, !dbg !2564, !noalias !2562
  %i.cl = load i64, ptr %i.i, align 8, !dbg !2566, !alias.scope !2519, !noalias !2568, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !2569
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !2573

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !2574
  %i.cn = load ptr, ptr %0, align 8, !dbg !2577, !noalias !2568, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !2579
  %i.cp = load i8, ptr %i.co, align 1, !dbg !2581, !noalias !2568, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !2581
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !2584

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !2574
  %.neg11.i = mul i64 %.neg.i, 416, !dbg !2585
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !2587 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !2589

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !2590, !alias.scope !2594, !noalias !2597, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [416 x i8], ptr %i.cs, i64 %i.cr, !dbg !2599
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -416, !dbg !2602
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !2606 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !2609, !noalias !2568

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !2610, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !2610, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !2611 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !2613
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !2616, !noalias !2620
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !2623
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !2623 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !2627
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2629, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !2611
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !2623
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !2630
  %i.db = zext nneg i16 %i.da to i64, !dbg !2633
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !2634
  %i.dd = and i64 %i.dc, %.val9, !dbg !2634       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !2635
  %i.df = load i8, ptr %i.de, align 1, !dbg !2640, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !2641
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2641, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !2643
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !2645
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !2645 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !2648
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !2650
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !2650
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !2651
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !2653

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !2654           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !2656
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !2611 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !2613
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !2616, !noalias !2620
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !2623
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !2623 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !2627
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !2629, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !2657
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !2661
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !2664
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !2664
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !2664
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !2665, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !2667
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !2670 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !2671
  %i.dy = and i64 %.val9, %i.dx, !dbg !2674
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !2675
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !2678, !noalias !2568
  %i.ea = load ptr, ptr %0, align 8, !dbg !2679, !noalias !2568, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !2681
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !2681
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !2683, !noalias !2568
  br label %bb.r, !dbg !2684

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !2685
  %.neg13.i = mul i64 %.neg12.i, 416, !dbg !2685
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !2687 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !2689 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !2693, !noalias !2568, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !2694
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !2697 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !2698
  %i.ej = and i64 %i.ei, %.val9, !dbg !2701
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !2702, !noalias !2568
  %i.ek = load ptr, ptr %0, align 8, !dbg !2703, !noalias !2568, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !2705
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !2705
  store i8 %i.eh, ptr %i.em, align 1, !dbg !2707, !noalias !2568
  %i.en = icmp eq i8 %i.ef, -1, !dbg !2708
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !2708

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !2709
  %i.ep = load i64, ptr %i.i, align 8, !dbg !2712, !noalias !2568, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !2713
  %i.er = load ptr, ptr %0, align 8, !dbg !2714, !noalias !2568, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !2716
  store i8 -1, ptr %i.es, align 1, !dbg !2718, !noalias !2568
  %i.et = load ptr, ptr %0, align 8, !dbg !2719, !noalias !2568, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !2721
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !2721
  store i8 -1, ptr %i.ev, align 1, !dbg !2723, !noalias !2568
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(416) %i.ed, ptr noundef nonnull align 1 dereferenceable(416) %i.cq, i64 416, i1 false), !dbg !2724, !noalias !2568
  br label %bb.r, !dbg !2726

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !2569
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !2573

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 52)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !2727

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !2731, !noalias !2568
  unreachable, !dbg !2731

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !2732, !noalias !2568 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !2733
  %i.ex = lshr i64 %.pre77, 3, !dbg !2733
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !2733
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !2732

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !2733
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !2732 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !2733
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !2733
  %i.fb = load i64, ptr %i.e, align 8, !dbg !2735, !noalias !2568, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2736
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !2736
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !2736, !noalias !2568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2609, !noalias !2562
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2737

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !2738, !noalias !2739
  unreachable, !dbg !2738

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !2740
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !2740
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !2741
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !2741
  ret { i64, i64 } %i.ff, !dbg !2742
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1s_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !2743 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2745), !dbg !2748
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2749 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !2749, !alias.scope !2745, !noalias !2751, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !2754             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !2754
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !2756, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2758 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !2758, !alias.scope !2745, !noalias !2751, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !2759
  %i.l = add i64 %i.j, 1, !dbg !2759              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !2759
  %i.n = mul nuw i64 %i.m, 7, !dbg !2759
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !2759 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !2761
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !2762
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !2762

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2763, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !2765
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !2766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2768), !dbg !2771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !2772, !noalias !2774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2777, !noalias !2774
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 176, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !2777
  %i.q = load ptr, ptr %i.b, align 8, !dbg !2779, !noalias !2774, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !2779
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2781
  %i.t = load i64, ptr %i.s, align 8, !dbg !2781, !noalias !2774 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2781
  %i.v = load i64, ptr %i.u, align 8, !dbg !2781, !noalias !2774 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !2782

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2783, !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2784, !noalias !2774
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2785

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !2784, !noalias !2786
  br label %common.resume, !dbg !2787

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2788
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !2788, !noalias !2774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2783, !noalias !2774
  store ptr %i.d, ptr %i.c, align 8, !dbg !2789, !noalias !2774
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !2789
  store i64 176, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !2789, !noalias !2774
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !2789
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2789, !noalias !2774
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !2789 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !2789, !noalias !2774
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !2789
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2789, !noalias !2774
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !2789 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2789, !noalias !2774
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !2789 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2789, !noalias !2774
  %i.x = load i64, ptr %i.e, align 8, !dbg !2790, !alias.scope !2792, !noalias !2793, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !2794
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !2794

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !2796, !alias.scope !2792, !noalias !2793, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !2798
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !2800
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !2804
  br label %.preheader, !dbg !2794

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !2805
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !2809

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !2810 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !2812
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !2814
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !2818 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !2819    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !2805
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !2809

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !2820, !alias.scope !2792, !noalias !2793
  br label %._crit_edge64, !dbg !2820

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !2820 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !2821
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2821, !noalias !2774
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !2822, !noalias !2774
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !2823, !noalias !2786

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !2829, !noalias !2786
  unreachable, !dbg !2829

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !2784, !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !2784, !noalias !2774
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !2785

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !2830 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !2830 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !2830
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !2831
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !2835
  %i.al = zext nneg i16 %i.ak to i64, !dbg !2836
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !2837
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !2839 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !2840    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !2841, !alias.scope !2848, !noalias !2851, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !2853
  %i.ar = getelementptr inbounds [176 x i8], ptr %i.ap, i64 %i.aq, !dbg !2858
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -176, !dbg !2859
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !2865 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !2870 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !2873
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !2876, !noalias !2880
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !2883
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !2883 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !2887
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2889, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !2870
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !2883
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !2890
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !2893
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !2894
  %i.ba = and i64 %i.az, %i.t, !dbg !2894         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !2895
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !2900, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !2901
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2901, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !2903
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !2905
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !2905 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !2908
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !2910
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !2910
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !2911
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !2913

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !2914           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !2916
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !2870 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !2873
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !2876, !noalias !2880
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !2883
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !2883 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !2887
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !2889, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !2917
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !2920 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !2921
  %i.br = and i64 %i.bq, %i.t, !dbg !2924
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !2925
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !2928, !noalias !2786
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !2929
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !2929
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !2932, !noalias !2786
  %i.bv = load ptr, ptr %0, align 8, !dbg !2933, !alias.scope !2792, !noalias !2793, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !2936
  %.neg61.i.i = mul i64 %.neg.i.i, 176, !dbg !2936
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !2937
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !2939
  %.neg63.i.i = mul i64 %.neg62.i.i, 176, !dbg !2939
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !2941
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(176) %i.bx, ptr noundef nonnull align 1 dereferenceable(176) %i.bw, i64 range(i64 8, 417) 176, i1 false), !dbg !2943, !noalias !2786
  %i.by = icmp eq i64 %i.ao, 0, !dbg !2794
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !2794

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !2945

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2946), !dbg !2949
  %.val11 = load ptr, ptr %0, align 8, !dbg !2950 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !2952
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !2952

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !2956
  %i.ca = and i64 %i.l, 15, !dbg !2961
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !2962
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !2962
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !2962
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !2952

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !2963
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2964, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !2966
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !2968  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !2969 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !2972
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !2974
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !2977
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !2977
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !2979
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !2952
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !2952

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !2982

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !2983
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !2986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2988, !noalias !2989
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2991
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1x_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !2991, !noalias !2989
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !2991
  store i64 176, ptr %i.ck, align 8, !dbg !2991, !noalias !2989
  store ptr %0, ptr %i.a, align 8, !dbg !2991, !noalias !2989
  %i.cl = load i64, ptr %i.i, align 8, !dbg !2993, !alias.scope !2946, !noalias !2995, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !2996
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3000

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !3001
  %i.cn = load ptr, ptr %0, align 8, !dbg !3004, !noalias !2995, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !3006
  %i.cp = load i8, ptr %i.co, align 1, !dbg !3008, !noalias !2995, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !3008
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !3011

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !3001
  %.neg11.i = mul i64 %.neg.i, 176, !dbg !3012
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !3014 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3016

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !3017, !alias.scope !3021, !noalias !3024, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [176 x i8], ptr %i.cs, i64 %i.cr, !dbg !3026
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -176, !dbg !3029
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !3033 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !3036, !noalias !2995

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !3037, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3037, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !3038 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !3040
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !3043, !noalias !3047
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !3050
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !3050 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !3054
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3056, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !3038
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !3050
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !3057
  %i.db = zext nneg i16 %i.da to i64, !dbg !3060
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !3061
  %i.dd = and i64 %i.dc, %.val9, !dbg !3061       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !3062
  %i.df = load i8, ptr %i.de, align 1, !dbg !3067, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !3068
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3068, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !3070
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !3072
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !3072 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !3075
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !3077
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !3077
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !3078
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3080

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsaRr8xKSRVhT_9sqlparser3ast10WindowSpecEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1u_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !3081           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !3083
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !3038 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !3040
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !3043, !noalias !3047
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !3050
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !3050 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !3054
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3056, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !3084
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !3088
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !3091
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !3091
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !3091
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !3092, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !3094
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !3097 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !3098
  %i.dy = and i64 %.val9, %i.dx, !dbg !3101
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !3102
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !3105, !noalias !2995
  %i.ea = load ptr, ptr %0, align 8, !dbg !3106, !noalias !2995, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !3108
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !3108
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !3110, !noalias !2995
  br label %bb.r, !dbg !3111

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !3112
  %.neg13.i = mul i64 %.neg12.i, 176, !dbg !3112
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3114 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !3116 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !3120, !noalias !2995, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !3121
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !3124 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !3125
  %i.ej = and i64 %i.ei, %.val9, !dbg !3128
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !3129, !noalias !2995
  %i.ek = load ptr, ptr %0, align 8, !dbg !3130, !noalias !2995, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !3132
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !3132
  store i8 %i.eh, ptr %i.em, align 1, !dbg !3134, !noalias !2995
  %i.en = icmp eq i8 %i.ef, -1, !dbg !3135
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !3135

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !3136
  %i.ep = load i64, ptr %i.i, align 8, !dbg !3139, !noalias !2995, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !3140
  %i.er = load ptr, ptr %0, align 8, !dbg !3141, !noalias !2995, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !3143
  store i8 -1, ptr %i.es, align 1, !dbg !3145, !noalias !2995
  %i.et = load ptr, ptr %0, align 8, !dbg !3146, !noalias !2995, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !3148
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !3148
  store i8 -1, ptr %i.ev, align 1, !dbg !3150, !noalias !2995
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(176) %i.ed, ptr noundef nonnull align 1 dereferenceable(176) %i.cq, i64 176, i1 false), !dbg !3151, !noalias !2995
  br label %bb.r, !dbg !3153

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !2996
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !3000

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 22)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !3154

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !3158, !noalias !2995
  unreachable, !dbg !3158

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !3159, !noalias !2995 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !3160
  %i.ex = lshr i64 %.pre77, 3, !dbg !3160
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !3160
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !3159

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !3160
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !3159 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !3160
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !3160
  %i.fb = load i64, ptr %i.e, align 8, !dbg !3162, !noalias !2995, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3163
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !3163
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !3163, !noalias !2995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3036, !noalias !2989
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3164

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !3165, !noalias !3166
  unreachable, !dbg !3165

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !3167
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !3167
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !3168
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !3168
  ret { i64, i64 } %i.ff, !dbg !3169
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3170 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172), !dbg !3175
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3176 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !3176, !alias.scope !3172, !noalias !3178, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !3181             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !3181
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !3183, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3185 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !3185, !alias.scope !3172, !noalias !3178, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !3186
  %i.l = add i64 %i.j, 1, !dbg !3186              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !3186
  %i.n = mul nuw i64 %i.m, 7, !dbg !3186
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !3186 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !3188
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !3189
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !3189

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3190, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !3192
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !3193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3195), !dbg !3198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3199, !noalias !3201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3204, !noalias !3201
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 24, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !3204
  %i.q = load ptr, ptr %i.b, align 8, !dbg !3206, !noalias !3201, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !3206
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3208
  %i.t = load i64, ptr %i.s, align 8, !dbg !3208, !noalias !3201 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3208
  %i.v = load i64, ptr %i.u, align 8, !dbg !3208, !noalias !3201 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !3209

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3210, !noalias !3201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3211, !noalias !3201
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3212

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !3211, !noalias !3213
  br label %common.resume, !dbg !3214

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3215
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !3215, !noalias !3201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3210, !noalias !3201
  store ptr %i.d, ptr %i.c, align 8, !dbg !3216, !noalias !3201
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3216
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3216, !noalias !3201
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3216
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3216, !noalias !3201
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3216 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3216, !noalias !3201
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !3216
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3216, !noalias !3201
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3216 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3216, !noalias !3201
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3216 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3216, !noalias !3201
  %i.x = load i64, ptr %i.e, align 8, !dbg !3217, !alias.scope !3219, !noalias !3220, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !3221
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !3221

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !3223, !alias.scope !3219, !noalias !3220, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !3225
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !3227
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !3231
  br label %.preheader, !dbg !3221

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !3232
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !3236

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !3237 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !3239
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !3241
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !3245 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !3246    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !3232
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3236

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !3247, !alias.scope !3219, !noalias !3220
  br label %._crit_edge64, !dbg !3247

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !3247 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !3248
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3248, !noalias !3201
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3249, !noalias !3201
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !3250, !noalias !3213

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !3256, !noalias !3213
  unreachable, !dbg !3256

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !3211, !noalias !3213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3211, !noalias !3201
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3212

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !3257 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3257 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !3257
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !3258
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3262
  %i.al = zext nneg i16 %i.ak to i64, !dbg !3263
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !3264
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !3266 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !3267    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !3268, !alias.scope !3275, !noalias !3278, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !3280
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.ap, i64 %i.aq, !dbg !3285
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -24, !dbg !3286
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !3292 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !3297 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3300
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !3303, !noalias !3307
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3310
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !3310 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !3314
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3316, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !3297
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !3310
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3317
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !3320
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !3321
  %i.ba = and i64 %i.az, %i.t, !dbg !3321         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !3322
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !3327, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !3328
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3328, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3330
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !3332
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !3332 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !3335
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !3337
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !3337
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3338
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3340

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !3341           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !3343
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !3297 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !3300
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !3303, !noalias !3307
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3310
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !3310 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !3314
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3316, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !3344
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !3347 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !3348
  %i.br = and i64 %i.bq, %i.t, !dbg !3351
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3352
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !3355, !noalias !3213
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !3356
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !3356
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !3359, !noalias !3213
  %i.bv = load ptr, ptr %0, align 8, !dbg !3360, !alias.scope !3219, !noalias !3220, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !3363
  %.neg61.i.i = mul i64 %.neg.i.i, 24, !dbg !3363
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !3364
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3366
  %.neg63.i.i = mul i64 %.neg62.i.i, 24, !dbg !3366
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bx, ptr noundef nonnull align 1 dereferenceable(24) %i.bw, i64 range(i64 8, 417) 24, i1 false), !dbg !3370, !noalias !3213
  %i.by = icmp eq i64 %i.ao, 0, !dbg !3221
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !3221

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !3372

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373), !dbg !3376
  %.val11 = load ptr, ptr %0, align 8, !dbg !3377 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3379
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !3379

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !3383
  %i.ca = and i64 %i.l, 15, !dbg !3388
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !3389
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !3389
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !3389
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !3379

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !3390
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3391, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !3393
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !3395  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3396 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !3399
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3401
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3404
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !3404
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !3406
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !3379
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !3379

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3409

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3410
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3415, !noalias !3416
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3418
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !3418, !noalias !3416
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3418
  store i64 24, ptr %i.ck, align 8, !dbg !3418, !noalias !3416
  store ptr %0, ptr %i.a, align 8, !dbg !3418, !noalias !3416
  %i.cl = load i64, ptr %i.i, align 8, !dbg !3420, !alias.scope !3373, !noalias !3422, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !3423
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3427

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !3428
  %i.cn = load ptr, ptr %0, align 8, !dbg !3431, !noalias !3422, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !3433
  %i.cp = load i8, ptr %i.co, align 1, !dbg !3435, !noalias !3422, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !3435
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !3438

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !3428
  %.neg11.i = mul i64 %.neg.i, 24, !dbg !3439
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !3441 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3443

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !3444, !alias.scope !3448, !noalias !3451, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [24 x i8], ptr %i.cs, i64 %i.cr, !dbg !3453
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -24, !dbg !3456
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !3460 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !3463, !noalias !3422

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !3464, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3464, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !3465 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !3467
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !3470, !noalias !3474
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !3477
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !3477 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !3481
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3483, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !3465
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !3477
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !3484
  %i.db = zext nneg i16 %i.da to i64, !dbg !3487
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !3488
  %i.dd = and i64 %i.dc, %.val9, !dbg !3488       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !3489
  %i.df = load i8, ptr %i.de, align 1, !dbg !3494, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !3495
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3495, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !3497
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !3499
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !3499 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !3502
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !3504
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !3504
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !3505
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3507

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !3508           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !3510
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !3465 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !3467
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !3470, !noalias !3474
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !3477
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !3477 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !3481
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3483, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !3511
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !3515
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !3518
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !3518
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !3518
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !3519, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !3521
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !3524 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !3525
  %i.dy = and i64 %.val9, %i.dx, !dbg !3528
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !3529
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !3532, !noalias !3422
  %i.ea = load ptr, ptr %0, align 8, !dbg !3533, !noalias !3422, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !3535
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !3535
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !3537, !noalias !3422
  br label %bb.r, !dbg !3538

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !3539
  %.neg13.i = mul i64 %.neg12.i, 24, !dbg !3539
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3541 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !3543 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !3547, !noalias !3422, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !3548
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !3551 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !3552
  %i.ej = and i64 %i.ei, %.val9, !dbg !3555
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !3556, !noalias !3422
  %i.ek = load ptr, ptr %0, align 8, !dbg !3557, !noalias !3422, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !3559
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !3559
  store i8 %i.eh, ptr %i.em, align 1, !dbg !3561, !noalias !3422
  %i.en = icmp eq i8 %i.ef, -1, !dbg !3562
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !3562

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !3563
  %i.ep = load i64, ptr %i.i, align 8, !dbg !3566, !noalias !3422, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !3567
  %i.er = load ptr, ptr %0, align 8, !dbg !3568, !noalias !3422, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !3570
  store i8 -1, ptr %i.es, align 1, !dbg !3572, !noalias !3422
  %i.et = load ptr, ptr %0, align 8, !dbg !3573, !noalias !3422, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !3575
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !3575
  store i8 -1, ptr %i.ev, align 1, !dbg !3577, !noalias !3422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ed, ptr noundef nonnull align 1 dereferenceable(24) %i.cq, i64 24, i1 false), !dbg !3578, !noalias !3422
  br label %bb.r, !dbg !3580

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !3423
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !3427

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 3)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !3581

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !3585, !noalias !3422
  unreachable, !dbg !3585

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !3586, !noalias !3422 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !3587
  %i.ex = lshr i64 %.pre77, 3, !dbg !3587
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !3587
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !3586

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !3587
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !3586 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !3587
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !3587
  %i.fb = load i64, ptr %i.e, align 8, !dbg !3589, !noalias !3422, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3590
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !3590
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !3590, !noalias !3422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3463, !noalias !3416
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3591

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !3592, !noalias !3593
  unreachable, !dbg !3592

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !3594
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !3594
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !3595
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !3595
  ret { i64, i64 } %i.ff, !dbg !3596
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1B_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !3597 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599), !dbg !3602
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3603 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !3603, !alias.scope !3599, !noalias !3605, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !3608             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !3608
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !3610, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3612 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !3612, !alias.scope !3599, !noalias !3605, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !3613
  %i.l = add i64 %i.j, 1, !dbg !3613              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !3613
  %i.n = mul nuw i64 %i.m, 7, !dbg !3613
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !3613 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !3615
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !3616
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !3616

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3617, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !3619
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !3620
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3622), !dbg !3625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3626, !noalias !3628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3631, !noalias !3628
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 176, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !3631
  %i.q = load ptr, ptr %i.b, align 8, !dbg !3633, !noalias !3628, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !3633
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3635
  %i.t = load i64, ptr %i.s, align 8, !dbg !3635, !noalias !3628 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3635
  %i.v = load i64, ptr %i.u, align 8, !dbg !3635, !noalias !3628 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !3636

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3637, !noalias !3628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3638, !noalias !3628
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3639

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !3638, !noalias !3640
  br label %common.resume, !dbg !3641

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3642
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !3642, !noalias !3628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3637, !noalias !3628
  store ptr %i.d, ptr %i.c, align 8, !dbg !3643, !noalias !3628
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3643
  store i64 176, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !3643, !noalias !3628
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !3643
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !3643, !noalias !3628
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !3643 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !3643, !noalias !3628
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !3643
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3643, !noalias !3628
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !3643 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3643, !noalias !3628
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !3643 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3643, !noalias !3628
  %i.x = load i64, ptr %i.e, align 8, !dbg !3644, !alias.scope !3646, !noalias !3647, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !3648
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !3648

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !3650, !alias.scope !3646, !noalias !3647, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !3652
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !3654
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !3658
  br label %.preheader, !dbg !3648

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !3659
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !3663

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !3664 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !3666
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !3668
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !3672 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !3673    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !3659
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !3663

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !3674, !alias.scope !3646, !noalias !3647
  br label %._crit_edge64, !dbg !3674

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !3674 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !3675
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3675, !noalias !3628
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !3676, !noalias !3628
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !3677, !noalias !3640

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !3683, !noalias !3640
  unreachable, !dbg !3683

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !3638, !noalias !3640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3638, !noalias !3628
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !3639

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !3684 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !3684 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !3684
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !3685
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !3689
  %i.al = zext nneg i16 %i.ak to i64, !dbg !3690
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !3691
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !3693 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !3694    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !3695, !alias.scope !3702, !noalias !3705, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !3707
  %i.ar = getelementptr inbounds [176 x i8], ptr %i.ap, i64 %i.aq, !dbg !3712
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -176, !dbg !3713
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull align 16 %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !3719 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !3724 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !3727
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !3730, !noalias !3734
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !3737
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !3737 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !3741
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3743, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !3724
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !3737
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !3744
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !3747
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !3748
  %i.ba = and i64 %i.az, %i.t, !dbg !3748         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !3749
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !3754, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !3755
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3755, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !3757
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !3759
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !3759 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !3762
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !3764
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !3764
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !3765
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !3767

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !3768           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !3770
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !3724 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !3727
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !3730, !noalias !3734
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !3737
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !3737 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !3741
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !3743, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !3771
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !3774 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !3775
  %i.br = and i64 %i.bq, %i.t, !dbg !3778
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !3779
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !3782, !noalias !3640
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !3783
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !3783
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !3786, !noalias !3640
  %i.bv = load ptr, ptr %0, align 8, !dbg !3787, !alias.scope !3646, !noalias !3647, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !3790
  %.neg61.i.i = mul i64 %.neg.i.i, 176, !dbg !3790
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !3791
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !3793
  %.neg63.i.i = mul i64 %.neg62.i.i, 176, !dbg !3793
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !3795
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(176) %i.bx, ptr noundef nonnull align 1 dereferenceable(176) %i.bw, i64 range(i64 8, 417) 176, i1 false), !dbg !3797, !noalias !3640
  %i.by = icmp eq i64 %i.ao, 0, !dbg !3648
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !3648

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !3799

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3800), !dbg !3803
  %.val11 = load ptr, ptr %0, align 8, !dbg !3804 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !3806
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !3806

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !3810
  %i.ca = and i64 %i.l, 15, !dbg !3815
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !3816
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !3816
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !3816
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !3806

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !3817
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3818, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !3820
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !3822  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !3823 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !3826
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !3828
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !3831
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !3831
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !3833
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !3806
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !3806

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !3836

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !3837
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !3840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3842, !noalias !3843
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3845
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1G_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !3845, !noalias !3843
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3845
  store i64 176, ptr %i.ck, align 8, !dbg !3845, !noalias !3843
  store ptr %0, ptr %i.a, align 8, !dbg !3845, !noalias !3843
  %i.cl = load i64, ptr %i.i, align 8, !dbg !3847, !alias.scope !3800, !noalias !3849, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !3850
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !3854

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !3855
  %i.cn = load ptr, ptr %0, align 8, !dbg !3858, !noalias !3849, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !3860
  %i.cp = load i8, ptr %i.co, align 1, !dbg !3862, !noalias !3849, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !3862
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !3865

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !3855
  %.neg11.i = mul i64 %.neg.i, 176, !dbg !3866
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !3868 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !3870

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !3871, !alias.scope !3875, !noalias !3878, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [176 x i8], ptr %i.cs, i64 %i.cr, !dbg !3880
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -176, !dbg !3883
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull align 16 %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !3887 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !3890, !noalias !3849

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !3891, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !3891, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !3892 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !3894
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !3897, !noalias !3901
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !3904
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !3904 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !3908
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3910, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !3892
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !3904
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !3911
  %i.db = zext nneg i16 %i.da to i64, !dbg !3914
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !3915
  %i.dd = and i64 %i.dc, %.val9, !dbg !3915       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !3916
  %i.df = load i8, ptr %i.de, align 1, !dbg !3921, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !3922
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3922, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !3924
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !3926
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !3926 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !3929
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !3931
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !3931
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !3932
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !3934

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1D_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !3935           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !3937
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !3892 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !3894
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !3897, !noalias !3901
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !3904
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !3904 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !3908
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !3910, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !3938
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !3942
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !3945
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !3945
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !3945
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !3946, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !3948
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !3951 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !3952
  %i.dy = and i64 %.val9, %i.dx, !dbg !3955
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !3956
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !3959, !noalias !3849
  %i.ea = load ptr, ptr %0, align 8, !dbg !3960, !noalias !3849, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !3962
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !3962
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !3964, !noalias !3849
  br label %bb.r, !dbg !3965

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !3966
  %.neg13.i = mul i64 %.neg12.i, 176, !dbg !3966
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !3968 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !3970 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !3974, !noalias !3849, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !3975
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !3978 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !3979
  %i.ej = and i64 %i.ei, %.val9, !dbg !3982
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !3983, !noalias !3849
  %i.ek = load ptr, ptr %0, align 8, !dbg !3984, !noalias !3849, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !3986
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !3986
  store i8 %i.eh, ptr %i.em, align 1, !dbg !3988, !noalias !3849
  %i.en = icmp eq i8 %i.ef, -1, !dbg !3989
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !3989

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !3990
  %i.ep = load i64, ptr %i.i, align 8, !dbg !3993, !noalias !3849, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !3994
  %i.er = load ptr, ptr %0, align 8, !dbg !3995, !noalias !3849, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !3997
  store i8 -1, ptr %i.es, align 1, !dbg !3999, !noalias !3849
  %i.et = load ptr, ptr %0, align 8, !dbg !4000, !noalias !3849, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !4002
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !4002
  store i8 -1, ptr %i.ev, align 1, !dbg !4004, !noalias !3849
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(176) %i.ed, ptr noundef nonnull align 1 dereferenceable(176) %i.cq, i64 176, i1 false), !dbg !4005, !noalias !3849
  br label %bb.r, !dbg !4007

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !3850
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !3854

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 22)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !4008

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !4012, !noalias !3849
  unreachable, !dbg !4012

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !4013, !noalias !3849 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !4014
  %i.ex = lshr i64 %.pre77, 3, !dbg !4014
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !4014
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !4013

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !4014
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !4013 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !4014
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !4014
  %i.fb = load i64, ptr %i.e, align 8, !dbg !4016, !noalias !3849, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4017
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !4017
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !4017, !noalias !3849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3890, !noalias !3843
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4018

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !4019, !noalias !4020
  unreachable, !dbg !4019

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !4021
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !4021
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !4022
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !4022
  ret { i64, i64 } %i.ff, !dbg !4023
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BS_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !4024 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026), !dbg !4029
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4030 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !4030, !alias.scope !4026, !noalias !4032, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !4035             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !4035
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !4037, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4039 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !4039, !alias.scope !4026, !noalias !4032, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !4040
  %i.l = add i64 %i.j, 1, !dbg !4040              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !4040
  %i.n = mul nuw i64 %i.m, 7, !dbg !4040
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !4040 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !4042
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !4043
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !4043

bb.c:                                             ; preds = %bb.a
  br i1 %3, label %bb.u, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4044, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !4046
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !4047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4049), !dbg !4052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4053, !noalias !4055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4058, !noalias !4055
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 160, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %3) #37, !dbg !4058
  %i.q = load ptr, ptr %i.b, align 8, !dbg !4060, !noalias !4055, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !4060
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4062
  %i.t = load i64, ptr %i.s, align 8, !dbg !4062, !noalias !4055 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4062
  %i.v = load i64, ptr %i.u, align 8, !dbg !4062, !noalias !4055 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !4063

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4064, !noalias !4055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4065, !noalias !4055
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4066

bb.f:                                             ; preds = %._crit_edge
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !4065, !noalias !4067
  br label %common.resume, !dbg !4068

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4069
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !4069, !noalias !4055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4064, !noalias !4055
  store ptr %i.d, ptr %i.c, align 8, !dbg !4070, !noalias !4055
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4070
  store i64 160, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4070, !noalias !4055
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4070
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4070, !noalias !4055
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4070 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !4070, !noalias !4055
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !4070
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4070, !noalias !4055
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4070 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4070, !noalias !4055
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !4070 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4070, !noalias !4055
  %i.x = load i64, ptr %i.e, align 8, !dbg !4071, !alias.scope !4073, !noalias !4074, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !4075
  br i1 %i.y, label %._crit_edge64, label %.preheader.lr.ph, !dbg !4075

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !4077, !alias.scope !4073, !noalias !4074, !nonnull !16, !noundef !16 ; 2 uses
  %.val546 = load <16 x i8>, ptr %i.z, align 16, !dbg !4079
  %i.aa = icmp sgt <16 x i8> %.val546, splat (i8 -1), !dbg !4081
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !4085
  br label %.preheader, !dbg !4075

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.039.063 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.039.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.060 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i355 = icmp eq i16 %.sroa.13.060, 0, !dbg !4086
  br i1 %.not.i355, label %.noexc4, label %._crit_edge, !dbg !4090

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.039.157 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.039.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.039.157) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.039.157, i64 16, !dbg !4091 ; 3 uses
  %.val47 = load <16 x i8>, ptr %i.ac, align 16, !dbg !4093
  %i.ad = icmp sgt <16 x i8> %.val47, splat (i8 -1), !dbg !4095
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !4099 ; 2 uses
  %i.af = add i64 %.sroa.5.156, 16, !dbg !4100    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !4086
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !4090

._crit_edge64.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre76 = load i64, ptr %i.e, align 8, !dbg !4101, !alias.scope !4073, !noalias !4074
  br label %._crit_edge64, !dbg !4101

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre76, %._crit_edge64.loopexit ], [ 0, %bb.g ], !dbg !4101 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !4102
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4102, !noalias !4055
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4103, !noalias !4055
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !4104, !noalias !4067

bb.h:                                             ; preds = %._crit_edge64
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !4110, !noalias !4067
  unreachable, !dbg !4110

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge64
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !4065, !noalias !4067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4065, !noalias !4055
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4066

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !4111 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4111 ; 2 uses
  %.sroa.039.1.lcssa = phi ptr [ %.sroa.039.063, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !4111
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !4112
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4116
  %i.al = zext nneg i16 %i.ak to i64, !dbg !4117
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !4118
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !4120 ; 2 uses
  %i.ao = add i64 %.sroa.9.061, -1, !dbg !4121    ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !dbg !4122, !alias.scope !4129, !noalias !4132, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !4134
  %i.ar = getelementptr inbounds [160 x i8], ptr %i.ap, i64 %i.aq, !dbg !4139
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -160, !dbg !4140
  %i.at = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !4146 ; 2 uses

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge
  %.sroa.0.07.i = and i64 %i.t, %i.at, !dbg !4151 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4154
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.au, align 1, !dbg !4157, !noalias !4161
  %i.av = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4164
  %i.aw = bitcast <16 x i1> %i.av to i16, !dbg !4164 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.aw, 0, !dbg !4168
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4170, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !4151
  %.lcssa.i = phi i16 [ %i.aw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ], [ %i.bn, %.lr.ph.i ], !dbg !4164
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4171
  %i.ay = zext nneg i16 %i.ax to i64, !dbg !4174
  %i.az = add i64 %.sroa.0.0.lcssa.i, %i.ay, !dbg !4175
  %i.ba = and i64 %i.az, %i.t, !dbg !4175         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba, !dbg !4176
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !4181, !noundef !16
  %i.bd = icmp sgt i8 %i.bc, -1, !dbg !4182
  br i1 %i.bd, label %bb.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4182, !prof !357

bb.i:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4184
  %i.be = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !4186
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !4186 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bf, 0, !dbg !4189
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true), !dbg !4191
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !4191
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4192
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4194

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bi = phi i64 [ %i.bj, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit ]
  %i.bj = add i64 %i.bi, 16, !dbg !4195           ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.0.010.i, !dbg !4197
  %.sroa.0.0.i15 = and i64 %i.bk, %i.t, !dbg !4151 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !4154
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bl, align 1, !dbg !4157, !noalias !4161
  %i.bm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4164
  %i.bn = bitcast <16 x i1> %i.bm to i16, !dbg !4164 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bn, 0, !dbg !4168
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4170, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.i, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bh, %bb.i ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bo = lshr i64 %i.at, 57, !dbg !4198
  %i.bp = trunc nuw nsw i64 %i.bo to i8, !dbg !4201 ; 2 uses
  %i.bq = add i64 %.sroa.0.0.i5.i, -16, !dbg !4202
  %i.br = and i64 %i.bq, %i.t, !dbg !4205
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4206
  store i8 %i.bp, ptr %i.bs, align 1, !dbg !4209, !noalias !4067
  %i.bt = getelementptr i8, ptr %i.q, i64 %i.br, !dbg !4210
  %i.bu = getelementptr i8, ptr %i.bt, i64 16, !dbg !4210
  store i8 %i.bp, ptr %i.bu, align 1, !dbg !4213, !noalias !4067
  %i.bv = load ptr, ptr %0, align 8, !dbg !4214, !alias.scope !4073, !noalias !4074, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !4217
  %.neg61.i.i = mul i64 %.neg.i.i, 160, !dbg !4217
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.neg61.i.i, !dbg !4218
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4220
  %.neg63.i.i = mul i64 %.neg62.i.i, 160, !dbg !4220
  %i.bx = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4222
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.bx, ptr noundef nonnull align 1 dereferenceable(160) %i.bw, i64 range(i64 8, 417) 160, i1 false), !dbg !4224, !noalias !4067
  %i.by = icmp eq i64 %i.ao, 0, !dbg !4075
  br i1 %i.by, label %._crit_edge64.loopexit, label %.preheader, !dbg !4075

common.resume:                                    ; preds = %bb.m, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.cw, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !4226

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4227), !dbg !4230
  %.val11 = load ptr, ptr %0, align 8, !dbg !4231 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4233
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !4233

.lr.ph.i16:                                       ; preds = %bb.j
  %i.bz = lshr i64 %i.l, 4, !dbg !4237
  %i.ca = and i64 %i.l, 15, !dbg !4242
  %.not10.i.i.i = icmp ne i64 %i.ca, 0, !dbg !4243
  %i.cb = zext i1 %.not10.i.i.i to i64, !dbg !4243
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.bz, %i.cb, !dbg !4243
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.k, !dbg !4233

._crit_edge.i18:                                  ; preds = %bb.k
  %i.cc = icmp ult i64 %i.l, 16, !dbg !4244
  br i1 %i.cc, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4245, !prof !733

bb.k:                                             ; preds = %bb.k, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.cd, %bb.k ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ce, %bb.k ]
  %i.cd = add i64 %.sroa.01.08.i, 16, !dbg !4247
  %i.ce = add i64 %.sroa.04.07.i, -1, !dbg !4249  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4250 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cf, align 16, !dbg !4253
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4255
  %i.cg = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4258
  %i.ch = or <2 x i64> %i.cg, splat (i64 -9187201950435737472), !dbg !4258
  store <2 x i64> %i.ch, ptr %i.cf, align 16, !dbg !4260
  %.not.i17 = icmp eq i64 %i.ce, 0, !dbg !4233
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.k, !dbg !4233

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.j
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4263

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
  %.sink9.i = phi i64 [ %i.l, %._crit_edge.thread.i ], [ 16, %._crit_edge.i18 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sink10.i, !dbg !4264
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %.val11, i64 %.sink9.i, i1 false), !dbg !4267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4269, !noalias !4270
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4272
  store ptr @_RNvYNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtBb_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BX_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0Es_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTOhEE9call_onceCshquuC4dCYVj_10polars_sql, ptr %i.cj, align 8, !dbg !4272, !noalias !4270
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4272
  store i64 160, ptr %i.ck, align 8, !dbg !4272, !noalias !4270
  store ptr %0, ptr %i.a, align 8, !dbg !4272, !noalias !4270
  %i.cl = load i64, ptr %i.i, align 8, !dbg !4274, !alias.scope !4227, !noalias !4276, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.cl, -1, !dbg !4277
  br i1 %.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %.lr.ph, !dbg !4281

.lr.ph:                                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, %bb.r
  %.sroa.04.0.i54 = phi i64 [ %i.cm, %bb.r ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ] ; 10 uses
  %i.cm = add nuw i64 %.sroa.04.0.i54, 1, !dbg !4282
  %i.cn = load ptr, ptr %0, align 8, !dbg !4285, !noalias !4276, !nonnull !16, !noundef !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.04.0.i54, !dbg !4287
  %i.cp = load i8, ptr %i.co, align 1, !dbg !4289, !noalias !4276, !noundef !16
  %.not.i2 = icmp eq i8 %i.cp, -128, !dbg !4289
  br i1 %.not.i2, label %bb.l, label %bb.r, !dbg !4292

bb.l:                                             ; preds = %.lr.ph
  %.neg.i = xor i64 %.sroa.04.0.i54, -1, !dbg !4282
  %.neg11.i = mul i64 %.neg.i, 160, !dbg !4293
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.neg11.i, !dbg !4295 ; 2 uses
  %i.cr = sub nsw i64 0, %.sroa.04.0.i54
  br label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit, !dbg !4297

_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit: ; preds = %bb.s, %bb.l
  %i.cs = load ptr, ptr %0, align 8, !dbg !4298, !alias.scope !4302, !noalias !4305, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds [160 x i8], ptr %i.cs, i64 %i.cr, !dbg !4307
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -160, !dbg !4310
  %i.cv = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRReECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.cu)
          to label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 unwind label %bb.m, !dbg !4314 ; 3 uses

bb.m:                                             ; preds = %bb.s, %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.t, !dbg !4317, !noalias !4276

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21: ; preds = %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit
  %.val8 = load ptr, ptr %0, align 8, !dbg !4318, !nonnull !16, !noundef !16 ; 7 uses
  %.val9 = load i64, ptr %i.i, align 8, !dbg !4318, !noundef !16 ; 6 uses
  %.sroa.0.07.i22 = and i64 %.val9, %i.cv, !dbg !4319 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.07.i22, !dbg !4321
  %.sroa.0.0.copyload.i68.i23 = load <16 x i8>, ptr %i.cx, align 1, !dbg !4324, !noalias !4328
  %i.cy = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i23, zeroinitializer, !dbg !4331
  %i.cz = bitcast <16 x i1> %i.cy to i16, !dbg !4331 ; 2 uses
  %.not.i9.i24 = icmp eq i16 %i.cz, 0, !dbg !4335
  br i1 %.not.i9.i24, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !4337, !prof !591

._crit_edge.i25:                                  ; preds = %.lr.ph.i31, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21
  %.sroa.0.0.lcssa.i26 = phi i64 [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %.sroa.0.0.i33, %.lr.ph.i31 ], !dbg !4319
  %.lcssa.i27 = phi i16 [ %i.cz, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ], [ %i.dq, %.lr.ph.i31 ], !dbg !4331
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i27, i1 true), !dbg !4338
  %i.db = zext nneg i16 %i.da to i64, !dbg !4341
  %i.dc = add i64 %.sroa.0.0.lcssa.i26, %i.db, !dbg !4342
  %i.dd = and i64 %i.dc, %.val9, !dbg !4342       ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val8, i64 %i.dd, !dbg !4343
  %i.df = load i8, ptr %i.de, align 1, !dbg !4348, !noundef !16
  %i.dg = icmp sgt i8 %i.df, -1, !dbg !4349
  br i1 %i.dg, label %bb.n, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !4349, !prof !357

bb.n:                                             ; preds = %._crit_edge.i25
  %.val2.i.i29 = load <16 x i8>, ptr %.val8, align 16, !dbg !4351
  %i.dh = icmp slt <16 x i8> %.val2.i.i29, zeroinitializer, !dbg !4353
  %i.di = bitcast <16 x i1> %i.dh to i16, !dbg !4353 ; 2 uses
  %.not.i6.i30 = icmp ne i16 %i.di, 0, !dbg !4356
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.di, i1 true), !dbg !4358
  %i.dk = zext nneg i16 %i.dj to i64, !dbg !4358
  tail call void @llvm.assume(i1 %.not.i6.i30), !dbg !4359
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36, !dbg !4361

.lr.ph.i31:                                       ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21, %.lr.ph.i31
  %.sroa.0.010.i32 = phi i64 [ %.sroa.0.0.i33, %.lr.ph.i31 ], [ %.sroa.0.07.i22, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dl = phi i64 [ %i.dm, %.lr.ph.i31 ], [ 0, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTReNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BU_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE0E0CshquuC4dCYVj_10polars_sql.exit21 ]
  %i.dm = add i64 %i.dl, 16, !dbg !4362           ; 2 uses
  %i.dn = add i64 %i.dm, %.sroa.0.010.i32, !dbg !4364
  %.sroa.0.0.i33 = and i64 %i.dn, %.val9, !dbg !4319 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i33, !dbg !4321
  %.sroa.0.0.copyload.i6.i34 = load <16 x i8>, ptr %i.do, align 1, !dbg !4324, !noalias !4328
  %i.dp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i34, zeroinitializer, !dbg !4331
  %i.dq = bitcast <16 x i1> %i.dp to i16, !dbg !4331 ; 2 uses
  %.not.i.i35 = icmp eq i16 %i.dq, 0, !dbg !4335
  br i1 %.not.i.i35, label %.lr.ph.i31, label %._crit_edge.i25, !dbg !4337, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36: ; preds = %bb.n, %._crit_edge.i25
  %.sroa.0.0.i5.i28 = phi i64 [ %i.dk, %bb.n ], [ %i.dd, %._crit_edge.i25 ] ; 4 uses
  %i.dr = sub i64 %.sroa.04.0.i54, %.sroa.0.07.i22, !dbg !4365
  %i.ds = sub i64 %.sroa.0.0.i5.i28, %.sroa.0.07.i22, !dbg !4369
  %i.dt = xor i64 %i.ds, %i.dr, !dbg !4372
  %.unshifted.i = and i64 %i.dt, %.val9, !dbg !4372
  %i.du = icmp ult i64 %.unshifted.i, 16, !dbg !4372
  br i1 %i.du, label %bb.o, label %bb.p, !dbg !4373, !prof !921

bb.o:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %i.dv = lshr i64 %i.cv, 57, !dbg !4375
  %i.dw = trunc nuw nsw i64 %i.dv to i8, !dbg !4378 ; 2 uses
  %i.dx = add i64 %.sroa.04.0.i54, -16, !dbg !4379
  %i.dy = and i64 %.val9, %i.dx, !dbg !4382
  %i.dz = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.04.0.i54, !dbg !4383
  store i8 %i.dw, ptr %i.dz, align 1, !dbg !4386, !noalias !4276
  %i.ea = load ptr, ptr %0, align 8, !dbg !4387, !noalias !4276, !nonnull !16, !noundef !16
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dy, !dbg !4389
  %i.ec = getelementptr i8, ptr %i.eb, i64 16, !dbg !4389
  store i8 %i.dw, ptr %i.ec, align 1, !dbg !4391, !noalias !4276
  br label %bb.r, !dbg !4392

bb.p:                                             ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit36
  %.neg12.i = xor i64 %.sroa.0.0.i5.i28, -1, !dbg !4393
  %.neg13.i = mul i64 %.neg12.i, 160, !dbg !4393
  %i.ed = getelementptr inbounds i8, ptr %.val8, i64 %.neg13.i, !dbg !4395 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val8, i64 %.sroa.0.0.i5.i28, !dbg !4397 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !dbg !4401, !noalias !4276, !noundef !16
  %i.eg = lshr i64 %i.cv, 57, !dbg !4402
  %i.eh = trunc nuw nsw i64 %i.eg to i8, !dbg !4405 ; 2 uses
  %i.ei = add i64 %.sroa.0.0.i5.i28, -16, !dbg !4406
  %i.ej = and i64 %i.ei, %.val9, !dbg !4409
  store i8 %i.eh, ptr %i.ee, align 1, !dbg !4410, !noalias !4276
  %i.ek = load ptr, ptr %0, align 8, !dbg !4411, !noalias !4276, !nonnull !16, !noundef !16
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej, !dbg !4413
  %i.em = getelementptr i8, ptr %i.el, i64 16, !dbg !4413
  store i8 %i.eh, ptr %i.em, align 1, !dbg !4415, !noalias !4276
  %i.en = icmp eq i8 %i.ef, -1, !dbg !4416
  br i1 %i.en, label %bb.q, label %bb.s, !dbg !4416

bb.q:                                             ; preds = %bb.p
  %i.eo = add i64 %.sroa.04.0.i54, -16, !dbg !4417
  %i.ep = load i64, ptr %i.i, align 8, !dbg !4420, !noalias !4276, !noundef !16
  %i.eq = and i64 %i.ep, %i.eo, !dbg !4421
  %i.er = load ptr, ptr %0, align 8, !dbg !4422, !noalias !4276, !nonnull !16, !noundef !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.04.0.i54, !dbg !4424
  store i8 -1, ptr %i.es, align 1, !dbg !4426, !noalias !4276
  %i.et = load ptr, ptr %0, align 8, !dbg !4427, !noalias !4276, !nonnull !16, !noundef !16
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq, !dbg !4429
  %i.ev = getelementptr i8, ptr %i.eu, i64 16, !dbg !4429
  store i8 -1, ptr %i.ev, align 1, !dbg !4431, !noalias !4276
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.ed, ptr noundef nonnull align 1 dereferenceable(160) %i.cq, i64 160, i1 false), !dbg !4432, !noalias !4276
  br label %bb.r, !dbg !4434

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.04.0.i54, %i.cl, !dbg !4277
  br i1 %exitcond.not, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, label %.lr.ph, !dbg !4281

bb.s:                                             ; preds = %bb.p
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ed, i64 noundef 20)
          to label %_RNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes.exit unwind label %bb.m, !dbg !4435

bb.t:                                             ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !4439, !noalias !4276
  unreachable, !dbg !4439

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit: ; preds = %bb.r
  %.pre = load i64, ptr %i.i, align 8, !dbg !4440, !noalias !4276 ; 2 uses
  %.pre77 = add i64 %.pre, 1, !dbg !4441
  %i.ex = lshr i64 %.pre77, 3, !dbg !4441
  %i.ey = mul nuw i64 %i.ex, 7, !dbg !4441
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, !dbg !4440

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit
  %.pre-phi = phi i64 [ %i.ey, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ 0, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !4441
  %i.ez = phi i64 [ %.pre, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.loopexit ], [ -1, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit ], !dbg !4440 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 8, !dbg !4441
  %.sroa.01.0.i = select i1 %i.fa, i64 %i.ez, i64 %.pre-phi, !dbg !4441
  %i.fb = load i64, ptr %i.e, align 8, !dbg !4443, !noalias !4276, !noundef !16
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4444
  %i.fd = sub i64 %.sroa.01.0.i, %i.fb, !dbg !4444
  store i64 %i.fd, ptr %i.fc, align 8, !dbg !4444, !noalias !4276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4317, !noalias !4270
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4445

bb.u:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #36, !dbg !4446, !noalias !4447
  unreachable, !dbg !4446

_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.e, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit, %bb.c, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ undef, %bb.c ], [ undef, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.v, %bb.e ], [ undef, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !4448
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ -9223372036854775807, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %i.t, %bb.e ], [ -9223372036854775807, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit ], !dbg !4448
  %i.fe = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0, !dbg !4449
  %i.ff = insertvalue { i64, i64 } %i.fe, i64 %.sroa.4.0.i, 1, !dbg !4449
  ret { i64, i64 } %i.ff, !dbg !4450
}

; Function Attrs: cold noinline nonlazybind optsize uwtable
define { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtCsgZ49sUHp3tW_5alloc6string6StringuE0ECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !4451 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !4452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4453), !dbg !4456
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4457 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !4457, !alias.scope !4453, !noalias !4459, !noundef !16 ; 2 uses
  %i.g = add i64 %i.f, %1, !dbg !4462             ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f, !dbg !4462
  br i1 %i.h, label %bb.c, label %bb.b, !dbg !4464, !prof !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4466 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !4466, !alias.scope !4453, !noalias !4459, !noundef !16 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8, !dbg !4467
  %i.l = add i64 %i.j, 1, !dbg !4467              ; 7 uses
  %i.m = lshr i64 %i.l, 3, !dbg !4467
  %i.n = mul nuw i64 %i.m, 7, !dbg !4467
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n, !dbg !4467 ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1, !dbg !4469
  %.not.i = icmp ugt i64 %i.g, %i.o, !dbg !4470
  br i1 %.not.i, label %bb.d, label %bb.l, !dbg !4470

bb.c:                                             ; preds = %bb.a
  br i1 %4, label %bb.y, label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4471, !prof !357

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1, !dbg !4473
  %.sroa.0.0.i13 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.p, i64 range(i64 1, 0) %i.g), !dbg !4474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4476), !dbg !4479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4480, !noalias !4482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4485, !noalias !4482
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 8, 417) 8, i64 noundef range(i64 1, 0) %.sroa.0.0.i13, i1 noundef zeroext %4) #37, !dbg !4485
  %i.q = load ptr, ptr %i.b, align 8, !dbg !4487, !noalias !4482, !noundef !16 ; 9 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !4487
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4489
  %i.t = load i64, ptr %i.s, align 8, !dbg !4489, !noalias !4482 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4489
  %i.v = load i64, ptr %i.u, align 8, !dbg !4489, !noalias !4482 ; 3 uses
  br i1 %i.r, label %bb.e, label %bb.g, !dbg !4490

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4491, !noalias !4482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4492, !noalias !4482
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4493

bb.f:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34, !dbg !4492, !noalias !4494
  br label %common.resume, !dbg !4495

bb.g:                                             ; preds = %bb.d
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4496
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !dbg !4496, !noalias !4482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4491, !noalias !4482
  store ptr %i.d, ptr %i.c, align 8, !dbg !4497, !noalias !4482
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4497
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4497
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4497 ; 2 uses
  store ptr %i.q, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !4497
  store i64 %i.t, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !4497 ; 2 uses
  store i64 %i.v, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !4497 ; 2 uses
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4497, !noalias !4482
  %i.x = load i64, ptr %i.e, align 8, !dbg !4498, !alias.scope !4500, !noalias !4501, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !4502
  br i1 %i.y, label %._crit_edge76, label %.preheader.lr.ph, !dbg !4502

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !dbg !4504, !alias.scope !4500, !noalias !4501, !nonnull !16, !noundef !16 ; 2 uses
  %.val549 = load <16 x i8>, ptr %i.z, align 16, !dbg !4506
  %i.aa = icmp sgt <16 x i8> %.val549, splat (i8 -1), !dbg !4508
  %i.ab = bitcast <16 x i1> %i.aa to i16, !dbg !4512
  br label %.preheader, !dbg !4502

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.041.075 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.041.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.074 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.073 = phi i64 [ %i.x, %.preheader.lr.ph ], [ %i.ao, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.072 = phi i16 [ %i.ab, %.preheader.lr.ph ], [ %i.am, %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i367 = icmp eq i16 %.sroa.13.072, 0, !dbg !4513
  br i1 %.not.i367, label %.noexc4, label %._crit_edge, !dbg !4517

.noexc4:                                          ; preds = %.preheader, %.noexc4
  %.sroa.041.169 = phi ptr [ %i.ac, %.noexc4 ], [ %.sroa.041.075, %.preheader ] ; 2 uses
  %.sroa.5.168 = phi i64 [ %i.af, %.noexc4 ], [ %.sroa.5.074, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.169) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.041.169, i64 16, !dbg !4518 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.ac, align 16, !dbg !4520
  %i.ad = icmp sgt <16 x i8> %.val50, splat (i8 -1), !dbg !4522
  %i.ae = bitcast <16 x i1> %i.ad to i16, !dbg !4526 ; 2 uses
  %i.af = add i64 %.sroa.5.168, 16, !dbg !4527    ; 2 uses
  %.not.i3 = icmp eq i16 %i.ae, 0, !dbg !4513
  br i1 %.not.i3, label %.noexc4, label %._crit_edge, !dbg !4517

._crit_edge76.loopexit:                           ; preds = %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre98 = load i64, ptr %i.e, align 8, !dbg !4528, !alias.scope !4500, !noalias !4501
  br label %._crit_edge76, !dbg !4528

._crit_edge76:                                    ; preds = %._crit_edge76.loopexit, %bb.g
  %i.ag = phi i64 [ %.pre98, %._crit_edge76.loopexit ], [ 0, %bb.g ], !dbg !4528 ; 2 uses
  %i.ah = sub i64 %i.v, %i.ag, !dbg !4529
  store i64 %i.ah, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4529, !noalias !4482
  store i64 %i.ag, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !4530, !noalias !4482
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit unwind label %bb.h, !dbg !4531, !noalias !4494

bb.h:                                             ; preds = %._crit_edge76
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #35, !dbg !4537, !noalias !4494
  unreachable, !dbg !4537

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerECshquuC4dCYVj_10polars_sql.exit: ; preds = %._crit_edge76
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(56) %i.c), !dbg !4492, !noalias !4494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4492, !noalias !4482
  br label %_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql.exit, !dbg !4493

._crit_edge:                                      ; preds = %.noexc4, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.072, %.preheader ], [ %i.ae, %.noexc4 ], !dbg !4538 ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.074, %.preheader ], [ %i.af, %.noexc4 ], !dbg !4538 ; 2 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.075, %.preheader ], [ %i.ac, %.noexc4 ], !dbg !4538
  %i.aj = add i16 %.sroa.13.1.lcssa, -1, !dbg !4539
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true), !dbg !4543
  %i.al = zext nneg i16 %i.ak to i64, !dbg !4544
  %i.am = and i16 %i.aj, %.sroa.13.1.lcssa, !dbg !4545
  %i.an = add i64 %.sroa.5.1.lcssa, %i.al, !dbg !4547 ; 2 uses
  %i.ao = add i64 %.sroa.9.073, -1, !dbg !4548    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4549), !dbg !4552
  %i.ap = load ptr, ptr %0, align 8, !dbg !4553, !alias.scope !4549, !noalias !4560, !nonnull !16, !noundef !16
  %i.aq = sub nsw i64 0, %i.an, !dbg !4562
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq, !dbg !4567
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8, !dbg !4568
  %.val3.i = load i64, ptr %i.as, align 8, !dbg !4574, !noalias !4575, !noundef !16 ; 3 uses
  %i.at = icmp ult i64 %.val3.i, %3, !dbg !4576
  br i1 %i.at, label %bb.j, label %bb.i, !dbg !4576

bb.i:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.val3.i, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #36
          to label %.noexc14 unwind label %bb.f, !dbg !4576

.noexc14:                                         ; preds = %bb.i
  unreachable, !dbg !4576

bb.j:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.val3.i, !dbg !4576
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !4576
  %i.aw = load i64, ptr %i.av, align 8, !dbg !4576, !noalias !4575, !noundef !16 ; 2 uses
  %.sroa.0.07.i = and i64 %i.t, %i.aw, !dbg !4584 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i, !dbg !4587
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ax, align 1, !dbg !4590, !noalias !4594
  %i.ay = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer, !dbg !4597
  %i.az = bitcast <16 x i1> %i.ay to i16, !dbg !4597 ; 2 uses
  %.not.i9.i = icmp eq i16 %i.az, 0, !dbg !4601
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4603, !prof !591

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.j ], [ %.sroa.0.0.i15, %.lr.ph.i ], !dbg !4584
  %.lcssa.i = phi i16 [ %i.az, %bb.j ], [ %i.bq, %.lr.ph.i ], !dbg !4597
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true), !dbg !4604
  %i.bb = zext nneg i16 %i.ba to i64, !dbg !4607
  %i.bc = add i64 %.sroa.0.0.lcssa.i, %i.bb, !dbg !4608
  %i.bd = and i64 %i.bc, %i.t, !dbg !4608         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bd, !dbg !4609
  %i.bf = load i8, ptr %i.be, align 1, !dbg !4614, !noundef !16
  %i.bg = icmp sgt i8 %i.bf, -1, !dbg !4615
  br i1 %i.bg, label %bb.k, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4615, !prof !357

bb.k:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16, !dbg !4617
  %i.bh = icmp slt <16 x i8> %.val2.i.i, zeroinitializer, !dbg !4619
  %i.bi = bitcast <16 x i1> %i.bh to i16, !dbg !4619 ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bi, 0, !dbg !4622
  %i.bj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bi, i1 true), !dbg !4624
  %i.bk = zext nneg i16 %i.bj to i64, !dbg !4624
  tail call void @llvm.assume(i1 %.not.i6.i), !dbg !4625
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !dbg !4627

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i15, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.j ]
  %i.bl = phi i64 [ %i.bm, %.lr.ph.i ], [ 0, %bb.j ]
  %i.bm = add i64 %i.bl, 16, !dbg !4628           ; 2 uses
  %i.bn = add i64 %i.bm, %.sroa.0.010.i, !dbg !4630
  %.sroa.0.0.i15 = and i64 %i.bn, %i.t, !dbg !4584 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i15, !dbg !4587
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bo, align 1, !dbg !4590, !noalias !4594
  %i.bp = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer, !dbg !4597
  %i.bq = bitcast <16 x i1> %i.bp to i16, !dbg !4597 ; 2 uses
  %.not.i.i = icmp eq i16 %i.bq, 0, !dbg !4601
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !dbg !4603, !prof !638

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.k, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.bk, %bb.k ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %i.br = lshr i64 %i.aw, 57, !dbg !4631
  %i.bs = trunc nuw nsw i64 %i.br to i8, !dbg !4634 ; 2 uses
  %i.bt = add i64 %.sroa.0.0.i5.i, -16, !dbg !4635
  %i.bu = and i64 %i.bt, %i.t, !dbg !4638
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i, !dbg !4639
  store i8 %i.bs, ptr %i.bv, align 1, !dbg !4642, !noalias !4494
  %i.bw = getelementptr i8, ptr %i.q, i64 %i.bu, !dbg !4643
  %i.bx = getelementptr i8, ptr %i.bw, i64 16, !dbg !4643
  store i8 %i.bs, ptr %i.bx, align 1, !dbg !4646, !noalias !4494
  %i.by = load ptr, ptr %0, align 8, !dbg !4647, !alias.scope !4500, !noalias !4501, !nonnull !16, !noundef !16
  %.neg.i.i = xor i64 %i.an, -1, !dbg !4650
  %.neg61.i.i = shl i64 %.neg.i.i, 3, !dbg !4650
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %.neg61.i.i, !dbg !4651
  %.neg62.i.i = xor i64 %.sroa.0.0.i5.i, -1, !dbg !4653
  %.neg63.i.i = shl i64 %.neg62.i.i, 3, !dbg !4653
  %i.ca = getelementptr inbounds i8, ptr %i.q, i64 %.neg63.i.i, !dbg !4655
  %i.cb = load i64, ptr %i.bz, align 1, !dbg !4657, !noalias !4494
  store i64 %i.cb, ptr %i.ca, align 1, !dbg !4657, !noalias !4494
  %i.cc = icmp eq i64 %i.ao, 0, !dbg !4502
  br i1 %i.cc, label %._crit_edge76.loopexit, label %.preheader, !dbg !4502

common.resume:                                    ; preds = %bb.p, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.f ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !4659

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4660), !dbg !4663
  %.val11 = load ptr, ptr %0, align 8, !dbg !4664 ; 5 uses
  %.not6.i = icmp eq i64 %i.l, 0, !dbg !4666
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i16, !dbg !4666

.lr.ph.i16:                                       ; preds = %bb.l
  %i.cd = lshr i64 %i.l, 4, !dbg !4670
  %i.ce = and i64 %i.l, 15, !dbg !4675
  %.not10.i.i.i = icmp ne i64 %i.ce, 0, !dbg !4676
  %i.cf = zext i1 %.not10.i.i.i to i64, !dbg !4676
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cd, %i.cf, !dbg !4676
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  br label %bb.m, !dbg !4666

._crit_edge.i18:                                  ; preds = %bb.m
  %i.cg = icmp ult i64 %i.l, 16, !dbg !4677
  br i1 %i.cg, label %._crit_edge.thread.i, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4678, !prof !733

bb.m:                                             ; preds = %bb.m, %.lr.ph.i16
  %.sroa.01.08.i = phi i64 [ 0, %.lr.ph.i16 ], [ %i.ch, %bb.m ] ; 2 uses
  %.sroa.04.07.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i16 ], [ %i.ci, %bb.m ]
  %i.ch = add i64 %.sroa.01.08.i, 16, !dbg !4680
  %i.ci = add i64 %.sroa.04.07.i, -1, !dbg !4682  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val11, i64 %.sroa.01.08.i, !dbg !4683 ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cj, align 16, !dbg !4686
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7), !dbg !4688
  %i.ck = bitcast <16 x i8> %.lobit.i.i to <2 x i64>, !dbg !4691
  %i.cl = or <2 x i64> %i.ck, splat (i64 -9187201950435737472), !dbg !4691
  store <2 x i64> %i.cl, ptr %i.cj, align 16, !dbg !4693
  %.not.i17 = icmp eq i64 %i.ci, 0, !dbg !4666
  br i1 %.not.i17, label %._crit_edge.i18, label %bb.m, !dbg !4666

._crit_edge.thread.i:                             ; preds = %._crit_edge.i18, %bb.l
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit, !dbg !4696

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit: ; preds = %._crit_edge.i18, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.l, %._crit_edge.i18 ]
end_hunk_0
