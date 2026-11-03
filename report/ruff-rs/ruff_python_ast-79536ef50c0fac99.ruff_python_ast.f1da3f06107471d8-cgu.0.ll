Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19any_over_type_param:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.d, %bb.i, %bb.c, %bb.g, %bb.f, %bb.e
  %.sroa.0.1 = phi i1 [ false, %bb.c ], [ true, %bb.e ], [ false, %bb.f ], [ %i.m, %bb.g ], [ %i.o, %bb.i ], [ %i.q, %bb.j ], [ false, %bb.d ]
  ret i1 %.sroa.0.1

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !8221
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.n, align 8, !noalias !8221
  %i.o = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @61), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !8222
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.p, align 8, !noalias !8222
  %i.q = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %i.g, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @61), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19generate_comparison(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr nofree noundef nonnull readonly align 8 captures(address) %4, i64 noundef range(i64 0, 128102389400760776) %5, i64 noundef range(i64 0, 94) %6, ptr noundef %7, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %10) unnamed_addr #2 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %i.d = load i32, ptr %1, align 8, !range !62, !noundef !46 ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %.sroa.0.0.i = load i32, ptr %i.f, align 4, !noundef !46 ; 2 uses
  %.not = icmp eq i64 %5, 0
  %i.g = getelementptr [72 x i8], ptr %4, i64 %5
  %i.h = getelementptr i8, ptr %i.g, i64 -72      ; 3 uses
  %.not.i142 = icmp eq ptr %i.h, null
  %.not.i = or i1 %.not, %.not.i142
  br i1 %.not.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit, label %switch.lookup340

switch.lookup340:                                 ; preds = %switch.lookup
  %i.i = load i32, ptr %i.h, align 8, !range !62, !noundef !46
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit: ; preds = %switch.lookup, %switch.lookup340
  %.sink349 = phi i32 [ %i.i, %switch.lookup340 ], [ %i.d, %switch.lookup ]
  %switch.table._RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19generate_comparison.1377.sink = phi ptr [ @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.1404, %switch.lookup340 ], [ @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.1404, %switch.lookup ]
  %.sink = phi ptr [ %i.h, %switch.lookup340 ], [ %1, %switch.lookup ]
  %i.j = zext nneg i32 %.sink349 to i64
  %switch.gep341 = getelementptr inbounds nuw i8, ptr %switch.table._RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19generate_comparison.1377.sink, i64 %i.j
  %switch.load342 = load i8, ptr %switch.gep341, align 1
  %switch.ext343 = zext i8 %switch.load342 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.sink, i64 %switch.ext343
  %.sroa.02.0.i = load i32, ptr %i.k, align 4, !noundef !46 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = sub i32 %.sroa.02.0.i, %.sroa.0.0.i
  %i.m = zext i32 %i.l to i64                     ; 4 uses
  %i.n = icmp eq i32 %.sroa.02.0.i, %.sroa.0.0.i
  br i1 %i.n, label %switch.lookup350, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8295
  %i.o = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #61, !noalias !8295 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskLngH8kgpZI_15ruff_python_ast.exit, label %bb.a

bb.a:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i
  %i.q = ptrtoint ptr %i.o to i64
  %.pre = load i32, ptr %1, align 8, !range !62
  br label %switch.lookup350

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.m) #60
  unreachable

switch.lookup350:                                 ; preds = %bb.a, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit
  %i.r = phi i32 [ %i.d, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.sroa.9.0.ph = phi i64 [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE11map_or_elseNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvNtBN_7helpers19generate_comparison0NvYBJ_NtNtB1P_6traits6Ranged3endEBN_.exit ], [ %i.q, %bb.a ]
  %i.s = inttoptr i64 %.sroa.9.0.ph to ptr        ; 3 uses
  store i64 %i.m, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = zext nneg i32 %i.r to i64
  %switch.gep351 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor10visit_exprB8_, i64 %i.t
  %switch.load352 = load i8, ptr %switch.gep351, align 1
  %switch.ext353 = zext i8 %switch.load352 to i64
  %switch.idx.cast = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8296
  invoke void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, i64 noundef range(i64 0, 33) %switch.idx.cast, ptr noundef nonnull readonly %i.u, i64 noundef range(i64 0, 94) %6, ptr %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i108, %switch.lookup367, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i47, %.invoke295, %.invoke, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i, %switch.lookup350
  %lpad.loopexit.split-lp382 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8297)
  %.val.i = load i64, ptr %i.c, align 8, !alias.scope !8297 ; 2 uses
  %i.v = icmp eq i64 %.val.i, 0
  br i1 %i.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskLngH8kgpZI_15ruff_python_ast.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8297, !nonnull !46, !noundef !46
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #61, !noalias !8297
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskLngH8kgpZI_15ruff_python_ast.exit

.noexc:                                           ; preds = %switch.lookup350
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8296 ; 2 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.53.0.copyload.i = load i8, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !8296
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.64.0.copyload.i = load ptr, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !8296
  %i.w = trunc nuw i8 %.sroa.53.0.copyload.i to i1
  br i1 %i.w, label %.loopexit147, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8296
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !8296 ; 2 uses
  %.fr83.i.i = freeze i8 %.sroa.8.0.copyload.i
  %i.x = trunc i8 %.fr83.i.i to i1
  br i1 %i.x, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader: ; preds = %.split.i.i
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !8296
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i: ; preds = %.split.i.i, %bb.c
  %i.y = phi ptr [ %i.aa, %bb.c ], [ %.sroa.3.0.copyload.i, %.split.i.i ] ; 3 uses
  %i.z = icmp eq ptr %i.y, %.sroa.42.0.copyload.i
  br i1 %i.z, label %.loopexit147, label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ac = load i8, ptr %i.ab, align 2, !range !98, !noalias !8298, !noundef !46
  %i.ad = and i8 %i.ac, 125
  %switch.selectcmp.i.i.not.i.i.i.i.us.i.i = icmp eq i8 %i.ad, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.us.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i, label %.loopexit147

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i
  %i.ae = phi ptr [ %i.ap, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i ], [ %.sroa.7.0.copyload.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader ]
  %i.af = phi ptr [ %i.ai, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i ], [ %.sroa.3.0.copyload.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader ]
  %.sroa.7.0.i.i = phi i32 [ %.val.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader ] ; 4 uses
  %.sroa.6.0.i.i = phi i32 [ %.val6.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader ] ; 4 uses
  %.sroa.07.0.i.i = phi i1 [ true, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i.preheader ] ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i
  %i.ag = phi ptr [ %i.ai, %bb.e ], [ %i.af, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i ] ; 5 uses
  %i.ah = icmp eq ptr %i.ag, %.sroa.42.0.copyload.i
  br i1 %i.ah, label %.loopexit147, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 10
  %i.ak = load i8, ptr %i.aj, align 2, !range !98, !noalias !8298, !noundef !46 ; 2 uses
  %i.al = and i8 %i.ak, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i.i = icmp eq i8 %i.al, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i.i, label %bb.d, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.am = icmp eq i8 %i.ak, 21
  br i1 %i.am, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i, label %.loopexit147

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i, %bb.f
  %i.an = phi ptr [ %i.ap, %bb.f ], [ %i.ae, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i ] ; 3 uses
  %i.ao = icmp eq ptr %.sroa.64.0.copyload.i, %i.an
  br i1 %i.ao, label %.loopexit147, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -12 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -2
  %i.ar = load i8, ptr %i.aq, align 2, !range !98, !alias.scope !8299, !noalias !8300, !noundef !46 ; 2 uses
  %i.as = and i8 %i.ar, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.as, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i: ; preds = %bb.f
  %i.at = icmp eq i8 %i.ar, 20
  br i1 %i.at, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i, label %.loopexit147

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i
  %i.au = getelementptr i8, ptr %i.ag, i64 4
  %.val.i.i = load i32, ptr %i.au, align 4, !noalias !8301, !noundef !46 ; 2 uses
  %.val6.i.i = load i32, ptr %i.ap, align 4, !noalias !8301, !noundef !46 ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %.val6.i.i, %.val.i.i
  br i1 %.not.i.i.i.i, label %.invoke, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i, !prof !47

.loopexit147:                                     ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i, %bb.d, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i, %bb.c, %.noexc
  %.sroa.7.056.i.i = phi i32 [ undef, %.noexc ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i ], [ %.sroa.7.0.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i ], [ %.sroa.7.0.i.i, %bb.d ], [ undef, %bb.c ], [ %.sroa.7.0.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i ], [ %.sroa.7.0.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i ]
  %.sroa.6.050.i.i = phi i32 [ undef, %.noexc ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i ], [ %.sroa.6.0.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i ], [ %.sroa.6.0.i.i, %bb.d ], [ undef, %bb.c ], [ %.sroa.6.0.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i ], [ %.sroa.6.0.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i ]
  %.sroa.07.044.i.i = phi i1 [ false, %.noexc ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i ], [ %.sroa.07.0.i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i ], [ %.sroa.07.0.i.i, %bb.d ], [ false, %bb.c ], [ %.sroa.07.0.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i ], [ %.sroa.07.0.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8296
  %i.av = load i32, ptr %1, align 8, !range !62, !noundef !46 ; 2 uses
  %i.aw = zext nneg i32 %i.av to i64
  %switch.gep355 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.aw
  %switch.load356 = load i8, ptr %switch.gep355, align 1
  %switch.ext357 = zext i8 %switch.load356 to i64
  %i.ax = zext nneg i32 %i.av to i64
  %switch.gep358 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.1404, i64 %i.ax
  %switch.load359 = load i8, ptr %switch.gep358, align 1
  %switch.ext360 = zext i8 %switch.load359 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext357
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext360
  %.sroa.0.0.i34 = load i32, ptr %i.ay, align 4, !noundef !46
  %.sroa.34.0.i35 = load i32, ptr %i.az, align 4, !noundef !46
  %.sroa.3.0 = select i1 %.sroa.07.044.i.i, i32 %.sroa.7.056.i.i, i32 %.sroa.34.0.i35 ; 4 uses
  %.sroa.01.0 = select i1 %.sroa.07.044.i.i, i32 %.sroa.6.050.i.i, i32 %.sroa.0.0.i34 ; 4 uses
  %i.ba = zext i32 %.sroa.01.0 to i64             ; 10 uses
  %i.bb = zext i32 %.sroa.3.0 to i64              ; 9 uses
  %.not.i38 = icmp ugt i32 %.sroa.01.0, %.sroa.3.0
  br i1 %.not.i38, label %.invoke295, label %bb.g

bb.g:                                             ; preds = %.loopexit147
  %i.bc = icmp eq i32 %.sroa.01.0, 0
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not5.i = icmp ugt i64 %10, %i.ba
  br i1 %.not5.i, label %bb.j, label %.split.i

bb.i:                                             ; preds = %bb.j, %.split.i, %bb.g
  %i.bd = icmp eq i32 %.sroa.3.0, 0
  br i1 %i.bd, label %bb.m, label %bb.k

.split.i:                                         ; preds = %bb.h
  %i.be = icmp eq i64 %10, %i.ba
  br i1 %i.be, label %bb.i, label %.invoke295

bb.j:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 %i.ba
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !8302, !noundef !46
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %bb.i, label %.invoke295

bb.k:                                             ; preds = %bb.i
  %.not6.i = icmp ugt i64 %10, %i.bb
  br i1 %.not6.i, label %bb.l, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bi = icmp eq i64 %10, %i.bb
  br i1 %i.bi, label %bb.m, label %.invoke295

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 %i.bb
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !8302, !noundef !46
  %i.bl = icmp sgt i8 %i.bk, -65
  br i1 %i.bl, label %bb.m, label %.invoke295

bb.m:                                             ; preds = %bb.l, %.split7.i, %bb.i
  %i.bm = sub nuw nsw i64 %i.bb, %i.ba            ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 %i.ba
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8303)
  %i.bo = icmp samesign ugt i64 %i.bm, %i.m
  br i1 %i.bo, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i, !prof !47

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i: ; preds = %bb.m
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %i.bm, i64 noundef 1, i64 noundef 1)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i
  %i.bp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8303, !noundef !46 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  tail call void @llvm.assume(i1 %i.bq)
  %.pre230 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8303
  br label %bb.n

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i: ; preds = %bb.m
  %.not.i40 = icmp eq i32 %.sroa.3.0, %.sroa.01.0
  br i1 %.not.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i, %.noexc41
  %i.br = phi ptr [ %.pre230, %.noexc41 ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i ] ; 2 uses
  %i.bs = phi i64 [ %i.bp, %.noexc41 ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.bn, i64 %i.bm, i1 false), !noalias !8303
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i, %bb.n
  %i.bu = phi ptr [ %i.br, %bb.n ], [ %i.s, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i ] ; 2 uses
  %i.bv = phi i64 [ %i.bs, %bb.n ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i ]
  %i.bw = add nuw i64 %i.bv, %i.bm                ; 2 uses
  store i64 %i.bw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8303
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %5, i64 %3) ; 2 uses
  %.not186 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %.sroa.42.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.53.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.64.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.8.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.7.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.3.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %switch.lookup361

switch.lookup361:                                 ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110
  %i.bx = phi ptr [ %i.bu, %.lr.ph ], [ %i.ev, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110 ]
  %i.by = phi ptr [ %i.bu, %.lr.ph ], [ %i.ew, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110 ]
  %i.bz = phi i64 [ %i.bw, %.lr.ph ], [ %i.ey, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110 ] ; 4 uses
  %.sroa.8.0185 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110 ] ; 3 uses
  %i.ca = add nuw nsw i64 %.sroa.8.0185, 1        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.8.0185
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %4, i64 %.sroa.8.0185 ; 5 uses
  %i.cd = load i8, ptr %i.cb, align 1, !range !111, !noundef !46 ; 2 uses
  %i.ce = zext nneg i8 %i.cd to i64
  %switch.gep362 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19generate_comparison.1382, i64 %i.ce
  %switch.load363 = load i8, ptr %switch.gep362, align 1
  %switch.ext364 = zext i8 %switch.load363 to i64 ; 4 uses
  %i.cf = zext nneg i8 %i.cd to i64
  %switch.gep365 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers19generate_comparison.1383, i64 %i.cf
  %switch.load366 = load ptr, ptr %switch.gep365, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8304)
  %i.cg = load i64, ptr %i.c, align 8, !range !52, !alias.scope !8305, !noundef !46
  %i.ch = sub i64 %i.cg, %i.bz
  %i.ci = icmp ult i64 %i.ch, %switch.ext364
  br i1 %i.ci, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i47, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i45, !prof !47

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i47: ; preds = %switch.lookup361
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bz, i64 noundef %switch.ext364, i64 noundef 1, i64 noundef 1)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i47
  %i.cj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8304, !noundef !46 ; 2 uses
  %i.ck = icmp sgt i64 %i.cj, -1
  tail call void @llvm.assume(i1 %i.ck)
  %.pre231 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8304 ; 2 uses
  br label %switch.lookup367

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i45: ; preds = %switch.lookup361
  %i.cl = icmp sgt i64 %i.bz, -1
  tail call void @llvm.assume(i1 %i.cl)
  br label %switch.lookup367

switch.lookup367:                                 ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i45, %.noexc48
  %i.cm = phi ptr [ %.pre231, %.noexc48 ], [ %i.bx, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i45 ] ; 2 uses
  %i.cn = phi ptr [ %.pre231, %.noexc48 ], [ %i.by, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i45 ] ; 2 uses
  %i.co = phi i64 [ %i.cj, %.noexc48 ], [ %i.bz, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i45 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(1) %switch.load366, i64 %switch.ext364, i1 false), !noalias !8304
  %i.cq = add nuw i64 %i.co, %switch.ext364       ; 6 uses
  store i64 %i.cq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8304
  %i.cr = load i32, ptr %i.cc, align 8, !range !62, !noundef !46 ; 2 uses
  %i.cs = zext nneg i32 %i.cr to i64
  %switch.gep368 = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor10visit_exprB8_, i64 %i.cs
  %switch.load369 = load i8, ptr %switch.gep368, align 1
  %switch.ext370 = zext i8 %switch.load369 to i64
  %switch.idx.cast371 = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 %switch.ext370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8306
  invoke void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, i64 noundef range(i64 0, 33) %switch.idx.cast371, ptr noundef nonnull readonly %i.ct, i64 noundef range(i64 0, 94) %6, ptr %7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %8)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %switch.lookup367
  %.sroa.42.0.copyload.i57 = load ptr, ptr %.sroa.42.0..sroa_idx.i56, align 8, !noalias !8306 ; 2 uses
  %.sroa.53.0.copyload.i59 = load i8, ptr %.sroa.53.0..sroa_idx.i58, align 8, !noalias !8306
  %.sroa.64.0.copyload.i61 = load ptr, ptr %.sroa.64.0..sroa_idx.i60, align 8, !noalias !8306
  %i.cu = trunc nuw i8 %.sroa.53.0.copyload.i59 to i1
  br i1 %i.cu, label %.loopexit, label %.split.i.i66

.split.i.i66:                                     ; preds = %.noexc89
  %.sroa.8.0.copyload.i65 = load i8, ptr %.sroa.8.0..sroa_idx.i64, align 8, !noalias !8306
  %.sroa.3.0.copyload.i55 = load ptr, ptr %.sroa.3.0..sroa_idx.i54, align 8, !noalias !8306 ; 2 uses
  %.fr83.i.i67 = freeze i8 %.sroa.8.0.copyload.i65
  %i.cv = trunc i8 %.fr83.i.i67 to i1
  br i1 %i.cv, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader: ; preds = %.split.i.i66
  %.sroa.7.0.copyload.i63 = load ptr, ptr %.sroa.7.0..sroa_idx.i62, align 8, !noalias !8306
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86: ; preds = %.split.i.i66, %bb.p
  %i.cw = phi ptr [ %i.cy, %bb.p ], [ %.sroa.3.0.copyload.i55, %.split.i.i66 ] ; 3 uses
  %i.cx = icmp eq ptr %i.cw, %.sroa.42.0.copyload.i57
  br i1 %i.cx, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.da = load i8, ptr %i.cz, align 2, !range !98, !noalias !8307, !noundef !46
  %i.db = and i8 %i.da, 125
  %switch.selectcmp.i.i.not.i.i.i.i.us.i.i87 = icmp eq i8 %i.db, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.us.i.i87, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86, label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82
  %i.dc = phi ptr [ %i.dn, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82 ], [ %.sroa.7.0.copyload.i63, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader ]
  %i.dd = phi ptr [ %i.dg, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82 ], [ %.sroa.3.0.copyload.i55, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader ]
  %.sroa.7.0.i.i69 = phi i32 [ %.val.i.i83, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82 ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader ] ; 4 uses
  %.sroa.6.0.i.i70 = phi i32 [ %.val6.i.i84, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82 ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader ] ; 4 uses
  %.sroa.07.0.i.i71 = phi i1 [ true, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82 ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68.preheader ] ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68
  %i.de = phi ptr [ %i.dg, %bb.r ], [ %i.dd, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68 ] ; 5 uses
  %i.df = icmp eq ptr %i.de, %.sroa.42.0.copyload.i57
  br i1 %i.df, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 10
  %i.di = load i8, ptr %i.dh, align 2, !range !98, !noalias !8307, !noundef !46 ; 2 uses
  %i.dj = and i8 %i.di, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i.i72 = icmp eq i8 %i.dj, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i.i72, label %bb.q, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73: ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  %i.dk = icmp eq i8 %i.di, 21
  br i1 %i.dk, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79, label %.loopexit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73, %bb.s
  %i.dl = phi ptr [ %i.dn, %bb.s ], [ %i.dc, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73 ] ; 3 uses
  %i.dm = icmp eq ptr %.sroa.64.0.copyload.i61, %i.dl
  br i1 %i.dm, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 -12 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 -2
  %i.dp = load i8, ptr %i.do, align 2, !range !98, !alias.scope !8308, !noalias !8309, !noundef !46 ; 2 uses
  %i.dq = and i8 %i.dp, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i.i80 = icmp eq i8 %i.dq, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i.i80, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81: ; preds = %bb.s
  %i.dr = icmp eq i8 %i.dp, 20
  br i1 %i.dr, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82, label %.loopexit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81
  %i.ds = getelementptr i8, ptr %i.de, i64 4
  %.val.i.i83 = load i32, ptr %i.ds, align 4, !noalias !8310, !noundef !46 ; 2 uses
  %.val6.i.i84 = load i32, ptr %i.dn, align 4, !noalias !8310, !noundef !46 ; 2 uses
  %.not.i.i.i.i85 = icmp ugt i32 %.val6.i.i84, %.val.i.i83
  br i1 %.not.i.i.i.i85, label %.invoke, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i.i68, !prof !47

.invoke:                                          ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i.i82
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #60
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86, %bb.p, %bb.q, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79, %.noexc89
  %.sroa.7.056.i.i74 = phi i32 [ undef, %.noexc89 ], [ %.sroa.7.0.i.i69, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79 ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86 ], [ %.sroa.7.0.i.i69, %bb.q ], [ undef, %bb.p ], [ %.sroa.7.0.i.i69, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73 ], [ %.sroa.7.0.i.i69, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81 ]
  %.sroa.6.050.i.i75 = phi i32 [ undef, %.noexc89 ], [ %.sroa.6.0.i.i70, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79 ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86 ], [ %.sroa.6.0.i.i70, %bb.q ], [ undef, %bb.p ], [ %.sroa.6.0.i.i70, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73 ], [ %.sroa.6.0.i.i70, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81 ]
  %.sroa.07.044.i.i76 = phi i1 [ false, %.noexc89 ], [ %.sroa.07.0.i.i71, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i.i79 ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i.i86 ], [ %.sroa.07.0.i.i71, %bb.q ], [ false, %bb.p ], [ %.sroa.07.0.i.i71, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i.i73 ], [ %.sroa.07.0.i.i71, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i.i81 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8306
  %i.dt = load i32, ptr %i.cc, align 8, !range !62, !noundef !46 ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %switch.gep373 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.du
  %switch.load374 = load i8, ptr %switch.gep373, align 1
  %switch.ext375 = zext i8 %switch.load374 to i64
  %i.dv = zext nneg i32 %i.dt to i64
  %switch.gep376 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.1404, i64 %i.dv
  %switch.load377 = load i8, ptr %switch.gep376, align 1
  %switch.ext378 = zext i8 %switch.load377 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cc, i64 %switch.ext375
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %switch.ext378
  %.sroa.0.0.i94 = load i32, ptr %i.dw, align 4, !noundef !46
  %.sroa.34.0.i95 = load i32, ptr %i.dx, align 4, !noundef !46
  %.sroa.37.0 = select i1 %.sroa.07.044.i.i76, i32 %.sroa.7.056.i.i74, i32 %.sroa.34.0.i95 ; 4 uses
  %.sroa.06.0 = select i1 %.sroa.07.044.i.i76, i32 %.sroa.6.050.i.i75, i32 %.sroa.0.0.i94 ; 4 uses
  %i.dy = zext i32 %.sroa.06.0 to i64             ; 10 uses
  %i.dz = zext i32 %.sroa.37.0 to i64             ; 9 uses
  %.not.i98 = icmp ugt i32 %.sroa.06.0, %.sroa.37.0
  br i1 %.not.i98, label %.invoke295, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.ea = icmp eq i32 %.sroa.06.0, 0
  br i1 %i.ea, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not5.i99 = icmp ugt i64 %10, %i.dy
  br i1 %.not5.i99, label %bb.w, label %.split.i100

bb.v:                                             ; preds = %bb.w, %.split.i100, %bb.t
  %i.eb = icmp eq i32 %.sroa.37.0, 0
  br i1 %i.eb, label %bb.z, label %bb.x

.split.i100:                                      ; preds = %bb.u
  %i.ec = icmp eq i64 %10, %i.dy
  br i1 %i.ec, label %bb.v, label %.invoke295

bb.w:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 %i.dy
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !8311, !noundef !46
  %i.ef = icmp sgt i8 %i.ee, -65
  br i1 %i.ef, label %bb.v, label %.invoke295

bb.x:                                             ; preds = %bb.v
  %.not6.i103 = icmp ugt i64 %10, %i.dz
  br i1 %.not6.i103, label %bb.y, label %.split7.i104

.split7.i104:                                     ; preds = %bb.x
  %i.eg = icmp eq i64 %10, %i.dz
  br i1 %i.eg, label %bb.z, label %.invoke295

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 %i.dz
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !8311, !noundef !46
  %i.ej = icmp sgt i8 %i.ei, -65
  br i1 %i.ej, label %bb.z, label %.invoke295

bb.z:                                             ; preds = %bb.y, %.split7.i104, %bb.v
  %i.ek = sub nuw nsw i64 %i.dz, %i.dy            ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 %i.dy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8312)
  %i.em = load i64, ptr %i.c, align 8, !range !52, !alias.scope !8313, !noundef !46
  %i.en = sub i64 %i.em, %i.cq
  %i.eo = icmp ugt i64 %i.ek, %i.en
  br i1 %i.eo, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i108, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106, !prof !47

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i108: ; preds = %bb.z
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.cq, i64 noundef %i.ek, i64 noundef 1, i64 noundef 1)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.thread.i108
  %i.ep = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8312, !noundef !46 ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  tail call void @llvm.assume(i1 %i.eq)
  %.pre232 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8312
  br label %bb.aa

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106: ; preds = %bb.z
  %i.er = icmp sgt i64 %i.cq, -1
  tail call void @llvm.assume(i1 %i.er)
  %.not.i107 = icmp eq i32 %.sroa.37.0, %.sroa.06.0
  br i1 %.not.i107, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110, label %bb.aa

bb.aa:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106, %.noexc109
  %i.es = phi ptr [ %.pre232, %.noexc109 ], [ %i.cm, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106 ] ; 3 uses
  %i.et = phi i64 [ %i.ep, %.noexc109 ], [ %i.cq, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.et
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull readonly align 1 %i.el, i64 %i.ek, i1 false), !noalias !8312
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskLngH8kgpZI_15ruff_python_ast.exit110: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106, %bb.aa
  %i.ev = phi ptr [ %i.es, %bb.aa ], [ %i.cm, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106 ]
  %i.ew = phi ptr [ %i.es, %bb.aa ], [ %i.cn, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106 ]
  %i.ex = phi i64 [ %i.et, %bb.aa ], [ %i.cq, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i106 ]
  %i.ey = add nuw i64 %i.ex, %i.ek                ; 2 uses
  store i64 %i.ey, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8312
  %exitcond.not = icmp eq i64 %i.ca, %.sroa.0.0.i.i.i
  br i1 %exitcond.not, label %._crit_edge, label %switch.lookup361

.invoke295:                                       ; preds = %.split7.i104, %.split.i100, %.loopexit, %bb.w, %bb.y, %.split7.i, %.split.i, %.loopexit147, %bb.j, %bb.l
  %i.ez = phi i64 [ %i.ba, %.split7.i ], [ %i.ba, %bb.l ], [ %i.ba, %bb.j ], [ %i.ba, %.loopexit147 ], [ %i.ba, %.split.i ], [ %i.dy, %bb.y ], [ %i.dy, %bb.w ], [ %i.dy, %.loopexit ], [ %i.dy, %.split.i100 ], [ %i.dy, %.split7.i104 ]
  %i.fa = phi i64 [ %i.bb, %.split7.i ], [ %i.bb, %bb.l ], [ %i.bb, %bb.j ], [ %i.bb, %.loopexit147 ], [ %i.bb, %.split.i ], [ %i.dz, %bb.y ], [ %i.dz, %bb.w ], [ %i.dz, %.loopexit ], [ %i.dz, %.split.i100 ], [ %i.dz, %.split7.i104 ]
  %i.fb = phi ptr [ @364, %.split7.i ], [ @364, %bb.l ], [ @364, %bb.j ], [ @364, %.loopexit147 ], [ @364, %.split.i ], [ @375, %bb.y ], [ @375, %bb.w ], [ @375, %.loopexit ], [ @375, %.split.i100 ], [ @375, %.split7.i104 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %9, i64 noundef %10, i64 noundef %i.ez, i64 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fb) #60
          to label %.cont296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont296:                                         ; preds = %.invoke295
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp382
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers20from_relative_import(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 576460752303423488) %4, ptr noalias noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 576460752303423488) %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [144 x i8], align 8               ; 54 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add nuw nsw i64 %4, %2
  %i.d = add nuw nsw i64 %i.c, %6                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8461)
  %i.e = icmp samesign ult i64 %i.d, 9
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %i.d, 4                          ; 3 uses
  %i.g = icmp samesign ugt i64 %i.d, 1152921504606846975
  %.not.i.i.i = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.g, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.c, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, !prof !61

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #61, !noalias !8462
  %i.h = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #61, !noalias !8462 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.f) #60, !noalias !8463
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 1, ptr %i.b, align 8, !alias.scope !8461
  %.sroa.4.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i34, align 8, !alias.scope !8461
  %.sroa.6.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx.i35, align 8, !alias.scope !8461
  %.sroa.7.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8465)
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtNtB8_6string6StringENvMB2x_B2v_6as_strEE11spec_extendCskLngH8kgpZI_15ruff_python_ast.exit.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i
  %xtraiter = and i64 %2, 1
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %2, 576460752303423486
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.l = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.x, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !noalias !8466, !nonnull !46, !noundef !46
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %.val17.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !8466, !noundef !46
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.l ; 2 uses
  store ptr %.val16.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !8467
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.val17.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !8468
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val16.i.i.i.i.i.i.1 = load ptr, ptr %i.t, align 8, !noalias !8466, !nonnull !46, !noundef !46
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val17.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !noalias !8466, !noundef !46
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.r ; 2 uses
  store ptr %.val16.i.i.i.i.i.i.1, ptr %i.v, align 8, !noalias !8467
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.val17.i.i.i.i.i.i.1, ptr %i.w, align 8, !noalias !8468
  %i.x = add nuw nsw i64 %i.l, 2                  ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtNtB8_6string6StringENvMB2x_B2v_6as_strEE11spec_extendCskLngH8kgpZI_15ruff_python_ast.exit.i.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtNtB8_6string6StringENvMB2x_B2v_6as_strEE11spec_extendCskLngH8kgpZI_15ruff_python_ast.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtNtB8_6string6StringENvMB2x_B2v_6as_strEE11spec_extendCskLngH8kgpZI_15ruff_python_ast.exit.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtNtB8_6string6StringENvMB2x_B2v_6as_strEE11spec_extendCskLngH8kgpZI_15ruff_python_ast.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.x, %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB6_3VecReEINtB4_10SpecExtendBS_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1p_5slice4iter4IterNtNtB8_6string6StringENvMB2x_B2v_6as_strEE11spec_extendCskLngH8kgpZI_15ruff_python_ast.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod131 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
end_hunk_0
begin_hunk_1_@_RNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node:bb.a
  invoke fastcc void @_RINvMsf_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes10Parameters18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMsg_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes9Parameter18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bp:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMsh_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes20ParameterWithDefault18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMsi_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes7Keyword18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMsj_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes5Alias18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMsk_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes8WithItem18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMsl_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes9MatchCase18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %.noexc
  invoke fastcc void @_RINvMNtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB5_5nodes14ElifElseClause18visit_source_orderNtNvNtB5_9find_node13covering_node7VisitorEB5_(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %.noexc
  %i.cj = getelementptr i8, ptr %2, i64 8
  %.val105.i.i = load ptr, ptr %i.cj, align 8, !noalias !8752, !nonnull !46, !noundef !46
  %i.ck = getelementptr i8, ptr %2, i64 16
  %.val106.i.i = load i64, ptr %i.ck, align 8, !noalias !8752, !noundef !46
  invoke fastcc void @_RINvMsn_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes10TypeParams18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_(ptr nonnull %.val105.i.i, i64 %.val106.i.i, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %.noexc
  %i.cl = getelementptr i8, ptr %2, i64 8
  %.val101.i.i = load ptr, ptr %i.cl, align 8, !noalias !8752, !nonnull !46, !noundef !46 ; 2 uses
  %i.cm = getelementptr i8, ptr %2, i64 16
  %.val102.i.i = load i64, ptr %i.cm, align 8, !noalias !8752, !noundef !46 ; 2 uses
  %.idx.i159.i.i = shl nuw nsw i64 %.val102.i.i, 6
  %i.cn = getelementptr inbounds nuw i8, ptr %.val101.i.i, i64 %.idx.i159.i.i
  %i.co = icmp eq i64 %.val102.i.i, 0
  br i1 %i.co, label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i, label %.lr.ph.i160.i.i

.lr.ph.i160.i.i:                                  ; preds = %bb.bw, %.noexc84
  %.sroa.0.01.i161.i.i = phi ptr [ %i.cp, %.noexc84 ], [ %.val101.i.i, %bb.bw ] ; 2 uses
  invoke fastcc void @_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor33visit_interpolated_string_elementB8_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 %.sroa.0.01.i161.i.i)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %.lr.ph.i160.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i161.i.i, i64 64 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cn
  br i1 %i.cq, label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i, label %.lr.ph.i160.i.i

bb.bx:                                            ; preds = %.noexc
  %i.cr = getelementptr i8, ptr %2, i64 8
  %.val103.i.i = load ptr, ptr %i.cr, align 8, !noalias !8752, !nonnull !46, !noundef !46 ; 2 uses
  %i.cs = getelementptr i8, ptr %2, i64 16
  %.val104.i.i = load i64, ptr %i.cs, align 8, !noalias !8752, !noundef !46 ; 2 uses
  %.idx.i162.i.i = shl nuw nsw i64 %.val104.i.i, 6
  %i.ct = getelementptr inbounds nuw i8, ptr %.val103.i.i, i64 %.idx.i162.i.i
  %i.cu = icmp eq i64 %.val104.i.i, 0
  br i1 %i.cu, label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i, label %.lr.ph.i163.i.i

.lr.ph.i163.i.i:                                  ; preds = %bb.bx, %.noexc85
  %.sroa.0.01.i164.i.i = phi ptr [ %i.cv, %.noexc85 ], [ %.val103.i.i, %bb.bx ] ; 2 uses
  invoke fastcc void @_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor33visit_interpolated_string_elementB8_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 %.sroa.0.01.i164.i.i)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %.lr.ph.i163.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i164.i.i, i64 64 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cw, label %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i, label %.lr.ph.i163.i.i

_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i: ; preds = %.noexc85, %.noexc84, %.noexc68, %.noexc64, %.noexc59, %.noexc54, %.noexc53, %.noexc36, %.noexc27, %.noexc26, %.noexc24, %.noexc11, %.invoke, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.noexc70, %bb.bj, %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ax, %bb.aw, %bb.av, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.bx, %bb.bw, %bb.bi, %bb.be, %bb.bb, %bb.ay, %bb.au, %bb.at, %bb.ak, %bb.af, %bb.y, %bb.x, %bb.v, %bb.i, %bb.h, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %.noexc, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit.thread.i
  invoke void @_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b, i64 noundef range(i64 0, 94) %1, ptr noundef %2)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.by:                                            ; preds = %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.bz:                                            ; preds = %bb.ca, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp264

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i160.i.i, %.lr.ph.i157.i.i, %.lr.ph.i147.i.i, %.lr.ph.i144.i.i, %.lr.ph.i134.i.i, %.lr.ph.i131.i.i, %.lr.ph.i.i.i, %.lr.ph.i137.i.i, %.lr.ph.i140.i.i, %.lr.ph.i150.i.i, %.lr.ph.i154.i.i, %.lr.ph.i163.i.i, %.invoke, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.av, %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.bf, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %.noexc70, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cx = icmp eq i64 %.val, 0
  br i1 %i.cx, label %bb.bz, label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val5 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !46, !noundef !46
  %i.cy = shl nuw i64 %.val, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #61
  br label %bb.bz
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses19parenthesized_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i64 noundef range(i64 0, 33) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 94) %3, ptr noundef %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0.copyload = load i8, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.64.0.copyload = load ptr, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8780)
  %i.b = trunc nuw i8 %.sroa.53.0.copyload to i1
  br i1 %i.b, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %.split.i

.split.i:                                         ; preds = %bb.a
  %.fr83.i = freeze i8 %.sroa.8.0.copyload
  %i.c = trunc i8 %.fr83.i to i1
  br i1 %i.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i: ; preds = %.split.i, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.sroa.3.0.copyload, %.split.i ] ; 3 uses
  %i.e = icmp eq ptr %i.d, %.sroa.42.0.copyload
  br i1 %i.e, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.h = load i8, ptr %i.g, align 2, !range !98, !noalias !8781, !noundef !46
  %i.i = and i8 %i.h, 125
  %switch.selectcmp.i.i.not.i.i.i.i.us.i = icmp eq i8 %i.i, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.us.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i: ; preds = %.split.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i
  %i.j = phi ptr [ %i.u, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ %.sroa.7.0.copyload, %.split.i ]
  %i.k = phi ptr [ %i.n, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ %.sroa.3.0.copyload, %.split.i ]
  %.sroa.7.0.i = phi i32 [ %.val.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ undef, %.split.i ] ; 4 uses
  %.sroa.6.0.i = phi i32 [ %.val6.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ undef, %.split.i ] ; 4 uses
  %.sroa.07.0.i = phi i32 [ 1, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ 0, %.split.i ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i
  %i.l = phi ptr [ %i.n, %bb.d ], [ %i.k, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i ] ; 5 uses
  %i.m = icmp eq ptr %i.l, %.sroa.42.0.copyload
  br i1 %i.m, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.p = load i8, ptr %i.o, align 2, !range !98, !noalias !8781, !noundef !46 ; 2 uses
  %i.q = and i8 %i.p, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i = icmp eq i8 %i.q, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i, label %bb.c, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.r = icmp eq i8 %i.p, 21
  br i1 %i.r, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i, %bb.e
  %i.s = phi ptr [ %i.u, %bb.e ], [ %i.j, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ] ; 3 uses
  %i.t = icmp eq ptr %.sroa.64.0.copyload, %i.s
  br i1 %i.t, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -12 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -2
  %i.w = load i8, ptr %i.v, align 2, !range !98, !alias.scope !8782, !noalias !8783, !noundef !46 ; 2 uses
  %i.x = and i8 %i.w, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i: ; preds = %bb.e
  %i.y = icmp eq i8 %i.w, 20
  br i1 %i.y, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i
  %i.z = getelementptr i8, ptr %i.l, i64 4
  %.val.i = load i32, ptr %i.z, align 4, !noalias !8784, !noundef !46 ; 2 uses
  %.val6.i = load i32, ptr %i.u, align 4, !noalias !8784, !noundef !46 ; 2 uses
  %.not.i.i.i = icmp ugt i32 %.val6.i, %.val.i
  br i1 %.not.i.i.i, label %bb.f, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i, !prof !47

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #60, !noalias !8785
  unreachable

_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i, %bb.c, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i, %bb.b, %bb.a
  %.sroa.7.056.i = phi i32 [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i ], [ %.sroa.7.0.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i ], [ %.sroa.7.0.i, %bb.c ], [ undef, %bb.b ], [ %.sroa.7.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i ], [ %.sroa.7.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ]
  %.sroa.6.050.i = phi i32 [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i ], [ %.sroa.6.0.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i ], [ %.sroa.6.0.i, %bb.c ], [ undef, %bb.b ], [ %.sroa.6.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i ], [ %.sroa.6.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ]
  %.sroa.07.044.i = phi i32 [ 0, %bb.a ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i ], [ %.sroa.07.0.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i ], [ %.sroa.07.0.i, %bb.c ], [ 0, %bb.b ], [ %.sroa.07.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i ], [ %.sroa.07.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ]
  store i32 %.sroa.07.044.i, ptr %0, align 4, !alias.scope !8780
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.050.i, ptr %.sroa.6.0..sroa_idx12.i, align 4, !alias.scope !8780
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.056.i, ptr %.sroa.7.0..sroa_idx16.i, align 4, !alias.scope !8780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef range(i64 0, 33) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 -1, 94) %3, ptr %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %3, -1
  br i1 %.not, label %switch.lookup48, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %4, ptr %i.h, align 8
  %i.i = icmp eq i64 %3, 78
  %i.j = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  %i.k = extractvalue { i32, i32 } %i.j, 1
  %i.l = sext i1 %i.i to i32
  %.sroa.03.0 = add i32 %i.k, %i.l                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator.1387, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.m = getelementptr i8, ptr %2, i64 %switch.ext
  %.val2.pn.i12 = load i32, ptr %i.m, align 4, !noalias !8806, !noundef !46 ; 2 uses
  %.not8 = icmp ugt i32 %.val2.pn.i12, %.sroa.03.0
  br i1 %.not8, label %bb.d, label %bb.e, !prof !47

switch.lookup48:                                  ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %switch.gep49 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator.1387, i64 %1
  %switch.load50 = load i8, ptr %switch.gep49, align 1
  %switch.ext51 = zext i8 %switch.load50 to i64
  %i.n = getelementptr i8, ptr %2, i64 %switch.ext51
  %.val2.pn.i = load i32, ptr %i.n, align 4, !noalias !8807, !noundef !46 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val2.pn.i, ptr %i.f, align 4, !noalias !8808
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !8808, !nonnull !46, !noundef !46 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !8808, !noundef !46 ; 8 uses
  switch i64 %i.r, label %.lr.ph.i.i.i [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

.lr.ph.i.i.i:                                     ; preds = %switch.lookup48, %.lr.ph.i.i.i
  %.sroa.01.021.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %switch.lookup48 ] ; 2 uses
  %.sroa.05.020.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ 0, %switch.lookup48 ] ; 2 uses
  %i.s = lshr i64 %.sroa.01.021.i.i.i, 1          ; 2 uses
  %i.t = add nuw nsw i64 %i.s, %.sroa.05.020.i.i.i ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val16.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !8809, !noalias !8808, !noundef !46
  %.not.i18.i.i.i = icmp ugt i32 %.val16.i.i.i, %.val2.pn.i
  %i.x = select i1 %.not.i18.i.i.i, i64 %.sroa.05.020.i.i.i, i64 %i.t, !unpredictable !46 ; 2 uses
  %i.y = sub nuw nsw i64 %.sroa.01.021.i.i.i, %i.s ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %.lr.ph.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i: ; preds = %.lr.ph.i.i.i, %switch.lookup48
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %switch.lookup48 ], [ %i.x, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %.sroa.05.0.lcssa.i.i.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val14.i.i.i = load i32, ptr %i.ab, align 4, !alias.scope !8809, !noalias !8808, !noundef !46
  %.not.i.i.i.i = icmp ule i32 %.val14.i.i.i, %.val2.pn.i
  %i.ac = zext i1 %.not.i.i.i.i to i64
  %i.ad = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.ac ; 4 uses
  %i.ae = icmp ule i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ad ; 4 uses
  %.not.i = icmp eq i64 %i.r, %i.ad
  br i1 %.not.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i
  store ptr %i.af, ptr %i.e, align 8, !noalias !8808
  %i.ag = load i32, ptr %i.af, align 4, !noalias !8808, !noundef !46
  %.not10.i = icmp ugt i32 %.val2.pn.i, %i.ag
  br i1 %.not10.i, label %bb.c, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, !prof !47

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8808
  store ptr %i.f, ptr %i.d, align 8, !noalias !8808
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !8808
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ah, align 8, !noalias !8808
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !8808
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #60, !noalias !8808
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit: ; preds = %switch.lookup48, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i, %bb.b
  %i.ai = phi ptr [ %i.af, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i ], [ %i.af, %bb.b ], [ %i.p, %switch.lookup48 ]
  %.sroa.4.0.i.i13.i = phi i64 [ %i.r, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i ], [ %i.ad, %bb.b ], [ %i.r, %switch.lookup48 ]
  %i.aj = sub nuw i64 %i.r, %.sroa.4.0.i.i13.i
  %i.ak = insertvalue { ptr, i64 } poison, ptr %i.ai, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %i.aj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.d:                                             ; preds = %switch.lookup
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #60
  unreachable

bb.e:                                             ; preds = %switch.lookup
  %i.am = tail call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i32 noundef %.val2.pn.i12, i32 noundef %.sroa.03.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit
  %.pn = phi { ptr, i64 } [ %i.am, %bb.e ], [ %i.al, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  switch i64 %1, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
    i64 6, label %bb.m
    i64 7, label %bb.n
    i64 8, label %bb.o
    i64 9, label %bb.p
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 14, label %bb.t
    i64 15, label %bb.u
    i64 16, label %bb.v
    i64 17, label %bb.w
    i64 18, label %bb.x
    i64 19, label %bb.y
    i64 20, label %bb.z
    i64 21, label %bb.aa
    i64 22, label %bb.ab
    i64 23, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 24, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 25, label %bb.ac
    i64 26, label %bb.ad
    i64 27, label %bb.ae
    i64 28, label %bb.af
    i64 29, label %bb.ag
    i64 30, label %bb.ah
    i64 31, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 32, label %bb.ai
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.j:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.k:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.l:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.m:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.n:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %2, i64 24
end_hunk_1
